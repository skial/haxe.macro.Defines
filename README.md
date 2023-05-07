# haxe.macro.Defines

An `enum abstract` built off the Haxe generated file [`define.json`](https://raw.githubusercontent.com/HaxeFoundation/haxe/development/src-json/define.json).

## Install

Run `lix install gh:skial/haxe.macro.Defines`.

## Overview

> Not all values are listed here, for brevity, check [`Defines.hx`](/src/haxe/macro/Defines.hx) for the full list.

```Haxe
enum abstract Defines(String) from String to String {
    /**
		Usage: `-D dce`
		Set the dead code elimination mode. (default: std)
		Accepts parameters: mode: std | full | no
		@see: https://haxe.org/manual/cr-dce.html
	**/
	public var Dce:DefinedValue<DceValues> = "dce";

    /**
		Usage: `-D haxe-ver`
		The current Haxe version value as decimal number. E.g. 3.407 for 3.4.7.
	**/
    public var HaxeVer = "haxe-ver";

    /**
		Usage: `-D haxe`
		The current Haxe version value in SemVer format.
	**/
    public var Haxe = "haxe";

    /**
		Usage: `-D warn-var-shadowing`
		Warn about shadowing variable declarations.
	**/
    public var WarnVarShadowing = "warn-var-shadowing";

    function get():String;
    @:to 
    function asBool():Bool;
    @:op(A == B) 
    static function equals(a:Defines, b:Bool);
    @:op(!A) 
    static function negate(a:Defines);
    @:op(A != B) 
    static function not(a:Defines, b:Bool);
    @:op(A && B) 
    static function and(a:Defines, b:Bool);
    @:op(A || B) 
    static function or(a:Defines, b:Bool);
}
enum abstract DceValues(String) from String to String to Defines {
	public static inline function get(self:DefinedValue<DceValues>):Null<DceValues> {
		return haxe.macro.Context.definedValue(self);
	}
	public var Std = "std";
	public var Full = "full";
	public var No = "no";
}
abstract DefinedValue<T>(String) from String to String to Defines {}
```

## Building `Defines.hx`

Download `define.json` yourself and copy the path. Then run `haxe build.defines.hxml -D defines.path=path/to/define.json`.