package haxe.macro;
/**
	--- DO NOT EDIT ---
	This file is auto-generated.
	Built from `define.json` found at https://raw.githubusercontent.com/HaxeFoundation/haxe/development/src-json/define.json
**/
@:forward @:forwardStatics enum abstract Defines(String) from String to String {
	/**
		Usage: `-D absolute-path`
		Print absolute file path in trace output.
	**/
	public var AbsolutePath = "absolute-path";
	/**
		Usage: `-D advanced-telemetry`
		Allow the SWF to be measured with Monocle tool.
		Platform: flash
	**/
	public var AdvancedTelemetry = "advanced-telemetry";
	/**
		Usage: `-D analyzer-optimize`
		Perform advanced optimizations.
	**/
	public var AnalyzerOptimize = "analyzer-optimize";
	/**
		Usage: `-D analyzer-times`
		Record detailed timers for the analyzer
		Accepts parameters: level: 0 | 1 | 2
	**/
	public var AnalyzerTimes : DefinedValue<AnalyzerTimesValues> = "analyzer-times";
	/**
		Usage: `-D annotate-source`
		Add additional comments to generated source code.
		Platform: cpp
	**/
	public var AnnotateSource = "annotate-source";
	/**
		Usage: `-D check-xml-proxy`
		Check the used fields of the XML proxy.
	**/
	public var CheckXmlProxy = "check-xml-proxy";
	/**
		Usage: `-D core-api`
		Defined in the core API context.
	**/
	public var CoreApi = "core-api";
	/**
		Usage: `-D cppia`
		Generate cpp instruction assembly.
	**/
	public var Cppia = "cppia";
	/**
		Usage: `-D nocppiaast`
		Use legacy cppia generation.
	**/
	public var NoCppiaAst = "nocppiaast";
	/**
		Usage: `-D dce`
		Set the dead code elimination mode. (default: std)
		Accepts parameters: mode: std | full | no
		@see: https://haxe.org/manual/cr-dce.html
	**/
	public var Dce : DefinedValue<DceValues> = "dce";
	/**
		Usage: `-D dce-debug`
		Show DCE log.
		@see: https://haxe.org/manual/cr-dce.html
	**/
	public var DceDebug = "dce-debug";
	/**
		Usage: `-D debug`
		Activated when compiling with -debug.
	**/
	public var Debug = "debug";
	/**
		Usage: `-D disable-hxb-cache`
		Use in-memory cache instead of hxb powered cache.
	**/
	public var DisableHxbCache = "disable-hxb-cache";
	/**
		Usage: `-D disable-unicode-strings`
		Disable Unicode support in `String` type.
		Platform: cpp
	**/
	public var DisableUnicodeStrings = "disable-unicode-strings";
	/**
		Usage: `-D display`
		Activated during completion.
		@see: https://haxe.org/manual/cr-completion.html
	**/
	public var Display = "display";
	/**
		Usage: `-D display-stdin`
		Read the contents of a file specified in `--display` from standard input.
	**/
	public var DisplayStdin = "display-stdin";
	/**
		Usage: `-D dll-export`
		GenCPP experimental linking.
		Platform: cpp
	**/
	public var DllExport = "dll-export";
	/**
		Usage: `-D doc-gen`
		Do not perform any removal/change in order to correctly generate documentation.
	**/
	public var DocGen = "doc-gen";
	/**
		Usage: `-D dump`
		Dump typed AST in dump subdirectory using specified mode or non-prettified default.
		Accepts parameters: mode: pretty | record | position | legacy
	**/
	public var Dump : DefinedValue<DumpValues> = "dump";
	/**
		Usage: `-D dump-path`
		Path to generate dumps to (default: "dump").
		Accepts parameters: path
	**/
	public var DumpPath = "dump-path";
	/**
		Usage: `-D dump-dependencies`
		Dump the classes dependencies in a dump subdirectory.
	**/
	public var DumpDependencies = "dump-dependencies";
	/**
		Usage: `-D dump-ignore-var-ids`
		Remove variable IDs from non-pretty dumps (helps with diff).
	**/
	public var DumpIgnoreVarIds = "dump-ignore-var-ids";
	/**
		Usage: `-D dynamic-interface-closures`
		Use slow path for interface closures to save space.
		Platform: cpp
	**/
	public var DynamicInterfaceClosures = "dynamic-interface-closures";
	/**
		Usage: `-D eval-call-stack-depth`
		Set maximum call stack depth for eval. (default: 1000)
		Accepts parameters: depth
		Platform: eval
	**/
	public var EvalCallStackDepth = "eval-call-stack-depth";
	/**
		Usage: `-D eval-debugger`
		Support debugger in macro/interp mode. Allows `host:port` value to open a socket. Implies eval-stack.
		Platform: eval
	**/
	public var EvalDebugger = "eval-debugger";
	/**
		Usage: `-D eval-print-depth`
		Set maximum print depth (before replacing with '<...>') for eval. (default: 5)
		Accepts parameters: depth
		Platform: eval
	**/
	public var EvalPrintDepth = "eval-print-depth";
	/**
		Usage: `-D eval-pretty-print`
		Enable indented output for eval printing.
		Platform: eval
	**/
	public var EvalPrettyPrint = "eval-pretty-print";
	/**
		Usage: `-D eval-stack`
		Record stack information in macro/interp mode.
		Platform: eval
	**/
	public var EvalStack = "eval-stack";
	/**
		Usage: `-D eval-times`
		Record per-method execution times in macro/interp mode. Implies eval-stack.
		Platform: eval
	**/
	public var EvalTimes = "eval-times";
	/**
		Usage: `-D fail-fast`
		Abort compilation when first error occurs.
	**/
	public var FailFast = "fail-fast";
	/**
		Usage: `-D filter-times`
		Record per-filter execution times upon --times.
	**/
	public var FilterTimes = "filter-times";
	/**
		Usage: `-D fdb`
		Enable full flash debug infos for FDB interactive debugging.
		Platform: flash
	**/
	public var Fdb = "fdb";
	/**
		Usage: `-D file-extension`
		Output filename extension for cpp source code.
		Platform: cpp
	**/
	public var FileExtension = "file-extension";
	/**
		Usage: `-D flash-strict`
		More strict typing for flash target.
		Platform: flash
	**/
	public var FlashStrict = "flash-strict";
	/**
		Usage: `-D flash-use-stage`
		Keep the SWF library initial stage.
		Platform: flash
	**/
	public var FlashUseStage = "flash-use-stage";
	/**
		Usage: `-D force-native-property`
		Tag all properties with `:nativeProperty` metadata for 3.1 compatibility.
		Platform: cpp
	**/
	public var ForceNativeProperty = "force-native-property";
	/**
		Usage: `-D haxe3compat`
		Gives warnings about transition from Haxe 3.x to Haxe 4.0.
	**/
	public var Haxe3Compat = "haxe3compat";
	/**
		Usage: `-D haxe-boot`
		Give the name 'haxe' to the flash boot class instead of a generated name.
		Platform: flash
	**/
	public var HaxeBoot = "haxe-boot";
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
		Usage: `-D haxe-next`
		Enable experimental features that are meant to be released on next Haxe version.
	**/
	public var HaxeNext = "haxe-next";
	/**
		Usage: `-D HAXE_OUTPUT_FILE`
		Force the full output name of the executable/library without library prefix and debug suffix.
		Accepts parameters: name
		Platform: cpp
	**/
	public var HaxeOutputFile = "HAXE_OUTPUT_FILE";
	/**
		Usage: `-D HAXE_OUTPUT_PART`
		Output name of the executable/library. (default: main class name)
		Accepts parameters: name
		Platform: cpp
	**/
	public var HaxeOutputPart = "HAXE_OUTPUT_PART";
	/**
		Usage: `-D hlc`
		Defined by compiler when using hl/c target.
		Platform: hl
	**/
	public var Hlc = "hlc";
	/**
		Usage: `-D hl-ver`
		The HashLink version to target. (default: 1.10.0)
		Accepts parameters: version
		Platform: hl
	**/
	public var HlVer = "hl-ver";
	/**
		Usage: `-D hxb-times`
		Display hxb timing when used with `--times`.
	**/
	public var HxbTimes = "hxb-times";
	/**
		Usage: `-D hxcpp-api-level`
		Provided to allow compatibility between hxcpp versions.
		Platform: cpp
	**/
	public var HxcppApiLevel = "hxcpp-api-level";
	/**
		Usage: `-D HXCPP-GC-GENERATIONAL`
		Experimental Garbage Collector.
		Platform: cpp
	**/
	public var HxcppGcGenerational = "HXCPP-GC-GENERATIONAL";
	/**
		Usage: `-D HXCPP-DEBUGGER`
		Include additional information for hxcpp-debugger.
		Platform: cpp
	**/
	public var HxcppDebugger = "HXCPP-DEBUGGER";
	/**
		Usage: `-D HXCPP-GC-MOVING`
		Allow garbage collector to move memory to reduce fragmentation
		Platform: cpp
	**/
	public var HxcppGcMoving = "HXCPP-GC-MOVING";
	/**
		Usage: `-D HXCPP-GC-SUMMARY`
		Print small profiling summary at end of program
		Platform: cpp
	**/
	public var HxcppGcSummary = "HXCPP-GC-SUMMARY";
	/**
		Usage: `-D HXCPP-GC-DYNAMIC-SIZE`
		Monitor GC times and expand memory working space if required
		Platform: cpp
	**/
	public var HxcppGcDynamicSize = "HXCPP-GC-DYNAMIC-SIZE";
	/**
		Usage: `-D HXCPP-GC-BIG-BLOCKS`
		Allow working memory greater than 1 Gig
		Platform: cpp
	**/
	public var HxcppGcBigBlocks = "HXCPP-GC-BIG-BLOCKS";
	/**
		Usage: `-D HXCPP-GC-DEBUG-LEVEL`
		Number 1-4 indicating additional debugging in GC
		Platform: cpp
	**/
	public var HxcppGcDebugLevel = "HXCPP-GC-DEBUG-LEVEL";
	/**
		Usage: `-D HXCPP-DEBUG-LINK`
		Add symbols to final binary, even in release mode.
		Platform: cpp
	**/
	public var HxcppDebugLink = "HXCPP-DEBUG-LINK";
	/**
		Usage: `-D HXCPP-STACK-TRACE`
		Have valid function-level stack traces, even in release mode.
		Platform: cpp
	**/
	public var HxcppStackTrace = "HXCPP-STACK-TRACE";
	/**
		Usage: `-D HXCPP-STACK-LINE`
		Include line information in stack traces, even in release mode.
		Platform: cpp
	**/
	public var HxcppStackLine = "HXCPP-STACK-LINE";
	/**
		Usage: `-D HXCPP-CHECK-POINTER`
		Add null-pointer checks, even in release mode.
		Platform: cpp
	**/
	public var HxcppCheckPointer = "HXCPP-CHECK-POINTER";
	/**
		Usage: `-D HXCPP-PROFILER`
		Add profiler support
		Platform: cpp
	**/
	public var HxcppProfiler = "HXCPP-PROFILER";
	/**
		Usage: `-D HXCPP-TELEMETRY`
		Add telemetry support
		Platform: cpp
	**/
	public var HxcppTelemetry = "HXCPP-TELEMETRY";
	/**
		Usage: `-D HXCPP-CPP11`
		Use C++11 features and link libraries
		Platform: cpp
	**/
	public var HxcppCpp11 = "HXCPP-CPP11";
	/**
		Usage: `-D HXCPP-VERBOSE`
		Print extra output from build tool.
		Platform: cpp
	**/
	public var HxcppVerbose = "HXCPP-VERBOSE";
	/**
		Usage: `-D HXCPP-TIMES`
		Show some basic profiling information
		Platform: cpp
	**/
	public var HxcppTimes = "HXCPP-TIMES";
	/**
		Usage: `-D HXCPP-M32`
		Force 32-bit compile for current desktop
		Platform: cpp
	**/
	public var HxcppM32 = "HXCPP-M32";
	/**
		Usage: `-D HXCPP-M64`
		Force 64-bit compile for current desktop
		Platform: cpp
	**/
	public var HxcppM64 = "HXCPP-M64";
	/**
		Usage: `-D HXCPP-ARM64`
		Compile arm-based devices for 64 bits
		Platform: cpp
	**/
	public var HxcppArm64 = "HXCPP-ARM64";
	/**
		Usage: `-D HXCPP-LINUX-ARM64`
		Run on a linux ARM64 device
		Platform: cpp
	**/
	public var HxcppLinuxArm64 = "HXCPP-LINUX-ARM64";
	/**
		Usage: `-D hxcpp-smart-strings`
		Use wide strings in hxcpp. (Turned on by default unless `-D disable-unicode-strings` is specified.)
		Platform: cpp
	**/
	public var HxcppSmartStings = "hxcpp-smart-strings";
	/**
		Usage: `-D include-prefix`
		Prepend path to generated include files.
		Platform: cpp
	**/
	public var IncludePrefix = "include-prefix";
	/**
		Usage: `-D interp`
		The code is compiled to be run with `--interp`.
	**/
	public var Interp = "interp";
	/**
		Usage: `-D js-classic`
		Don't use a function wrapper and strict mode in JS output.
		Platform: js
	**/
	public var JsClassic = "js-classic";
	/**
		Usage: `-D js-es`
		Generate JS compliant with given ES standard version. (default: 5)
		Accepts parameters: version: 3 | 5 | 6
		Platform: js
		@see: https://haxe.org/manual/target-javascript-es6.html
	**/
	public var JsEs : DefinedValue<JsEsValues> = "js-es";
	/**
		Usage: `-D js-enums-as-arrays`
		Generate enum representation as array instead of as object.
		Platform: js
	**/
	public var JsEnumsAsArrays = "js-enums-as-arrays";
	/**
		Usage: `-D js_global`
		Customizes the global object name.
		Platform: js
	**/
	public var JsGlobal = "js_global";
	/**
		Usage: `-D js-unflatten`
		Generate nested objects for packages and types.
		Platform: js
	**/
	public var JsUnflatten = "js-unflatten";
	/**
		Usage: `-D js-source-map`
		Generate JavaScript source map even in non-debug mode. Deprecated in favor of `-D source-map`.
		Platform: js
	**/
	public var JsSourceMap = "js-source-map";
	/**
		Usage: `-D source-map`
		Generate source map for compiled files.
		Platform: php|js
	**/
	public var SourceMap = "source-map";
	/**
		Usage: `-D jvm.compression-level`
		Set the compression level of the generated file between 0 (no compression) and 9 (highest compression). Default: 6
		Platform: jvm
	**/
	public var JvmCompressionLevel = "jvm.compression-level";
	/**
		Usage: `-D jvm.dynamic-level`
		Controls the amount of dynamic support code being generated. 0 = none, 1 = field read/write optimization (default), 2 = compile-time method closures
		Platform: jvm
	**/
	public var JvmDynamicLevel = "jvm.dynamic-level";
	/**
		Usage: `-D loop-unroll-max-cost`
		Maximum cost (number of expressions * iterations) before loop unrolling is canceled. (default: 250)
		Accepts parameters: cost
	**/
	public var LoopUnrollMaxCost = "loop-unroll-max-cost";
	/**
		Usage: `-D lua-jit`
		Enable the jit compiler for lua (version 5.2 only).
		Platform: lua
	**/
	public var LuaJit = "lua-jit";
	/**
		Usage: `-D lua-vanilla`
		Generate code lacking compiled extern lib support (e.g. utf8).
		Platform: lua
	**/
	public var LuaVanilla = "lua-vanilla";
	/**
		Usage: `-D lua-ver`
		The lua version to target.
		Accepts parameters: version
		Platform: lua
	**/
	public var LuaVer = "lua-ver";
	/**
		Usage: `-D macro`
		Defined when code is compiled in the macro context.
		@see: https://haxe.org/manual/macro.html
	**/
	public var Macro = "macro";
	/**
		Usage: `-D macro-times`
		Display per-macro timing when used with `--times`.
	**/
	public var MacroTimes = "macro-times";
	/**
		Usage: `-D neko-source`
		Output neko source instead of bytecode.
		Platform: neko
	**/
	public var NekoSource = "neko-source";
	/**
		Usage: `-D neko-no-haxelib-paths`
		Disable hard-coded Haxelib ndll paths.
		Platform: neko
	**/
	public var NekoNoHaxelibPaths = "neko-no-haxelib-paths";
	/**
		Usage: `-D neko-v1`
		Keep Neko 1.x compatibility.
		Platform: neko
	**/
	public var NekoV1 = "neko-v1";
	/**
		Usage: `-D network-sandbox`
		Use local network sandbox instead of local file access one.
		Platform: flash
	**/
	public var NetworkSandbox = "network-sandbox";
	/**
		Usage: `-D no-compilation`
		Disable final compilation.
		Platform: cpp|hl
	**/
	public var NoCompilation = "no-compilation";
	/**
		Usage: `-D no-debug`
		Remove all debug macros from cpp output.
	**/
	public var NoDebug = "no-debug";
	/**
		Usage: `-D no-deprecation-warnings`
		Do not warn if fields annotated with `@:deprecated` are used.
	**/
	public var NoDeprecationWarnings = "no-deprecation-warnings";
	/**
		Usage: `-D no-flash-override`
		Change overrides on some basic classes into HX suffixed methods
		Platform: flash
	**/
	public var NoFlashOverride = "no-flash-override";
	/**
		Usage: `-D no-opt`
		Disable optimizations.
	**/
	public var NoOpt = "no-opt";
	/**
		Usage: `-D no-inline`
		Disable inlining.
		@see: https://haxe.org/manual/class-field-inline.html
	**/
	public var NoInline = "no-inline";
	/**
		Usage: `-D keep-inline-positions`
		Don't substitute positions of inlined expressions with the position of the place of inlining.
		@see: https://haxe.org/manual/class-field-inline.html
	**/
	public var KeepInlinePositions = "keep-inline-positions";
	/**
		Usage: `-D no-macro-cache`
		Disable macro context caching.
	**/
	public var NoMacroCache = "no-macro-cache";
	/**
		Usage: `-D no-swf-compress`
		Disable SWF output compression.
		Platform: flash
	**/
	public var NoSwfCompress = "no-swf-compress";
	/**
		Usage: `-D no-traces`
		Disable all trace calls.
	**/
	public var NoTraces = "no-traces";
	/**
		Usage: `-D objc`
		Sets the hxcpp output to Objective-C++ classes. Must be defined for interop.
		Platform: cpp
	**/
	public var Objc = "objc";
	/**
		Usage: `-D old-error-format`
		Use Haxe 3.x zero-based column error messages instead of new one-based format.
	**/
	public var OldErrorFormat = "old-error-format";
	/**
		Usage: `-D php-prefix`
		Root namespace for generated php classes. E.g. if compiled with`-D php-prefix=some.sub`, then all classes will be generated in `\some\sub` namespace.
		Accepts parameters: dot-separated namespace
		Platform: php
	**/
	public var PhpPrefix = "php-prefix";
	/**
		Usage: `-D php-lib`
		Select the name for the php lib folder.
		Accepts parameters: folder name
		Platform: php
	**/
	public var PhpLib = "php-lib";
	/**
		Usage: `-D php-front`
		Select the name for the php front file. (default: `index.php`)
		Accepts parameters: filename
		Platform: php
	**/
	public var PhpFront = "php-front";
	/**
		Usage: `-D python-version`
		The python version to target. (default: 3.3)
		Accepts parameters: version
		Platform: python
	**/
	public var PythonVersion = "python-version";
	/**
		Usage: `-D real-position`
		Removes position comments in Php output.
		Platform: php
	**/
	public var RealPosition = "real-position";
	/**
		Usage: `-D retain-untyped-meta`
		Prevents arbitrary expression metadata from being discarded upon typing.
	**/
	public var RetainUntypedMeta = "retain-untyped-meta";
	/**
		Usage: `-D scriptable`
		GenCPP internal.
		Platform: cpp
	**/
	public var Scriptable = "scriptable";
	/**
		Usage: `-D shallow-expose`
		Expose types to surrounding scope of Haxe generated closure without writing to window object.
		Platform: js
	**/
	public var ShallowExpose = "shallow-expose";
	/**
		Usage: `-D source-header`
		Print value as comment on top of generated files, use '' value to disable.
	**/
	public var SourceHeader = "source-header";
	/**
		Usage: `-D source-map-content`
		Include the Haxe sources as part of the JS source map.
		Platform: js
	**/
	public var SourceMapContent = "source-map-content";
	/**
		Usage: `-D static`
		Defined if the current target is static.
	**/
	public var Static = "static";
	/**
		Usage: `-D std-encoding-utf8`
		Force utf8 encoding for stdin, stdout and stderr
		Platform: python
	**/
	public var StdEncodingUtf8 = "std-encoding-utf8";
	/**
		Usage: `-D swc`
		Output a SWC instead of a SWF.
		Platform: flash
	**/
	public var Swc = "swc";
	/**
		Usage: `-D swf-compress-level`
		Set the amount of compression for the SWF output.
		Accepts parameters: level: 1-9
		Platform: flash
	**/
	public var SwfCompressLevel : DefinedValue<SwfCompressLevelRange> = "swf-compress-level";
	/**
		Usage: `-D swf-debug-password`
		Set a password for debugging.
		Accepts parameters: password
		Platform: flash
	**/
	public var SwfDebugPassword = "swf-debug-password";
	/**
		Usage: `-D swf-direct-blit`
		Use hardware acceleration to blit graphics.
		Platform: flash
	**/
	public var SwfDirectBlit = "swf-direct-blit";
	/**
		Usage: `-D swf-gpu`
		Use GPU compositing features when drawing graphics.
		Platform: flash
	**/
	public var SwfGpu = "swf-gpu";
	/**
		Usage: `-D swf-header`
		define SWF header (width:height:fps:color)
		Platform: flash
	**/
	public var SwfHeader = "swf-header";
	/**
		Usage: `-D swf-metadata`
		Include contents of the given file as metadata in the SWF.
		Accepts parameters: file
		Platform: flash
	**/
	public var SwfMetadata = "swf-metadata";
	/**
		Usage: `-D swf-preloader-frame`
		Insert empty first frame in SWF.
		Platform: flash
	**/
	public var SwfPreloaderFrame = "swf-preloader-frame";
	/**
		Usage: `-D swf-protected`
		Compile Haxe `private` as `protected` in the SWF instead of `public`.
		Platform: flash
	**/
	public var SwfProtected = "swf-protected";
	/**
		Usage: `-D swf-script-timeout`
		Maximum ActionScript processing time before script stuck dialog box displays.
		Accepts parameters: time in seconds
		Platform: flash
	**/
	public var SwfScriptTimeout = "swf-script-timeout";
	/**
		Usage: `-D swf-use-doabc`
		Use `DoAbc` SWF-tag instead of `DoAbcDefine`.
		Platform: flash
	**/
	public var SwfUseDoAbc = "swf-use-doabc";
	/**
		Usage: `-D sys`
		Defined for all system platforms.
	**/
	public var Sys = "sys";
	/**
		Usage: `-D use-nekoc`
		Use `nekoc` compiler instead of the internal one.
		Platform: neko
	**/
	public var UseNekoc = "use-nekoc";
	/**
		Usage: `-D utf16`
		Defined for all platforms that use UTF-16 string encoding with UCS-2 API.
	**/
	public var Utf16 = "utf16";
	/**
		Usage: `-D vcproj`
		GenCPP internal.
		Platform: cpp
	**/
	public var Vcproj = "vcproj";
	/**
		Usage: `-D warn-var-shadowing`
		Warn about shadowing variable declarations.
	**/
	public var WarnVarShadowing = "warn-var-shadowing";
	/**
		Usage: `-D no-tre`
		Disable tail recursion elimination.
	**/
	public var NoTre = "no-tre";
	/**
		Usage: `-D message.reporting`
		Select message reporting mode for compiler output. (default: pretty)
		Accepts parameters: mode: classic | pretty | indent
	**/
	public var MessageReporting : DefinedValue<MessageReportingValues> = "message.reporting";
	/**
		Usage: `-D message.no-color`
		Disable ANSI color codes in message reporting.
	**/
	public var MessageNoColor = "message.no-color";
	/**
		Usage: `-D message.absolute-positions`
		Use absolute character positions instead of line/columns for message reporting.
	**/
	public var MessageAbsolutePositions = "message.absolute-positions";
	/**
		Usage: `-D message.log-file`
		Path to a text file to write message reporting to, in addition to regular output.
	**/
	public var MessageLogFile = "message.log-file";
	/**
		Usage: `-D message.log-format`
		Select message reporting mode for message log file. (default: indent)
		Accepts parameters: format: classic | pretty | indent
	**/
	public var MessageLogFormat : DefinedValue<MessageLogFormatValues> = "message.log-format";
	/**
		Usage: `-D target.static`
	**/
	public var TargetStatic = "target.static";
	/**
		Usage: `-D target.sys`
	**/
	public var TargetSys = "target.sys";
	/**
		Usage: `-D target.utf16`
	**/
	public var TargetUTF16 = "target.utf16";
	/**
		Usage: `-D target.threaded`
	**/
	public var TargetThreaded = "target.threaded";
	/**
		Usage: `-D target.unicode`
	**/
	public var TargetUnicode = "target.unicode";
	/**
		Usage: `-D use_rtti_doc`
	**/
	public var UseRttiDoc = "use_rtti_doc";
	/**
		Usage: `-D display-details`
		
		@see: https://haxe.org/manual/cr-completion-field-access.html#since-haxe-3.2.0
	**/
	public var DisplayDetails = "display-details";
	/**
		Usage: `-D no_copt`
	**/
	public var NoCOpt = "no_copt";
	/**
		Usage: `-D target.atomics`
	**/
	public var TargetAtomics = "target.atomics";
	/**
		Usage: `-D flash`
		Targeting the Flash platform.
		Platform: flash
	**/
	public var Flash = "flash";
	/**
		Usage: `-D neko`
		Targeting the Neko platform.
		Platform: neko
	**/
	public var Neko = "neko";
	/**
		Usage: `-D js`
		Targeting the JavaScript platform.
		Platform: js
	**/
	public var JavaScript = "js";
	/**
		Usage: `-D lua`
		Targeting the Lua platform.
		Platform: lua
	**/
	public var Lua = "lua";
	/**
		Usage: `-D php`
		Targeting the Php platform.
		Platform: php
	**/
	public var Php = "php";
	/**
		Usage: `-D cpp`
		Targeting the C++ platform.
		Platform: cpp
	**/
	public var Cpp = "cpp";
	/**
		Usage: `-D cs`
		Targeting the CSharp platform.
		Platform: cs
	**/
	public var CSharp = "cs";
	/**
		Usage: `-D java`
		Targeting the Java platform.
		Platform: java
	**/
	public var Java = "java";
	/**
		Usage: `-D python`
		Targeting the Python platform.
		Platform: python
	**/
	public var Python = "python";
	/**
		Usage: `-D hl`
		Targeting the Hashlink platform.
		Platform: hl
	**/
	public var Hashlink = "hl";
	/**
		Usage: `-D eval`
		Currently running in the internal macro system.
		Platform: eval
	**/
	public var Eval = "eval";
	public inline function get():Null<String> {
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
	@:op(A || B)
	@:commutative
	private static inline function or(a:Defines, b:Bool) {
		return a.asBool() || b;
	}
}
enum abstract AnalyzerTimesValues(String) from String to String to Defines {
	public static inline function get(self:DefinedValue<AnalyzerTimesValues>):Null<AnalyzerTimesValues> {
		return haxe.macro.Context.definedValue(self);
	}
	public var Level0 = "0";
	public var Level1 = "1";
	public var Level2 = "2";
}
enum abstract DceValues(String) from String to String to Defines {
	public static inline function get(self:DefinedValue<DceValues>):Null<DceValues> {
		return haxe.macro.Context.definedValue(self);
	}
	public var Standard = "std";
	public var Full = "full";
	public var No = "no";
}
enum abstract DumpValues(String) from String to String to Defines {
	public static inline function get(self:DefinedValue<DumpValues>):Null<DumpValues> {
		return haxe.macro.Context.definedValue(self);
	}
	public var Pretty = "pretty";
	public var Record = "record";
	public var Position = "position";
	public var Legacy = "legacy";
}
enum abstract JsEsValues(String) from String to String to Defines {
	public static inline function get(self:DefinedValue<JsEsValues>):Null<JsEsValues> {
		return haxe.macro.Context.definedValue(self);
	}
	public var Version3 = "3";
	public var Version5 = "5";
	public var Version6 = "6";
}
enum abstract SwfCompressLevelRange(String) from String to String to Defines {
	public static inline function get(self:DefinedValue<SwfCompressLevelRange>):Null<SwfCompressLevelRange> {
		return haxe.macro.Context.definedValue(self);
	}
	public var Level1 = "1";
	public var Level2 = "2";
	public var Level3 = "3";
	public var Level4 = "4";
	public var Level5 = "5";
	public var Level6 = "6";
	public var Level7 = "7";
	public var Level8 = "8";
	public var Level9 = "9";
}
enum abstract MessageReportingValues(String) from String to String to Defines {
	public static inline function get(self:DefinedValue<MessageReportingValues>):Null<MessageReportingValues> {
		return haxe.macro.Context.definedValue(self);
	}
	public var Classic = "classic";
	public var Pretty = "pretty";
	public var Indent = "indent";
}
enum abstract MessageLogFormatValues(String) from String to String to Defines {
	public static inline function get(self:DefinedValue<MessageLogFormatValues>):Null<MessageLogFormatValues> {
		return haxe.macro.Context.definedValue(self);
	}
	public var Classic = "classic";
	public var Pretty = "pretty";
	public var Indent = "indent";
}
abstract DefinedValue<T>(String) from String to String to Defines {

}
