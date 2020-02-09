# haxe.macro.Defines

An `enum abstract` built off the Haxe generated file [`define.json`](https://raw.githubusercontent.com/HaxeFoundation/haxe/development/src-json/define.json).

## Install

Run `lix install gh:skial/haxe.macro.Defines`.

## Overview

> Not all values are listed here, for brevity, check [`Defines.hx`](/blob/master/src/haxe/macro/Defines.hx) for the full list.

```Haxe
enum abstract Defines(String) from String to String {
    /**
        Usage: `-D dce`
        - - -
        Set the dead code elimination mode. (default: std)
        - - -
        Accepts parameters: mode: std | full | no
        - - -
        @see: https://haxe.org/manual/cr-dce.html
        
    **/
    public var Dce = "dce";

    /**
        Usage: `-D haxe_ver`
        - - -
        The current Haxe version value as decimal number. E.g. 3.407 for 3.4.7.
        
    **/
    public var HaxeVer = "haxe_ver";

    /**
        Usage: `-D haxe`
        - - -
        The current Haxe version value in SemVer format.
        
    **/
    public var Haxe = "haxe";

    /**
        Usage: `-D warn_var_shadowing`
        - - -
        Warn about shadowing variable declarations.
        
    **/
    public var WarnVarShadowing = "warn_var_shadowing";

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
}
```

## Building `Defines.hx`

The lib includes `build.defines.hxml`, which will download the latest `define.json` file and overwrite `src/haxe/macro/Defines.hx`.

### Dependencies

#### Haxe dependencies
Use [`lix download`](https://github.com/lix-pm/lix.client) to fetch and install the dependencies used for this repo.

#### Curl
Make sure you have `curl` available as that is the Http client used to fetch `define.json`.

#### Build defines
If you don't have `curl`, download `define.json` yourself and copy the path. Then
run `haxe build.defines.hxml -D defines.json=path/to/define.json`.

