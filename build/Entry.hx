package ;

import haxe.Json;
import sys.io.File;
import haxe.macro.Expr;
import haxe.macro.Context;
import haxe.macro.Printer;

using StringTools;
using haxe.io.Path;
using sys.FileSystem;

typedef TDefine = {
    name:String,
    define:String,
    doc:String,
    ?platforms:Array<String>,
    ?links:Array<String>,
    ?params:Array<String>,
    ?devcomment:String,
}

class Entry {

    public static final printer:Printer = new Printer();

    public static var DefinesJson:String =
    if (Context.defined('defines.path')) {
        var value = Context.definedValue('defines.path').normalize();

        if (!value.isAbsolute()) {
            value = FileSystem.fullPath(Context.resolvePath(value));
        }

        value;

    } else {
        Context.fatalError('Download define.json from https://raw.githubusercontent.com/HaxeFoundation/haxe/development/src-json/define.json and add `-D defines.path=<path>` to the build command.', Context.currentPos());

    }
    public static final cwd:String = Sys.getCwd();
    public static final DefinesLocal:String = '$cwd/cached/'.normalize();

    public static var outputPath = '$cwd/src/haxe/macro/Defines.hx';

    public static function main() {
        var debug = Context.defined('debug');

        if (FileSystem.exists(DefinesLocal + 'define.json')) {
            DefinesJson = DefinesLocal + 'define.json';
        }

        var content = File.getContent(DefinesJson);
        var json:Array<TDefine> = Json.parse( content );
        var extra:Array<TDefine> = Json.parse( File.getContent('./build/extra.json') );

        json = json.concat( extra );

        // https://regex101.com/r/QNtYMy/1
        //                        ( name        )          (   x.x.x  ) (  0-100      ) (   value0 | valueN           )
        var paramEReg = new EReg("([a-zA-Z\\- ]+)(?:\\: *)?(?:([x\\.]+)|([0-9]+-[0-9]+)|([a-zA-Z \\|]*[a-zA-Z0-9 \\|]+))?", "");

        var pos = Context.currentPos();
        var tds:Array<TypeDefinition> = [];
        var fields = [];
        for (define in json) {
            var defineName = define.name;
            var expr = {expr:EConst(CString(define.define)), pos:pos};
            var field = (macro class {
                public var $defineName = $expr;
            }).fields[0];

            field.doc = 'Usage: `-D ${define.define}`\n${define.doc}';
            if (define.devcomment != null) field.doc += '\n${define.devcomment}';

            if (define.params != null) {
                field.doc += '\nAccepts parameters: ${define.params.join('|')}';
                var p = define.params[0];
                if (paramEReg.match(p)) {
                    function mkUpper(value:String):String {
                        if (value.charCodeAt(0) > 'Z'.code) value = String.fromCharCode( value.charCodeAt(0) - 32  ) + value.substring(1);
                        return value;
                    }
                    function mkName(value:String, prefix:String = null):String {
                        value = mkUpper(value);
                        if (prefix != null) prefix = mkUpper(prefix);
                        if ('0'.code <= value.charCodeAt(0) && value.charCodeAt(0) <= '9'.code && prefix != null) value = prefix + value;
                        return value;
                    }
                    function mkTypeName(value:String):String {
                        return mkName(value + 'Values');
                    }
                    
                    switch ([for (i in 1...5) paramEReg.matched(i)]) {
                        case [name, pattern, null, null] if (name != null && pattern != null):
                            //trace( name, pattern );

                        case [name, null, range, null] if (name != null && range != null):
                            //trace(name, range );

                            var typeName = mkName(defineName + 'Range');
                            var ctype = TPath({name:typeName, pack:[]});
                            var range = range.split('-').map(Std.parseInt);

                            if (tds.filter(td -> td.name == typeName).length == 0) {
                                var td = (macro class $typeName {
                                    public static inline function get(self:DefinedValue<$ctype>):Null<$ctype> {
                                        return haxe.macro.Context.definedValue(self);
                                    }
                                });
                                for (i in range[0]...range[1]+1) {
                                    var name = mkName('$i', name);
                                    td.fields.push( (macro class {
                                        public var $name = $v{'$i'};
                                    }).fields[0] );
                                }
                                
                                td.kind = TDAbstract(macro:String, [macro:String], [macro:String, macro:Defines]);
                                td.meta.push({name:':enum', pos:td.pos});
                                td.pack = ['haxe', 'macro'];
    
                                if (debug) trace( new haxe.macro.Printer().printTypeDefinition(td) );
    
                                tds.push( td );

                            }

                            // Overwrite `Defines` field.
                            var doc = field.doc;
                            field = (macro class {
                                public var $defineName:DefinedValue<$ctype> = $expr;
                            }).fields[0];
                            field.doc = doc;

                        case [name, null, null, _.split('|').map(s->s.trim()) => values] if (name != null && values != null):
                            //trace( name, values );
                            var typeName = mkTypeName(defineName);
                            var ctype = TPath({name:typeName, pack:[]});
                            var td = (macro class $typeName {
                                public static inline function get(self:DefinedValue<$ctype>):Null<$ctype> {
                                    return haxe.macro.Context.definedValue(self);
                                }
                            });

                            for (value in values) {
                                var name = mkName(value, name);
                                if (name == 'Std') name = 'Standard'; // Prevents `Std` overriding the `Std` type.
                                td.fields.push( (macro class {
                                    public var $name = $v{value};
                                }).fields[0] );
                            }
                            
                            td.kind = TDAbstract(macro:String, [macro:String], [macro:String, macro:Defines]);
                            td.meta.push({name:':enum', pos:td.pos});
                            td.pack = ['haxe', 'macro'];

                            if (debug) trace( new haxe.macro.Printer().printTypeDefinition(td) );

                            tds.push( td );

                            // Overwrite `Defines` field.
                            var doc = field.doc;
                            field = (macro class {
                                public var $defineName:DefinedValue<$ctype> = $expr;
                            }).fields[0];
                            field.doc = doc;

                        case [name, null, null, null]:
                            //trace( name );

                        case _:
                            throw 'failed to parse: $p';

                    }
                }
            }

            if (define.platforms != null) field.doc += '\nPlatform${define.platforms.length == 0 ? 's' :''}: ${define.platforms.join('|')}';
            if (define.links != null) field.doc += '\n@see: ${define.links.join('|')}';

            if (field.doc != null) field.doc = field.doc.trim();

            fields.push( field );

        }

        var td = (macro class DefinedValue<T> {});
        td.kind = TDAbstract(macro:String, [macro:String], [macro:String, macro:Defines]);
        tds.push( td );

        var td:TypeDefinition = macro class {
            public inline function get():Null<String> {
                return haxe.macro.Context.definedValue(this);
            }

            @:to public inline function asBool():Bool {
                return haxe.macro.Context.defined(this);
            }

            @:op(A == B) @:commutative private static inline function equals(a:Defines, b:Bool) {
                return a.asBool() == b;
            }

            @:op(!A) private static inline function negate(a:Defines) {
                return !a.asBool();
            }

            @:op(A != B) @:commutative private static inline function not(a:Defines, b:Bool) {
                return a.asBool() != b;
            }

            @:op(A && B) @:commutative private static inline function and(a:Defines, b:Bool) {
                return a.asBool() && b;
            }
            @:op(A || B) @:commutative private static inline function or(a:Defines, b:Bool) {
                return a.asBool() || b;
            }
        }
        td.doc = '--- DO NOT EDIT ---\nThis file is auto-generated.\nBuilt from `define.json` found at https://raw.githubusercontent.com/HaxeFoundation/haxe/development/src-json/define.json';
        td.pack = ['haxe', 'macro'];
        td.name = 'Defines';
        td.kind = TDAbstract(macro:String, [macro:String], [macro:String]);
        td.meta = [
            //{name:':haxe.warning', params:[macro -101], pos:td.pos},
            {name:':forward', params:[], pos:td.pos}, 
            {name:':forwardStatics', params:[], pos:td.pos},
            // Has to be last so prints out as `enum abstract`
            {name:':enum', params:[], pos:td.pos}, 
        ];
        td.fields = fields.concat(td.fields);

        var types = new StringBuf();
        types.add( printer.printTypeDefinition(td, true).replace('@:enum', 'enum') );
        types.add('\n');
        for (td in tds) {
            types.add( printer.printTypeDefinition(td, false).replace('@:enum', 'enum') );
            types.add('\n');
        }

        if (!outputPath.directory().exists()) outputPath.directory().createDirectory();
        File.saveContent(outputPath, types.toString());
    }

}