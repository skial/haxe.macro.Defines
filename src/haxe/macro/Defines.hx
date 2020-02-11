package haxe.macro;
/**
	Do not edit this file is auto-generated.
	Built off `define.json` found at https://raw.githubusercontent.com/HaxeFoundation/haxe/development/src-json/define.json
**/
@:enum @:forward @:forwardStatics abstract Defines(String) from String to String {
	/**
		Usage: `-D absolute_path`
		- - -
		Print absolute file path in trace output.
		
	**/
	public var AbsolutePath = "absolute_path";
	/**
		Usage: `-D advanced-telemetry`
		- - -
		Allow the SWF to be measured with Monocle tool.
		- - -
		Platform: flash
		
	**/
	public var AdvancedTelemetry = "advanced-telemetry";
	/**
		Usage: `-D analyzer_optimize`
		- - -
		Perform advanced optimizations.
		
	**/
	public var AnalyzerOptimize = "analyzer_optimize";
	/**
		Usage: `-D annotate_source`
		- - -
		Add additional comments to generated source code.
		- - -
		Platform: cpp
		
	**/
	public var AnnotateSource = "annotate_source";
	/**
		Usage: `-D check_xml_proxy`
		- - -
		Check the used fields of the XML proxy.
		
	**/
	public var CheckXmlProxy = "check_xml_proxy";
	/**
		Usage: `-D core_api`
		- - -
		Defined in the core API context.
		
	**/
	public var CoreApi = "core_api";
	/**
		Usage: `-D core_api_serialize`
		- - -
		Mark some generated core API classes with the `Serializable` attribute on C#.
		- - -
		Platform: cs
		
	**/
	public var CoreApiSerialize = "core_api_serialize";
	/**
		Usage: `-D cppia`
		- - -
		Generate cpp instruction assembly.
		
	**/
	public var Cppia = "cppia";
	/**
		Usage: `-D cs_ver`
		- - -
		The C# version to target.
		- - -
		Platform: cs
		
	**/
	public var CsVer = "cs_ver";
	/**
		Usage: `-D nocppiaast`
		- - -
		Use legacy cppia generation.
		
	**/
	public var NoCppiaAst = "nocppiaast";
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
		Usage: `-D dce_debug`
		- - -
		Show DCE log.
		- - -
		@see: https://haxe.org/manual/cr-dce.html
		
	**/
	public var DceDebug = "dce_debug";
	/**
		Usage: `-D debug`
		- - -
		Activated when compiling with -debug.
		
	**/
	public var Debug = "debug";
	/**
		Usage: `-D disable_unicode_strings`
		- - -
		Disable Unicode support in `String` type.
		- - -
		Platform: cpp
		
	**/
	public var DisableUnicodeStrings = "disable_unicode_strings";
	/**
		Usage: `-D display`
		- - -
		Activated during completion.
		- - -
		@see: https://haxe.org/manual/cr-completion.html
		
	**/
	public var Display = "display";
	/**
		Usage: `-D display_stdin`
		- - -
		Read the contents of a file specified in `--display` from standard input.
		
	**/
	public var DisplayStdin = "display_stdin";
	/**
		Usage: `-D dll_export`
		- - -
		GenCPP experimental linking.
		- - -
		Platform: cpp
		
	**/
	public var DllExport = "dll_export";
	/**
		Usage: `-D dll_import`
		- - -
		Handle Haxe-generated .NET DLL imports.
		- - -
		Platform: cs
		
	**/
	public var DllImport = "dll_import";
	/**
		Usage: `-D doc_gen`
		- - -
		Do not perform any removal/change in order to correctly generate documentation.
		
	**/
	public var DocGen = "doc_gen";
	/**
		Usage: `-D dump`
		- - -
		Dump typed AST in dump subdirectory using specified mode or non-prettified default.
		- - -
		Accepts parameters: mode: pretty | record | position | legacy
		
	**/
	public var Dump = "dump";
	/**
		Usage: `-D dump_path`
		- - -
		Path to generate dumps to (default: "dump").
		
	**/
	public var DumpPath = "dump_path";
	/**
		Usage: `-D dump_dependencies`
		- - -
		Dump the classes dependencies in a dump subdirectory.
		
	**/
	public var DumpDependencies = "dump_dependencies";
	/**
		Usage: `-D dump_ignore_var_ids`
		- - -
		Remove variable IDs from non-pretty dumps (helps with diff).
		
	**/
	public var DumpIgnoreVarIds = "dump_ignore_var_ids";
	/**
		Usage: `-D dynamic_interface_closures`
		- - -
		Use slow path for interface closures to save space.
		- - -
		Platform: cpp
		
	**/
	public var DynamicInterfaceClosures = "dynamic_interface_closures";
	/**
		Usage: `-D erase_generics`
		- - -
		Erase generic classes on C#.
		- - -
		Platform: cs
		
	**/
	public var EraseGenerics = "erase_generics";
	/**
		Usage: `-D eval_call_stack_depth`
		- - -
		Set maximum call stack depth for eval. (default: 1000)
		- - -
		Accepts parameters: depth
		- - -
		Platform: eval
		
	**/
	public var EvalCallStackDepth = "eval_call_stack_depth";
	/**
		Usage: `-D eval_debugger`
		- - -
		Support debugger in macro/interp mode. Allows `host:port` value to open a socket. Implies eval_stack.
		- - -
		Platform: eval
		
	**/
	public var EvalDebugger = "eval_debugger";
	/**
		Usage: `-D eval_stack`
		- - -
		Record stack information in macro/interp mode.
		- - -
		Platform: eval
		
	**/
	public var EvalStack = "eval_stack";
	/**
		Usage: `-D eval_times`
		- - -
		Record per-method execution times in macro/interp mode. Implies eval_stack.
		- - -
		Platform: eval
		
	**/
	public var EvalTimes = "eval_times";
	/**
		Usage: `-D filter_times`
		- - -
		Record per-filter execution times upon --times.
		
	**/
	public var FilterTimes = "filter_times";
	/**
		Usage: `-D fast_cast`
		- - -
		Enables an experimental casts cleanup on C# and Java.
		- - -
		Platform: cs|java
		
	**/
	public var FastCast = "fast_cast";
	/**
		Usage: `-D fdb`
		- - -
		Enable full flash debug infos for FDB interactive debugging.
		- - -
		Platform: flash
		
	**/
	public var Fdb = "fdb";
	/**
		Usage: `-D file_extension`
		- - -
		Output filename extension for cpp source code.
		- - -
		Platform: cpp
		
	**/
	public var FileExtension = "file_extension";
	/**
		Usage: `-D flash_strict`
		- - -
		More strict typing for flash target.
		- - -
		Platform: flash
		
	**/
	public var FlashStrict = "flash_strict";
	/**
		Usage: `-D flash_use_stage`
		- - -
		Keep the SWF library initial stage.
		- - -
		Platform: flash
		
	**/
	public var FlashUseStage = "flash_use_stage";
	/**
		Usage: `-D force_lib_check`
		- - -
		Force the compiler to check `--net-lib` and `–-java-lib` added classes (internal).
		- - -
		force_lib_check is only here as a debug facility - compiler checking allows errors to be found more easily
		- - -
		Platform: cs|java
		
	**/
	public var ForceLibCheck = "force_lib_check";
	/**
		Usage: `-D force_native_property`
		- - -
		Tag all properties with `:nativeProperty` metadata for 3.1 compatibility.
		- - -
		Platform: cpp
		
	**/
	public var ForceNativeProperty = "force_native_property";
	/**
		Usage: `-D gencommon_debug`
		- - -
		GenCommon internal.
		- - -
		Platform: cs|java
		
	**/
	public var GencommonDebug = "gencommon_debug";
	/**
		Usage: `-D haxe3compat`
		- - -
		Gives warnings about transition from Haxe 3.x to Haxe 4.0.
		
	**/
	public var Haxe3Compat = "haxe3compat";
	/**
		Usage: `-D haxe_boot`
		- - -
		Give the name 'haxe' to the flash boot class instead of a generated name.
		- - -
		Platform: flash
		
	**/
	public var HaxeBoot = "haxe_boot";
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
		Usage: `-D hxcpp_api_level`
		- - -
		Provided to allow compatibility between hxcpp versions.
		- - -
		Platform: cpp
		
	**/
	public var HxcppApiLevel = "hxcpp_api_level";
	/**
		Usage: `-D HXCPP_GC_GENERATIONAL`
		- - -
		Experimental Garbage Collector.
		- - -
		Platform: cpp
		
	**/
	public var HxcppGcGenerational = "HXCPP_GC_GENERATIONAL";
	/**
		Usage: `-D HXCPP_DEBUGGER`
		- - -
		Include additional information for hxcpp_debugger.
		- - -
		Platform: cpp
		
	**/
	public var HxcppDebugger = "HXCPP_DEBUGGER";
	/**
		Usage: `-D hxcpp_smart_strings`
		- - -
		Use wide strings in hxcpp. (Turned on by default unless `-D disable_unicode_strings` is specified.)
		- - -
		Platform: cpp
		
	**/
	public var HxcppSmartStings = "hxcpp_smart_strings";
	/**
		Usage: `-D include_prefix`
		- - -
		Prepend path to generated include files.
		- - -
		Platform: cpp
		
	**/
	public var IncludePrefix = "include_prefix";
	/**
		Usage: `-D interp`
		- - -
		The code is compiled to be run with `--interp`.
		
	**/
	public var Interp = "interp";
	/**
		Usage: `-D java_ver`
		- - -
		Sets the Java version to be targeted.
		- - -
		Accepts parameters: version: 5-7
		- - -
		Platform: java
		
	**/
	public var JavaVer = "java_ver";
	/**
		Usage: `-D js_classic`
		- - -
		Don't use a function wrapper and strict mode in JS output.
		- - -
		Platform: js
		
	**/
	public var JsClassic = "js_classic";
	/**
		Usage: `-D js_es`
		- - -
		Generate JS compliant with given ES standard version. (default: 5)
		- - -
		Accepts parameters: version number
		- - -
		Platform: js
		- - -
		@see: https://haxe.org/manual/target-javascript-es6.html
		
	**/
	public var JsEs = "js_es";
	/**
		Usage: `-D js_enums_as_arrays`
		- - -
		Generate enum representation as array instead of as object.
		- - -
		Platform: js
		
	**/
	public var JsEnumsAsArrays = "js_enums_as_arrays";
	/**
		Usage: `-D js_unflatten`
		- - -
		Generate nested objects for packages and types.
		- - -
		Platform: js
		
	**/
	public var JsUnflatten = "js_unflatten";
	/**
		Usage: `-D js_source_map`
		- - -
		Generate JavaScript source map even in non-debug mode. Deprecated in favor of `-D source_map`.
		- - -
		Platform: js
		
	**/
	public var JsSourceMap = "js_source_map";
	/**
		Usage: `-D source_map`
		- - -
		Generate source map for compiled files.
		- - -
		Platform: php|js
		
	**/
	public var SourceMap = "source_map";
	/**
		Usage: `-D jvm`
		- - -
		Generate jvm directly.
		- - -
		Platform: java
		
	**/
	public var Jvm = "jvm";
	/**
		Usage: `-D keep_old_output`
		- - -
		Keep old source files in the output directory.
		- - -
		Platform: cs|java
		
	**/
	public var KeepOldOutput = "keep_old_output";
	/**
		Usage: `-D loop_unroll_max_cost`
		- - -
		Maximum cost (number of expressions * iterations) before loop unrolling is canceled. (default: 250)
		- - -
		Accepts parameters: cost
		
	**/
	public var LoopUnrollMaxCost = "loop_unroll_max_cost";
	/**
		Usage: `-D lua_jit`
		- - -
		Enable the jit compiler for lua (version 5.2 only).
		- - -
		Platform: lua
		
	**/
	public var LuaJit = "lua_jit";
	/**
		Usage: `-D lua_vanilla`
		- - -
		Generate code lacking compiled extern lib support (e.g. utf8).
		- - -
		Platform: lua
		
	**/
	public var LuaVanilla = "lua_vanilla";
	/**
		Usage: `-D lua_ver`
		- - -
		The lua version to target.
		- - -
		Accepts parameters: version
		- - -
		Platform: lua
		
	**/
	public var LuaVer = "lua_ver";
	/**
		Usage: `-D macro`
		- - -
		Defined when code is compiled in the macro context.
		- - -
		@see: https://haxe.org/manual/macro.html
		
	**/
	public var Macro = "macro";
	/**
		Usage: `-D macro_times`
		- - -
		Display per-macro timing when used with `--times`.
		
	**/
	public var MacroTimes = "macro_times";
	/**
		Usage: `-D net_ver`
		- - -
		Sets the .NET version to be targeted.
		- - -
		Accepts parameters: version: 20-45
		- - -
		Platform: cs
		
	**/
	public var NetVer = "net_ver";
	/**
		Usage: `-D netcore_ver`
		- - -
		Sets the .NET core version to be targeted
		- - -
		Accepts parameters: version: x.x.x
		- - -
		Platform: cs
		
	**/
	public var NetcoreVer = "netcore_ver";
	/**
		Usage: `-D net_target`
		- - -
		Sets the .NET target. `netcore` (.NET core), `xbox`, `micro` (Micro Framework), `compact` (Compact Framework) are some valid values. (default: `net`)
		- - -
		Accepts parameters: name
		- - -
		Platform: cs
		
	**/
	public var NetTarget = "net_target";
	/**
		Usage: `-D neko_source`
		- - -
		Output neko source instead of bytecode.
		- - -
		Platform: neko
		
	**/
	public var NekoSource = "neko_source";
	/**
		Usage: `-D neko_v1`
		- - -
		Keep Neko 1.x compatibility.
		- - -
		Platform: neko
		
	**/
	public var NekoV1 = "neko_v1";
	/**
		Usage: `-D network-sandbox`
		- - -
		Use local network sandbox instead of local file access one.
		- - -
		Platform: flash
		
	**/
	public var NetworkSandbox = "network-sandbox";
	/**
		Usage: `-D no-compilation`
		- - -
		Disable final compilation.
		- - -
		Platform: cs|java|cpp|hl
		
	**/
	public var NoCompilation = "no-compilation";
	/**
		Usage: `-D no_copt`
		- - -
		Disable completion optimization (for debug purposes).
		
	**/
	public var NoCOpt = "no_copt";
	/**
		Usage: `-D no_debug`
		- - -
		Remove all debug macros from cpp output.
		
	**/
	public var NoDebug = "no_debug";
	/**
		Usage: `-D no-deprecation-warnings`
		- - -
		Do not warn if fields annotated with `@:deprecated` are used.
		
	**/
	public var NoDeprecationWarnings = "no-deprecation-warnings";
	/**
		Usage: `-D no-flash-override`
		- - -
		Change overrides on some basic classes into HX suffixed methods
		- - -
		Platform: flash
		
	**/
	public var NoFlashOverride = "no-flash-override";
	/**
		Usage: `-D no_opt`
		- - -
		Disable optimizations.
		
	**/
	public var NoOpt = "no_opt";
	/**
		Usage: `-D no_inline`
		- - -
		Disable inlining.
		- - -
		@see: https://haxe.org/manual/class-field-inline.html
		
	**/
	public var NoInline = "no_inline";
	/**
		Usage: `-D keep_inline_positions`
		- - -
		Don't substitute positions of inlined expressions with the position of the place of inlining.
		- - -
		@see: https://haxe.org/manual/class-field-inline.html
		
	**/
	public var KeepInlinePositions = "keep_inline_positions";
	/**
		Usage: `-D no_root`
		- - -
		Generate top-level types into the `haxe.root` namespace.
		- - -
		Platform: cs
		
	**/
	public var NoRoot = "no_root";
	/**
		Usage: `-D no_macro_cache`
		- - -
		Disable macro context caching.
		
	**/
	public var NoMacroCache = "no_macro_cache";
	/**
		Usage: `-D no_swf_compress`
		- - -
		Disable SWF output compression.
		- - -
		Platform: flash
		
	**/
	public var NoSwfCompress = "no_swf_compress";
	/**
		Usage: `-D no_traces`
		- - -
		Disable all trace calls.
		
	**/
	public var NoTraces = "no_traces";
	/**
		Usage: `-D objc`
		- - -
		Sets the hxcpp output to Objective-C++ classes. Must be defined for interop.
		- - -
		Platform: cpp
		
	**/
	public var Objc = "objc";
	/**
		Usage: `-D old-constructor-inline`
		- - -
		Use old constructor inlining logic (from Haxe 3.4.2) instead of the reworked version.
		
	**/
	public var OldConstructorInline = "old-constructor-inline";
	/**
		Usage: `-D old-error-format`
		- - -
		Use Haxe 3.x zero-based column error messages instead of new one-based format.
		
	**/
	public var OldErrorFormat = "old-error-format";
	/**
		Usage: `-D php_prefix`
		- - -
		Root namespace for generated php classes. E.g. if compiled with`-D php-prefix=some.sub`, then all classes will be generated in `\some\sub` namespace.
		- - -
		Accepts parameters: dot-separated namespace
		- - -
		Platform: php
		
	**/
	public var PhpPrefix = "php_prefix";
	/**
		Usage: `-D php_lib`
		- - -
		Select the name for the php lib folder.
		- - -
		Accepts parameters: folder name
		- - -
		Platform: php
		
	**/
	public var PhpLib = "php_lib";
	/**
		Usage: `-D php_front`
		- - -
		Select the name for the php front file. (default: `index.php`)
		- - -
		Accepts parameters: filename
		- - -
		Platform: php
		
	**/
	public var PhpFront = "php_front";
	/**
		Usage: `-D python_version`
		- - -
		The python version to target. (default: 3.3)
		- - -
		Accepts parameters: version
		- - -
		Platform: python
		
	**/
	public var PythonVersion = "python_version";
	/**
		Usage: `-D real_position`
		- - -
		Disables Haxe source mapping when targetting C#, removes position comments in Java and Php output.
		- - -
		Platform: cs|java|php
		
	**/
	public var RealPosition = "real_position";
	/**
		Usage: `-D replace_files`
		- - -
		GenCommon internal.
		- - -
		Platform: cs|java
		
	**/
	public var ReplaceFiles = "replace_files";
	/**
		Usage: `-D scriptable`
		- - -
		GenCPP internal.
		- - -
		Platform: cpp
		
	**/
	public var Scriptable = "scriptable";
	/**
		Usage: `-D shallow-expose`
		- - -
		Expose types to surrounding scope of Haxe generated closure without writing to window object.
		- - -
		Platform: js
		
	**/
	public var ShallowExpose = "shallow-expose";
	/**
		Usage: `-D source-header`
		- - -
		Print value as comment on top of generated files, use '' value to disable.
		
	**/
	public var SourceHeader = "source-header";
	/**
		Usage: `-D source-map-content`
		- - -
		Include the Haxe sources as part of the JS source map.
		- - -
		Platform: js
		
	**/
	public var SourceMapContent = "source-map-content";
	/**
		Usage: `-D static`
		- - -
		Defined if the current target is static.
		
	**/
	public var Static = "static";
	/**
		Usage: `-D std-encoding-utf8`
		- - -
		Force utf8 encoding for stdin, stdout and stderr
		- - -
		Platform: java|cs|python
		
	**/
	public var StdEncodingUtf8 = "std-encoding-utf8";
	/**
		Usage: `-D swc`
		- - -
		Output a SWC instead of a SWF.
		- - -
		Platform: flash
		
	**/
	public var Swc = "swc";
	/**
		Usage: `-D swf_compress_level`
		- - -
		Set the amount of compression for the SWF output.
		- - -
		Accepts parameters: level: 1-9
		- - -
		Platform: flash
		
	**/
	public var SwfCompressLevel = "swf_compress_level";
	/**
		Usage: `-D swf_debug_password`
		- - -
		Set a password for debugging.
		- - -
		Accepts parameters: password
		- - -
		Platform: flash
		
	**/
	public var SwfDebugPassword = "swf_debug_password";
	/**
		Usage: `-D swf_direct_blit`
		- - -
		Use hardware acceleration to blit graphics.
		- - -
		Platform: flash
		
	**/
	public var SwfDirectBlit = "swf_direct_blit";
	/**
		Usage: `-D swf_gpu`
		- - -
		Use GPU compositing features when drawing graphics.
		- - -
		Platform: flash
		
	**/
	public var SwfGpu = "swf_gpu";
	/**
		Usage: `-D swf_metadata`
		- - -
		Include contents of the given file as metadata in the SWF.
		- - -
		Accepts parameters: file
		- - -
		Platform: flash
		
	**/
	public var SwfMetadata = "swf_metadata";
	/**
		Usage: `-D swf_preloader_frame`
		- - -
		Insert empty first frame in SWF.
		- - -
		Platform: flash
		
	**/
	public var SwfPreloaderFrame = "swf_preloader_frame";
	/**
		Usage: `-D swf_protected`
		- - -
		Compile Haxe `private` as `protected` in the SWF instead of `public`.
		- - -
		Platform: flash
		
	**/
	public var SwfProtected = "swf_protected";
	/**
		Usage: `-D swf_script_timeout`
		- - -
		Maximum ActionScript processing time before script stuck dialog box displays.
		- - -
		Accepts parameters: time in seconds
		- - -
		Platform: flash
		
	**/
	public var SwfScriptTimeout = "swf_script_timeout";
	/**
		Usage: `-D swf_use_doabc`
		- - -
		Use `DoAbc` SWF-tag instead of `DoAbcDefine`.
		- - -
		Platform: flash
		
	**/
	public var SwfUseDoAbc = "swf_use_doabc";
	/**
		Usage: `-D sys`
		- - -
		Defined for all system platforms.
		
	**/
	public var Sys = "sys";
	/**
		Usage: `-D unsafe`
		- - -
		Allow unsafe code when targeting C#.
		- - -
		Platform: cs
		
	**/
	public var Unsafe = "unsafe";
	/**
		Usage: `-D use_nekoc`
		- - -
		Use `nekoc` compiler instead of the internal one.
		- - -
		Platform: neko
		
	**/
	public var UseNekoc = "use_nekoc";
	/**
		Usage: `-D utf16`
		- - -
		Defined for all platforms that use UTF-16 string encoding with UCS-2 API.
		
	**/
	public var Utf16 = "utf16";
	/**
		Usage: `-D vcproj`
		- - -
		GenCPP internal.
		- - -
		Platform: cpp
		
	**/
	public var Vcproj = "vcproj";
	/**
		Usage: `-D warn_var_shadowing`
		- - -
		Warn about shadowing variable declarations.
		
	**/
	public var WarnVarShadowing = "warn_var_shadowing";
	public inline function get():String {
		return haxe.macro.Context.definedValue(this);
	}
	@:to
	public inline function asBool():Bool {
		return haxe.macro.Context.defined(this);
	}
	@:op(A == B)
	@:commutative
	private static inline function equals(a:Defines, b:Bool) {
		return a.asBool() == b;
	}
	@:op(!A)
	private static inline function negate(a:Defines) {
		return !a.asBool();
	}
	@:op(A != B)
	@:commutative
	private static inline function not(a:Defines, b:Bool) {
		return a.asBool() != b;
	}
	@:op(A && B)
	@:commutative
	private static inline function and(a:Defines, b:Bool) {
		return a.asBool() && b;
	}
}