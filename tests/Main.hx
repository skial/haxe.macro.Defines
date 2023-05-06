package ;

using haxe.macro.Defines;

class Main {

    public static function main() {
        trace( Defines.AbsolutePath.get() == null );
        trace( Dce.get() == DceValues.Std );
        trace( SwfCompressLevel.get() == SwfCompressLevelRange.Level7 );
        trace( Eval == true );
    }

}