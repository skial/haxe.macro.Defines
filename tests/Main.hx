package ;

using haxe.macro.Defines;

class Main {

    public static function main() {
        trace( Defines.AbsolutePath.get() == null, AbsolutePath );
        trace( Dce.get() == DceValues.Standard, Dce, Standard );
        trace( SwfCompressLevel.get() == SwfCompressLevelRange.Level7, SwfCompressLevel, Level7 );
        trace( Eval == true, Eval );
    }

}