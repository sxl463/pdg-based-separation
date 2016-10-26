; ModuleID = 'gzip.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config = type { i16, i16, i16, i16 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.ct_data = type { %union.anon.4, %union.anon.0 }
%union.anon.4 = type { i16 }
%union.anon.0 = type { i16 }
%struct.tree_desc = type { %struct.ct_data*, %struct.ct_data*, i32*, i32, i32, i32, i32 }
%struct.option = type { i8*, i32, i32*, i32 }
%struct.utimbuf = type { i64, i64 }
%struct.__dirstream = type opaque
%struct.dirent = type { i64, i64, i16, i8, [256 x i8] }
%struct.huft = type { i8, i8, %union.anon }
%union.anon = type { %struct.huft* }

@zfile = internal unnamed_addr global i32 0, align 4
@bi_buf = internal unnamed_addr global i16 0, align 2
@bi_valid = internal unnamed_addr global i32 0, align 4
@read_buf = common global i32 (i8*, i32)* null, align 8
@window_size = global i64 65536, align 8
@.str = private unnamed_addr constant [15 x i8] c"bad pack level\00", align 1
@compr_level = internal unnamed_addr global i32 0, align 4
@configuration_table = internal unnamed_addr constant [10 x %struct.config] [%struct.config zeroinitializer, %struct.config { i16 4, i16 4, i16 8, i16 4 }, %struct.config { i16 4, i16 5, i16 16, i16 8 }, %struct.config { i16 4, i16 6, i16 32, i16 32 }, %struct.config { i16 4, i16 4, i16 16, i16 16 }, %struct.config { i16 8, i16 16, i16 32, i16 32 }, %struct.config { i16 8, i16 16, i16 128, i16 128 }, %struct.config { i16 8, i16 32, i16 128, i16 256 }, %struct.config { i16 32, i16 128, i16 258, i16 1024 }, %struct.config { i16 32, i16 258, i16 258, i16 4096 }], align 16
@max_lazy_match = internal unnamed_addr global i32 0, align 4
@good_match = common global i32 0, align 4
@nice_match = common global i32 0, align 4
@max_chain_length = common global i32 0, align 4
@strstart = common global i32 0, align 4
@block_start = common global i64 0, align 8
@lookahead = internal unnamed_addr global i32 0, align 4
@eofile = internal unnamed_addr global i1 false
@ins_h = internal unnamed_addr global i32 0, align 4
@prev_length = common global i32 0, align 4
@match_start = common global i32 0, align 4
@ascii = global i32 0, align 4
@to_stdout = global i32 0, align 4
@decompress = global i32 0, align 4
@force = global i32 0, align 4
@no_name = global i32 -1, align 4
@no_time = global i32 -1, align 4
@recursive = global i32 0, align 4
@list = global i32 0, align 4
@verbose = global i32 0, align 4
@quiet = global i32 0, align 4
@do_lzw = global i32 0, align 4
@test = global i32 0, align 4
@maxbits = global i32 16, align 4
@method = global i32 8, align 4
@level = global i32 6, align 4
@exit_code = global i32 0, align 4
@args = global i8** null, align 8
@total_in = global i64 0, align 8
@total_out = global i64 0, align 8
@remove_ofname = global i32 0, align 4
@.str1 = private unnamed_addr constant [6 x i8] c"ascii\00", align 1
@.str12 = private unnamed_addr constant [10 x i8] c"to-stdout\00", align 1
@.str2 = private unnamed_addr constant [7 x i8] c"stdout\00", align 1
@.str3 = private unnamed_addr constant [11 x i8] c"decompress\00", align 1
@.str4 = private unnamed_addr constant [11 x i8] c"uncompress\00", align 1
@.str5 = private unnamed_addr constant [6 x i8] c"force\00", align 1
@.str6 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str7 = private unnamed_addr constant [5 x i8] c"list\00", align 1
@.str8 = private unnamed_addr constant [8 x i8] c"license\00", align 1
@.str9 = private unnamed_addr constant [8 x i8] c"no-name\00", align 1
@.str10 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str11 = private unnamed_addr constant [6 x i8] c"quiet\00", align 1
@.str123 = private unnamed_addr constant [7 x i8] c"silent\00", align 1
@.str13 = private unnamed_addr constant [10 x i8] c"recursive\00", align 1
@.str14 = private unnamed_addr constant [7 x i8] c"suffix\00", align 1
@.str15 = private unnamed_addr constant [5 x i8] c"test\00", align 1
@.str16 = private unnamed_addr constant [8 x i8] c"no-time\00", align 1
@.str17 = private unnamed_addr constant [8 x i8] c"verbose\00", align 1
@.str18 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str19 = private unnamed_addr constant [5 x i8] c"fast\00", align 1
@.str20 = private unnamed_addr constant [5 x i8] c"best\00", align 1
@.str21 = private unnamed_addr constant [4 x i8] c"lzw\00", align 1
@.str22 = private unnamed_addr constant [5 x i8] c"bits\00", align 1
@longopts = global <{ { i8*, i32, i32*, i32, [4 x i8] }, { i8*, i32, i32*, i32, [4 x i8] }, { i8*, i32, i32*, i32, [4 x i8] }, { i8*, i32, i32*, i32, [4 x i8] }, { i8*, i32, i32*, i32, [4 x i8] }, { i8*, i32, i32*, i32, [4 x i8] }, { i8*, i32, i32*, i32, [4 x i8] }, { i8*, i32, i32*, i32, [4 x i8] }, { i8*, i32, i32*, i32, [4 x i8] }, { i8*, i32, i32*, i32, [4 x i8] }, { i8*, i32, i32*, i32, [4 x i8] }, { i8*, i32, i32*, i32, [4 x i8] }, { i8*, i32, i32*, i32, [4 x i8] }, { i8*, i32, i32*, i32, [4 x i8] }, { i8*, i32, i32*, i32, [4 x i8] }, { i8*, i32, i32*, i32, [4 x i8] }, { i8*, i32, i32*, i32, [4 x i8] }, { i8*, i32, i32*, i32, [4 x i8] }, { i8*, i32, i32*, i32, [4 x i8] }, { i8*, i32, i32*, i32, [4 x i8] }, { i8*, i32, i32*, i32, [4 x i8] }, { i8*, i32, i32*, i32, [4 x i8] }, { i8*, i32, i32*, i32, [4 x i8] }, { i8*, i32, i32*, i32, [4 x i8] } }> <{ { i8*, i32, i32*, i32, [4 x i8] } { i8* getelementptr inbounds ([6 x i8]* @.str1, i32 0, i32 0), i32 0, i32* null, i32 97, [4 x i8] undef }, { i8*, i32, i32*, i32, [4 x i8] } { i8* getelementptr inbounds ([10 x i8]* @.str12, i32 0, i32 0), i32 0, i32* null, i32 99, [4 x i8] undef }, { i8*, i32, i32*, i32, [4 x i8] } { i8* getelementptr inbounds ([7 x i8]* @.str2, i32 0, i32 0), i32 0, i32* null, i32 99, [4 x i8] undef }, { i8*, i32, i32*, i32, [4 x i8] } { i8* getelementptr inbounds ([11 x i8]* @.str3, i32 0, i32 0), i32 0, i32* null, i32 100, [4 x i8] undef }, { i8*, i32, i32*, i32, [4 x i8] } { i8* getelementptr inbounds ([11 x i8]* @.str4, i32 0, i32 0), i32 0, i32* null, i32 100, [4 x i8] undef }, { i8*, i32, i32*, i32, [4 x i8] } { i8* getelementptr inbounds ([6 x i8]* @.str5, i32 0, i32 0), i32 0, i32* null, i32 102, [4 x i8] undef }, { i8*, i32, i32*, i32, [4 x i8] } { i8* getelementptr inbounds ([5 x i8]* @.str6, i32 0, i32 0), i32 0, i32* null, i32 104, [4 x i8] undef }, { i8*, i32, i32*, i32, [4 x i8] } { i8* getelementptr inbounds ([5 x i8]* @.str7, i32 0, i32 0), i32 0, i32* null, i32 108, [4 x i8] undef }, { i8*, i32, i32*, i32, [4 x i8] } { i8* getelementptr inbounds ([8 x i8]* @.str8, i32 0, i32 0), i32 0, i32* null, i32 76, [4 x i8] undef }, { i8*, i32, i32*, i32, [4 x i8] } { i8* getelementptr inbounds ([8 x i8]* @.str9, i32 0, i32 0), i32 0, i32* null, i32 110, [4 x i8] undef }, { i8*, i32, i32*, i32, [4 x i8] } { i8* getelementptr inbounds ([5 x i8]* @.str10, i32 0, i32 0), i32 0, i32* null, i32 78, [4 x i8] undef }, { i8*, i32, i32*, i32, [4 x i8] } { i8* getelementptr inbounds ([6 x i8]* @.str11, i32 0, i32 0), i32 0, i32* null, i32 113, [4 x i8] undef }, { i8*, i32, i32*, i32, [4 x i8] } { i8* getelementptr inbounds ([7 x i8]* @.str123, i32 0, i32 0), i32 0, i32* null, i32 113, [4 x i8] undef }, { i8*, i32, i32*, i32, [4 x i8] } { i8* getelementptr inbounds ([10 x i8]* @.str13, i32 0, i32 0), i32 0, i32* null, i32 114, [4 x i8] undef }, { i8*, i32, i32*, i32, [4 x i8] } { i8* getelementptr inbounds ([7 x i8]* @.str14, i32 0, i32 0), i32 1, i32* null, i32 83, [4 x i8] undef }, { i8*, i32, i32*, i32, [4 x i8] } { i8* getelementptr inbounds ([5 x i8]* @.str15, i32 0, i32 0), i32 0, i32* null, i32 116, [4 x i8] undef }, { i8*, i32, i32*, i32, [4 x i8] } { i8* getelementptr inbounds ([8 x i8]* @.str16, i32 0, i32 0), i32 0, i32* null, i32 84, [4 x i8] undef }, { i8*, i32, i32*, i32, [4 x i8] } { i8* getelementptr inbounds ([8 x i8]* @.str17, i32 0, i32 0), i32 0, i32* null, i32 118, [4 x i8] undef }, { i8*, i32, i32*, i32, [4 x i8] } { i8* getelementptr inbounds ([8 x i8]* @.str18, i32 0, i32 0), i32 0, i32* null, i32 86, [4 x i8] undef }, { i8*, i32, i32*, i32, [4 x i8] } { i8* getelementptr inbounds ([5 x i8]* @.str19, i32 0, i32 0), i32 0, i32* null, i32 49, [4 x i8] undef }, { i8*, i32, i32*, i32, [4 x i8] } { i8* getelementptr inbounds ([5 x i8]* @.str20, i32 0, i32 0), i32 0, i32* null, i32 57, [4 x i8] undef }, { i8*, i32, i32*, i32, [4 x i8] } { i8* getelementptr inbounds ([4 x i8]* @.str21, i32 0, i32 0), i32 0, i32* null, i32 90, [4 x i8] undef }, { i8*, i32, i32*, i32, [4 x i8] } { i8* getelementptr inbounds ([5 x i8]* @.str22, i32 0, i32 0), i32 1, i32* null, i32 98, [4 x i8] undef }, { i8*, i32, i32*, i32, [4 x i8] } { i8* null, i32 0, i32* null, i32 0, [4 x i8] undef } }>, align 16
@work = global i32 (i32, i32)* @zip, align 8
@progname = common global i8* null, align 8
@.str23 = private unnamed_addr constant [5 x i8] c".exe\00", align 1
@.str24 = private unnamed_addr constant [5 x i8] c"GZIP\00", align 1
@env = common global i8* null, align 8
@foreground = common global i32 0, align 4
@.str25 = private unnamed_addr constant [3 x i8] c"un\00", align 1
@.str26 = private unnamed_addr constant [4 x i8] c"gun\00", align 1
@.str28 = private unnamed_addr constant [6 x i8] c"gzcat\00", align 1
@z_suffix = common global [31 x i8] zeroinitializer, align 16
@.str29 = private unnamed_addr constant [4 x i8] c".gz\00", align 1
@z_len = common global i32 0, align 4
@.str30 = private unnamed_addr constant [33 x i8] c"ab:cdfhH?lLmMnNqrS:tvVZ123456789\00", align 1
@optarg = external global i8*
@stderr = external global %struct._IO_FILE*
@.str31 = private unnamed_addr constant [38 x i8] c"%s: -Z not supported in this version\0A\00", align 1
@optind = external global i32
@.str32 = private unnamed_addr constant [43 x i8] c"%s: option --ascii ignored on this system\0A\00", align 1
@.str33 = private unnamed_addr constant [27 x i8] c"%s: incorrect suffix '%s'\0A\00", align 1
@ofd = common global i32 0, align 4
@ofname = common global [1024 x i8] zeroinitializer, align 16
@inbuf = common global [32832 x i8] zeroinitializer, align 16
@outbuf = common global [18432 x i8] zeroinitializer, align 16
@d_buf = common global [32768 x i16] zeroinitializer, align 16
@window = common global [65536 x i8] zeroinitializer, align 16
@prev = common global [65536 x i16] zeroinitializer, align 16
@save_orig_name = common global i32 0, align 4
@last_member = common global i32 0, align 4
@part_nb = common global i32 0, align 4
@time_stamp = common global i64 0, align 8
@ifile_size = common global i64 0, align 8
@bytes_in = common global i64 0, align 8
@bytes_out = common global i64 0, align 8
@ifname = common global [1024 x i8] zeroinitializer, align 16
@istat = common global %struct.stat zeroinitializer, align 8
@ifd = common global i32 0, align 4
@insize = common global i32 0, align 4
@inptr = common global i32 0, align 4
@outcnt = common global i32 0, align 4
@do_exit.in_exit = internal unnamed_addr global i1 false
@do_list.first_time = internal unnamed_addr global i1 false
@do_list.methods = internal unnamed_addr constant [9 x i8*] [i8* getelementptr inbounds ([6 x i8]* @.str34, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str35, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str36, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str37, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str38, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str38, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str38, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str38, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str39, i32 0, i32 0)], align 16
@.str34 = private unnamed_addr constant [6 x i8] c"store\00", align 1
@.str35 = private unnamed_addr constant [6 x i8] c"compr\00", align 1
@.str36 = private unnamed_addr constant [6 x i8] c"pack \00", align 1
@.str37 = private unnamed_addr constant [6 x i8] c"lzh  \00", align 1
@.str38 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str39 = private unnamed_addr constant [6 x i8] c"defla\00", align 1
@.str40 = private unnamed_addr constant [29 x i8] c"method  crc     date  time  \00", align 1
@.str42 = private unnamed_addr constant [39 x i8] c"                            %9lu %9lu \00", align 1
@.str43 = private unnamed_addr constant [11 x i8] c"%9ld %9ld \00", align 1
@stdout = external global %struct._IO_FILE*
@.str45 = private unnamed_addr constant [16 x i8] c"%5s %08lx %11s \00", align 1
@.str46 = private unnamed_addr constant [5 x i8] c" %s\0A\00", align 1
@.str48 = private unnamed_addr constant [34 x i8] c"%s: %s is a directory -- ignored\0A\00", align 1
@.str49 = private unnamed_addr constant [55 x i8] c"%s: %s is not a directory or a regular file - ignored\0A\00", align 1
@.str50 = private unnamed_addr constant [41 x i8] c"%s: %s has %d other link%c -- unchanged\0A\00", align 1
@.str51 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1
@.str52 = private unnamed_addr constant [25 x i8] c"%s: %s compressed to %s\0A\00", align 1
@.str53 = private unnamed_addr constant [7 x i8] c"%s:\09%s\00", align 1
@.str54 = private unnamed_addr constant [2 x i8] c"\09\00", align 1
@.str55 = private unnamed_addr constant [3 x i8] c"\09\09\00", align 1
@.str56 = private unnamed_addr constant [4 x i8] c" OK\00", align 1
@.str57 = private unnamed_addr constant [21 x i8] c" -- replaced with %s\00", align 1
@.str59 = private unnamed_addr constant [25 x i8] c"%s: time stamp restored\0A\00", align 1
@.str60 = private unnamed_addr constant [33 x i8] c"%s: %s: warning, name truncated\0A\00", align 1
@.str61 = private unnamed_addr constant [15 x i8] c"name too short\00", align 1
@.str62 = private unnamed_addr constant [22 x i8] c"can't recover suffix\0A\00", align 1
@.str63 = private unnamed_addr constant [5 x i8] c".tar\00", align 1
@.str64 = private unnamed_addr constant [5 x i8] c".tgz\00", align 1
@.str66 = private unnamed_addr constant [31 x i8] c"internal error in shorten_name\00", align 1
@get_suffix.known_suffixes = internal unnamed_addr constant [9 x i8*] [i8* getelementptr inbounds ([31 x i8]* @z_suffix, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str29, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str67, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str68, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str64, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str69, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str70, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str71, i32 0, i32 0), i8* null], align 16
@.str67 = private unnamed_addr constant [3 x i8] c".z\00", align 1
@.str68 = private unnamed_addr constant [5 x i8] c".taz\00", align 1
@.str69 = private unnamed_addr constant [4 x i8] c"-gz\00", align 1
@.str70 = private unnamed_addr constant [3 x i8] c"-z\00", align 1
@.str71 = private unnamed_addr constant [3 x i8] c"_z\00", align 1
@.str73 = private unnamed_addr constant [39 x i8] c"%s: %s: cannot %scompress onto itself\0A\00", align 1
@.str74 = private unnamed_addr constant [3 x i8] c"de\00", align 1
@.str75 = private unnamed_addr constant [33 x i8] c"%s: %s and %s are the same file\0A\00", align 1
@.str77 = private unnamed_addr constant [23 x i8] c"%s: %s already exists;\00", align 1
@stdin = external global %struct._IO_FILE*
@.str78 = private unnamed_addr constant [37 x i8] c" do you wish to overwrite (y or n)? \00", align 1
@.str79 = private unnamed_addr constant [18 x i8] c"\09not overwritten\0A\00", align 1
@.str80 = private unnamed_addr constant [3 x i8] c"\1F\8B\00", align 1
@.str81 = private unnamed_addr constant [3 x i8] c"\1F\9E\00", align 1
@.str82 = private unnamed_addr constant [56 x i8] c"%s: %s: unknown method %d -- get newer version of gzip\0A\00", align 1
@.str83 = private unnamed_addr constant [50 x i8] c"%s: %s is encrypted -- get newer version of gzip\0A\00", align 1
@.str84 = private unnamed_addr constant [65 x i8] c"%s: %s is a a multi-part gzip file -- get newer version of gzip\0A\00", align 1
@.str85 = private unnamed_addr constant [52 x i8] c"%s: %s has flags 0x%x -- get newer version of gzip\0A\00", align 1
@.str86 = private unnamed_addr constant [24 x i8] c"%s: %s: part number %u\0A\00", align 1
@.str87 = private unnamed_addr constant [41 x i8] c"%s: %s: extra field of %u bytes ignored\0A\00", align 1
@.str88 = private unnamed_addr constant [39 x i8] c"corrupted input -- file name too large\00", align 1
@.str89 = private unnamed_addr constant [5 x i8] c"PK\03\04\00", align 1
@.str90 = private unnamed_addr constant [3 x i8] c"\1F\1E\00", align 1
@.str91 = private unnamed_addr constant [3 x i8] c"\1F\9D\00", align 1
@.str92 = private unnamed_addr constant [3 x i8] c"\1F\A0\00", align 1
@.str93 = private unnamed_addr constant [29 x i8] c"\0A%s: %s: not in gzip format\0A\00", align 1
@.str94 = private unnamed_addr constant [53 x i8] c"\0A%s: %s: decompression OK, trailing garbage ignored\0A\00", align 1
@.str95 = private unnamed_addr constant [35 x i8] c"%s: %s: unknown suffix -- ignored\0A\00", align 1
@.str96 = private unnamed_addr constant [43 x i8] c"%s: %s already has %s suffix -- unchanged\0A\00", align 1
@.str97 = private unnamed_addr constant [19 x i8] c"%s: %s unreadable\0A\00", align 1
@.str99 = private unnamed_addr constant [30 x i8] c"%s: %s/%s: pathname too long\0A\00", align 1
@get_istat.suffixes = internal unnamed_addr constant [6 x i8*] [i8* getelementptr inbounds ([31 x i8]* @z_suffix, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str29, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str67, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str70, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str100, i32 0, i32 0), i8* null], align 16
@.str100 = private unnamed_addr constant [3 x i8] c".Z\00", align 1
@.str101 = private unnamed_addr constant [71 x i8] c"%s: compressed data not %s a terminal. Use -f to force %scompression.\0A\00", align 1
@.str102 = private unnamed_addr constant [10 x i8] c"read from\00", align 1
@.str103 = private unnamed_addr constant [11 x i8] c"written to\00", align 1
@.str104 = private unnamed_addr constant [23 x i8] c"For help, type: %s -h\0A\00", align 1
@.str105 = private unnamed_addr constant [6 x i8] c"stdin\00", align 1
@.str106 = private unnamed_addr constant [13 x i8] c"fstat(stdin)\00", align 1
@.str107 = private unnamed_addr constant [5 x i8] c" OK\0A\00", align 1
@.str108 = private unnamed_addr constant [55 x i8] c"usage: %s [-%scdfhlLnN%stvV19] [-S suffix] [file ...]\0A\00", align 1
@.str109 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str110 = private unnamed_addr constant [12 x i8] c"%s %s (%s)\0A\00", align 1
@.str111 = private unnamed_addr constant [6 x i8] c"1.2.4\00", align 1
@.str112 = private unnamed_addr constant [10 x i8] c"18 Aug 93\00", align 1
@.str113 = private unnamed_addr constant [28 x i8] c"Compilation options:\0A%s %s \00", align 1
@.str114 = private unnamed_addr constant [7 x i8] c"DIRENT\00", align 1
@.str115 = private unnamed_addr constant [6 x i8] c"UTIME\00", align 1
@.str116 = private unnamed_addr constant [14 x i8] c"STDC_HEADERS \00", align 1
@.str117 = private unnamed_addr constant [15 x i8] c"HAVE_UNISTD_H \00", align 1
@.str118 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str119 = private unnamed_addr constant [44 x i8] c"   Copyright (C) 1992-1993 Jean-loup Gailly\00", align 1
@.str120 = private unnamed_addr constant [72 x i8] c"   This program is free software; you can redistribute it and/or modify\00", align 1
@.str121 = private unnamed_addr constant [72 x i8] c"   it under the terms of the GNU General Public License as published by\00", align 1
@.str122 = private unnamed_addr constant [71 x i8] c"   the Free Software Foundation; either version 2, or (at your option)\00", align 1
@.str12312 = private unnamed_addr constant [22 x i8] c"   any later version.\00", align 1
@.str124 = private unnamed_addr constant [67 x i8] c"   This program is distributed in the hope that it will be useful,\00", align 1
@.str125 = private unnamed_addr constant [66 x i8] c"   but WITHOUT ANY WARRANTY; without even the implied warranty of\00", align 1
@.str126 = private unnamed_addr constant [65 x i8] c"   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the\00", align 1
@.str127 = private unnamed_addr constant [48 x i8] c"   GNU General Public License for more details.\00", align 1
@.str128 = private unnamed_addr constant [69 x i8] c"   You should have received a copy of the GNU General Public License\00", align 1
@.str129 = private unnamed_addr constant [63 x i8] c"   along with this program; if not, write to the Free Software\00", align 1
@.str130 = private unnamed_addr constant [61 x i8] c"   Foundation, Inc., 675 Mass Ave, Cambridge, MA 02139, USA.\00", align 1
@.str131 = private unnamed_addr constant [74 x i8] c" -c --stdout      write on standard output, keep original files unchanged\00", align 1
@.str132 = private unnamed_addr constant [29 x i8] c" -d --decompress  decompress\00", align 1
@.str133 = private unnamed_addr constant [68 x i8] c" -f --force       force overwrite of output file and compress links\00", align 1
@.str134 = private unnamed_addr constant [33 x i8] c" -h --help        give this help\00", align 1
@.str135 = private unnamed_addr constant [48 x i8] c" -l --list        list compressed file contents\00", align 1
@.str136 = private unnamed_addr constant [43 x i8] c" -L --license     display software license\00", align 1
@.str137 = private unnamed_addr constant [74 x i8] c" -n --no-name     do not save or restore the original name and time stamp\00", align 1
@.str138 = private unnamed_addr constant [67 x i8] c" -N --name        save or restore the original name and time stamp\00", align 1
@.str139 = private unnamed_addr constant [40 x i8] c" -q --quiet       suppress all warnings\00", align 1
@.str140 = private unnamed_addr constant [53 x i8] c" -r --recursive   operate recursively on directories\00", align 1
@.str141 = private unnamed_addr constant [64 x i8] c" -S .suf  --suffix .suf     use suffix .suf on compressed files\00", align 1
@.str142 = private unnamed_addr constant [49 x i8] c" -t --test        test compressed file integrity\00", align 1
@.str143 = private unnamed_addr constant [31 x i8] c" -v --verbose     verbose mode\00", align 1
@.str144 = private unnamed_addr constant [41 x i8] c" -V --version     display version number\00", align 1
@.str145 = private unnamed_addr constant [34 x i8] c" -1 --fast        compress faster\00", align 1
@.str146 = private unnamed_addr constant [34 x i8] c" -9 --best        compress better\00", align 1
@.str147 = private unnamed_addr constant [76 x i8] c" file...          files to (de)compress. If none given, use standard input.\00", align 1
@str = private unnamed_addr constant [10 x i8] c" (totals)\00"
@str148 = private unnamed_addr constant [45 x i8] c"compressed  uncompr. ratio uncompressed_name\00"
@mask_bits = global [17 x i16] [i16 0, i16 1, i16 3, i16 7, i16 15, i16 31, i16 63, i16 127, i16 255, i16 511, i16 1023, i16 2047, i16 4095, i16 8191, i16 16383, i16 32767, i16 -1], align 16
@lbits = global i32 9, align 4
@dbits = global i32 6, align 4
@hufts = common global i32 0, align 4
@bb = common global i64 0, align 8
@bk = common global i32 0, align 4
@cplens = internal global [31 x i16] [i16 3, i16 4, i16 5, i16 6, i16 7, i16 8, i16 9, i16 10, i16 11, i16 13, i16 15, i16 17, i16 19, i16 23, i16 27, i16 31, i16 35, i16 43, i16 51, i16 59, i16 67, i16 83, i16 99, i16 115, i16 131, i16 163, i16 195, i16 227, i16 258, i16 0, i16 0], align 16
@cplext = internal global [31 x i16] [i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 1, i16 1, i16 1, i16 1, i16 2, i16 2, i16 2, i16 2, i16 3, i16 3, i16 3, i16 3, i16 4, i16 4, i16 4, i16 4, i16 5, i16 5, i16 5, i16 5, i16 0, i16 99, i16 99], align 16
@cpdist = internal global [30 x i16] [i16 1, i16 2, i16 3, i16 4, i16 5, i16 7, i16 9, i16 13, i16 17, i16 25, i16 33, i16 49, i16 65, i16 97, i16 129, i16 193, i16 257, i16 385, i16 513, i16 769, i16 1025, i16 1537, i16 2049, i16 3073, i16 4097, i16 6145, i16 8193, i16 12289, i16 16385, i16 24577], align 16
@cpdext = internal global [30 x i16] [i16 0, i16 0, i16 0, i16 0, i16 1, i16 1, i16 2, i16 2, i16 3, i16 3, i16 4, i16 4, i16 5, i16 5, i16 6, i16 6, i16 7, i16 7, i16 8, i16 8, i16 9, i16 9, i16 10, i16 10, i16 11, i16 11, i16 12, i16 12, i16 13, i16 13], align 16
@border = internal unnamed_addr constant [19 x i32] [i32 16, i32 17, i32 18, i32 0, i32 8, i32 7, i32 9, i32 6, i32 10, i32 5, i32 11, i32 4, i32 12, i32 3, i32 13, i32 2, i32 14, i32 1, i32 15], align 16
@.str27 = private unnamed_addr constant [26 x i8] c" incomplete literal tree\0A\00", align 1
@.str148 = private unnamed_addr constant [27 x i8] c" incomplete distance tree\0A\00", align 1
@msg_done = internal unnamed_addr global i1 false
@.str58 = private unnamed_addr constant [44 x i8] c"output in compress .Z format not supported\0A\00", align 1
@file_type = common global i16* null, align 8
@file_method = common global i32* null, align 8
@input_len = internal unnamed_addr global i64 0, align 8
@compressed_len = internal unnamed_addr global i64 0, align 8
@static_dtree = internal global [30 x %struct.ct_data] zeroinitializer, align 16
@base_length = internal unnamed_addr global [29 x i32] zeroinitializer, align 16
@extra_lbits = internal global [29 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 2, i32 2, i32 2, i32 2, i32 3, i32 3, i32 3, i32 3, i32 4, i32 4, i32 4, i32 4, i32 5, i32 5, i32 5, i32 5, i32 0], align 16
@length_code = internal unnamed_addr global [256 x i8] zeroinitializer, align 16
@base_dist = internal unnamed_addr global [30 x i32] zeroinitializer, align 16
@extra_dbits = internal global [30 x i32] [i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3, i32 4, i32 4, i32 5, i32 5, i32 6, i32 6, i32 7, i32 7, i32 8, i32 8, i32 9, i32 9, i32 10, i32 10, i32 11, i32 11, i32 12, i32 12, i32 13, i32 13], align 16
@dist_code = internal unnamed_addr global [512 x i8] zeroinitializer, align 16
@bl_count = internal unnamed_addr global [16 x i16] zeroinitializer, align 16
@static_ltree = internal global [288 x %struct.ct_data] zeroinitializer, align 16
@flags = internal unnamed_addr global i8 0, align 1
@last_flags = internal unnamed_addr global i32 0, align 4
@flag_buf = internal unnamed_addr global [4096 x i8] zeroinitializer, align 16
@l_desc = internal global %struct.tree_desc { %struct.ct_data* getelementptr inbounds ([573 x %struct.ct_data]* @dyn_ltree, i32 0, i32 0), %struct.ct_data* getelementptr inbounds ([288 x %struct.ct_data]* @static_ltree, i32 0, i32 0), i32* getelementptr inbounds ([29 x i32]* @extra_lbits, i32 0, i32 0), i32 257, i32 286, i32 15, i32 0 }, align 8
@d_desc = internal global %struct.tree_desc { %struct.ct_data* getelementptr inbounds ([61 x %struct.ct_data]* @dyn_dtree, i32 0, i32 0), %struct.ct_data* getelementptr inbounds ([30 x %struct.ct_data]* @static_dtree, i32 0, i32 0), i32* getelementptr inbounds ([30 x i32]* @extra_dbits, i32 0, i32 0), i32 0, i32 30, i32 15, i32 0 }, align 8
@opt_len = internal unnamed_addr global i64 0, align 8
@static_len = internal unnamed_addr global i64 0, align 8
@dyn_ltree = internal global [573 x %struct.ct_data] zeroinitializer, align 16
@dyn_dtree = internal global [61 x %struct.ct_data] zeroinitializer, align 16
@last_lit = internal unnamed_addr global i32 0, align 4
@last_dist = internal unnamed_addr global i32 0, align 4
@flag_bit = internal unnamed_addr global i8 0, align 1
@bl_order = internal unnamed_addr constant [19 x i8] c"\10\11\12\00\08\07\09\06\0A\05\0B\04\0C\03\0D\02\0E\01\0F", align 16
@bl_tree = internal global [39 x %struct.ct_data] zeroinitializer, align 16
@bl_desc = internal global %struct.tree_desc { %struct.ct_data* getelementptr inbounds ([39 x %struct.ct_data]* @bl_tree, i32 0, i32 0), %struct.ct_data* null, i32* getelementptr inbounds ([19 x i32]* @extra_blbits, i32 0, i32 0), i32 0, i32 19, i32 7, i32 0 }, align 8
@extra_blbits = internal global [19 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, i32 3, i32 7], align 16
@heap_len = internal unnamed_addr global i32 0, align 4
@heap_max = internal unnamed_addr global i32 0, align 4
@heap = internal unnamed_addr global [573 x i32] zeroinitializer, align 16
@depth = internal unnamed_addr global [573 x i8] zeroinitializer, align 16
@done = internal unnamed_addr global i1 false
@decode.i = internal unnamed_addr global i32 0, align 4
@j = internal unnamed_addr global i32 0, align 4
@bitbuf = internal unnamed_addr global i16 0, align 2
@pt_table = internal global [256 x i16] zeroinitializer, align 16
@pt_len = internal global [19 x i8] zeroinitializer, align 16
@bitcount = internal unnamed_addr global i32 0, align 4
@subbitbuf = internal unnamed_addr global i32 0, align 4
@blocksize = internal unnamed_addr global i32 0, align 4
@.str65 = private unnamed_addr constant [11 x i8] c"Bad table\0A\00", align 1
@block_mode = global i32 128, align 4
@.str72 = private unnamed_addr constant [38 x i8] c"\0A%s: %s: warning, unknown flags 0x%x\0A\00", align 1
@.str173 = private unnamed_addr constant [59 x i8] c"\0A%s: %s: compressed with %d bits, can only handle %d bits\0A\00", align 1
@.str274 = private unnamed_addr constant [15 x i8] c"corrupt input.\00", align 1
@.str375 = private unnamed_addr constant [46 x i8] c"corrupt input. Use zcat to recover some data.\00", align 1
@valid = internal unnamed_addr global i32 0, align 4
@bitbuf78 = internal unnamed_addr global i64 0, align 8
@peek_bits = internal unnamed_addr global i32 0, align 4
@max_len = internal unnamed_addr global i32 0, align 4
@leaves = internal unnamed_addr global [26 x i32] zeroinitializer, align 16
@parents = internal unnamed_addr global [26 x i32] zeroinitializer, align 16
@lit_base = internal unnamed_addr global [26 x i32] zeroinitializer, align 16
@literal = internal unnamed_addr global [256 x i8] zeroinitializer, align 16
@orig_len = internal unnamed_addr global i64 0, align 8
@.str98 = private unnamed_addr constant [38 x i8] c"invalid compressed data--length error\00", align 1
@.str199 = private unnamed_addr constant [50 x i8] c"invalid compressed data -- Huffman code > 32 bits\00", align 1
@.str2100 = private unnamed_addr constant [32 x i8] c"too many leaves in Huffman tree\00", align 1
@pkzip = global i32 0, align 4
@ext_header = global i32 0, align 4
@.str149 = private unnamed_addr constant [31 x i8] c"\0A%s: %s: not a valid zip file\0A\00", align 1
@.str1150 = private unnamed_addr constant [58 x i8] c"\0A%s: %s: first entry not deflated or stored -- use unzip\0A\00", align 1
@decrypt = common global i32 0, align 4
@.str2151 = private unnamed_addr constant [38 x i8] c"\0A%s: %s: encrypted file -- use unzip\0A\00", align 1
@.str3152 = private unnamed_addr constant [14 x i8] c"out of memory\00", align 1
@.str4153 = private unnamed_addr constant [41 x i8] c"invalid compressed data--format violated\00", align 1
@.str5154 = private unnamed_addr constant [18 x i8] c"len %ld, siz %ld\0A\00", align 1
@.str6155 = private unnamed_addr constant [41 x i8] c"invalid compressed data--length mismatch\00", align 1
@.str7156 = private unnamed_addr constant [31 x i8] c"internal error, invalid method\00", align 1
@.str8157 = private unnamed_addr constant [35 x i8] c"invalid compressed data--crc error\00", align 1
@.str9158 = private unnamed_addr constant [38 x i8] c"invalid compressed data--length error\00", align 1
@.str10159 = private unnamed_addr constant [46 x i8] c"%s: %s has more than one entry--rest ignored\0A\00", align 1
@.str11160 = private unnamed_addr constant [45 x i8] c"%s: %s has more than one entry -- unchanged\0A\00", align 1
@key = common global i8* null, align 8
@updcrc.crc = internal unnamed_addr global i64 4294967295, align 8
@.str1165 = private unnamed_addr constant [14 x i8] c"out of memory\00", align 1
@.str2166 = private unnamed_addr constant [8 x i8] c"argc<=0\00", align 1
@.str3167 = private unnamed_addr constant [13 x i8] c"\0A%s: %s: %s\0A\00", align 1
@.str4168 = private unnamed_addr constant [23 x i8] c"%s: %s: warning: %s%s\0A\00", align 1
@.str5169 = private unnamed_addr constant [6 x i8] c"\0A%s: \00", align 1
@.str6170 = private unnamed_addr constant [28 x i8] c"%s: unexpected end of file\0A\00", align 1
@.str7171 = private unnamed_addr constant [12 x i8] c"%2ld.%1ld%%\00", align 1
@crc_32_tab = global [256 x i64] [i64 0, i64 1996959894, i64 3993919788, i64 2567524794, i64 124634137, i64 1886057615, i64 3915621685, i64 2657392035, i64 249268274, i64 2044508324, i64 3772115230, i64 2547177864, i64 162941995, i64 2125561021, i64 3887607047, i64 2428444049, i64 498536548, i64 1789927666, i64 4089016648, i64 2227061214, i64 450548861, i64 1843258603, i64 4107580753, i64 2211677639, i64 325883990, i64 1684777152, i64 4251122042, i64 2321926636, i64 335633487, i64 1661365465, i64 4195302755, i64 2366115317, i64 997073096, i64 1281953886, i64 3579855332, i64 2724688242, i64 1006888145, i64 1258607687, i64 3524101629, i64 2768942443, i64 901097722, i64 1119000684, i64 3686517206, i64 2898065728, i64 853044451, i64 1172266101, i64 3705015759, i64 2882616665, i64 651767980, i64 1373503546, i64 3369554304, i64 3218104598, i64 565507253, i64 1454621731, i64 3485111705, i64 3099436303, i64 671266974, i64 1594198024, i64 3322730930, i64 2970347812, i64 795835527, i64 1483230225, i64 3244367275, i64 3060149565, i64 1994146192, i64 31158534, i64 2563907772, i64 4023717930, i64 1907459465, i64 112637215, i64 2680153253, i64 3904427059, i64 2013776290, i64 251722036, i64 2517215374, i64 3775830040, i64 2137656763, i64 141376813, i64 2439277719, i64 3865271297, i64 1802195444, i64 476864866, i64 2238001368, i64 4066508878, i64 1812370925, i64 453092731, i64 2181625025, i64 4111451223, i64 1706088902, i64 314042704, i64 2344532202, i64 4240017532, i64 1658658271, i64 366619977, i64 2362670323, i64 4224994405, i64 1303535960, i64 984961486, i64 2747007092, i64 3569037538, i64 1256170817, i64 1037604311, i64 2765210733, i64 3554079995, i64 1131014506, i64 879679996, i64 2909243462, i64 3663771856, i64 1141124467, i64 855842277, i64 2852801631, i64 3708648649, i64 1342533948, i64 654459306, i64 3188396048, i64 3373015174, i64 1466479909, i64 544179635, i64 3110523913, i64 3462522015, i64 1591671054, i64 702138776, i64 2966460450, i64 3352799412, i64 1504918807, i64 783551873, i64 3082640443, i64 3233442989, i64 3988292384, i64 2596254646, i64 62317068, i64 1957810842, i64 3939845945, i64 2647816111, i64 81470997, i64 1943803523, i64 3814918930, i64 2489596804, i64 225274430, i64 2053790376, i64 3826175755, i64 2466906013, i64 167816743, i64 2097651377, i64 4027552580, i64 2265490386, i64 503444072, i64 1762050814, i64 4150417245, i64 2154129355, i64 426522225, i64 1852507879, i64 4275313526, i64 2312317920, i64 282753626, i64 1742555852, i64 4189708143, i64 2394877945, i64 397917763, i64 1622183637, i64 3604390888, i64 2714866558, i64 953729732, i64 1340076626, i64 3518719985, i64 2797360999, i64 1068828381, i64 1219638859, i64 3624741850, i64 2936675148, i64 906185462, i64 1090812512, i64 3747672003, i64 2825379669, i64 829329135, i64 1181335161, i64 3412177804, i64 3160834842, i64 628085408, i64 1382605366, i64 3423369109, i64 3138078467, i64 570562233, i64 1426400815, i64 3317316542, i64 2998733608, i64 733239954, i64 1555261956, i64 3268935591, i64 3050360625, i64 752459403, i64 1541320221, i64 2607071920, i64 3965973030, i64 1969922972, i64 40735498, i64 2617837225, i64 3943577151, i64 1913087877, i64 83908371, i64 2512341634, i64 3803740692, i64 2075208622, i64 213261112, i64 2463272603, i64 3855990285, i64 2094854071, i64 198958881, i64 2262029012, i64 4057260610, i64 1759359992, i64 534414190, i64 2176718541, i64 4139329115, i64 1873836001, i64 414664567, i64 2282248934, i64 4279200368, i64 1711684554, i64 285281116, i64 2405801727, i64 4167216745, i64 1634467795, i64 376229701, i64 2685067896, i64 3608007406, i64 1308918612, i64 956543938, i64 2808555105, i64 3495958263, i64 1231636301, i64 1047427035, i64 2932959818, i64 3654703836, i64 1088359270, i64 936918000, i64 2847714899, i64 3736837829, i64 1202900863, i64 817233897, i64 3183342108, i64 3401237130, i64 1404277552, i64 615818150, i64 3134207493, i64 3453421203, i64 1423857449, i64 601450431, i64 3009837614, i64 3294710456, i64 1567103746, i64 711928724, i64 3020668471, i64 3272380065, i64 1510334235, i64 755167117], align 16
@crc = internal unnamed_addr global i64 0, align 8
@header_bytes = common global i64 0, align 8

; Function Attrs: nounwind uwtable
define void @bi_init(i32 %zipfile) #0 {
entry:
  store i32 %zipfile, i32* @zfile, align 4, !tbaa !1
  store i16 0, i16* @bi_buf, align 2, !tbaa !5
  store i32 0, i32* @bi_valid, align 4, !tbaa !1
  %cmp = icmp eq i32 %zipfile, -1
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 (i8*, i32)* @file_read, i32 (i8*, i32)** @read_buf, align 8, !tbaa !7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define void @send_bits(i32 %value, i32 %length) #0 {
entry:
  %0 = load i32* @bi_valid, align 4, !tbaa !1
  %sub = sub nsw i32 16, %length
  %cmp = icmp sgt i32 %0, %sub
  %shl = shl i32 %value, %0
  %1 = load i16* @bi_buf, align 2, !tbaa !5
  %conv = zext i16 %1 to i32
  %or = or i32 %conv, %shl
  %conv1 = trunc i32 %or to i16
  store i16 %conv1, i16* @bi_buf, align 2, !tbaa !5
  br i1 %cmp, label %if.then, label %if.else42

if.then:                                          ; preds = %entry
  %2 = load i32* @outcnt, align 4, !tbaa !1
  %cmp2 = icmp ult i32 %2, 16382
  %conv6 = trunc i32 %or to i8
  %inc = add i32 %2, 1
  store i32 %inc, i32* @outcnt, align 4, !tbaa !1
  %idxprom = zext i32 %2 to i64
  %arrayidx = getelementptr inbounds [0 x i8]* bitcast ([18432 x i8]* @outbuf to [0 x i8]*), i64 0, i64 %idxprom
  store i8 %conv6, i8* %arrayidx, align 1, !tbaa !9
  br i1 %cmp2, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.then
  %shr56 = lshr i16 %conv1, 8
  %conv8 = trunc i16 %shr56 to i8
  %inc9 = add i32 %2, 2
  store i32 %inc9, i32* @outcnt, align 4, !tbaa !1
  %idxprom10 = zext i32 %inc to i64
  %arrayidx11 = getelementptr inbounds [0 x i8]* bitcast ([18432 x i8]* @outbuf to [0 x i8]*), i64 0, i64 %idxprom10
  store i8 %conv8, i8* %arrayidx11, align 1, !tbaa !9
  br label %if.end31

if.else:                                          ; preds = %if.then
  %cmp18 = icmp eq i32 %inc, 16384
  br i1 %cmp18, label %if.then20, label %if.end

if.then20:                                        ; preds = %if.else
  tail call void @flush_outbuf() #2
  %.pre = load i16* @bi_buf, align 2, !tbaa !5
  %.pre57 = load i32* @outcnt, align 4, !tbaa !1
  br label %if.end

if.end:                                           ; preds = %if.then20, %if.else
  %3 = phi i32 [ %.pre57, %if.then20 ], [ %inc, %if.else ]
  %4 = phi i16 [ %.pre, %if.then20 ], [ %conv1, %if.else ]
  %shr2252 = lshr i16 %4, 8
  %conv23 = trunc i16 %shr2252 to i8
  %inc24 = add i32 %3, 1
  store i32 %inc24, i32* @outcnt, align 4, !tbaa !1
  %idxprom25 = zext i32 %3 to i64
  %arrayidx26 = getelementptr inbounds [0 x i8]* bitcast ([18432 x i8]* @outbuf to [0 x i8]*), i64 0, i64 %idxprom25
  store i8 %conv23, i8* %arrayidx26, align 1, !tbaa !9
  %cmp27 = icmp eq i32 %inc24, 16384
  br i1 %cmp27, label %if.then29, label %if.end31

if.then29:                                        ; preds = %if.end
  tail call void @flush_outbuf() #2
  br label %if.end31

if.end31:                                         ; preds = %if.then29, %if.end, %if.then4
  %conv33 = and i32 %value, 65535
  %5 = load i32* @bi_valid, align 4, !tbaa !1
  %sub35 = sub i32 16, %5
  %shr36 = lshr i32 %conv33, %sub35
  %conv37 = trunc i32 %shr36 to i16
  store i16 %conv37, i16* @bi_buf, align 2, !tbaa !5
  %sub39 = add i32 %length, -16
  %add = add i32 %sub39, %5
  br label %if.end48

if.else42:                                        ; preds = %entry
  %add47 = add nsw i32 %0, %length
  br label %if.end48

if.end48:                                         ; preds = %if.else42, %if.end31
  %storemerge = phi i32 [ %add47, %if.else42 ], [ %add, %if.end31 ]
  store i32 %storemerge, i32* @bi_valid, align 4, !tbaa !1
  ret void
}

; Function Attrs: nounwind readnone uwtable
define i32 @bi_reverse(i32 %code, i32 %len) #1 {
entry:
  %0 = sub i32 0, %len
  %1 = icmp sgt i32 %0, -1
  %smax = select i1 %1, i32 %0, i32 -1
  %2 = add i32 %len, %smax
  %3 = add i32 %2, 1
  %xtraiter = and i32 %3, 3
  %lcmp.mod = icmp ne i32 %xtraiter, 0
  %lcmp.overflow = icmp eq i32 %3, 0
  %lcmp.or = or i1 %lcmp.overflow, %lcmp.mod
  br i1 %lcmp.or, label %unr.cmp22, label %entry.split

unr.cmp22:                                        ; preds = %entry
  %un.tmp23 = icmp eq i32 %xtraiter, 1
  br i1 %un.tmp23, label %do.body.unr12, label %unr.cmp

unr.cmp:                                          ; preds = %unr.cmp22
  %un.tmp = icmp eq i32 %xtraiter, 2
  br i1 %un.tmp, label %do.body.unr5, label %do.body.unr

do.body.unr:                                      ; preds = %unr.cmp
  %and.unr = and i32 %code, 1
  %or.unr = or i32 0, %and.unr
  %shr.unr = lshr i32 %code, 1
  %shl.unr = shl i32 %or.unr, 1
  %dec.unr = add nsw i32 %len, -1
  %cmp.unr = icmp sgt i32 %dec.unr, 0
  br label %do.body.unr5

do.body.unr5:                                     ; preds = %do.body.unr, %unr.cmp
  %code.addr.0.unr = phi i32 [ %code, %unr.cmp ], [ %shr.unr, %do.body.unr ]
  %len.addr.0.unr = phi i32 [ %len, %unr.cmp ], [ %dec.unr, %do.body.unr ]
  %res.0.unr = phi i32 [ 0, %unr.cmp ], [ %shl.unr, %do.body.unr ]
  %and.unr6 = and i32 %code.addr.0.unr, 1
  %or.unr7 = or i32 %res.0.unr, %and.unr6
  %shr.unr8 = lshr i32 %code.addr.0.unr, 1
  %shl.unr9 = shl i32 %or.unr7, 1
  %dec.unr10 = add nsw i32 %len.addr.0.unr, -1
  %cmp.unr11 = icmp sgt i32 %dec.unr10, 0
  br label %do.body.unr12

do.body.unr12:                                    ; preds = %do.body.unr5, %unr.cmp22
  %code.addr.0.unr13 = phi i32 [ %code, %unr.cmp22 ], [ %shr.unr8, %do.body.unr5 ]
  %len.addr.0.unr14 = phi i32 [ %len, %unr.cmp22 ], [ %dec.unr10, %do.body.unr5 ]
  %res.0.unr15 = phi i32 [ 0, %unr.cmp22 ], [ %shl.unr9, %do.body.unr5 ]
  %and.unr16 = and i32 %code.addr.0.unr13, 1
  %or.unr17 = or i32 %res.0.unr15, %and.unr16
  %shr.unr18 = lshr i32 %code.addr.0.unr13, 1
  %shl.unr19 = shl i32 %or.unr17, 1
  %dec.unr20 = add nsw i32 %len.addr.0.unr14, -1
  %cmp.unr21 = icmp sgt i32 %dec.unr20, 0
  br label %entry.split

entry.split:                                      ; preds = %do.body.unr12, %entry
  %code.addr.0.unr24 = phi i32 [ %code, %entry ], [ %shr.unr18, %do.body.unr12 ]
  %len.addr.0.unr25 = phi i32 [ %len, %entry ], [ %dec.unr20, %do.body.unr12 ]
  %res.0.unr26 = phi i32 [ 0, %entry ], [ %shl.unr19, %do.body.unr12 ]
  %or.lcssa.unr = phi i32 [ 0, %entry ], [ %or.unr17, %do.body.unr12 ]
  %4 = icmp ult i32 %3, 4
  br i1 %4, label %do.end, label %entry.split.split

entry.split.split:                                ; preds = %entry.split
  br label %do.body

do.body:                                          ; preds = %do.body, %entry.split.split
  %code.addr.0 = phi i32 [ %code.addr.0.unr24, %entry.split.split ], [ %shr.3, %do.body ]
  %len.addr.0 = phi i32 [ %len.addr.0.unr25, %entry.split.split ], [ %dec.3, %do.body ]
  %res.0 = phi i32 [ %res.0.unr26, %entry.split.split ], [ %shl.3, %do.body ]
  %and = and i32 %code.addr.0, 1
  %or = or i32 %res.0, %and
  %shr = lshr i32 %code.addr.0, 1
  %shl = shl i32 %or, 1
  %dec = add nsw i32 %len.addr.0, -1
  %and.1 = and i32 %shr, 1
  %or.1 = or i32 %shl, %and.1
  %shr.1 = lshr i32 %shr, 1
  %shl.1 = shl i32 %or.1, 1
  %dec.1 = add nsw i32 %dec, -1
  %and.2 = and i32 %shr.1, 1
  %or.2 = or i32 %shl.1, %and.2
  %shr.2 = lshr i32 %shr.1, 1
  %shl.2 = shl i32 %or.2, 1
  %dec.2 = add nsw i32 %dec.1, -1
  %and.3 = and i32 %shr.2, 1
  %or.3 = or i32 %shl.2, %and.3
  %shr.3 = lshr i32 %shr.2, 1
  %shl.3 = shl i32 %or.3, 1
  %dec.3 = add nsw i32 %dec.2, -1
  %cmp.3 = icmp sgt i32 %dec.3, 0
  br i1 %cmp.3, label %do.body, label %do.end.unr-lcssa

do.end.unr-lcssa:                                 ; preds = %do.body
  %or.lcssa.ph = phi i32 [ %or.3, %do.body ]
  br label %do.end

do.end:                                           ; preds = %do.end.unr-lcssa, %entry.split
  %or.lcssa = phi i32 [ %or.lcssa.unr, %entry.split ], [ %or.lcssa.ph, %do.end.unr-lcssa ]
  %shr1 = and i32 %or.lcssa, 2147483647
  ret i32 %shr1
}

; Function Attrs: nounwind uwtable
define void @bi_windup() #0 {
entry:
  %0 = load i32* @bi_valid, align 4, !tbaa !1
  %cmp = icmp sgt i32 %0, 8
  br i1 %cmp, label %if.then, label %if.else29

if.then:                                          ; preds = %entry
  %1 = load i32* @outcnt, align 4, !tbaa !1
  %cmp1 = icmp ult i32 %1, 16382
  %2 = load i16* @bi_buf, align 2, !tbaa !5
  %conv3 = trunc i16 %2 to i8
  %inc = add i32 %1, 1
  store i32 %inc, i32* @outcnt, align 4, !tbaa !1
  %idxprom = zext i32 %1 to i64
  %arrayidx = getelementptr inbounds [0 x i8]* bitcast ([18432 x i8]* @outbuf to [0 x i8]*), i64 0, i64 %idxprom
  store i8 %conv3, i8* %arrayidx, align 1, !tbaa !9
  br i1 %cmp1, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.then
  %shr44 = lshr i16 %2, 8
  %conv5 = trunc i16 %shr44 to i8
  %inc6 = add i32 %1, 2
  store i32 %inc6, i32* @outcnt, align 4, !tbaa !1
  %idxprom7 = zext i32 %inc to i64
  %arrayidx8 = getelementptr inbounds [0 x i8]* bitcast ([18432 x i8]* @outbuf to [0 x i8]*), i64 0, i64 %idxprom7
  store i8 %conv5, i8* %arrayidx8, align 1, !tbaa !9
  br label %if.end42

if.else:                                          ; preds = %if.then
  %cmp15 = icmp eq i32 %inc, 16384
  br i1 %cmp15, label %if.then17, label %if.end

if.then17:                                        ; preds = %if.else
  tail call void @flush_outbuf() #2
  %.pre = load i16* @bi_buf, align 2, !tbaa !5
  %.pre45 = load i32* @outcnt, align 4, !tbaa !1
  br label %if.end

if.end:                                           ; preds = %if.then17, %if.else
  %3 = phi i32 [ %.pre45, %if.then17 ], [ %inc, %if.else ]
  %4 = phi i16 [ %.pre, %if.then17 ], [ %2, %if.else ]
  %shr1943 = lshr i16 %4, 8
  %conv20 = trunc i16 %shr1943 to i8
  %inc21 = add i32 %3, 1
  store i32 %inc21, i32* @outcnt, align 4, !tbaa !1
  %idxprom22 = zext i32 %3 to i64
  %arrayidx23 = getelementptr inbounds [0 x i8]* bitcast ([18432 x i8]* @outbuf to [0 x i8]*), i64 0, i64 %idxprom22
  store i8 %conv20, i8* %arrayidx23, align 1, !tbaa !9
  %cmp24 = icmp eq i32 %inc21, 16384
  br i1 %cmp24, label %if.then26, label %if.end42

if.then26:                                        ; preds = %if.end
  tail call void @flush_outbuf() #2
  br label %if.end42

if.else29:                                        ; preds = %entry
  %cmp30 = icmp sgt i32 %0, 0
  br i1 %cmp30, label %if.then32, label %if.end42

if.then32:                                        ; preds = %if.else29
  %5 = load i16* @bi_buf, align 2, !tbaa !5
  %conv33 = trunc i16 %5 to i8
  %6 = load i32* @outcnt, align 4, !tbaa !1
  %inc34 = add i32 %6, 1
  store i32 %inc34, i32* @outcnt, align 4, !tbaa !1
  %idxprom35 = zext i32 %6 to i64
  %arrayidx36 = getelementptr inbounds [0 x i8]* bitcast ([18432 x i8]* @outbuf to [0 x i8]*), i64 0, i64 %idxprom35
  store i8 %conv33, i8* %arrayidx36, align 1, !tbaa !9
  %cmp37 = icmp eq i32 %inc34, 16384
  br i1 %cmp37, label %if.then39, label %if.end42

if.then39:                                        ; preds = %if.then32
  tail call void @flush_outbuf() #2
  br label %if.end42

if.end42:                                         ; preds = %if.then39, %if.then32, %if.else29, %if.then26, %if.end, %if.then2
  store i16 0, i16* @bi_buf, align 2, !tbaa !5
  store i32 0, i32* @bi_valid, align 4, !tbaa !1
  ret void
}

; Function Attrs: nounwind uwtable
define void @copy_block(i8* nocapture readonly %buf, i32 %len, i32 %header) #0 {
entry:
  tail call void @bi_windup()
  %tobool = icmp eq i32 %header, 0
  br i1 %tobool, label %while.cond.preheader, label %if.then

if.then:                                          ; preds = %entry
  %0 = load i32* @outcnt, align 4, !tbaa !1
  %cmp = icmp ult i32 %0, 16382
  %conv3 = trunc i32 %len to i8
  %inc = add i32 %0, 1
  store i32 %inc, i32* @outcnt, align 4, !tbaa !1
  %idxprom = zext i32 %0 to i64
  %arrayidx = getelementptr inbounds [0 x i8]* bitcast ([18432 x i8]* @outbuf to [0 x i8]*), i64 0, i64 %idxprom
  store i8 %conv3, i8* %arrayidx, align 1, !tbaa !9
  br i1 %cmp, label %if.then1, label %if.else

if.then1:                                         ; preds = %if.then
  %conv2 = lshr i32 %len, 8
  %conv6 = trunc i32 %conv2 to i8
  %inc7 = add i32 %0, 2
  store i32 %inc7, i32* @outcnt, align 4, !tbaa !1
  %idxprom8 = zext i32 %inc to i64
  %arrayidx9 = getelementptr inbounds [0 x i8]* bitcast ([18432 x i8]* @outbuf to [0 x i8]*), i64 0, i64 %idxprom8
  store i8 %conv6, i8* %arrayidx9, align 1, !tbaa !9
  br label %if.end31

if.else:                                          ; preds = %if.then
  %cmp17 = icmp eq i32 %inc, 16384
  br i1 %cmp17, label %if.then19, label %if.end

if.then19:                                        ; preds = %if.else
  tail call void @flush_outbuf() #2
  %.pre100 = load i32* @outcnt, align 4, !tbaa !1
  br label %if.end

if.end:                                           ; preds = %if.then19, %if.else
  %1 = phi i32 [ %.pre100, %if.then19 ], [ %inc, %if.else ]
  %shr2291 = lshr i32 %len, 8
  %conv23 = trunc i32 %shr2291 to i8
  %inc24 = add i32 %1, 1
  store i32 %inc24, i32* @outcnt, align 4, !tbaa !1
  %idxprom25 = zext i32 %1 to i64
  %arrayidx26 = getelementptr inbounds [0 x i8]* bitcast ([18432 x i8]* @outbuf to [0 x i8]*), i64 0, i64 %idxprom25
  store i8 %conv23, i8* %arrayidx26, align 1, !tbaa !9
  %cmp27 = icmp eq i32 %inc24, 16384
  br i1 %cmp27, label %if.then29, label %if.end31

if.then29:                                        ; preds = %if.end
  tail call void @flush_outbuf() #2
  %.pr.pre = load i32* @outcnt, align 4, !tbaa !1
  br label %if.end31

if.end31:                                         ; preds = %if.then29, %if.end, %if.then1
  %2 = phi i32 [ %inc24, %if.end ], [ %inc7, %if.then1 ], [ %.pr.pre, %if.then29 ]
  %cmp32 = icmp ult i32 %2, 16382
  %neg = and i32 %len, 65535
  %conv36 = xor i32 %neg, 65535
  %conv38 = trunc i32 %conv36 to i8
  %inc39 = add i32 %2, 1
  store i32 %inc39, i32* @outcnt, align 4, !tbaa !1
  %idxprom40 = zext i32 %2 to i64
  %arrayidx41 = getelementptr inbounds [0 x i8]* bitcast ([18432 x i8]* @outbuf to [0 x i8]*), i64 0, i64 %idxprom40
  store i8 %conv38, i8* %arrayidx41, align 1, !tbaa !9
  br i1 %cmp32, label %if.then34, label %if.else50

if.then34:                                        ; preds = %if.end31
  %shr4593 = lshr i32 %conv36, 8
  %conv46 = trunc i32 %shr4593 to i8
  %inc47 = add i32 %2, 2
  store i32 %inc47, i32* @outcnt, align 4, !tbaa !1
  %idxprom48 = zext i32 %inc39 to i64
  %arrayidx49 = getelementptr inbounds [0 x i8]* bitcast ([18432 x i8]* @outbuf to [0 x i8]*), i64 0, i64 %idxprom48
  store i8 %conv46, i8* %arrayidx49, align 1, !tbaa !9
  br label %while.cond.preheader

if.else50:                                        ; preds = %if.end31
  %cmp59 = icmp eq i32 %inc39, 16384
  br i1 %cmp59, label %if.then61, label %if.end62

if.then61:                                        ; preds = %if.else50
  tail call void @flush_outbuf() #2
  %.pre = load i32* @outcnt, align 4, !tbaa !1
  br label %if.end62

if.end62:                                         ; preds = %if.then61, %if.else50
  %3 = phi i32 [ %.pre, %if.then61 ], [ %inc39, %if.else50 ]
  %shr6692 = lshr i32 %conv36, 8
  %conv67 = trunc i32 %shr6692 to i8
  %inc68 = add i32 %3, 1
  store i32 %inc68, i32* @outcnt, align 4, !tbaa !1
  %idxprom69 = zext i32 %3 to i64
  %arrayidx70 = getelementptr inbounds [0 x i8]* bitcast ([18432 x i8]* @outbuf to [0 x i8]*), i64 0, i64 %idxprom69
  store i8 %conv67, i8* %arrayidx70, align 1, !tbaa !9
  %cmp71 = icmp eq i32 %inc68, 16384
  br i1 %cmp71, label %if.then73, label %while.cond.preheader

if.then73:                                        ; preds = %if.end62
  tail call void @flush_outbuf() #2
  br label %while.cond.preheader

while.cond.preheader:                             ; preds = %if.then73, %if.end62, %if.then34, %entry
  %tobool7796 = icmp eq i32 %len, 0
  br i1 %tobool7796, label %while.end, label %while.body.preheader

while.body.preheader:                             ; preds = %while.cond.preheader
  br label %while.body

while.body:                                       ; preds = %while.cond.backedge, %while.body.preheader
  %dec98.in = phi i32 [ %dec98, %while.cond.backedge ], [ %len, %while.body.preheader ]
  %buf.addr.097 = phi i8* [ %incdec.ptr, %while.cond.backedge ], [ %buf, %while.body.preheader ]
  %dec98 = add i32 %dec98.in, -1
  %incdec.ptr = getelementptr inbounds i8* %buf.addr.097, i64 1
  %4 = load i8* %buf.addr.097, align 1, !tbaa !9
  %5 = load i32* @outcnt, align 4, !tbaa !1
  %inc78 = add i32 %5, 1
  store i32 %inc78, i32* @outcnt, align 4, !tbaa !1
  %idxprom79 = zext i32 %5 to i64
  %arrayidx80 = getelementptr inbounds [0 x i8]* bitcast ([18432 x i8]* @outbuf to [0 x i8]*), i64 0, i64 %idxprom79
  store i8 %4, i8* %arrayidx80, align 1, !tbaa !9
  %cmp81 = icmp eq i32 %inc78, 16384
  br i1 %cmp81, label %if.then83, label %while.cond.backedge

if.then83:                                        ; preds = %while.body
  tail call void @flush_outbuf() #2
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.then83, %while.body
  %tobool77 = icmp eq i32 %dec98, 0
  br i1 %tobool77, label %while.end.loopexit, label %while.body

while.end.loopexit:                               ; preds = %while.cond.backedge
  br label %while.end

while.end:                                        ; preds = %while.end.loopexit, %while.cond.preheader
  ret void
}

; Function Attrs: nounwind uwtable
define void @lm_init(i32 %pack_level, i16* nocapture %flags) #0 {
entry:
  %pack_level.off = add i32 %pack_level, -1
  %0 = icmp ugt i32 %pack_level.off, 8
  br i1 %0, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @error(i8* getelementptr inbounds ([15 x i8]* @.str, i64 0, i64 0)) #2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i32 %pack_level, i32* @compr_level, align 4, !tbaa !1
  tail call void @llvm.memset.p0i8.i64(i8* bitcast (i16* getelementptr inbounds ([65536 x i16]* @prev, i64 0, i64 32768) to i8*), i8 0, i64 65536, i32 2, i1 false)
  %idxprom = sext i32 %pack_level to i64
  %max_lazy = getelementptr inbounds [10 x %struct.config]* @configuration_table, i64 0, i64 %idxprom, i32 1
  %1 = load i16* %max_lazy, align 2, !tbaa !10
  %conv = zext i16 %1 to i32
  store i32 %conv, i32* @max_lazy_match, align 4, !tbaa !1
  %good_length = getelementptr inbounds [10 x %struct.config]* @configuration_table, i64 0, i64 %idxprom, i32 0
  %2 = load i16* %good_length, align 8, !tbaa !12
  %conv4 = zext i16 %2 to i32
  store i32 %conv4, i32* @good_match, align 4, !tbaa !1
  %nice_length = getelementptr inbounds [10 x %struct.config]* @configuration_table, i64 0, i64 %idxprom, i32 2
  %3 = load i16* %nice_length, align 4, !tbaa !13
  %conv7 = zext i16 %3 to i32
  store i32 %conv7, i32* @nice_match, align 4, !tbaa !1
  %max_chain = getelementptr inbounds [10 x %struct.config]* @configuration_table, i64 0, i64 %idxprom, i32 3
  %4 = load i16* %max_chain, align 2, !tbaa !14
  %conv10 = zext i16 %4 to i32
  store i32 %conv10, i32* @max_chain_length, align 4, !tbaa !1
  switch i32 %pack_level, label %if.end23 [
    i32 1, label %if.then13
    i32 9, label %if.then18
  ]

if.then13:                                        ; preds = %if.end
  %5 = load i16* %flags, align 2, !tbaa !5
  %or = or i16 %5, 4
  store i16 %or, i16* %flags, align 2, !tbaa !5
  br label %if.end23

if.then18:                                        ; preds = %if.end
  %6 = load i16* %flags, align 2, !tbaa !5
  %or20 = or i16 %6, 2
  store i16 %or20, i16* %flags, align 2, !tbaa !5
  br label %if.end23

if.end23:                                         ; preds = %if.then18, %if.then13, %if.end
  store i32 0, i32* @strstart, align 4, !tbaa !1
  store i64 0, i64* @block_start, align 8, !tbaa !15
  %7 = load i32 (i8*, i32)** @read_buf, align 8, !tbaa !7
  %call = tail call i32 %7(i8* getelementptr inbounds ([65536 x i8]* @window, i64 0, i64 0), i32 65536) #2
  store i32 %call, i32* @lookahead, align 4, !tbaa !1
  switch i32 %call, label %if.end30 [
    i32 -1, label %if.then29
    i32 0, label %if.then29
  ]

if.then29:                                        ; preds = %if.end23, %if.end23
  store i1 true, i1* @eofile, align 1
  store i32 0, i32* @lookahead, align 4, !tbaa !1
  br label %for.end

if.end30:                                         ; preds = %if.end23
  store i1 false, i1* @eofile, align 1
  %cmp3152 = icmp ult i32 %call, 262
  br i1 %cmp3152, label %while.body.preheader, label %while.end

while.body.preheader:                             ; preds = %if.end30
  br label %while.body

while.body:                                       ; preds = %while.body.land.rhs_crit_edge, %while.body.preheader
  tail call fastcc void @fill_window()
  %8 = load i32* @lookahead, align 4, !tbaa !1
  %cmp31 = icmp ult i32 %8, 262
  br i1 %cmp31, label %while.body.land.rhs_crit_edge, label %while.end.loopexit

while.body.land.rhs_crit_edge:                    ; preds = %while.body
  %.b.pre = load i1* @eofile, align 1
  br i1 %.b.pre, label %while.end.loopexit, label %while.body

while.end.loopexit:                               ; preds = %while.body.land.rhs_crit_edge, %while.body
  br label %while.end

while.end:                                        ; preds = %while.end.loopexit, %if.end30
  %9 = load i8* getelementptr inbounds ([65536 x i8]* @window, i64 0, i64 0), align 1, !tbaa !9
  %conv37 = zext i8 %9 to i32
  %shl.1 = shl nuw nsw i32 %conv37, 5
  %10 = load i8* getelementptr inbounds ([65536 x i8]* @window, i64 0, i64 1), align 1, !tbaa !9
  %conv37.1 = zext i8 %10 to i32
  %and.1 = xor i32 %shl.1, %conv37.1
  store i32 %and.1, i32* @ins_h, align 4, !tbaa !1
  br label %for.end

for.end:                                          ; preds = %while.end, %if.then29
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #2

; Function Attrs: nounwind uwtable
define i32 @longest_match(i32 %cur_match) #0 {
entry:
  %0 = load i32* @max_chain_length, align 4, !tbaa !1
  %1 = load i32* @strstart, align 4, !tbaa !1
  %idx.ext = zext i32 %1 to i64
  %add.ptr = getelementptr inbounds [0 x i8]* bitcast ([65536 x i8]* @window to [0 x i8]*), i64 0, i64 %idx.ext
  %2 = load i32* @prev_length, align 4, !tbaa !1
  %cmp = icmp ugt i32 %1, 32506
  %sub = add i32 %1, -32506
  %sub. = select i1 %cmp, i32 %sub, i32 0
  %add.ptr2.sum = add nuw nsw i64 %idx.ext, 258
  %add.ptr3 = getelementptr inbounds [0 x i8]* bitcast ([65536 x i8]* @window to [0 x i8]*), i64 0, i64 %add.ptr2.sum
  %sub4 = add nsw i32 %2, -1
  %idxprom = sext i32 %sub4 to i64
  %add.ptr.sum = add nsw i64 %idxprom, %idx.ext
  %arrayidx = getelementptr inbounds [0 x i8]* bitcast ([65536 x i8]* @window to [0 x i8]*), i64 0, i64 %add.ptr.sum
  %3 = load i8* %arrayidx, align 1, !tbaa !9
  %idxprom5 = sext i32 %2 to i64
  %add.ptr.sum170 = add nsw i64 %idxprom5, %idx.ext
  %arrayidx6 = getelementptr inbounds [0 x i8]* bitcast ([65536 x i8]* @window to [0 x i8]*), i64 0, i64 %add.ptr.sum170
  %4 = load i8* %arrayidx6, align 1, !tbaa !9
  %5 = load i32* @good_match, align 4, !tbaa !1
  %cmp7 = icmp ult i32 %2, %5
  %shr = lshr i32 %0, 2
  %.shr = select i1 %cmp7, i32 %0, i32 %shr
  %add.ptr.sum174 = add nuw nsw i64 %idx.ext, 1
  %arrayidx29 = getelementptr inbounds [0 x i8]* bitcast ([65536 x i8]* @window to [0 x i8]*), i64 0, i64 %add.ptr.sum174
  %add.ptr.sum175 = add nuw nsw i64 %idx.ext, 2
  %add.ptr35 = getelementptr inbounds [0 x i8]* bitcast ([65536 x i8]* @window to [0 x i8]*), i64 0, i64 %add.ptr.sum175
  %sub.ptr.lhs.cast = ptrtoint i8* %add.ptr3 to i64
  br label %do.body

do.body:                                          ; preds = %land.rhs116, %entry
  %best_len.0 = phi i32 [ %best_len.1, %land.rhs116 ], [ %2, %entry ]
  %chain_length.0 = phi i32 [ %dec, %land.rhs116 ], [ %.shr, %entry ]
  %cur_match.addr.0 = phi i32 [ %conv113, %land.rhs116 ], [ %cur_match, %entry ]
  %scan_end1.0 = phi i8 [ %scan_end1.1, %land.rhs116 ], [ %3, %entry ]
  %scan_end.0 = phi i8 [ %scan_end.1, %land.rhs116 ], [ %4, %entry ]
  %idx.ext8 = zext i32 %cur_match.addr.0 to i64
  %add.ptr9 = getelementptr inbounds [0 x i8]* bitcast ([65536 x i8]* @window to [0 x i8]*), i64 0, i64 %idx.ext8
  %idxprom10 = sext i32 %best_len.0 to i64
  %add.ptr9.sum = add nsw i64 %idx.ext8, %idxprom10
  %arrayidx11 = getelementptr inbounds [0 x i8]* bitcast ([65536 x i8]* @window to [0 x i8]*), i64 0, i64 %add.ptr9.sum
  %6 = load i8* %arrayidx11, align 1, !tbaa !9
  %cmp13 = icmp eq i8 %6, %scan_end.0
  br i1 %cmp13, label %lor.lhs.false, label %do.cond110

lor.lhs.false:                                    ; preds = %do.body
  %sub15 = add nsw i32 %best_len.0, -1
  %idxprom16 = sext i32 %sub15 to i64
  %add.ptr9.sum171 = add nsw i64 %idx.ext8, %idxprom16
  %arrayidx17 = getelementptr inbounds [0 x i8]* bitcast ([65536 x i8]* @window to [0 x i8]*), i64 0, i64 %add.ptr9.sum171
  %7 = load i8* %arrayidx17, align 1, !tbaa !9
  %cmp20 = icmp eq i8 %7, %scan_end1.0
  br i1 %cmp20, label %lor.lhs.false22, label %do.cond110

lor.lhs.false22:                                  ; preds = %lor.lhs.false
  %8 = load i8* %add.ptr9, align 1, !tbaa !9
  %9 = load i8* %add.ptr, align 1, !tbaa !9
  %cmp25 = icmp eq i8 %8, %9
  br i1 %cmp25, label %lor.lhs.false27, label %do.cond110

lor.lhs.false27:                                  ; preds = %lor.lhs.false22
  %add.ptr9.sum172 = add nuw nsw i64 %idx.ext8, 1
  %incdec.ptr = getelementptr inbounds [0 x i8]* bitcast ([65536 x i8]* @window to [0 x i8]*), i64 0, i64 %add.ptr9.sum172
  %10 = load i8* %incdec.ptr, align 1, !tbaa !9
  %11 = load i8* %arrayidx29, align 1, !tbaa !9
  %cmp31 = icmp eq i8 %10, %11
  br i1 %cmp31, label %if.end34, label %do.cond110

if.end34:                                         ; preds = %lor.lhs.false27
  %incdec.ptr.sum = add nuw nsw i64 %idx.ext8, 2
  %incdec.ptr36 = getelementptr inbounds [0 x i8]* bitcast ([65536 x i8]* @window to [0 x i8]*), i64 0, i64 %incdec.ptr.sum
  br label %do.cond

do.cond:                                          ; preds = %land.lhs.true85, %if.end34
  %match.0 = phi i8* [ %incdec.ptr36, %if.end34 ], [ %incdec.ptr88, %land.lhs.true85 ]
  %scan.1 = phi i8* [ %add.ptr35, %if.end34 ], [ %incdec.ptr86, %land.lhs.true85 ]
  %incdec.ptr38 = getelementptr inbounds i8* %scan.1, i64 1
  %12 = load i8* %incdec.ptr38, align 1, !tbaa !9
  %incdec.ptr40 = getelementptr inbounds i8* %match.0, i64 1
  %13 = load i8* %incdec.ptr40, align 1, !tbaa !9
  %cmp42 = icmp eq i8 %12, %13
  br i1 %cmp42, label %land.lhs.true, label %do.end

land.lhs.true:                                    ; preds = %do.cond
  %incdec.ptr44 = getelementptr inbounds i8* %scan.1, i64 2
  %14 = load i8* %incdec.ptr44, align 1, !tbaa !9
  %incdec.ptr46 = getelementptr inbounds i8* %match.0, i64 2
  %15 = load i8* %incdec.ptr46, align 1, !tbaa !9
  %cmp48 = icmp eq i8 %14, %15
  br i1 %cmp48, label %land.lhs.true50, label %do.end

land.lhs.true50:                                  ; preds = %land.lhs.true
  %incdec.ptr51 = getelementptr inbounds i8* %scan.1, i64 3
  %16 = load i8* %incdec.ptr51, align 1, !tbaa !9
  %incdec.ptr53 = getelementptr inbounds i8* %match.0, i64 3
  %17 = load i8* %incdec.ptr53, align 1, !tbaa !9
  %cmp55 = icmp eq i8 %16, %17
  br i1 %cmp55, label %land.lhs.true57, label %do.end

land.lhs.true57:                                  ; preds = %land.lhs.true50
  %incdec.ptr58 = getelementptr inbounds i8* %scan.1, i64 4
  %18 = load i8* %incdec.ptr58, align 1, !tbaa !9
  %incdec.ptr60 = getelementptr inbounds i8* %match.0, i64 4
  %19 = load i8* %incdec.ptr60, align 1, !tbaa !9
  %cmp62 = icmp eq i8 %18, %19
  br i1 %cmp62, label %land.lhs.true64, label %do.end

land.lhs.true64:                                  ; preds = %land.lhs.true57
  %incdec.ptr65 = getelementptr inbounds i8* %scan.1, i64 5
  %20 = load i8* %incdec.ptr65, align 1, !tbaa !9
  %incdec.ptr67 = getelementptr inbounds i8* %match.0, i64 5
  %21 = load i8* %incdec.ptr67, align 1, !tbaa !9
  %cmp69 = icmp eq i8 %20, %21
  br i1 %cmp69, label %land.lhs.true71, label %do.end

land.lhs.true71:                                  ; preds = %land.lhs.true64
  %incdec.ptr72 = getelementptr inbounds i8* %scan.1, i64 6
  %22 = load i8* %incdec.ptr72, align 1, !tbaa !9
  %incdec.ptr74 = getelementptr inbounds i8* %match.0, i64 6
  %23 = load i8* %incdec.ptr74, align 1, !tbaa !9
  %cmp76 = icmp eq i8 %22, %23
  br i1 %cmp76, label %land.lhs.true78, label %do.end

land.lhs.true78:                                  ; preds = %land.lhs.true71
  %incdec.ptr79 = getelementptr inbounds i8* %scan.1, i64 7
  %24 = load i8* %incdec.ptr79, align 1, !tbaa !9
  %incdec.ptr81 = getelementptr inbounds i8* %match.0, i64 7
  %25 = load i8* %incdec.ptr81, align 1, !tbaa !9
  %cmp83 = icmp eq i8 %24, %25
  br i1 %cmp83, label %land.lhs.true85, label %do.end

land.lhs.true85:                                  ; preds = %land.lhs.true78
  %incdec.ptr86 = getelementptr inbounds i8* %scan.1, i64 8
  %26 = load i8* %incdec.ptr86, align 1, !tbaa !9
  %incdec.ptr88 = getelementptr inbounds i8* %match.0, i64 8
  %27 = load i8* %incdec.ptr88, align 1, !tbaa !9
  %cmp90 = icmp eq i8 %26, %27
  %cmp92 = icmp ult i8* %incdec.ptr86, %add.ptr3
  %or.cond = and i1 %cmp90, %cmp92
  br i1 %or.cond, label %do.cond, label %do.end

do.end:                                           ; preds = %land.lhs.true85, %land.lhs.true78, %land.lhs.true71, %land.lhs.true64, %land.lhs.true57, %land.lhs.true50, %land.lhs.true, %do.cond
  %scan.2 = phi i8* [ %incdec.ptr86, %land.lhs.true85 ], [ %incdec.ptr79, %land.lhs.true78 ], [ %incdec.ptr72, %land.lhs.true71 ], [ %incdec.ptr65, %land.lhs.true64 ], [ %incdec.ptr58, %land.lhs.true57 ], [ %incdec.ptr51, %land.lhs.true50 ], [ %incdec.ptr44, %land.lhs.true ], [ %incdec.ptr38, %do.cond ]
  %sub.ptr.rhs.cast = ptrtoint i8* %scan.2 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv94 = trunc i64 %sub.ptr.sub to i32
  %sub95 = sub nsw i32 258, %conv94
  %cmp97 = icmp sgt i32 %sub95, %best_len.0
  br i1 %cmp97, label %if.then99, label %do.cond110

if.then99:                                        ; preds = %do.end
  store i32 %cur_match.addr.0, i32* @match_start, align 4, !tbaa !1
  %28 = load i32* @nice_match, align 4, !tbaa !1
  %cmp100 = icmp slt i32 %sub95, %28
  br i1 %cmp100, label %if.end103, label %do.end120

if.end103:                                        ; preds = %if.then99
  %sub104 = add nsw i32 %sub95, -1
  %idxprom105 = sext i32 %sub104 to i64
  %add.ptr96.sum = add nsw i64 %idxprom105, %idx.ext
  %arrayidx106 = getelementptr inbounds [0 x i8]* bitcast ([65536 x i8]* @window to [0 x i8]*), i64 0, i64 %add.ptr96.sum
  %29 = load i8* %arrayidx106, align 1, !tbaa !9
  %idxprom107 = sext i32 %sub95 to i64
  %add.ptr96.sum173 = add nsw i64 %idxprom107, %idx.ext
  %arrayidx108 = getelementptr inbounds [0 x i8]* bitcast ([65536 x i8]* @window to [0 x i8]*), i64 0, i64 %add.ptr96.sum173
  %30 = load i8* %arrayidx108, align 1, !tbaa !9
  br label %do.cond110

do.cond110:                                       ; preds = %if.end103, %do.end, %lor.lhs.false27, %lor.lhs.false22, %lor.lhs.false, %do.body
  %best_len.1 = phi i32 [ %best_len.0, %do.body ], [ %best_len.0, %lor.lhs.false ], [ %best_len.0, %lor.lhs.false22 ], [ %best_len.0, %lor.lhs.false27 ], [ %sub95, %if.end103 ], [ %best_len.0, %do.end ]
  %scan_end1.1 = phi i8 [ %scan_end1.0, %do.body ], [ %scan_end1.0, %lor.lhs.false ], [ %scan_end1.0, %lor.lhs.false22 ], [ %scan_end1.0, %lor.lhs.false27 ], [ %29, %if.end103 ], [ %scan_end1.0, %do.end ]
  %scan_end.1 = phi i8 [ %scan_end.0, %do.body ], [ %scan_end.0, %lor.lhs.false ], [ %scan_end.0, %lor.lhs.false22 ], [ %scan_end.0, %lor.lhs.false27 ], [ %30, %if.end103 ], [ %scan_end.0, %do.end ]
  %and = and i32 %cur_match.addr.0, 32767
  %idxprom111 = zext i32 %and to i64
  %arrayidx112 = getelementptr inbounds [0 x i16]* bitcast ([65536 x i16]* @prev to [0 x i16]*), i64 0, i64 %idxprom111
  %31 = load i16* %arrayidx112, align 2, !tbaa !5
  %conv113 = zext i16 %31 to i32
  %cmp114 = icmp ugt i32 %conv113, %sub.
  br i1 %cmp114, label %land.rhs116, label %do.end120

land.rhs116:                                      ; preds = %do.cond110
  %dec = add i32 %chain_length.0, -1
  %cmp117 = icmp eq i32 %dec, 0
  br i1 %cmp117, label %do.end120, label %do.body

do.end120:                                        ; preds = %land.rhs116, %do.cond110, %if.then99
  %best_len.2 = phi i32 [ %best_len.1, %land.rhs116 ], [ %best_len.1, %do.cond110 ], [ %sub95, %if.then99 ]
  ret i32 %best_len.2
}

; Function Attrs: nounwind uwtable
define i64 @deflate() #0 {
entry:
  %0 = load i32* @compr_level, align 4, !tbaa !1
  %cmp = icmp slt i32 %0, 4
  br i1 %cmp, label %if.then, label %while.condthread-pre-split.preheader

while.condthread-pre-split.preheader:             ; preds = %entry
  %.pr158 = load i32* @lookahead, align 4, !tbaa !1
  %cmp1154159 = icmp eq i32 %.pr158, 0
  br i1 %cmp1154159, label %if.end124, label %while.body.preheader

while.body.preheader:                             ; preds = %while.condthread-pre-split.preheader
  br label %while.body

if.then:                                          ; preds = %entry
  store i32 2, i32* @prev_length, align 4, !tbaa !1
  %.pr117.i = load i32* @lookahead, align 4, !tbaa !1
  %cmp115118.i = icmp eq i32 %.pr117.i, 0
  br i1 %cmp115118.i, label %while.end88.i, label %while.body.i.preheader

while.body.i.preheader:                           ; preds = %if.then
  br label %while.body.i

while.condthread-pre-split.loopexit.i:            ; preds = %land.rhs.i
  %.pr.i.lcssa = phi i32 [ %.pr.i, %land.rhs.i ]
  %cmp115.i = icmp eq i32 %.pr.i.lcssa, 0
  br i1 %cmp115.i, label %while.end88.i.loopexit, label %while.body.i.backedge

while.body.i.backedge:                            ; preds = %while.cond83.preheader.i, %while.body.i.loopexit, %while.condthread-pre-split.loopexit.i
  br label %while.body.i

while.body.i.loopexit:                            ; preds = %while.body87.i
  br label %while.body.i.backedge

while.body.i:                                     ; preds = %while.body.i.backedge, %while.body.i.preheader
  %match_length.0116.i = phi i32 [ 0, %while.body.i.preheader ], [ %match_length.3.i, %while.body.i.backedge ]
  %1 = load i32* @ins_h, align 4, !tbaa !1
  %shl.i = shl i32 %1, 5
  %2 = load i32* @strstart, align 4, !tbaa !1
  %sub.i = add i32 %2, 2
  %idxprom.i = zext i32 %sub.i to i64
  %arrayidx.i = getelementptr inbounds [0 x i8]* bitcast ([65536 x i8]* @window to [0 x i8]*), i64 0, i64 %idxprom.i
  %3 = load i8* %arrayidx.i, align 1, !tbaa !9
  %conv.i = zext i8 %3 to i32
  %shl.masked.i = and i32 %shl.i, 32736
  %and.i = xor i32 %conv.i, %shl.masked.i
  store i32 %and.i, i32* @ins_h, align 4, !tbaa !1
  %idxprom1.i = zext i32 %and.i to i64
  %.sum109.i = or i64 %idxprom1.i, 32768
  %arrayidx2.i = getelementptr inbounds [0 x i16]* bitcast ([65536 x i16]* @prev to [0 x i16]*), i64 0, i64 %.sum109.i
  %4 = load i16* %arrayidx2.i, align 2, !tbaa !5
  %conv3.i = zext i16 %4 to i32
  %and5.i = and i32 %2, 32767
  %idxprom6.i = zext i32 %and5.i to i64
  %arrayidx7.i = getelementptr inbounds [0 x i16]* bitcast ([65536 x i16]* @prev to [0 x i16]*), i64 0, i64 %idxprom6.i
  store i16 %4, i16* %arrayidx7.i, align 2, !tbaa !5
  %conv8.i = trunc i32 %2 to i16
  store i16 %conv8.i, i16* %arrayidx2.i, align 2, !tbaa !5
  %cmp11.i = icmp ne i16 %4, 0
  %sub13.i = sub i32 %2, %conv3.i
  %cmp14.i = icmp ult i32 %sub13.i, 32507
  %or.cond.i = and i1 %cmp11.i, %cmp14.i
  br i1 %or.cond.i, label %if.then.i, label %if.end19.i

if.then.i:                                        ; preds = %while.body.i
  %call.i = tail call i32 @longest_match(i32 %conv3.i) #2
  %5 = load i32* @lookahead, align 4, !tbaa !1
  %cmp16.i = icmp ugt i32 %call.i, %5
  %.call.i = select i1 %cmp16.i, i32 %5, i32 %call.i
  %.pre.i = load i32* @strstart, align 4, !tbaa !1
  br label %if.end19.i

if.end19.i:                                       ; preds = %if.then.i, %while.body.i
  %6 = phi i32 [ %2, %while.body.i ], [ %.pre.i, %if.then.i ]
  %match_length.1.i = phi i32 [ %match_length.0116.i, %while.body.i ], [ %.call.i, %if.then.i ]
  %cmp20.i = icmp ugt i32 %match_length.1.i, 2
  br i1 %cmp20.i, label %if.then22.i, label %if.else64.i

if.then22.i:                                      ; preds = %if.end19.i
  %7 = load i32* @match_start, align 4, !tbaa !1
  %sub23.i = sub i32 %6, %7
  %sub24.i = add i32 %match_length.1.i, -3
  %call25.i = tail call i32 @ct_tally(i32 %sub23.i, i32 %sub24.i) #2
  %8 = load i32* @lookahead, align 4, !tbaa !1
  %sub26.i = sub i32 %8, %match_length.1.i
  store i32 %sub26.i, i32* @lookahead, align 4, !tbaa !1
  %9 = load i32* @max_lazy_match, align 4, !tbaa !1
  %cmp27.i = icmp ugt i32 %match_length.1.i, %9
  br i1 %cmp27.i, label %if.else.i, label %if.then29.i

if.then29.i:                                      ; preds = %if.then22.i
  %dec.i = add i32 %match_length.1.i, -1
  %strstart.promoted.i = load i32* @strstart, align 4, !tbaa !1
  %ins_h.promoted.i = load i32* @ins_h, align 4, !tbaa !1
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i, %if.then29.i
  %10 = phi i32 [ %ins_h.promoted.i, %if.then29.i ], [ %and37.i, %do.body.i ]
  %11 = phi i32 [ %strstart.promoted.i, %if.then29.i ], [ %inc.i, %do.body.i ]
  %match_length.2.i = phi i32 [ %dec.i, %if.then29.i ], [ %dec48.i, %do.body.i ]
  %inc.i = add i32 %11, 1
  %shl30.i = shl i32 %10, 5
  %sub32.i = add i32 %11, 3
  %idxprom33.i = zext i32 %sub32.i to i64
  %arrayidx34.i = getelementptr inbounds [0 x i8]* bitcast ([65536 x i8]* @window to [0 x i8]*), i64 0, i64 %idxprom33.i
  %12 = load i8* %arrayidx34.i, align 1, !tbaa !9
  %conv35.i = zext i8 %12 to i32
  %shl30.masked.i = and i32 %shl30.i, 32736
  %and37.i = xor i32 %conv35.i, %shl30.masked.i
  %idxprom38.i = zext i32 %and37.i to i64
  %.sum110111.i = or i64 %idxprom38.i, 32768
  %arrayidx39.i = getelementptr inbounds [0 x i16]* bitcast ([65536 x i16]* @prev to [0 x i16]*), i64 0, i64 %.sum110111.i
  %13 = load i16* %arrayidx39.i, align 2, !tbaa !5
  %and42.i = and i32 %inc.i, 32767
  %idxprom43.i = zext i32 %and42.i to i64
  %arrayidx44.i = getelementptr inbounds [0 x i16]* bitcast ([65536 x i16]* @prev to [0 x i16]*), i64 0, i64 %idxprom43.i
  store i16 %13, i16* %arrayidx44.i, align 2, !tbaa !5
  %conv45.i = trunc i32 %inc.i to i16
  store i16 %conv45.i, i16* %arrayidx39.i, align 2, !tbaa !5
  %dec48.i = add i32 %match_length.2.i, -1
  %cmp49.i = icmp eq i32 %dec48.i, 0
  br i1 %cmp49.i, label %do.end.i, label %do.body.i

do.end.i:                                         ; preds = %do.body.i
  %and37.i.lcssa = phi i32 [ %and37.i, %do.body.i ]
  store i32 %and37.i.lcssa, i32* @ins_h, align 4, !tbaa !1
  %inc51.i = add i32 %strstart.promoted.i, %match_length.1.i
  store i32 %inc51.i, i32* @strstart, align 4, !tbaa !1
  br label %if.end71.i

if.else.i:                                        ; preds = %if.then22.i
  %14 = load i32* @strstart, align 4, !tbaa !1
  %add52.i = add i32 %14, %match_length.1.i
  store i32 %add52.i, i32* @strstart, align 4, !tbaa !1
  %idxprom53.i = zext i32 %add52.i to i64
  %arrayidx54.i = getelementptr inbounds [0 x i8]* bitcast ([65536 x i8]* @window to [0 x i8]*), i64 0, i64 %idxprom53.i
  %15 = load i8* %arrayidx54.i, align 1, !tbaa !9
  %conv55.i = zext i8 %15 to i32
  %shl56.i = shl nuw nsw i32 %conv55.i, 5
  %add57.i = add i32 %add52.i, 1
  %idxprom58.i = zext i32 %add57.i to i64
  %arrayidx59.i = getelementptr inbounds [0 x i8]* bitcast ([65536 x i8]* @window to [0 x i8]*), i64 0, i64 %idxprom58.i
  %16 = load i8* %arrayidx59.i, align 1, !tbaa !9
  %conv60.i = zext i8 %16 to i32
  %xor61.i = xor i32 %conv60.i, %shl56.i
  store i32 %xor61.i, i32* @ins_h, align 4, !tbaa !1
  br label %if.end71.i

if.else64.i:                                      ; preds = %if.end19.i
  %idxprom65.i = zext i32 %6 to i64
  %arrayidx66.i = getelementptr inbounds [0 x i8]* bitcast ([65536 x i8]* @window to [0 x i8]*), i64 0, i64 %idxprom65.i
  %17 = load i8* %arrayidx66.i, align 1, !tbaa !9
  %conv67.i = zext i8 %17 to i32
  %call68.i = tail call i32 @ct_tally(i32 0, i32 %conv67.i) #2
  %18 = load i32* @lookahead, align 4, !tbaa !1
  %dec69.i = add i32 %18, -1
  store i32 %dec69.i, i32* @lookahead, align 4, !tbaa !1
  %19 = load i32* @strstart, align 4, !tbaa !1
  %inc70.i = add i32 %19, 1
  store i32 %inc70.i, i32* @strstart, align 4, !tbaa !1
  br label %if.end71.i

if.end71.i:                                       ; preds = %if.else64.i, %if.else.i, %do.end.i
  %20 = phi i32 [ %inc51.i, %do.end.i ], [ %add52.i, %if.else.i ], [ %inc70.i, %if.else64.i ]
  %21 = phi i32 [ %sub26.i, %do.end.i ], [ %sub26.i, %if.else.i ], [ %dec69.i, %if.else64.i ]
  %flush.0.i = phi i32 [ %call25.i, %do.end.i ], [ %call25.i, %if.else.i ], [ %call68.i, %if.else64.i ]
  %match_length.3.i = phi i32 [ 0, %do.end.i ], [ 0, %if.else.i ], [ %match_length.1.i, %if.else64.i ]
  %tobool.i = icmp eq i32 %flush.0.i, 0
  br i1 %tobool.i, label %while.cond83.preheader.i, label %if.then72.i

if.then72.i:                                      ; preds = %if.end71.i
  %22 = load i64* @block_start, align 8, !tbaa !15
  %cmp73.i = icmp sgt i64 %22, -1
  br i1 %cmp73.i, label %cond.true.i, label %cond.end.i

cond.true.i:                                      ; preds = %if.then72.i
  %idxprom76.i = and i64 %22, 4294967295
  %arrayidx77.i = getelementptr inbounds [0 x i8]* bitcast ([65536 x i8]* @window to [0 x i8]*), i64 0, i64 %idxprom76.i
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.true.i, %if.then72.i
  %cond.i = phi i8* [ %arrayidx77.i, %cond.true.i ], [ null, %if.then72.i ]
  %conv78.i = zext i32 %20 to i64
  %sub79.i = sub nsw i64 %conv78.i, %22
  %call80.i = tail call i64 @flush_block(i8* %cond.i, i64 %sub79.i, i32 0) #2
  %23 = load i32* @strstart, align 4, !tbaa !1
  %conv81.i = zext i32 %23 to i64
  store i64 %conv81.i, i64* @block_start, align 8, !tbaa !15
  %.pre124.i = load i32* @lookahead, align 4, !tbaa !1
  br label %while.cond83.preheader.i

while.cond83.preheader.i:                         ; preds = %cond.end.i, %if.end71.i
  %24 = phi i32 [ %.pre124.i, %cond.end.i ], [ %21, %if.end71.i ]
  %cmp84114.i = icmp ult i32 %24, 262
  br i1 %cmp84114.i, label %land.rhs.i.preheader, label %while.body.i.backedge

land.rhs.i.preheader:                             ; preds = %while.cond83.preheader.i
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %while.body87.i, %land.rhs.i.preheader
  %.pr.i = phi i32 [ %25, %while.body87.i ], [ %24, %land.rhs.i.preheader ]
  %.b.i = load i1* @eofile, align 1
  br i1 %.b.i, label %while.condthread-pre-split.loopexit.i, label %while.body87.i

while.body87.i:                                   ; preds = %land.rhs.i
  tail call fastcc void @fill_window() #2
  %25 = load i32* @lookahead, align 4, !tbaa !1
  %cmp84.i = icmp ult i32 %25, 262
  br i1 %cmp84.i, label %land.rhs.i, label %while.body.i.loopexit

while.end88.i.loopexit:                           ; preds = %while.condthread-pre-split.loopexit.i
  br label %while.end88.i

while.end88.i:                                    ; preds = %while.end88.i.loopexit, %if.then
  %26 = load i64* @block_start, align 8, !tbaa !15
  %cmp89.i = icmp sgt i64 %26, -1
  br i1 %cmp89.i, label %cond.true91.i, label %deflate_fast.exit

cond.true91.i:                                    ; preds = %while.end88.i
  %idxprom93.i = and i64 %26, 4294967295
  %arrayidx94.i = getelementptr inbounds [0 x i8]* bitcast ([65536 x i8]* @window to [0 x i8]*), i64 0, i64 %idxprom93.i
  br label %deflate_fast.exit

deflate_fast.exit:                                ; preds = %cond.true91.i, %while.end88.i
  %cond97.i = phi i8* [ %arrayidx94.i, %cond.true91.i ], [ null, %while.end88.i ]
  %27 = load i32* @strstart, align 4, !tbaa !1
  %conv98.i = zext i32 %27 to i64
  %sub99.i = sub nsw i64 %conv98.i, %26
  %call100.i = tail call i64 @flush_block(i8* %cond97.i, i64 %sub99.i, i32 1) #2
  br label %return

while.condthread-pre-split.loopexit:              ; preds = %land.rhs
  %cmp1154 = icmp eq i32 %.pr, 0
  br i1 %cmp1154, label %while.end116, label %while.body.backedge

while.body.backedge:                              ; preds = %while.cond111, %while.condthread-pre-split.loopexit
  br label %while.body

while.body:                                       ; preds = %while.body.backedge, %while.body.preheader
  %28 = phi i32 [ %.pr158, %while.body.preheader ], [ %.pr, %while.body.backedge ]
  %match_length.0156 = phi i32 [ 2, %while.body.preheader ], [ %match_length.3, %while.body.backedge ]
  %match_available.0155 = phi i32 [ 0, %while.body.preheader ], [ %match_available.1, %while.body.backedge ]
  %29 = load i32* @ins_h, align 4, !tbaa !1
  %shl = shl i32 %29, 5
  %30 = load i32* @strstart, align 4, !tbaa !1
  %sub = add i32 %30, 2
  %idxprom = zext i32 %sub to i64
  %arrayidx = getelementptr inbounds [0 x i8]* bitcast ([65536 x i8]* @window to [0 x i8]*), i64 0, i64 %idxprom
  %31 = load i8* %arrayidx, align 1, !tbaa !9
  %conv = zext i8 %31 to i32
  %shl.masked = and i32 %shl, 32736
  %and = xor i32 %conv, %shl.masked
  store i32 %and, i32* @ins_h, align 4, !tbaa !1
  %idxprom2 = zext i32 %and to i64
  %.sum144 = or i64 %idxprom2, 32768
  %arrayidx3 = getelementptr inbounds [0 x i16]* bitcast ([65536 x i16]* @prev to [0 x i16]*), i64 0, i64 %.sum144
  %32 = load i16* %arrayidx3, align 2, !tbaa !5
  %conv4 = zext i16 %32 to i32
  %and6 = and i32 %30, 32767
  %idxprom7 = zext i32 %and6 to i64
  %arrayidx8 = getelementptr inbounds [0 x i16]* bitcast ([65536 x i16]* @prev to [0 x i16]*), i64 0, i64 %idxprom7
  store i16 %32, i16* %arrayidx8, align 2, !tbaa !5
  %conv9 = trunc i32 %30 to i16
  %.sum167 = or i64 %idxprom2, 32768
  %arrayidx11 = getelementptr inbounds [0 x i16]* bitcast ([65536 x i16]* @prev to [0 x i16]*), i64 0, i64 %.sum167
  store i16 %conv9, i16* %arrayidx11, align 2, !tbaa !5
  store i32 %match_length.0156, i32* @prev_length, align 4, !tbaa !1
  %33 = load i32* @match_start, align 4, !tbaa !1
  %cmp12 = icmp ne i16 %32, 0
  %34 = load i32* @max_lazy_match, align 4
  %cmp14 = icmp ult i32 %match_length.0156, %34
  %or.cond = and i1 %cmp12, %cmp14
  %sub17 = sub i32 %30, %conv4
  %cmp18 = icmp ult i32 %sub17, 32507
  %or.cond169 = and i1 %or.cond, %cmp18
  br i1 %or.cond169, label %if.then20, label %if.end34

if.then20:                                        ; preds = %while.body
  %call21 = tail call i32 @longest_match(i32 %conv4)
  %35 = load i32* @lookahead, align 4, !tbaa !1
  %cmp22 = icmp ugt i32 %call21, %35
  %.call21 = select i1 %cmp22, i32 %35, i32 %call21
  %cmp26 = icmp eq i32 %.call21, 3
  br i1 %cmp26, label %land.lhs.true28, label %if.end34

land.lhs.true28:                                  ; preds = %if.then20
  %36 = load i32* @strstart, align 4, !tbaa !1
  %37 = load i32* @match_start, align 4, !tbaa !1
  %sub29 = sub i32 %36, %37
  %cmp30 = icmp ugt i32 %sub29, 4096
  %dec = sext i1 %cmp30 to i32
  %dec..call21 = add nsw i32 %dec, 3
  br label %if.end34

if.end34:                                         ; preds = %land.lhs.true28, %if.then20, %while.body
  %38 = phi i32 [ %35, %if.then20 ], [ %28, %while.body ], [ %35, %land.lhs.true28 ]
  %match_length.2 = phi i32 [ %.call21, %if.then20 ], [ 2, %while.body ], [ %dec..call21, %land.lhs.true28 ]
  %39 = load i32* @prev_length, align 4, !tbaa !1
  %cmp35 = icmp ult i32 %39, 3
  %cmp38 = icmp ugt i32 %match_length.2, %39
  %or.cond148 = or i1 %cmp35, %cmp38
  br i1 %or.cond148, label %if.else, label %if.then40

if.then40:                                        ; preds = %if.end34
  %40 = load i32* @strstart, align 4, !tbaa !1
  %sub41 = xor i32 %33, -1
  %sub42 = add i32 %40, %sub41
  %sub43 = add i32 %39, -3
  %call44 = tail call i32 @ct_tally(i32 %sub42, i32 %sub43) #2
  %41 = load i32* @prev_length, align 4, !tbaa !1
  %42 = load i32* @lookahead, align 4, !tbaa !1
  %sub45.neg = sub i32 1, %41
  %sub46 = add i32 %sub45.neg, %42
  store i32 %sub46, i32* @lookahead, align 4, !tbaa !1
  %sub47 = add i32 %41, -2
  store i32 %sub47, i32* @prev_length, align 4, !tbaa !1
  %strstart.promoted = load i32* @strstart, align 4, !tbaa !1
  %ins_h.promoted = load i32* @ins_h, align 4, !tbaa !1
  %43 = add i32 %41, -3
  br label %do.body

do.body:                                          ; preds = %do.body, %if.then40
  %dec66153 = phi i32 [ %dec66, %do.body ], [ %sub47, %if.then40 ]
  %44 = phi i32 [ %and55, %do.body ], [ %ins_h.promoted, %if.then40 ]
  %45 = phi i32 [ %inc, %do.body ], [ %strstart.promoted, %if.then40 ]
  %inc = add i32 %45, 1
  %shl48 = shl i32 %44, 5
  %sub50 = add i32 %45, 3
  %idxprom51 = zext i32 %sub50 to i64
  %arrayidx52 = getelementptr inbounds [0 x i8]* bitcast ([65536 x i8]* @window to [0 x i8]*), i64 0, i64 %idxprom51
  %46 = load i8* %arrayidx52, align 1, !tbaa !9
  %conv53 = zext i8 %46 to i32
  %shl48.masked = and i32 %shl48, 32736
  %and55 = xor i32 %shl48.masked, %conv53
  %idxprom56 = zext i32 %and55 to i64
  %.sum145146 = or i64 %idxprom56, 32768
  %arrayidx57 = getelementptr inbounds [0 x i16]* bitcast ([65536 x i16]* @prev to [0 x i16]*), i64 0, i64 %.sum145146
  %47 = load i16* %arrayidx57, align 2, !tbaa !5
  %and60 = and i32 %inc, 32767
  %idxprom61 = zext i32 %and60 to i64
  %arrayidx62 = getelementptr inbounds [0 x i16]* bitcast ([65536 x i16]* @prev to [0 x i16]*), i64 0, i64 %idxprom61
  store i16 %47, i16* %arrayidx62, align 2, !tbaa !5
  %conv63 = trunc i32 %inc to i16
  store i16 %conv63, i16* %arrayidx57, align 2, !tbaa !5
  %dec66 = add i32 %dec66153, -1
  %cmp67 = icmp eq i32 %dec66, 0
  br i1 %cmp67, label %do.end, label %do.body

do.end:                                           ; preds = %do.body
  %and55.lcssa = phi i32 [ %and55, %do.body ]
  %48 = add i32 %43, %strstart.promoted
  store i32 %and55.lcssa, i32* @ins_h, align 4, !tbaa !1
  store i32 0, i32* @prev_length, align 4, !tbaa !1
  %inc69 = add i32 %48, 2
  store i32 %inc69, i32* @strstart, align 4, !tbaa !1
  %tobool = icmp eq i32 %call44, 0
  br i1 %tobool, label %while.cond111thread-pre-split, label %if.then70

if.then70:                                        ; preds = %do.end
  %49 = load i64* @block_start, align 8, !tbaa !15
  %cmp71 = icmp sgt i64 %49, -1
  br i1 %cmp71, label %cond.true, label %cond.end

cond.true:                                        ; preds = %if.then70
  %idxprom74 = and i64 %49, 4294967295
  %arrayidx75 = getelementptr inbounds [0 x i8]* bitcast ([65536 x i8]* @window to [0 x i8]*), i64 0, i64 %idxprom74
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.then70
  %cond = phi i8* [ %arrayidx75, %cond.true ], [ null, %if.then70 ]
  %conv76 = zext i32 %inc69 to i64
  %sub77 = sub nsw i64 %conv76, %49
  %call78 = tail call i64 @flush_block(i8* %cond, i64 %sub77, i32 0) #2
  %50 = load i32* @strstart, align 4, !tbaa !1
  %conv79 = zext i32 %50 to i64
  store i64 %conv79, i64* @block_start, align 8, !tbaa !15
  br label %while.cond111thread-pre-split

if.else:                                          ; preds = %if.end34
  %tobool81 = icmp eq i32 %match_available.0155, 0
  %51 = load i32* @strstart, align 4, !tbaa !1
  br i1 %tobool81, label %if.else106, label %if.then82

if.then82:                                        ; preds = %if.else
  %sub83 = add i32 %51, -1
  %idxprom84 = zext i32 %sub83 to i64
  %arrayidx85 = getelementptr inbounds [0 x i8]* bitcast ([65536 x i8]* @window to [0 x i8]*), i64 0, i64 %idxprom84
  %52 = load i8* %arrayidx85, align 1, !tbaa !9
  %conv86 = zext i8 %52 to i32
  %call87 = tail call i32 @ct_tally(i32 0, i32 %conv86) #2
  %tobool88 = icmp eq i32 %call87, 0
  br i1 %tobool88, label %if.then82.if.end103_crit_edge, label %if.then89

if.then82.if.end103_crit_edge:                    ; preds = %if.then82
  %.pre = load i32* @strstart, align 4, !tbaa !1
  br label %if.end103

if.then89:                                        ; preds = %if.then82
  %53 = load i64* @block_start, align 8, !tbaa !15
  %cmp90 = icmp sgt i64 %53, -1
  br i1 %cmp90, label %cond.true92, label %cond.end97

cond.true92:                                      ; preds = %if.then89
  %idxprom94 = and i64 %53, 4294967295
  %arrayidx95 = getelementptr inbounds [0 x i8]* bitcast ([65536 x i8]* @window to [0 x i8]*), i64 0, i64 %idxprom94
  br label %cond.end97

cond.end97:                                       ; preds = %cond.true92, %if.then89
  %cond98 = phi i8* [ %arrayidx95, %cond.true92 ], [ null, %if.then89 ]
  %54 = load i32* @strstart, align 4, !tbaa !1
  %conv99 = zext i32 %54 to i64
  %sub100 = sub nsw i64 %conv99, %53
  %call101 = tail call i64 @flush_block(i8* %cond98, i64 %sub100, i32 0) #2
  %55 = load i32* @strstart, align 4, !tbaa !1
  %conv102 = zext i32 %55 to i64
  store i64 %conv102, i64* @block_start, align 8, !tbaa !15
  br label %if.end103

if.end103:                                        ; preds = %cond.end97, %if.then82.if.end103_crit_edge
  %56 = phi i32 [ %.pre, %if.then82.if.end103_crit_edge ], [ %55, %cond.end97 ]
  %inc104 = add i32 %56, 1
  store i32 %inc104, i32* @strstart, align 4, !tbaa !1
  %57 = load i32* @lookahead, align 4, !tbaa !1
  %dec105 = add i32 %57, -1
  store i32 %dec105, i32* @lookahead, align 4, !tbaa !1
  br label %while.cond111

if.else106:                                       ; preds = %if.else
  %inc107 = add i32 %51, 1
  store i32 %inc107, i32* @strstart, align 4, !tbaa !1
  %dec108 = add i32 %38, -1
  store i32 %dec108, i32* @lookahead, align 4, !tbaa !1
  br label %while.cond111

while.cond111thread-pre-split:                    ; preds = %while.body115, %cond.end, %do.end
  %match_available.1.ph = phi i32 [ 0, %do.end ], [ %match_available.1, %while.body115 ], [ 0, %cond.end ]
  %match_length.3.ph = phi i32 [ 2, %do.end ], [ %match_length.3, %while.body115 ], [ 2, %cond.end ]
  %.pr149 = load i32* @lookahead, align 4, !tbaa !1
  br label %while.cond111

while.cond111:                                    ; preds = %while.cond111thread-pre-split, %if.else106, %if.end103
  %.pr = phi i32 [ %.pr149, %while.cond111thread-pre-split ], [ %dec108, %if.else106 ], [ %dec105, %if.end103 ]
  %match_available.1 = phi i32 [ %match_available.1.ph, %while.cond111thread-pre-split ], [ 1, %if.else106 ], [ %match_available.0155, %if.end103 ]
  %match_length.3 = phi i32 [ %match_length.3.ph, %while.cond111thread-pre-split ], [ %match_length.2, %if.else106 ], [ %match_length.2, %if.end103 ]
  %cmp112 = icmp ult i32 %.pr, 262
  br i1 %cmp112, label %land.rhs, label %while.body.backedge

land.rhs:                                         ; preds = %while.cond111
  %.b = load i1* @eofile, align 1
  br i1 %.b, label %while.condthread-pre-split.loopexit, label %while.body115

while.body115:                                    ; preds = %land.rhs
  tail call fastcc void @fill_window()
  br label %while.cond111thread-pre-split

while.end116:                                     ; preds = %while.condthread-pre-split.loopexit
  %match_available.1.lcssa = phi i32 [ %match_available.1, %while.condthread-pre-split.loopexit ]
  %tobool117 = icmp eq i32 %match_available.1.lcssa, 0
  br i1 %tobool117, label %if.end124, label %if.then118

if.then118:                                       ; preds = %while.end116
  %58 = load i32* @strstart, align 4, !tbaa !1
  %sub119 = add i32 %58, -1
  %idxprom120 = zext i32 %sub119 to i64
  %arrayidx121 = getelementptr inbounds [0 x i8]* bitcast ([65536 x i8]* @window to [0 x i8]*), i64 0, i64 %idxprom120
  %59 = load i8* %arrayidx121, align 1, !tbaa !9
  %conv122 = zext i8 %59 to i32
  %call123 = tail call i32 @ct_tally(i32 0, i32 %conv122) #2
  br label %if.end124

if.end124:                                        ; preds = %if.then118, %while.end116, %while.condthread-pre-split.preheader
  %60 = load i64* @block_start, align 8, !tbaa !15
  %cmp125 = icmp sgt i64 %60, -1
  br i1 %cmp125, label %cond.true127, label %cond.end132

cond.true127:                                     ; preds = %if.end124
  %idxprom129 = and i64 %60, 4294967295
  %arrayidx130 = getelementptr inbounds [0 x i8]* bitcast ([65536 x i8]* @window to [0 x i8]*), i64 0, i64 %idxprom129
  br label %cond.end132

cond.end132:                                      ; preds = %cond.true127, %if.end124
  %cond133 = phi i8* [ %arrayidx130, %cond.true127 ], [ null, %if.end124 ]
  %61 = load i32* @strstart, align 4, !tbaa !1
  %conv134 = zext i32 %61 to i64
  %sub135 = sub nsw i64 %conv134, %60
  %call136 = tail call i64 @flush_block(i8* %cond133, i64 %sub135, i32 1) #2
  br label %return

return:                                           ; preds = %cond.end132, %deflate_fast.exit
  %retval.0 = phi i64 [ %call100.i, %deflate_fast.exit ], [ %call136, %cond.end132 ]
  ret i64 %retval.0
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

; Function Attrs: nounwind uwtable
define internal fastcc void @fill_window() #0 {
entry:
  %0 = load i64* @window_size, align 8, !tbaa !15
  %1 = load i32* @lookahead, align 4, !tbaa !1
  %conv = zext i32 %1 to i64
  %sub = sub i64 %0, %conv
  %2 = load i32* @strstart, align 4, !tbaa !1
  %conv1 = zext i32 %2 to i64
  %sub2 = sub i64 %sub, %conv1
  %conv3 = trunc i64 %sub2 to i32
  %cmp = icmp eq i32 %conv3, -1
  br i1 %cmp, label %if.end40, label %if.else

if.else:                                          ; preds = %entry
  %cmp5 = icmp ugt i32 %2, 65273
  br i1 %cmp5, label %if.then7, label %if.end40

if.then7:                                         ; preds = %if.else
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* getelementptr inbounds ([65536 x i8]* @window, i64 0, i64 0), i8* getelementptr inbounds ([65536 x i8]* @window, i64 0, i64 32768), i64 32768, i32 1, i1 false)
  %3 = load i32* @match_start, align 4, !tbaa !1
  %sub8 = add i32 %3, -32768
  store i32 %sub8, i32* @match_start, align 4, !tbaa !1
  %sub9 = add i32 %2, -32768
  store i32 %sub9, i32* @strstart, align 4, !tbaa !1
  %4 = load i64* @block_start, align 8, !tbaa !15
  %sub10 = add nsw i64 %4, -32768
  store i64 %sub10, i64* @block_start, align 8, !tbaa !15
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %if.then7
  %index = phi i64 [ 0, %if.then7 ], [ %index.next.1, %vector.body ]
  %5 = add i64 %index, 32768
  %6 = getelementptr inbounds [0 x i16]* bitcast ([65536 x i16]* @prev to [0 x i16]*), i64 0, i64 %5
  %7 = bitcast i16* %6 to <8 x i16>*
  %wide.load = load <8 x i16>* %7, align 2, !tbaa !5
  %8 = icmp slt <8 x i16> %wide.load, zeroinitializer
  %9 = xor <8 x i16> %wide.load, <i16 -32768, i16 -32768, i16 -32768, i16 -32768, i16 -32768, i16 -32768, i16 -32768, i16 -32768>
  %10 = select <8 x i1> %8, <8 x i16> %9, <8 x i16> zeroinitializer
  %11 = bitcast i16* %6 to <8 x i16>*
  store <8 x i16> %10, <8 x i16>* %11, align 2, !tbaa !5
  %index.next = add i64 %index, 8
  %12 = add i64 %index.next, 32768
  %13 = getelementptr inbounds [0 x i16]* bitcast ([65536 x i16]* @prev to [0 x i16]*), i64 0, i64 %12
  %14 = bitcast i16* %13 to <8 x i16>*
  %wide.load.1 = load <8 x i16>* %14, align 2, !tbaa !5
  %15 = icmp slt <8 x i16> %wide.load.1, zeroinitializer
  %16 = xor <8 x i16> %wide.load.1, <i16 -32768, i16 -32768, i16 -32768, i16 -32768, i16 -32768, i16 -32768, i16 -32768, i16 -32768>
  %17 = select <8 x i1> %15, <8 x i16> %16, <8 x i16> zeroinitializer
  %18 = bitcast i16* %13 to <8 x i16>*
  store <8 x i16> %17, <8 x i16>* %18, align 2, !tbaa !5
  %index.next.1 = add i64 %index.next, 8
  %19 = icmp eq i64 %index.next.1, 32768
  br i1 %19, label %vector.body77.preheader, label %vector.body, !llvm.loop !17

vector.body77.preheader:                          ; preds = %vector.body
  br label %vector.body77

vector.body77:                                    ; preds = %vector.body77, %vector.body77.preheader
  %index80 = phi i64 [ 0, %vector.body77.preheader ], [ %index.next87.1, %vector.body77 ]
  %20 = getelementptr inbounds [0 x i16]* bitcast ([65536 x i16]* @prev to [0 x i16]*), i64 0, i64 %index80
  %21 = bitcast i16* %20 to <8 x i16>*
  %wide.load91 = load <8 x i16>* %21, align 2, !tbaa !5
  %22 = icmp slt <8 x i16> %wide.load91, zeroinitializer
  %23 = xor <8 x i16> %wide.load91, <i16 -32768, i16 -32768, i16 -32768, i16 -32768, i16 -32768, i16 -32768, i16 -32768, i16 -32768>
  %24 = select <8 x i1> %22, <8 x i16> %23, <8 x i16> zeroinitializer
  %25 = bitcast i16* %20 to <8 x i16>*
  store <8 x i16> %24, <8 x i16>* %25, align 2, !tbaa !5
  %index.next87 = add i64 %index80, 8
  %26 = getelementptr inbounds [0 x i16]* bitcast ([65536 x i16]* @prev to [0 x i16]*), i64 0, i64 %index.next87
  %27 = bitcast i16* %26 to <8 x i16>*
  %wide.load91.1 = load <8 x i16>* %27, align 2, !tbaa !5
  %28 = icmp slt <8 x i16> %wide.load91.1, zeroinitializer
  %29 = xor <8 x i16> %wide.load91.1, <i16 -32768, i16 -32768, i16 -32768, i16 -32768, i16 -32768, i16 -32768, i16 -32768, i16 -32768>
  %30 = select <8 x i1> %28, <8 x i16> %29, <8 x i16> zeroinitializer
  %31 = bitcast i16* %26 to <8 x i16>*
  store <8 x i16> %30, <8 x i16>* %31, align 2, !tbaa !5
  %index.next87.1 = add i64 %index.next87, 8
  %32 = icmp eq i64 %index.next87.1, 32768
  br i1 %32, label %for.end39, label %vector.body77, !llvm.loop !20

for.end39:                                        ; preds = %vector.body77
  %add = add i32 %conv3, 32768
  br label %if.end40

if.end40:                                         ; preds = %for.end39, %if.else, %entry
  %33 = phi i32 [ %sub9, %for.end39 ], [ %2, %if.else ], [ %2, %entry ]
  %more.0 = phi i32 [ %add, %for.end39 ], [ %conv3, %if.else ], [ -2, %entry ]
  %.b = load i1* @eofile, align 1
  br i1 %.b, label %if.end52, label %if.then41

if.then41:                                        ; preds = %if.end40
  %34 = load i32 (i8*, i32)** @read_buf, align 8, !tbaa !7
  %idx.ext = zext i32 %33 to i64
  %add.ptr.sum = add nuw nsw i64 %conv, %idx.ext
  %add.ptr43 = getelementptr inbounds [0 x i8]* bitcast ([65536 x i8]* @window to [0 x i8]*), i64 0, i64 %add.ptr.sum
  %call = tail call i32 %34(i8* %add.ptr43, i32 %more.0) #2
  switch i32 %call, label %if.else49 [
    i32 -1, label %if.then48
    i32 0, label %if.then48
  ]

if.then48:                                        ; preds = %if.then41, %if.then41
  store i1 true, i1* @eofile, align 1
  br label %if.end52

if.else49:                                        ; preds = %if.then41
  %35 = load i32* @lookahead, align 4, !tbaa !1
  %add50 = add i32 %35, %call
  store i32 %add50, i32* @lookahead, align 4, !tbaa !1
  br label %if.end52

if.end52:                                         ; preds = %if.else49, %if.then48, %if.end40
  ret void
}

; Function Attrs: noreturn nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #3 {
entry:
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  store i32 %argc, i32* %argc.addr, align 4, !tbaa !1
  store i8** %argv, i8*** %argv.addr, align 8, !tbaa !7
  %0 = load i8** %argv, align 8, !tbaa !7
  %call = tail call i8* @basename(i8* %0) #2
  store i8* %call, i8** @progname, align 8, !tbaa !7
  %call1 = tail call i64 @strlen(i8* %call) #10
  %conv = trunc i64 %call1 to i32
  %cmp = icmp sgt i32 %conv, 4
  br i1 %cmp, label %cond.false, label %if.end53

cond.false:                                       ; preds = %entry
  %sext = shl i64 %call1, 32
  %idx.ext44 = ashr exact i64 %sext, 32
  %add.ptr45.sum = add nsw i64 %idx.ext44, -4
  %add.ptr46 = getelementptr inbounds i8* %call, i64 %add.ptr45.sum
  %call47 = tail call i32 @strcmp(i8* %add.ptr46, i8* getelementptr inbounds ([5 x i8]* @.str23, i64 0, i64 0)) #2
  %cmp48 = icmp eq i32 %call47, 0
  br i1 %cmp48, label %if.then50, label %if.end53

if.then50:                                        ; preds = %cond.false
  %sext347 = add i64 %sext, -17179869184
  %idxprom = ashr exact i64 %sext347, 32
  %arrayidx52 = getelementptr inbounds i8* %call, i64 %idxprom
  store i8 0, i8* %arrayidx52, align 1, !tbaa !9
  br label %if.end53

if.end53:                                         ; preds = %if.then50, %cond.false, %entry
  %call54 = call i8* @add_envopt(i32* %argc.addr, i8*** %argv.addr, i8* getelementptr inbounds ([5 x i8]* @.str24, i64 0, i64 0)) #2
  store i8* %call54, i8** @env, align 8, !tbaa !7
  %cmp55 = icmp eq i8* %call54, null
  br i1 %cmp55, label %if.end58, label %if.then57

if.then57:                                        ; preds = %if.end53
  %1 = load i8*** %argv.addr, align 8, !tbaa !7
  store i8** %1, i8*** @args, align 8, !tbaa !7
  br label %if.end58

if.end58:                                         ; preds = %if.then57, %if.end53
  %call59 = call void (i32)* (i32, void (i32)*)* @signal(i32 2, void (i32)* inttoptr (i64 1 to void (i32)*)) #2
  %cmp60 = icmp ne void (i32)* %call59, inttoptr (i64 1 to void (i32)*)
  %conv61 = zext i1 %cmp60 to i32
  store i32 %conv61, i32* @foreground, align 4, !tbaa !1
  br i1 %cmp60, label %if.then62, label %if.end64

if.then62:                                        ; preds = %if.end58
  %call63 = call void (i32)* (i32, void (i32)*)* @signal(i32 2, void (i32)* bitcast (void ()* @abort_gzip to void (i32)*)) #2
  br label %if.end64

if.end64:                                         ; preds = %if.then62, %if.end58
  %call65 = call void (i32)* (i32, void (i32)*)* @signal(i32 15, void (i32)* inttoptr (i64 1 to void (i32)*)) #2
  %cmp66 = icmp eq void (i32)* %call65, inttoptr (i64 1 to void (i32)*)
  br i1 %cmp66, label %if.end70, label %if.then68

if.then68:                                        ; preds = %if.end64
  %call69 = call void (i32)* (i32, void (i32)*)* @signal(i32 15, void (i32)* bitcast (void ()* @abort_gzip to void (i32)*)) #2
  br label %if.end70

if.end70:                                         ; preds = %if.then68, %if.end64
  %call71 = call void (i32)* (i32, void (i32)*)* @signal(i32 1, void (i32)* inttoptr (i64 1 to void (i32)*)) #2
  %cmp72 = icmp eq void (i32)* %call71, inttoptr (i64 1 to void (i32)*)
  br i1 %cmp72, label %if.end76, label %if.then74

if.then74:                                        ; preds = %if.end70
  %call75 = call void (i32)* (i32, void (i32)*)* @signal(i32 1, void (i32)* bitcast (void ()* @abort_gzip to void (i32)*)) #2
  br label %if.end76

if.end76:                                         ; preds = %if.then74, %if.end70
  %2 = load i8** @progname, align 8, !tbaa !7
  %call77 = call i32 @strncmp(i8* %2, i8* getelementptr inbounds ([3 x i8]* @.str25, i64 0, i64 0), i64 2) #10
  %cmp78 = icmp eq i32 %call77, 0
  br i1 %cmp78, label %if.then83, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end76
  %call80 = call i32 @strncmp(i8* %2, i8* getelementptr inbounds ([4 x i8]* @.str26, i64 0, i64 0), i64 3) #10
  %cmp81 = icmp eq i32 %call80, 0
  br i1 %cmp81, label %if.then83, label %cond.true92

if.then83:                                        ; preds = %lor.lhs.false, %if.end76
  store i32 1, i32* @decompress, align 4, !tbaa !1
  br label %if.end203

cond.true92:                                      ; preds = %lor.lhs.false
  %add.ptr95 = getelementptr inbounds i8* %2, i64 1
  %3 = load i8* %add.ptr95, align 1, !tbaa !9
  %cmp105 = icmp eq i8 %3, 99
  br i1 %cmp105, label %if.then107, label %cond.false195

if.then107:                                       ; preds = %cond.true92
  %arrayidx108 = getelementptr inbounds i8* %2, i64 2
  %4 = load i8* %arrayidx108, align 1, !tbaa !9
  %cmp115 = icmp eq i8 %4, 97
  br i1 %cmp115, label %if.then117, label %cond.false195

if.then117:                                       ; preds = %if.then107
  %arrayidx118 = getelementptr inbounds i8* %2, i64 3
  %5 = load i8* %arrayidx118, align 1, !tbaa !9
  %cmp125 = icmp eq i8 %5, 116
  br i1 %cmp125, label %cond.end139, label %cond.false195

cond.end139:                                      ; preds = %if.then117
  %arrayidx128 = getelementptr inbounds i8* %2, i64 4
  %6 = load i8* %arrayidx128, align 1, !tbaa !9
  %cmp141 = icmp eq i8 %6, 0
  br i1 %cmp141, label %if.then201, label %cond.false195

cond.false195:                                    ; preds = %cond.end139, %if.then117, %if.then107, %cond.true92
  %call196 = call i32 @strcmp(i8* %2, i8* getelementptr inbounds ([6 x i8]* @.str28, i64 0, i64 0)) #2
  %cmp199 = icmp eq i32 %call196, 0
  br i1 %cmp199, label %if.then201, label %if.end203

if.then201:                                       ; preds = %cond.false195, %cond.end139
  store i32 1, i32* @to_stdout, align 4, !tbaa !1
  store i32 1, i32* @decompress, align 4, !tbaa !1
  br label %if.end203

if.end203:                                        ; preds = %if.then201, %cond.false195, %if.then83
  %call204 = call i8* @strncpy(i8* getelementptr inbounds ([31 x i8]* @z_suffix, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8]* @.str29, i64 0, i64 0), i64 30) #2
  %call205 = call i64 @strlen(i8* getelementptr inbounds ([31 x i8]* @z_suffix, i64 0, i64 0)) #10
  %conv206 = trunc i64 %call205 to i32
  store i32 %conv206, i32* @z_len, align 4, !tbaa !1
  br label %while.cond

while.cond:                                       ; preds = %while.cond.backedge, %if.end203
  %7 = load i32* %argc.addr, align 4, !tbaa !1
  %8 = load i8*** %argv.addr, align 8, !tbaa !7
  %call207 = call i32 @getopt_long(i32 %7, i8** %8, i8* getelementptr inbounds ([33 x i8]* @.str30, i64 0, i64 0), %struct.option* bitcast (<{ { i8*, i32, i32*, i32, [4 x i8] }, { i8*, i32, i32*, i32, [4 x i8] }, { i8*, i32, i32*, i32, [4 x i8] }, { i8*, i32, i32*, i32, [4 x i8] }, { i8*, i32, i32*, i32, [4 x i8] }, { i8*, i32, i32*, i32, [4 x i8] }, { i8*, i32, i32*, i32, [4 x i8] }, { i8*, i32, i32*, i32, [4 x i8] }, { i8*, i32, i32*, i32, [4 x i8] }, { i8*, i32, i32*, i32, [4 x i8] }, { i8*, i32, i32*, i32, [4 x i8] }, { i8*, i32, i32*, i32, [4 x i8] }, { i8*, i32, i32*, i32, [4 x i8] }, { i8*, i32, i32*, i32, [4 x i8] }, { i8*, i32, i32*, i32, [4 x i8] }, { i8*, i32, i32*, i32, [4 x i8] }, { i8*, i32, i32*, i32, [4 x i8] }, { i8*, i32, i32*, i32, [4 x i8] }, { i8*, i32, i32*, i32, [4 x i8] }, { i8*, i32, i32*, i32, [4 x i8] }, { i8*, i32, i32*, i32, [4 x i8] }, { i8*, i32, i32*, i32, [4 x i8] }, { i8*, i32, i32*, i32, [4 x i8] }, { i8*, i32, i32*, i32, [4 x i8] } }>* @longopts to %struct.option*), i32* null) #2
  switch i32 %call207, label %sw.default [
    i32 -1, label %while.end
    i32 97, label %sw.bb
    i32 98, label %sw.bb210
    i32 99, label %sw.bb212
    i32 100, label %sw.bb213
    i32 102, label %sw.bb214
    i32 104, label %sw.bb215
    i32 72, label %sw.bb215
    i32 63, label %sw.bb215
    i32 108, label %sw.bb216
    i32 76, label %sw.bb217
    i32 109, label %sw.bb218
    i32 77, label %sw.bb219
    i32 110, label %sw.bb220
    i32 78, label %sw.bb221
    i32 113, label %sw.bb222
    i32 114, label %sw.bb223
    i32 83, label %sw.bb224
    i32 116, label %sw.bb228
    i32 118, label %sw.bb229
    i32 86, label %sw.bb231
    i32 90, label %sw.bb232
    i32 49, label %sw.bb234
    i32 50, label %sw.bb234
    i32 51, label %sw.bb234
    i32 52, label %sw.bb234
    i32 53, label %sw.bb234
    i32 54, label %sw.bb234
    i32 55, label %sw.bb234
    i32 56, label %sw.bb234
    i32 57, label %sw.bb234
  ]

sw.bb:                                            ; preds = %while.cond
  store i32 1, i32* @ascii, align 4, !tbaa !1
  br label %while.cond.backedge

sw.bb210:                                         ; preds = %while.cond
  %9 = load i8** @optarg, align 8, !tbaa !7
  %call.i = call i64 @strtol(i8* nocapture %9, i8** null, i32 10) #2
  %conv.i = trunc i64 %call.i to i32
  store i32 %conv.i, i32* @maxbits, align 4, !tbaa !1
  br label %while.cond.backedge

sw.bb212:                                         ; preds = %while.cond
  store i32 1, i32* @to_stdout, align 4, !tbaa !1
  br label %while.cond.backedge

sw.bb213:                                         ; preds = %while.cond
  store i32 1, i32* @decompress, align 4, !tbaa !1
  br label %while.cond.backedge

sw.bb214:                                         ; preds = %while.cond
  %10 = load i32* @force, align 4, !tbaa !1
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* @force, align 4, !tbaa !1
  br label %while.cond.backedge

sw.bb215:                                         ; preds = %while.cond, %while.cond, %while.cond
  %11 = load %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %12 = load i8** @progname, align 8, !tbaa !7
  %call.i348 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %11, i8* getelementptr inbounds ([12 x i8]* @.str110, i64 0, i64 0), i8* %12, i8* getelementptr inbounds ([6 x i8]* @.str111, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8]* @.str112, i64 0, i64 0)) #11
  %13 = load %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %14 = load i8** @progname, align 8, !tbaa !7
  %call.i.i = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %13, i8* getelementptr inbounds ([55 x i8]* @.str108, i64 0, i64 0), i8* %14, i8* getelementptr inbounds ([1 x i8]* @.str38, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8]* @.str109, i64 0, i64 0)) #11
  %15 = load %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %call1.i = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %15, i8* getelementptr inbounds ([4 x i8]* @.str118, i64 0, i64 0), i8* getelementptr inbounds ([74 x i8]* @.str131, i64 0, i64 0)) #11
  %16 = load %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %call1.1.i = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %16, i8* getelementptr inbounds ([4 x i8]* @.str118, i64 0, i64 0), i8* getelementptr inbounds ([29 x i8]* @.str132, i64 0, i64 0)) #11
  %17 = load %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %call1.2.i = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %17, i8* getelementptr inbounds ([4 x i8]* @.str118, i64 0, i64 0), i8* getelementptr inbounds ([68 x i8]* @.str133, i64 0, i64 0)) #11
  %18 = load %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %call1.3.i = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %18, i8* getelementptr inbounds ([4 x i8]* @.str118, i64 0, i64 0), i8* getelementptr inbounds ([33 x i8]* @.str134, i64 0, i64 0)) #11
  %19 = load %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %call1.4.i = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %19, i8* getelementptr inbounds ([4 x i8]* @.str118, i64 0, i64 0), i8* getelementptr inbounds ([48 x i8]* @.str135, i64 0, i64 0)) #11
  %20 = load %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %call1.5.i = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %20, i8* getelementptr inbounds ([4 x i8]* @.str118, i64 0, i64 0), i8* getelementptr inbounds ([43 x i8]* @.str136, i64 0, i64 0)) #11
  %21 = load %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %call1.6.i = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %21, i8* getelementptr inbounds ([4 x i8]* @.str118, i64 0, i64 0), i8* getelementptr inbounds ([74 x i8]* @.str137, i64 0, i64 0)) #11
  %22 = load %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %call1.7.i = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %22, i8* getelementptr inbounds ([4 x i8]* @.str118, i64 0, i64 0), i8* getelementptr inbounds ([67 x i8]* @.str138, i64 0, i64 0)) #11
  %23 = load %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %call1.8.i = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %23, i8* getelementptr inbounds ([4 x i8]* @.str118, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8]* @.str139, i64 0, i64 0)) #11
  %24 = load %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %call1.9.i = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %24, i8* getelementptr inbounds ([4 x i8]* @.str118, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str140, i64 0, i64 0)) #11
  %25 = load %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %call1.10.i = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %25, i8* getelementptr inbounds ([4 x i8]* @.str118, i64 0, i64 0), i8* getelementptr inbounds ([64 x i8]* @.str141, i64 0, i64 0)) #11
  %26 = load %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %call1.11.i = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %26, i8* getelementptr inbounds ([4 x i8]* @.str118, i64 0, i64 0), i8* getelementptr inbounds ([49 x i8]* @.str142, i64 0, i64 0)) #11
  %27 = load %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %call1.12.i = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %27, i8* getelementptr inbounds ([4 x i8]* @.str118, i64 0, i64 0), i8* getelementptr inbounds ([31 x i8]* @.str143, i64 0, i64 0)) #11
  %28 = load %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %call1.13.i = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %28, i8* getelementptr inbounds ([4 x i8]* @.str118, i64 0, i64 0), i8* getelementptr inbounds ([41 x i8]* @.str144, i64 0, i64 0)) #11
  %29 = load %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %call1.14.i = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %29, i8* getelementptr inbounds ([4 x i8]* @.str118, i64 0, i64 0), i8* getelementptr inbounds ([34 x i8]* @.str145, i64 0, i64 0)) #11
  %30 = load %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %call1.15.i = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %30, i8* getelementptr inbounds ([4 x i8]* @.str118, i64 0, i64 0), i8* getelementptr inbounds ([34 x i8]* @.str146, i64 0, i64 0)) #11
  %31 = load %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %call1.16.i = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %31, i8* getelementptr inbounds ([4 x i8]* @.str118, i64 0, i64 0), i8* getelementptr inbounds ([76 x i8]* @.str147, i64 0, i64 0)) #11
  call fastcc void @do_exit(i32 0)
  unreachable

sw.bb216:                                         ; preds = %while.cond
  store i32 1, i32* @to_stdout, align 4, !tbaa !1
  store i32 1, i32* @decompress, align 4, !tbaa !1
  store i32 1, i32* @list, align 4, !tbaa !1
  br label %while.cond.backedge

sw.bb217:                                         ; preds = %while.cond
  %32 = load %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %33 = load i8** @progname, align 8, !tbaa !7
  %call.i349 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %32, i8* getelementptr inbounds ([12 x i8]* @.str110, i64 0, i64 0), i8* %33, i8* getelementptr inbounds ([6 x i8]* @.str111, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8]* @.str112, i64 0, i64 0)) #11
  %34 = load %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %call1.i350 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %34, i8* getelementptr inbounds ([4 x i8]* @.str118, i64 0, i64 0), i8* getelementptr inbounds ([44 x i8]* @.str119, i64 0, i64 0)) #11
  %35 = load %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %call1.1.i351 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %35, i8* getelementptr inbounds ([4 x i8]* @.str118, i64 0, i64 0), i8* getelementptr inbounds ([72 x i8]* @.str120, i64 0, i64 0)) #11
  %36 = load %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %call1.2.i352 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %36, i8* getelementptr inbounds ([4 x i8]* @.str118, i64 0, i64 0), i8* getelementptr inbounds ([72 x i8]* @.str121, i64 0, i64 0)) #11
  %37 = load %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %call1.3.i353 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %37, i8* getelementptr inbounds ([4 x i8]* @.str118, i64 0, i64 0), i8* getelementptr inbounds ([71 x i8]* @.str122, i64 0, i64 0)) #11
  %38 = load %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %call1.4.i354 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %38, i8* getelementptr inbounds ([4 x i8]* @.str118, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8]* @.str12312, i64 0, i64 0)) #11
  %39 = load %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %call1.5.i355 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %39, i8* getelementptr inbounds ([4 x i8]* @.str118, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str38, i64 0, i64 0)) #11
  %40 = load %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %call1.6.i356 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %40, i8* getelementptr inbounds ([4 x i8]* @.str118, i64 0, i64 0), i8* getelementptr inbounds ([67 x i8]* @.str124, i64 0, i64 0)) #11
  %41 = load %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %call1.7.i357 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %41, i8* getelementptr inbounds ([4 x i8]* @.str118, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str125, i64 0, i64 0)) #11
  %42 = load %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %call1.8.i358 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %42, i8* getelementptr inbounds ([4 x i8]* @.str118, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str126, i64 0, i64 0)) #11
  %43 = load %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %call1.9.i359 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %43, i8* getelementptr inbounds ([4 x i8]* @.str118, i64 0, i64 0), i8* getelementptr inbounds ([48 x i8]* @.str127, i64 0, i64 0)) #11
  %44 = load %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %call1.10.i360 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %44, i8* getelementptr inbounds ([4 x i8]* @.str118, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str38, i64 0, i64 0)) #11
  %45 = load %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %call1.11.i361 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %45, i8* getelementptr inbounds ([4 x i8]* @.str118, i64 0, i64 0), i8* getelementptr inbounds ([69 x i8]* @.str128, i64 0, i64 0)) #11
  %46 = load %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %call1.12.i362 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %46, i8* getelementptr inbounds ([4 x i8]* @.str118, i64 0, i64 0), i8* getelementptr inbounds ([63 x i8]* @.str129, i64 0, i64 0)) #11
  %47 = load %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %call1.13.i363 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %47, i8* getelementptr inbounds ([4 x i8]* @.str118, i64 0, i64 0), i8* getelementptr inbounds ([61 x i8]* @.str130, i64 0, i64 0)) #11
  call fastcc void @do_exit(i32 0)
  unreachable

sw.bb218:                                         ; preds = %while.cond
  store i32 1, i32* @no_time, align 4, !tbaa !1
  br label %while.cond.backedge

sw.bb219:                                         ; preds = %while.cond
  store i32 0, i32* @no_time, align 4, !tbaa !1
  br label %while.cond.backedge

sw.bb220:                                         ; preds = %while.cond
  store i32 1, i32* @no_time, align 4, !tbaa !1
  store i32 1, i32* @no_name, align 4, !tbaa !1
  br label %while.cond.backedge

sw.bb221:                                         ; preds = %while.cond
  store i32 0, i32* @no_time, align 4, !tbaa !1
  store i32 0, i32* @no_name, align 4, !tbaa !1
  br label %while.cond.backedge

sw.bb222:                                         ; preds = %while.cond
  store i32 1, i32* @quiet, align 4, !tbaa !1
  store i32 0, i32* @verbose, align 4, !tbaa !1
  br label %while.cond.backedge

sw.bb223:                                         ; preds = %while.cond
  store i32 1, i32* @recursive, align 4, !tbaa !1
  br label %while.cond.backedge

sw.bb224:                                         ; preds = %while.cond
  %48 = load i8** @optarg, align 8, !tbaa !7
  %call225 = call i64 @strlen(i8* %48) #10
  %conv226 = trunc i64 %call225 to i32
  store i32 %conv226, i32* @z_len, align 4, !tbaa !1
  %call227 = call i8* @strcpy(i8* getelementptr inbounds ([31 x i8]* @z_suffix, i64 0, i64 0), i8* %48) #2
  br label %while.cond.backedge

sw.bb228:                                         ; preds = %while.cond
  store i32 1, i32* @to_stdout, align 4, !tbaa !1
  store i32 1, i32* @decompress, align 4, !tbaa !1
  store i32 1, i32* @test, align 4, !tbaa !1
  br label %while.cond.backedge

sw.bb229:                                         ; preds = %while.cond
  %49 = load i32* @verbose, align 4, !tbaa !1
  %inc230 = add nsw i32 %49, 1
  store i32 %inc230, i32* @verbose, align 4, !tbaa !1
  store i32 0, i32* @quiet, align 4, !tbaa !1
  br label %while.cond.backedge

sw.bb231:                                         ; preds = %while.cond
  %50 = load %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %51 = load i8** @progname, align 8, !tbaa !7
  %call.i364 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %50, i8* getelementptr inbounds ([12 x i8]* @.str110, i64 0, i64 0), i8* %51, i8* getelementptr inbounds ([6 x i8]* @.str111, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8]* @.str112, i64 0, i64 0)) #11
  %52 = load %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %call1.i365 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %52, i8* getelementptr inbounds ([28 x i8]* @.str113, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str114, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8]* @.str115, i64 0, i64 0)) #11
  %53 = load %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %54 = call i64 @fwrite(i8* getelementptr inbounds ([14 x i8]* @.str116, i64 0, i64 0), i64 13, i64 1, %struct._IO_FILE* %53) #11
  %55 = load %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %56 = call i64 @fwrite(i8* getelementptr inbounds ([15 x i8]* @.str117, i64 0, i64 0), i64 14, i64 1, %struct._IO_FILE* %55) #11
  %57 = load %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %fputc.i = call i32 @fputc(i32 10, %struct._IO_FILE* %57) #11
  call fastcc void @do_exit(i32 0)
  unreachable

sw.bb232:                                         ; preds = %while.cond
  %58 = load %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %59 = load i8** @progname, align 8, !tbaa !7
  %call233 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %58, i8* getelementptr inbounds ([38 x i8]* @.str31, i64 0, i64 0), i8* %59) #11
  %60 = load %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %61 = load i8** @progname, align 8, !tbaa !7
  %call.i366 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %60, i8* getelementptr inbounds ([55 x i8]* @.str108, i64 0, i64 0), i8* %61, i8* getelementptr inbounds ([1 x i8]* @.str38, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8]* @.str109, i64 0, i64 0)) #11
  call fastcc void @do_exit(i32 1)
  unreachable

sw.bb234:                                         ; preds = %while.cond, %while.cond, %while.cond, %while.cond, %while.cond, %while.cond, %while.cond, %while.cond, %while.cond
  %sub235 = add nsw i32 %call207, -48
  store i32 %sub235, i32* @level, align 4, !tbaa !1
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %sw.bb234, %sw.bb229, %sw.bb228, %sw.bb224, %sw.bb223, %sw.bb222, %sw.bb221, %sw.bb220, %sw.bb219, %sw.bb218, %sw.bb216, %sw.bb214, %sw.bb213, %sw.bb212, %sw.bb210, %sw.bb
  br label %while.cond

sw.default:                                       ; preds = %while.cond
  %62 = load %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %63 = load i8** @progname, align 8, !tbaa !7
  %call.i367 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %62, i8* getelementptr inbounds ([55 x i8]* @.str108, i64 0, i64 0), i8* %63, i8* getelementptr inbounds ([1 x i8]* @.str38, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8]* @.str109, i64 0, i64 0)) #11
  call fastcc void @do_exit(i32 1)
  unreachable

while.end:                                        ; preds = %while.cond
  %64 = load i32* @no_time, align 4, !tbaa !1
  %cmp236 = icmp slt i32 %64, 0
  br i1 %cmp236, label %if.then238, label %if.end239

if.then238:                                       ; preds = %while.end
  %65 = load i32* @decompress, align 4, !tbaa !1
  store i32 %65, i32* @no_time, align 4, !tbaa !1
  br label %if.end239

if.end239:                                        ; preds = %if.then238, %while.end
  %66 = load i32* @no_name, align 4, !tbaa !1
  %cmp240 = icmp slt i32 %66, 0
  br i1 %cmp240, label %if.then242, label %if.end243

if.then242:                                       ; preds = %if.end239
  %67 = load i32* @decompress, align 4, !tbaa !1
  store i32 %67, i32* @no_name, align 4, !tbaa !1
  br label %if.end243

if.end243:                                        ; preds = %if.then242, %if.end239
  %68 = load i32* %argc.addr, align 4, !tbaa !1
  %69 = load i32* @optind, align 4, !tbaa !1
  %sub244 = sub nsw i32 %68, %69
  %70 = load i32* @ascii, align 4, !tbaa !1
  %tobool245 = icmp eq i32 %70, 0
  %71 = load i32* @quiet, align 4
  %tobool247 = icmp ne i32 %71, 0
  %or.cond306 = or i1 %tobool245, %tobool247
  br i1 %or.cond306, label %if.end250, label %if.then248

if.then248:                                       ; preds = %if.end243
  %72 = load %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %73 = load i8** @progname, align 8, !tbaa !7
  %call249 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %72, i8* getelementptr inbounds ([43 x i8]* @.str32, i64 0, i64 0), i8* %73) #11
  br label %if.end250

if.end250:                                        ; preds = %if.then248, %if.end243
  %74 = load i32* @z_len, align 4, !tbaa !1
  %75 = load i32* @decompress, align 4
  %76 = or i32 %75, %74
  %or.cond307.not = icmp eq i32 %76, 0
  %cmp256 = icmp sgt i32 %74, 30
  %or.cond308 = or i1 %or.cond307.not, %cmp256
  br i1 %or.cond308, label %if.then258, label %if.end260

if.then258:                                       ; preds = %if.end250
  %77 = load %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %78 = load i8** @progname, align 8, !tbaa !7
  %79 = load i8** @optarg, align 8, !tbaa !7
  %call259 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %77, i8* getelementptr inbounds ([27 x i8]* @.str33, i64 0, i64 0), i8* %78, i8* %79) #11
  call fastcc void @do_exit(i32 1)
  unreachable

if.end260:                                        ; preds = %if.end250
  %80 = load i32* @do_lzw, align 4, !tbaa !1
  %tobool261 = icmp eq i32 %80, 0
  %tobool263 = icmp ne i32 %75, 0
  %or.cond309 = or i1 %tobool261, %tobool263
  br i1 %or.cond309, label %if.end265, label %if.then264

if.then264:                                       ; preds = %if.end260
  store i32 (i32, i32)* @lzw, i32 (i32, i32)** @work, align 8, !tbaa !7
  br label %if.end265

if.end265:                                        ; preds = %if.then264, %if.end260
  %cmp266 = icmp eq i32 %68, %69
  br i1 %cmp266, label %if.else288, label %while.cond280.preheader

while.cond280.preheader:                          ; preds = %if.end265
  %81 = load i32* @optind, align 4, !tbaa !1
  %82 = load i32* %argc.addr, align 4, !tbaa !1
  %cmp281369 = icmp slt i32 %81, %82
  br i1 %cmp281369, label %while.body283.preheader, label %if.end289

while.body283.preheader:                          ; preds = %while.cond280.preheader
  br label %while.body283

while.body283:                                    ; preds = %while.body283, %while.body283.preheader
  %83 = phi i32 [ %86, %while.body283 ], [ %81, %while.body283.preheader ]
  %inc284 = add nsw i32 %83, 1
  store i32 %inc284, i32* @optind, align 4, !tbaa !1
  %idxprom285 = sext i32 %83 to i64
  %84 = load i8*** %argv.addr, align 8, !tbaa !7
  %arrayidx286 = getelementptr inbounds i8** %84, i64 %idxprom285
  %85 = load i8** %arrayidx286, align 8, !tbaa !7
  call fastcc void @treat_file(i8* %85)
  %86 = load i32* @optind, align 4, !tbaa !1
  %87 = load i32* %argc.addr, align 4, !tbaa !1
  %cmp281 = icmp slt i32 %86, %87
  br i1 %cmp281, label %while.body283, label %if.end289.loopexit

if.else288:                                       ; preds = %if.end265
  call fastcc void @treat_stdin()
  br label %if.end289

if.end289.loopexit:                               ; preds = %while.body283
  br label %if.end289

if.end289:                                        ; preds = %if.end289.loopexit, %if.else288, %while.cond280.preheader
  %88 = load i32* @list, align 4, !tbaa !1
  %89 = load i32* @quiet, align 4
  %notlhs = icmp ne i32 %88, 0
  %notrhs = icmp eq i32 %89, 0
  %or.cond313.not = and i1 %notrhs, %notlhs
  %cmp294 = icmp sgt i32 %sub244, 1
  %or.cond314 = and i1 %or.cond313.not, %cmp294
  br i1 %or.cond314, label %if.then296, label %if.end297

if.then296:                                       ; preds = %if.end289
  call fastcc void @do_list(i32 -1, i32 -1)
  br label %if.end297

if.end297:                                        ; preds = %if.then296, %if.end289
  %90 = load i32* @exit_code, align 4, !tbaa !1
  call fastcc void @do_exit(i32 %90)
  unreachable
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8* nocapture) #4

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) #4

; Function Attrs: nounwind
declare void (i32)* @signal(i32, void (i32)*) #5

; Function Attrs: noreturn nounwind uwtable
define void @abort_gzip() #3 {
entry:
  %0 = load i32* @remove_ofname, align 4, !tbaa !1
  %tobool = icmp eq i32 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load i32* @ofd, align 4, !tbaa !1
  %call = tail call i32 @close(i32 %1) #2
  %call1 = tail call i32 @unlink(i8* getelementptr inbounds ([1024 x i8]* @ofname, i64 0, i64 0)) #2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  tail call fastcc void @do_exit(i32 1)
  unreachable
}

; Function Attrs: nounwind readonly
declare i32 @strncmp(i8* nocapture, i8* nocapture, i64) #4

; Function Attrs: nounwind
declare i8* @strncpy(i8*, i8* nocapture readonly, i64) #5

declare i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) #6

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8* nocapture readonly) #5

; Function Attrs: nounwind
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture readonly, ...) #5

declare i32 @close(i32) #6

; Function Attrs: nounwind
declare i32 @unlink(i8* nocapture readonly) #5

; Function Attrs: noreturn nounwind
declare void @exit(i32) #7

; Function Attrs: nounwind
declare void @free(i8* nocapture) #5

; Function Attrs: nounwind
declare i32 @printf(i8* nocapture readonly, ...) #5

; Function Attrs: nounwind
declare i64 @lseek(i32, i64, i32) #5

declare i64 @read(i32, i8* nocapture, i64) #6

; Function Attrs: nounwind
declare i8* @ctime(i64*) #5

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

declare i32 @open(i8* nocapture readonly, i32, ...) #6

; Function Attrs: nounwind
declare void @perror(i8* nocapture readonly) #5

; Function Attrs: nounwind
declare i32 @fileno(%struct._IO_FILE* nocapture) #5

; Function Attrs: nounwind
declare i32 @chmod(i8* nocapture readonly, i32) #5

; Function Attrs: nounwind
declare i32 @chown(i8* nocapture readonly, i32, i32) #5

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) #4

; Function Attrs: nounwind
declare i32 @__xstat(i32, i8*, %struct.stat*) #5

; Function Attrs: nounwind
declare i32 @__fxstat(i32, i32, %struct.stat*) #5

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #8

; Function Attrs: nounwind
declare i32 @isatty(i32) #5

; Function Attrs: nounwind
declare i32 @fflush(%struct._IO_FILE* nocapture) #5

; Function Attrs: nounwind
declare i8* @fgets(i8*, i32, %struct._IO_FILE* nocapture) #5

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() #8

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8* nocapture, i8* nocapture, i64) #4

; Function Attrs: nounwind
declare i8* @strcat(i8*, i8* nocapture readonly) #5

; Function Attrs: nounwind
declare i32 @utime(i8* nocapture readonly, %struct.utimbuf* nocapture readonly) #5

; Function Attrs: nounwind
declare noalias %struct.__dirstream* @opendir(i8* nocapture readonly) #5

declare %struct.dirent* @readdir(%struct.__dirstream*) #6

; Function Attrs: nounwind
declare i32 @closedir(%struct.__dirstream* nocapture) #5

; Function Attrs: nounwind
declare i32 @__lxstat(i32, i8*, %struct.stat*) #5

; Function Attrs: nounwind
declare i64 @strtol(i8* readonly, i8** nocapture, i32) #5

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #2

; Function Attrs: nounwind
declare i32 @fputc(i32, %struct._IO_FILE* nocapture) #2

; Function Attrs: nounwind
declare i32 @puts(i8* nocapture readonly) #2

; Function Attrs: noreturn nounwind uwtable
define internal fastcc void @do_exit(i32 %exitcode) #3 {
entry:
  %.b = load i1* @do_exit.in_exit, align 1
  br i1 %.b, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @exit(i32 %exitcode) #12
  unreachable

if.end:                                           ; preds = %entry
  store i1 true, i1* @do_exit.in_exit, align 1
  %0 = load i8** @env, align 8, !tbaa !7
  %cmp = icmp eq i8* %0, null
  br i1 %cmp, label %if.end2, label %if.then1

if.then1:                                         ; preds = %if.end
  tail call void @free(i8* %0) #2
  store i8* null, i8** @env, align 8, !tbaa !7
  br label %if.end2

if.end2:                                          ; preds = %if.then1, %if.end
  %1 = load i8*** @args, align 8, !tbaa !7
  %cmp3 = icmp eq i8** %1, null
  br i1 %cmp3, label %if.end5, label %if.then4

if.then4:                                         ; preds = %if.end2
  %2 = bitcast i8** %1 to i8*
  tail call void @free(i8* %2) #2
  store i8** null, i8*** @args, align 8, !tbaa !7
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.end2
  tail call void @exit(i32 %exitcode) #12
  unreachable
}

; Function Attrs: nounwind uwtable
define internal fastcc void @treat_file(i8* %iname) #0 {
entry:
  %timep.i311 = alloca %struct.utimbuf, align 8
  %nbuf.i = alloca [1024 x i8], align 16
  %tstat.i.i = alloca %struct.stat, align 8
  %tstat.i.i.i = alloca %struct.stat, align 8
  %ostat.i.i = alloca %struct.stat, align 8
  %response.i.i = alloca [80 x i8], align 16
  %ostat.i = alloca %struct.stat, align 8
  %timep.i = alloca %struct.utimbuf, align 8
  %0 = load i8* %iname, align 1, !tbaa !9
  %cmp7 = icmp eq i8 %0, 45
  br i1 %cmp7, label %cond.end, label %if.end40

cond.end:                                         ; preds = %entry
  %arrayidx9 = getelementptr inbounds i8* %iname, i64 1
  %1 = load i8* %arrayidx9, align 1, !tbaa !9
  %cmp36 = icmp eq i8 %1, 0
  br i1 %cmp36, label %if.then38, label %if.end40

if.then38:                                        ; preds = %cond.end
  %2 = load i32* @to_stdout, align 4, !tbaa !1
  tail call fastcc void @treat_stdin()
  store i32 %2, i32* @to_stdout, align 4, !tbaa !1
  br label %if.end237

if.end40:                                         ; preds = %cond.end, %entry
  %call.i265 = tail call i8* @strcpy(i8* getelementptr inbounds ([1024 x i8]* @ifname, i64 0, i64 0), i8* %iname) #2
  %call.i.i = tail call i32* @__errno_location() #13
  store i32 0, i32* %call.i.i, align 4, !tbaa !1
  %3 = load i32* @to_stdout, align 4, !tbaa !1
  %4 = load i32* @force, align 4
  %5 = or i32 %4, %3
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %if.then.i.i, label %if.end.i.i

if.then.i.i:                                      ; preds = %if.end40
  %call.i.i.i = tail call i32 @__lxstat(i32 1, i8* getelementptr inbounds ([1024 x i8]* @ifname, i64 0, i64 0), %struct.stat* @istat) #2
  br label %do_stat.exit.i

if.end.i.i:                                       ; preds = %if.end40
  %call.i1.i.i = tail call i32 @__xstat(i32 1, i8* getelementptr inbounds ([1024 x i8]* @ifname, i64 0, i64 0), %struct.stat* @istat) #2
  br label %do_stat.exit.i

do_stat.exit.i:                                   ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %call.i1.i.i, %if.end.i.i ], [ %call.i.i.i, %if.then.i.i ]
  %cmp.i = icmp eq i32 %retval.0.i.i, 0
  br i1 %cmp.i, label %if.end45, label %if.end.i

if.end.i:                                         ; preds = %do_stat.exit.i
  %7 = load i32* @decompress, align 4, !tbaa !1
  %tobool.i = icmp eq i32 %7, 0
  br i1 %tobool.i, label %if.then4.i, label %lor.lhs.false.i

lor.lhs.false.i:                                  ; preds = %if.end.i
  %8 = load i32* %call.i.i, align 4, !tbaa !1
  %cmp3.i = icmp eq i32 %8, 2
  br i1 %cmp3.i, label %if.end5.i, label %if.then4.i

if.then4.i:                                       ; preds = %lor.lhs.false.i, %if.end.i
  tail call void @perror(i8* getelementptr inbounds ([1024 x i8]* @ifname, i64 0, i64 0)) #11
  store i32 1, i32* @exit_code, align 4, !tbaa !1
  br label %if.end237

if.end5.i:                                        ; preds = %lor.lhs.false.i
  %call6.i = tail call fastcc i8* @get_suffix(i8* getelementptr inbounds ([1024 x i8]* @ifname, i64 0, i64 0)) #2
  %cmp7.i = icmp eq i8* %call6.i, null
  br i1 %cmp7.i, label %if.end9.i, label %if.then8.i

if.then8.i:                                       ; preds = %if.end5.i
  tail call void @perror(i8* getelementptr inbounds ([1024 x i8]* @ifname, i64 0, i64 0)) #11
  store i32 1, i32* @exit_code, align 4, !tbaa !1
  br label %if.end237

if.end9.i:                                        ; preds = %if.end5.i
  %call10.i = tail call i64 @strlen(i8* getelementptr inbounds ([1024 x i8]* @ifname, i64 0, i64 0)) #10
  %9 = load i32* bitcast ([31 x i8]* @z_suffix to i32*), align 16
  %conv15.i = and i32 %9, 255
  %sub.i = add nsw i32 %conv15.i, -46
  %cmp20.i = icmp eq i32 %sub.i, 0
  %10 = lshr i32 %9, 16
  %11 = lshr i32 %9, 24
  br i1 %cmp20.i, label %if.then22.i, label %cond.end.i

if.then22.i:                                      ; preds = %if.end9.i
  %12 = lshr i32 %9, 8
  %13 = and i32 %12, 255
  %sub26.i = add nsw i32 %13, -103
  %cmp30.i = icmp eq i32 %sub26.i, 0
  br i1 %cmp30.i, label %if.then32.i266, label %cond.end.i

if.then32.i266:                                   ; preds = %if.then22.i
  %conv34.i = and i32 %10, 255
  %sub36.i = add nsw i32 %conv34.i, -122
  %cmp40.i = icmp eq i32 %sub36.i, 0
  %.sub36.i = select i1 %cmp40.i, i32 %11, i32 %sub36.i
  br label %cond.end.i

cond.end.i:                                       ; preds = %if.then32.i266, %if.then22.i, %if.end9.i
  %__result.0.i = phi i32 [ %sub26.i, %if.then22.i ], [ %sub.i, %if.end9.i ], [ %.sub36.i, %if.then32.i266 ]
  %cmp52.i = icmp eq i32 %__result.0.i, 0
  %..i = select i1 %cmp52.i, i8** getelementptr inbounds ([6 x i8*]* @get_istat.suffixes, i64 0, i64 1), i8** getelementptr inbounds ([6 x i8*]* @get_istat.suffixes, i64 0, i64 0)
  %sext.i = shl i64 %call10.i, 32
  %idxprom.i = ashr exact i64 %sext.i, 32
  %arrayidx62.i = getelementptr inbounds [1024 x i8]* @ifname, i64 0, i64 %idxprom.i
  %.pre.i = load i8** %..i, align 8, !tbaa !7
  br label %do.body.i

do.body.i:                                        ; preds = %if.end61.i, %cond.end.i
  %14 = phi i8* [ %19, %if.end61.i ], [ %.pre.i, %cond.end.i ]
  %suf.0.i = phi i8** [ %incdec.ptr63.i, %if.end61.i ], [ %..i, %cond.end.i ]
  %call56.i = tail call i8* @strcat(i8* getelementptr inbounds ([1024 x i8]* @ifname, i64 0, i64 0), i8* %14) #2
  store i32 0, i32* %call.i.i, align 4, !tbaa !1
  %15 = load i32* @to_stdout, align 4, !tbaa !1
  %16 = load i32* @force, align 4
  %17 = or i32 %16, %15
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %if.then.i3.i, label %if.end.i5.i

if.then.i3.i:                                     ; preds = %do.body.i
  %call.i.i2.i = tail call i32 @__lxstat(i32 1, i8* getelementptr inbounds ([1024 x i8]* @ifname, i64 0, i64 0), %struct.stat* @istat) #2
  br label %do_stat.exit7.i

if.end.i5.i:                                      ; preds = %do.body.i
  %call.i1.i4.i = tail call i32 @__xstat(i32 1, i8* getelementptr inbounds ([1024 x i8]* @ifname, i64 0, i64 0), %struct.stat* @istat) #2
  br label %do_stat.exit7.i

do_stat.exit7.i:                                  ; preds = %if.end.i5.i, %if.then.i3.i
  %retval.0.i6.i = phi i32 [ %call.i1.i4.i, %if.end.i5.i ], [ %call.i.i2.i, %if.then.i3.i ]
  %cmp58.i = icmp eq i32 %retval.0.i6.i, 0
  br i1 %cmp58.i, label %if.end45.loopexit, label %if.end61.i

if.end61.i:                                       ; preds = %do_stat.exit7.i
  store i8 0, i8* %arrayidx62.i, align 1, !tbaa !9
  %incdec.ptr63.i = getelementptr inbounds i8** %suf.0.i, i64 1
  %19 = load i8** %incdec.ptr63.i, align 8, !tbaa !7
  %cmp64.i = icmp eq i8* %19, null
  br i1 %cmp64.i, label %do.end.i, label %do.body.i

do.end.i:                                         ; preds = %if.end61.i
  %call66.i = tail call i8* @strcat(i8* getelementptr inbounds ([1024 x i8]* @ifname, i64 0, i64 0), i8* getelementptr inbounds ([31 x i8]* @z_suffix, i64 0, i64 0)) #2
  tail call void @perror(i8* getelementptr inbounds ([1024 x i8]* @ifname, i64 0, i64 0)) #11
  store i32 1, i32* @exit_code, align 4, !tbaa !1
  br label %if.end237

if.end45.loopexit:                                ; preds = %do_stat.exit7.i
  br label %if.end45

if.end45:                                         ; preds = %if.end45.loopexit, %do_stat.exit.i
  %20 = load i32* getelementptr inbounds (%struct.stat* @istat, i64 0, i32 3), align 8, !tbaa !21
  %and = and i32 %20, 61440
  switch i32 %and, label %if.then64 [
    i32 16384, label %if.then48
    i32 32768, label %if.end73
  ]

if.then48:                                        ; preds = %if.end45
  %21 = load i32* @recursive, align 4, !tbaa !1
  %tobool = icmp eq i32 %21, 0
  br i1 %tobool, label %if.else, label %if.then49

if.then49:                                        ; preds = %if.then48
  %st.sroa.4335.0.copyload = load i64* getelementptr inbounds (%struct.stat* @istat, i64 0, i32 11, i32 0), align 8
  %st.sroa.5338.0.copyload = load i64* getelementptr inbounds (%struct.stat* @istat, i64 0, i32 12, i32 0), align 8
  %22 = getelementptr inbounds [1024 x i8]* %nbuf.i, i64 0, i64 0
  call void @llvm.lifetime.start(i64 1024, i8* %22) #2
  %call.i297 = tail call %struct.__dirstream* @opendir(i8* %iname) #2
  %cmp.i298 = icmp eq %struct.__dirstream* %call.i297, null
  br i1 %cmp.i298, label %if.then.i300, label %while.cond.i.preheader

while.cond.i.preheader:                           ; preds = %if.then49
  %call2.i370 = call %struct.dirent* @readdir(%struct.__dirstream* %call.i297) #2
  %cmp3.i301371 = icmp eq %struct.dirent* %call2.i370, null
  br i1 %cmp3.i301371, label %while.end.i, label %cond.true.i.preheader

cond.true.i.preheader:                            ; preds = %while.cond.i.preheader
  br label %cond.true.i

if.then.i300:                                     ; preds = %if.then49
  %23 = load %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %24 = load i8** @progname, align 8, !tbaa !7
  %call1.i299 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %23, i8* getelementptr inbounds ([19 x i8]* @.str97, i64 0, i64 0), i8* %24, i8* %iname) #11
  store i32 1, i32* @exit_code, align 4, !tbaa !1
  br label %treat_dir.exit

cond.true.i:                                      ; preds = %while.cond.i.backedge, %cond.true.i.preheader
  %call2.i372 = phi %struct.dirent* [ %call2.i, %while.cond.i.backedge ], [ %call2.i370, %cond.true.i.preheader ]
  %arraydecay.i = getelementptr inbounds %struct.dirent* %call2.i372, i64 0, i32 4, i64 0
  %25 = load i8* %arraydecay.i, align 1, !tbaa !9
  %cmp11.i303 = icmp eq i8 %25, 46
  br i1 %cmp11.i303, label %cond.end.i306, label %if.end109.i

cond.end.i306:                                    ; preds = %cond.true.i
  %arrayidx14.i = getelementptr inbounds %struct.dirent* %call2.i372, i64 0, i32 4, i64 1
  %26 = load i8* %arrayidx14.i, align 1, !tbaa !9
  %cmp45.i = icmp eq i8 %26, 0
  br i1 %cmp45.i, label %while.cond.i.backedge, label %if.then71.i

while.cond.i.backedge:                            ; preds = %if.else.i309, %if.end126.i, %cond.end104.i, %cond.end.i306
  %call2.i = call %struct.dirent* @readdir(%struct.__dirstream* %call.i297) #2
  %cmp3.i301 = icmp eq %struct.dirent* %call2.i, null
  br i1 %cmp3.i301, label %while.end.i.loopexit, label %cond.true.i

if.then71.i:                                      ; preds = %cond.end.i306
  %arrayidx72.i = getelementptr inbounds %struct.dirent* %call2.i372, i64 0, i32 4, i64 1
  %27 = load i8* %arrayidx72.i, align 1, !tbaa !9
  %cmp79.i = icmp eq i8 %27, 46
  br i1 %cmp79.i, label %cond.end104.i, label %if.end109.i

cond.end104.i:                                    ; preds = %if.then71.i
  %arrayidx82.i = getelementptr inbounds %struct.dirent* %call2.i372, i64 0, i32 4, i64 2
  %28 = load i8* %arrayidx82.i, align 1, !tbaa !9
  %cmp106.i = icmp eq i8 %28, 0
  br i1 %cmp106.i, label %while.cond.i.backedge, label %if.end109.i

if.end109.i:                                      ; preds = %cond.end104.i, %if.then71.i, %cond.true.i
  %call110.i = call i64 @strlen(i8* %iname) #10
  %conv111.i = trunc i64 %call110.i to i32
  %call114.i = call i64 @strlen(i8* %arraydecay.i) #10
  %conv115.i = trunc i64 %call114.i to i32
  %add.i = add i32 %conv111.i, 1
  %add116.i = add i32 %add.i, %conv115.i
  %cmp117.i = icmp slt i32 %add116.i, 1023
  br i1 %cmp117.i, label %if.then119.i, label %if.else.i309

if.then119.i:                                     ; preds = %if.end109.i
  %call121.i = call i8* @strcpy(i8* %22, i8* %iname) #2
  %cmp122.i = icmp eq i32 %conv111.i, 0
  br i1 %cmp122.i, label %if.end126.i, label %if.then124.i

if.then124.i:                                     ; preds = %if.then119.i
  %inc.i = add i64 %call110.i, 1
  %sext175.i = shl i64 %call110.i, 32
  %idxprom.i307 = ashr exact i64 %sext175.i, 32
  %arrayidx125.i = getelementptr inbounds [1024 x i8]* %nbuf.i, i64 0, i64 %idxprom.i307
  store i8 47, i8* %arrayidx125.i, align 1, !tbaa !9
  br label %if.end126.i

if.end126.i:                                      ; preds = %if.then124.i, %if.then119.i
  %len.0.i = phi i64 [ %inc.i, %if.then124.i ], [ %call110.i, %if.then119.i ]
  %sext.i308 = shl i64 %len.0.i, 32
  %idx.ext.i = ashr exact i64 %sext.i308, 32
  %add.ptr.i = getelementptr inbounds [1024 x i8]* %nbuf.i, i64 0, i64 %idx.ext.i
  %call130.i = call i8* @strcpy(i8* %add.ptr.i, i8* %arraydecay.i) #2
  call fastcc void @treat_file(i8* %22) #2
  br label %while.cond.i.backedge

if.else.i309:                                     ; preds = %if.end109.i
  %29 = load %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %30 = load i8** @progname, align 8, !tbaa !7
  %call134.i = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %29, i8* getelementptr inbounds ([30 x i8]* @.str99, i64 0, i64 0), i8* %30, i8* %iname, i8* %arraydecay.i) #11
  store i32 1, i32* @exit_code, align 4, !tbaa !1
  br label %while.cond.i.backedge

while.end.i.loopexit:                             ; preds = %while.cond.i.backedge
  br label %while.end.i

while.end.i:                                      ; preds = %while.end.i.loopexit, %while.cond.i.preheader
  %call136.i310 = call i32 @closedir(%struct.__dirstream* %call.i297) #2
  br label %treat_dir.exit

treat_dir.exit:                                   ; preds = %while.end.i, %if.then.i300
  call void @llvm.lifetime.end(i64 1024, i8* %22) #2
  %31 = bitcast %struct.utimbuf* %timep.i to i8*
  call void @llvm.lifetime.start(i64 16, i8* %31)
  %actime.i = getelementptr inbounds %struct.utimbuf* %timep.i, i64 0, i32 0
  store i64 %st.sroa.4335.0.copyload, i64* %actime.i, align 8, !tbaa !24
  %modtime.i = getelementptr inbounds %struct.utimbuf* %timep.i, i64 0, i32 1
  store i64 %st.sroa.5338.0.copyload, i64* %modtime.i, align 8, !tbaa !26
  %call.i267 = call i32 @utime(i8* %iname, %struct.utimbuf* %timep.i) #2
  br label %if.end237

if.else:                                          ; preds = %if.then48
  %32 = load i32* @quiet, align 4, !tbaa !1
  %tobool51 = icmp eq i32 %32, 0
  br i1 %tobool51, label %if.then52, label %if.end54

if.then52:                                        ; preds = %if.else
  %33 = load %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %34 = load i8** @progname, align 8, !tbaa !7
  %call53 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %33, i8* getelementptr inbounds ([34 x i8]* @.str48, i64 0, i64 0), i8* %34, i8* getelementptr inbounds ([1024 x i8]* @ifname, i64 0, i64 0)) #11
  br label %if.end54

if.end54:                                         ; preds = %if.then52, %if.else
  %35 = load i32* @exit_code, align 4, !tbaa !1
  %cmp55 = icmp eq i32 %35, 0
  br i1 %cmp55, label %if.then57, label %if.end237

if.then57:                                        ; preds = %if.end54
  store i32 2, i32* @exit_code, align 4, !tbaa !1
  br label %if.end237

if.then64:                                        ; preds = %if.end45
  %36 = load i32* @quiet, align 4, !tbaa !1
  %tobool65 = icmp eq i32 %36, 0
  br i1 %tobool65, label %if.then66, label %if.end68

if.then66:                                        ; preds = %if.then64
  %37 = load %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %38 = load i8** @progname, align 8, !tbaa !7
  %call67 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %37, i8* getelementptr inbounds ([55 x i8]* @.str49, i64 0, i64 0), i8* %38, i8* getelementptr inbounds ([1024 x i8]* @ifname, i64 0, i64 0)) #11
  br label %if.end68

if.end68:                                         ; preds = %if.then66, %if.then64
  %39 = load i32* @exit_code, align 4, !tbaa !1
  %cmp69 = icmp eq i32 %39, 0
  br i1 %cmp69, label %if.then71, label %if.end237

if.then71:                                        ; preds = %if.end68
  store i32 2, i32* @exit_code, align 4, !tbaa !1
  br label %if.end237

if.end73:                                         ; preds = %if.end45
  %40 = load i64* getelementptr inbounds (%struct.stat* @istat, i64 0, i32 2), align 8, !tbaa !27
  %cmp74 = icmp ult i64 %40, 2
  %41 = load i32* @to_stdout, align 4
  %tobool77 = icmp ne i32 %41, 0
  %or.cond240 = or i1 %cmp74, %tobool77
  %42 = load i32* @force, align 4
  %tobool79 = icmp ne i32 %42, 0
  %or.cond241 = or i1 %or.cond240, %tobool79
  br i1 %or.cond241, label %if.end94, label %if.then80

if.then80:                                        ; preds = %if.end73
  %43 = load i32* @quiet, align 4, !tbaa !1
  %tobool81 = icmp eq i32 %43, 0
  br i1 %tobool81, label %if.then82, label %if.end89

if.then82:                                        ; preds = %if.then80
  %44 = load %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %45 = load i8** @progname, align 8, !tbaa !7
  %conv83 = trunc i64 %40 to i32
  %sub84 = add nsw i32 %conv83, -1
  %cmp85 = icmp ugt i64 %40, 2
  %cond87 = select i1 %cmp85, i32 115, i32 32
  %call88 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %44, i8* getelementptr inbounds ([41 x i8]* @.str50, i64 0, i64 0), i8* %45, i8* getelementptr inbounds ([1024 x i8]* @ifname, i64 0, i64 0), i32 %sub84, i32 %cond87) #11
  br label %if.end89

if.end89:                                         ; preds = %if.then82, %if.then80
  %46 = load i32* @exit_code, align 4, !tbaa !1
  %cmp90 = icmp eq i32 %46, 0
  br i1 %cmp90, label %if.then92, label %if.end237

if.then92:                                        ; preds = %if.end89
  store i32 2, i32* @exit_code, align 4, !tbaa !1
  br label %if.end237

if.end94:                                         ; preds = %if.end73
  %47 = load i64* getelementptr inbounds (%struct.stat* @istat, i64 0, i32 8), align 8, !tbaa !28
  store i64 %47, i64* @ifile_size, align 8, !tbaa !15
  %48 = load i32* @no_time, align 4, !tbaa !1
  %tobool95 = icmp eq i32 %48, 0
  %49 = load i32* @list, align 4
  %tobool97 = icmp ne i32 %49, 0
  %or.cond242 = or i1 %tobool95, %tobool97
  %50 = load i64* getelementptr inbounds (%struct.stat* @istat, i64 0, i32 12, i32 0), align 8, !tbaa !29
  %cond101 = select i1 %or.cond242, i64 %50, i64 0
  store i64 %cond101, i64* @time_stamp, align 8, !tbaa !15
  %tobool102 = icmp eq i32 %41, 0
  %or.cond243 = or i1 %tobool102, %tobool97
  %51 = load i32* @test, align 4
  %tobool106 = icmp ne i32 %51, 0
  %or.cond244 = or i1 %or.cond243, %tobool106
  br i1 %or.cond244, label %if.else109, label %if.then107

if.then107:                                       ; preds = %if.end94
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* getelementptr inbounds ([1024 x i8]* @ofname, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str2, i64 0, i64 0), i64 7, i32 1, i1 false)
  br label %if.end115

if.else109:                                       ; preds = %if.end94
  %call.i276 = tail call i8* @strcpy(i8* getelementptr inbounds ([1024 x i8]* @ofname, i64 0, i64 0), i8* getelementptr inbounds ([1024 x i8]* @ifname, i64 0, i64 0)) #2
  %call1.i = tail call fastcc i8* @get_suffix(i8* getelementptr inbounds ([1024 x i8]* @ofname, i64 0, i64 0)) #2
  %52 = load i32* @decompress, align 4, !tbaa !1
  %tobool.i277 = icmp eq i32 %52, 0
  %cmp127.i = icmp eq i8* %call1.i, null
  br i1 %tobool.i277, label %if.else126.i, label %if.then.i278

if.then.i278:                                     ; preds = %if.else109
  br i1 %cmp127.i, label %if.then2.i, label %if.end21.i283

if.then2.i:                                       ; preds = %if.then.i278
  %53 = load i32* @recursive, align 4, !tbaa !1
  %tobool3.i = icmp eq i32 %53, 0
  br i1 %tobool3.i, label %land.lhs.true.i279, label %if.end.i280

land.lhs.true.i279:                               ; preds = %if.then2.i
  %54 = load i32* @list, align 4, !tbaa !1
  %55 = load i32* @test, align 4
  %56 = or i32 %55, %54
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %if.end.i280, label %if.end115

if.end.i280:                                      ; preds = %land.lhs.true.i279, %if.then2.i
  %58 = load i32* @verbose, align 4, !tbaa !1
  %tobool7.i = icmp ne i32 %58, 0
  %59 = load i32* @quiet, align 4
  %60 = or i32 %59, %53
  %61 = icmp eq i32 %60, 0
  %or.cond.i = or i1 %tobool7.i, %61
  br i1 %or.cond.i, label %if.then12.i281, label %if.end237

if.then12.i281:                                   ; preds = %if.end.i280
  %tobool13.i = icmp eq i32 %59, 0
  br i1 %tobool13.i, label %if.then14.i, label %if.end16.i

if.then14.i:                                      ; preds = %if.then12.i281
  %62 = load %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %63 = load i8** @progname, align 8, !tbaa !7
  %call15.i = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %62, i8* getelementptr inbounds ([35 x i8]* @.str95, i64 0, i64 0), i8* %63, i8* getelementptr inbounds ([1024 x i8]* @ifname, i64 0, i64 0)) #11
  br label %if.end16.i

if.end16.i:                                       ; preds = %if.then14.i, %if.then12.i281
  %64 = load i32* @exit_code, align 4, !tbaa !1
  %cmp17.i = icmp eq i32 %64, 0
  br i1 %cmp17.i, label %if.then18.i, label %if.end237

if.then18.i:                                      ; preds = %if.end16.i
  store i32 2, i32* @exit_code, align 4, !tbaa !1
  br label %if.end237

if.end21.i283:                                    ; preds = %if.then.i278
  %call22.i282 = tail call i8* @strlwr(i8* %call1.i) #2
  %call62.i = tail call i32 @strcmp(i8* %call1.i, i8* getelementptr inbounds ([5 x i8]* @.str64, i64 0, i64 0)) #2
  %cmp63.i = icmp eq i32 %call62.i, 0
  br i1 %cmp63.i, label %if.then123.i, label %cond.false117.i

cond.false117.i:                                  ; preds = %if.end21.i283
  %call118.i = tail call i32 @strcmp(i8* %call1.i, i8* getelementptr inbounds ([5 x i8]* @.str68, i64 0, i64 0)) #2
  %cmp121.i = icmp eq i32 %call118.i, 0
  br i1 %cmp121.i, label %if.then123.i, label %if.else.i

if.then123.i:                                     ; preds = %cond.false117.i, %if.end21.i283
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %call1.i, i8* getelementptr inbounds ([5 x i8]* @.str63, i64 0, i64 0), i64 5, i32 1, i1 false) #2
  br label %if.end115

if.else.i:                                        ; preds = %cond.false117.i
  store i8 0, i8* %call1.i, align 1, !tbaa !9
  br label %if.end115

if.else126.i:                                     ; preds = %if.else109
  br i1 %cmp127.i, label %if.else142.i, label %if.then129.i

if.then129.i:                                     ; preds = %if.else126.i
  %65 = load i32* @verbose, align 4, !tbaa !1
  %tobool130.i = icmp eq i32 %65, 0
  br i1 %tobool130.i, label %lor.lhs.false131.i, label %if.then135.i

lor.lhs.false131.i:                               ; preds = %if.then129.i
  %66 = load i32* @recursive, align 4, !tbaa !1
  %67 = load i32* @quiet, align 4
  %68 = or i32 %67, %66
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %if.then135.i, label %if.end137.i

if.then135.i:                                     ; preds = %lor.lhs.false131.i, %if.then129.i
  %70 = load %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %71 = load i8** @progname, align 8, !tbaa !7
  %call136.i = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %70, i8* getelementptr inbounds ([43 x i8]* @.str96, i64 0, i64 0), i8* %71, i8* getelementptr inbounds ([1024 x i8]* @ifname, i64 0, i64 0), i8* %call1.i) #11
  br label %if.end137.i

if.end137.i:                                      ; preds = %if.then135.i, %lor.lhs.false131.i
  %72 = load i32* @exit_code, align 4, !tbaa !1
  %cmp138.i = icmp eq i32 %72, 0
  br i1 %cmp138.i, label %if.then140.i, label %if.end237

if.then140.i:                                     ; preds = %if.end137.i
  store i32 2, i32* @exit_code, align 4, !tbaa !1
  br label %if.end237

if.else142.i:                                     ; preds = %if.else126.i
  store i32 0, i32* @save_orig_name, align 4, !tbaa !1
  %call143.i = tail call i8* @strcat(i8* getelementptr inbounds ([1024 x i8]* @ofname, i64 0, i64 0), i8* getelementptr inbounds ([31 x i8]* @z_suffix, i64 0, i64 0)) #2
  br label %if.end115

if.end115:                                        ; preds = %if.else142.i, %if.else.i, %if.then123.i, %land.lhs.true.i279, %if.then107
  %call119 = tail call i32 (i8*, i32, ...)* @open(i8* getelementptr inbounds ([1024 x i8]* @ifname, i64 0, i64 0), i32 0, i32 384) #2
  store i32 %call119, i32* @ifd, align 4, !tbaa !1
  %cmp120 = icmp eq i32 %call119, -1
  br i1 %cmp120, label %if.then122, label %if.end124

if.then122:                                       ; preds = %if.end115
  %73 = load %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %74 = load i8** @progname, align 8, !tbaa !7
  %call123 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %73, i8* getelementptr inbounds ([5 x i8]* @.str51, i64 0, i64 0), i8* %74) #11
  tail call void @perror(i8* getelementptr inbounds ([1024 x i8]* @ifname, i64 0, i64 0)) #11
  store i32 1, i32* @exit_code, align 4, !tbaa !1
  br label %if.end237

if.end124:                                        ; preds = %if.end115
  tail call void @clear_bufs() #2
  store i32 0, i32* @part_nb, align 4, !tbaa !1
  %75 = load i32* @decompress, align 4, !tbaa !1
  %tobool125 = icmp eq i32 %75, 0
  br i1 %tobool125, label %if.end133, label %if.then126

if.then126:                                       ; preds = %if.end124
  %76 = load i32* @ifd, align 4, !tbaa !1
  %call127 = tail call fastcc i32 @get_method(i32 %76)
  store i32 %call127, i32* @method, align 4, !tbaa !1
  %cmp128 = icmp slt i32 %call127, 0
  br i1 %cmp128, label %if.then130, label %if.end133

if.then130:                                       ; preds = %if.then126
  %77 = load i32* @ifd, align 4, !tbaa !1
  %call131 = tail call i32 @close(i32 %77) #2
  br label %if.end237

if.end133:                                        ; preds = %if.then126, %if.end124
  %78 = load i32* @list, align 4, !tbaa !1
  %tobool134 = icmp eq i32 %78, 0
  br i1 %tobool134, label %if.end137, label %if.then135

if.then135:                                       ; preds = %if.end133
  %79 = load i32* @ifd, align 4, !tbaa !1
  %80 = load i32* @method, align 4, !tbaa !1
  tail call fastcc void @do_list(i32 %79, i32 %80)
  %81 = load i32* @ifd, align 4, !tbaa !1
  %call136 = tail call i32 @close(i32 %81) #2
  br label %if.end237

if.end137:                                        ; preds = %if.end133
  %82 = load i32* @to_stdout, align 4, !tbaa !1
  %tobool138 = icmp eq i32 %82, 0
  br i1 %tobool138, label %if.else141, label %if.then139

if.then139:                                       ; preds = %if.end137
  %83 = load %struct._IO_FILE** @stdout, align 8, !tbaa !7
  %call140 = tail call i32 @fileno(%struct._IO_FILE* %83) #2
  store i32 %call140, i32* @ofd, align 4, !tbaa !1
  br label %if.end157

if.else141:                                       ; preds = %if.end137
  %84 = bitcast %struct.stat* %ostat.i to i8*
  call void @llvm.lifetime.start(i64 144, i8* %84) #2
  %85 = bitcast %struct.stat* %ostat.i.i to i8*
  %86 = bitcast %struct.stat* %tstat.i.i.i to i8*
  %st_ino.i.i.i.i = getelementptr inbounds %struct.stat* %ostat.i.i, i64 0, i32 1
  %st_ino1.i.i.i.i = getelementptr inbounds %struct.stat* %tstat.i.i.i, i64 0, i32 1
  %st_dev.i.i.i.i = getelementptr inbounds %struct.stat* %ostat.i.i, i64 0, i32 0
  %st_dev2.i.i.i.i = getelementptr inbounds %struct.stat* %tstat.i.i.i, i64 0, i32 0
  %87 = getelementptr inbounds [80 x i8]* %response.i.i, i64 0, i64 0
  %88 = bitcast [80 x i8]* %response.i.i to i16*
  %89 = bitcast %struct.stat* %tstat.i.i to i8*
  %st_ino.i.i.i = getelementptr inbounds %struct.stat* %ostat.i, i64 0, i32 1
  %st_ino1.i.i41.i = getelementptr inbounds %struct.stat* %tstat.i.i, i64 0, i32 1
  %st_dev.i.i.i = getelementptr inbounds %struct.stat* %ostat.i, i64 0, i32 0
  %st_dev2.i.i43.i = getelementptr inbounds %struct.stat* %tstat.i.i, i64 0, i32 0
  br label %for.cond.i

for.cond.i:                                       ; preds = %if.end31.i, %if.else141
  call void @llvm.lifetime.start(i64 144, i8* %85) #2
  store i32 0, i32* %call.i.i, align 4, !tbaa !1
  %call.i73.i.i = call i32 @__xstat(i32 1, i8* getelementptr inbounds ([1024 x i8]* @ofname, i64 0, i64 0), %struct.stat* %ostat.i.i) #2
  %cmp74.i.i = icmp eq i32 %call.i73.i.i, 0
  br i1 %cmp74.i.i, label %while.end.i.i, label %while.body.i.i.preheader

while.body.i.i.preheader:                         ; preds = %for.cond.i
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %if.end.i.i287, %while.body.i.i.preheader
  %90 = load i32* %call.i.i, align 4, !tbaa !1
  %cmp3.i.i = icmp eq i32 %90, 36
  br i1 %cmp3.i.i, label %if.end.i.i287, label %if.end4.i.loopexit

if.end.i.i287:                                    ; preds = %while.body.i.i
  call fastcc void @shorten_name() #2
  %call.i.i.i286 = call i32 @__xstat(i32 1, i8* getelementptr inbounds ([1024 x i8]* @ofname, i64 0, i64 0), %struct.stat* %ostat.i.i) #2
  %cmp.i.i = icmp eq i32 %call.i.i.i286, 0
  br i1 %cmp.i.i, label %while.end.i.i.loopexit, label %while.body.i.i

while.end.i.i.loopexit:                           ; preds = %if.end.i.i287
  br label %while.end.i.i

while.end.i.i:                                    ; preds = %while.end.i.i.loopexit, %for.cond.i
  %91 = load i32* @decompress, align 4, !tbaa !1
  %tobool.i.i = icmp eq i32 %91, 0
  br i1 %tobool.i.i, label %land.lhs.true.i.i, label %if.end11.i.i

land.lhs.true.i.i:                                ; preds = %while.end.i.i
  %call.i67.i.i = call i64 @strlen(i8* getelementptr inbounds ([1024 x i8]* @ofname, i64 0, i64 0)) #10
  %sub.i.i.i = shl i64 %call.i67.i.i, 32
  %sext.i.i.i = add i64 %sub.i.i.i, -4294967296
  %idxprom.i.i.i = ashr exact i64 %sext.i.i.i, 32
  %arrayidx.i.i.i = getelementptr inbounds [1024 x i8]* @ofname, i64 0, i64 %idxprom.i.i.i
  %92 = load i8* %arrayidx.i.i.i, align 1, !tbaa !9
  call void @llvm.lifetime.start(i64 144, i8* %86) #2
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %86, i8* %85, i64 144, i32 8, i1 false) #2, !tbaa.struct !30
  store i8 0, i8* %arrayidx.i.i.i, align 1, !tbaa !9
  %call.i.i.i.i = call i32 @__xstat(i32 1, i8* getelementptr inbounds ([1024 x i8]* @ofname, i64 0, i64 0), %struct.stat* %tstat.i.i.i) #2
  %cmp.i.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %cmp.i.i.i, label %land.rhs.i.i.i, label %if.end11.critedge.i.i

land.rhs.i.i.i:                                   ; preds = %land.lhs.true.i.i
  %93 = load i64* %st_ino.i.i.i.i, align 8, !tbaa !31
  %94 = load i64* %st_ino1.i.i.i.i, align 8, !tbaa !31
  %cmp.i.i.i.i = icmp eq i64 %93, %94
  br i1 %cmp.i.i.i.i, label %land.rhs.i.i.i.i, label %if.end11.critedge72.i.i

land.rhs.i.i.i.i:                                 ; preds = %land.rhs.i.i.i
  %95 = load i64* %st_dev.i.i.i.i, align 8, !tbaa !32
  %96 = load i64* %st_dev2.i.i.i.i, align 8, !tbaa !32
  %cmp3.i.i.i.i = icmp eq i64 %95, %96
  store i8 %92, i8* %arrayidx.i.i.i, align 1, !tbaa !9
  call void @llvm.lifetime.end(i64 144, i8* %86) #2
  br i1 %cmp3.i.i.i.i, label %if.then6.i.i, label %if.end11.i.i

if.then6.i.i:                                     ; preds = %land.rhs.i.i.i.i
  call fastcc void @shorten_name() #2
  %call.i68.i.i = call i32 @__xstat(i32 1, i8* getelementptr inbounds ([1024 x i8]* @ofname, i64 0, i64 0), %struct.stat* %ostat.i.i) #2
  %cmp8.i.i = icmp eq i32 %call.i68.i.i, 0
  br i1 %cmp8.i.i, label %if.end11.i.i, label %if.end4.i

if.end11.critedge.i.i:                            ; preds = %land.lhs.true.i.i
  store i8 %92, i8* %arrayidx.i.i.i, align 1, !tbaa !9
  call void @llvm.lifetime.end(i64 144, i8* %86) #2
  br label %if.end11.i.i

if.end11.critedge72.i.i:                          ; preds = %land.rhs.i.i.i
  store i8 %92, i8* %arrayidx.i.i.i, align 1, !tbaa !9
  call void @llvm.lifetime.end(i64 144, i8* %86) #2
  br label %if.end11.i.i

if.end11.i.i:                                     ; preds = %if.end11.critedge72.i.i, %if.end11.critedge.i.i, %if.then6.i.i, %land.rhs.i.i.i.i, %while.end.i.i
  %97 = load i64* getelementptr inbounds (%struct.stat* @istat, i64 0, i32 1), align 8, !tbaa !31
  %98 = load i64* %st_ino.i.i.i.i, align 8, !tbaa !31
  %cmp.i69.i.i = icmp eq i64 %97, %98
  br i1 %cmp.i69.i.i, label %land.rhs.i70.i.i, label %if.end22.i.i

land.rhs.i70.i.i:                                 ; preds = %if.end11.i.i
  %99 = load i64* getelementptr inbounds (%struct.stat* @istat, i64 0, i32 0), align 8, !tbaa !32
  %100 = load i64* %st_dev.i.i.i.i, align 8, !tbaa !32
  %cmp3.i.i.i = icmp eq i64 %99, %100
  br i1 %cmp3.i.i.i, label %if.then14.i.i, label %if.end22.i.i

if.then14.i.i:                                    ; preds = %land.rhs.i70.i.i
  %call15.i.i = call i32 @strcmp(i8* getelementptr inbounds ([1024 x i8]* @ifname, i64 0, i64 0), i8* getelementptr inbounds ([1024 x i8]* @ofname, i64 0, i64 0)) #2
  %cmp16.i.i = icmp eq i32 %call15.i.i, 0
  %101 = load %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %102 = load i8** @progname, align 8, !tbaa !7
  br i1 %cmp16.i.i, label %if.then17.i.i, label %if.else.i.i

if.then17.i.i:                                    ; preds = %if.then14.i.i
  %103 = load i32* @decompress, align 4, !tbaa !1
  %tobool18.i.i = icmp ne i32 %103, 0
  %cond.i.i = select i1 %tobool18.i.i, i8* getelementptr inbounds ([3 x i8]* @.str74, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str38, i64 0, i64 0)
  %call19.i.i = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %101, i8* getelementptr inbounds ([39 x i8]* @.str73, i64 0, i64 0), i8* %102, i8* getelementptr inbounds ([1024 x i8]* @ifname, i64 0, i64 0), i8* %cond.i.i) #11
  br label %if.end21.i.i

if.else.i.i:                                      ; preds = %if.then14.i.i
  %call20.i.i = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %101, i8* getelementptr inbounds ([33 x i8]* @.str75, i64 0, i64 0), i8* %102, i8* getelementptr inbounds ([1024 x i8]* @ifname, i64 0, i64 0), i8* getelementptr inbounds ([1024 x i8]* @ofname, i64 0, i64 0)) #11
  br label %if.end21.i.i

if.end21.i.i:                                     ; preds = %if.else.i.i, %if.then17.i.i
  store i32 1, i32* @exit_code, align 4, !tbaa !1
  br label %if.then2.i288

if.end22.i.i:                                     ; preds = %land.rhs.i70.i.i, %if.end11.i.i
  %104 = load i32* @force, align 4, !tbaa !1
  %tobool23.i.i = icmp eq i32 %104, 0
  br i1 %tobool23.i.i, label %if.then24.i.i, label %if.end57.i.i

if.then24.i.i:                                    ; preds = %if.end22.i.i
  call void @llvm.lifetime.start(i64 80, i8* %87) #2
  store i16 110, i16* %88, align 16
  %105 = load %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %106 = load i8** @progname, align 8, !tbaa !7
  %call27.i.i = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %105, i8* getelementptr inbounds ([23 x i8]* @.str77, i64 0, i64 0), i8* %106, i8* getelementptr inbounds ([1024 x i8]* @ofname, i64 0, i64 0)) #11
  %107 = load i32* @foreground, align 4, !tbaa !1
  %tobool28.i.i = icmp eq i32 %107, 0
  br i1 %tobool28.i.i, label %if.end38.i.i, label %land.lhs.true29.i.i

land.lhs.true29.i.i:                              ; preds = %if.then24.i.i
  %108 = load %struct._IO_FILE** @stdin, align 8, !tbaa !7
  %call30.i.i = call i32 @fileno(%struct._IO_FILE* %108) #2
  %call31.i.i = call i32 @isatty(i32 %call30.i.i) #2
  %tobool32.i.i = icmp eq i32 %call31.i.i, 0
  br i1 %tobool32.i.i, label %if.end38.i.i, label %if.then33.i.i

if.then33.i.i:                                    ; preds = %land.lhs.true29.i.i
  %109 = load %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %110 = call i64 @fwrite(i8* getelementptr inbounds ([37 x i8]* @.str78, i64 0, i64 0), i64 36, i64 1, %struct._IO_FILE* %109) #11
  %111 = load %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %call35.i.i = call i32 @fflush(%struct._IO_FILE* %111) #2
  %112 = load %struct._IO_FILE** @stdin, align 8, !tbaa !7
  %call37.i.i = call i8* @fgets(i8* %87, i32 79, %struct._IO_FILE* %112) #2
  br label %if.end38.i.i

if.end38.i.i:                                     ; preds = %if.then33.i.i, %land.lhs.true29.i.i, %if.then24.i.i
  %113 = load i8* %87, align 16, !tbaa !9
  %conv.i.i = sext i8 %113 to i32
  %idxprom.i.i = sext i8 %113 to i64
  %call40.i.i = tail call i16** @__ctype_b_loc() #13
  %114 = load i16** %call40.i.i, align 8, !tbaa !7
  %arrayidx.i.i = getelementptr inbounds i16* %114, i64 %idxprom.i.i
  %115 = load i16* %arrayidx.i.i, align 2, !tbaa !5
  %and.i.i = and i16 %115, 256
  %tobool42.i.i = icmp eq i16 %and.i.i, 0
  %add.i.i = add nsw i32 %conv.i.i, 32
  %conv.add.i.i = select i1 %tobool42.i.i, i32 %conv.i.i, i32 %add.i.i
  %cmp48.i.i = icmp eq i32 %conv.add.i.i, 121
  br i1 %cmp48.i.i, label %if.end57.i.i, label %if.then50.i.i

if.then50.i.i:                                    ; preds = %if.end38.i.i
  %116 = load %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %117 = call i64 @fwrite(i8* getelementptr inbounds ([18 x i8]* @.str79, i64 0, i64 0), i64 17, i64 1, %struct._IO_FILE* %116) #11
  %118 = load i32* @exit_code, align 4, !tbaa !1
  %cmp52.i.i = icmp eq i32 %118, 0
  br i1 %cmp52.i.i, label %if.then54.i.i, label %if.then2.i288

if.then54.i.i:                                    ; preds = %if.then50.i.i
  store i32 2, i32* @exit_code, align 4, !tbaa !1
  call void @llvm.lifetime.end(i64 80, i8* %87) #2
  br label %if.then2.i288

if.end57.i.i:                                     ; preds = %if.end38.i.i, %if.end22.i.i
  %call58.i.i = call i32 @chmod(i8* getelementptr inbounds ([1024 x i8]* @ofname, i64 0, i64 0), i32 511) #2
  %call59.i.i = call i32 @unlink(i8* getelementptr inbounds ([1024 x i8]* @ofname, i64 0, i64 0)) #2
  %tobool60.i.i = icmp eq i32 %call59.i.i, 0
  br i1 %tobool60.i.i, label %if.end4.i, label %if.then61.i.i

if.then61.i.i:                                    ; preds = %if.end57.i.i
  %119 = load %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %120 = load i8** @progname, align 8, !tbaa !7
  %call62.i.i = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %119, i8* getelementptr inbounds ([5 x i8]* @.str51, i64 0, i64 0), i8* %120) #11
  call void @perror(i8* getelementptr inbounds ([1024 x i8]* @ofname, i64 0, i64 0)) #11
  store i32 1, i32* @exit_code, align 4, !tbaa !1
  br label %if.then2.i288

if.then2.i288:                                    ; preds = %if.then61.i.i, %if.then54.i.i, %if.then50.i.i, %if.end21.i.i
  call void @llvm.lifetime.end(i64 144, i8* %85) #2
  %121 = load i32* @ifd, align 4, !tbaa !1
  %call3.i = call i32 @close(i32 %121) #2
  br label %if.end237

if.end4.i.loopexit:                               ; preds = %while.body.i.i
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.end4.i.loopexit, %if.end57.i.i, %if.then6.i.i
  call void @llvm.lifetime.end(i64 144, i8* %85) #2
  store i32 1, i32* @remove_ofname, align 4, !tbaa !1
  %call5.i = call i32 (i8*, i32, ...)* @open(i8* getelementptr inbounds ([1024 x i8]* @ofname, i64 0, i64 0), i32 193, i32 384) #2
  store i32 %call5.i, i32* @ofd, align 4, !tbaa !1
  %cmp6.i = icmp eq i32 %call5.i, -1
  br i1 %cmp6.i, label %if.then7.i, label %if.end9.i290

if.then7.i:                                       ; preds = %if.end4.i
  call void @perror(i8* getelementptr inbounds ([1024 x i8]* @ofname, i64 0, i64 0)) #11
  %122 = load i32* @ifd, align 4, !tbaa !1
  %call8.i289 = call i32 @close(i32 %122) #2
  store i32 1, i32* @exit_code, align 4, !tbaa !1
  br label %if.end237

if.end9.i290:                                     ; preds = %if.end4.i
  %call.i35.i = call i32 @__fxstat(i32 1, i32 %call5.i, %struct.stat* %ostat.i) #2
  %cmp11.i = icmp eq i32 %call.i35.i, 0
  br i1 %cmp11.i, label %if.end17.i294, label %if.then12.i293

if.then12.i293:                                   ; preds = %if.end9.i290
  %123 = load %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %124 = load i8** @progname, align 8, !tbaa !7
  %call13.i291 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %123, i8* getelementptr inbounds ([5 x i8]* @.str51, i64 0, i64 0), i8* %124) #11
  call void @perror(i8* getelementptr inbounds ([1024 x i8]* @ofname, i64 0, i64 0)) #11
  %125 = load i32* @ifd, align 4, !tbaa !1
  %call14.i = call i32 @close(i32 %125) #2
  %126 = load i32* @ofd, align 4, !tbaa !1
  %call15.i292 = call i32 @close(i32 %126) #2
  %call16.i = call i32 @unlink(i8* getelementptr inbounds ([1024 x i8]* @ofname, i64 0, i64 0)) #2
  store i32 1, i32* @exit_code, align 4, !tbaa !1
  br label %if.end237

if.end17.i294:                                    ; preds = %if.end9.i290
  %call.i36.i = call i64 @strlen(i8* getelementptr inbounds ([1024 x i8]* @ofname, i64 0, i64 0)) #10
  %sub.i.i = shl i64 %call.i36.i, 32
  %sext.i.i = add i64 %sub.i.i, -4294967296
  %idxprom.i37.i = ashr exact i64 %sext.i.i, 32
  %arrayidx.i38.i = getelementptr inbounds [1024 x i8]* @ofname, i64 0, i64 %idxprom.i37.i
  %127 = load i8* %arrayidx.i38.i, align 1, !tbaa !9
  call void @llvm.lifetime.start(i64 144, i8* %89) #2
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %89, i8* %84, i64 144, i32 8, i1 false) #2, !tbaa.struct !30
  store i8 0, i8* %arrayidx.i38.i, align 1, !tbaa !9
  %call.i.i39.i = call i32 @__xstat(i32 1, i8* getelementptr inbounds ([1024 x i8]* @ofname, i64 0, i64 0), %struct.stat* %tstat.i.i) #2
  %cmp.i40.i = icmp eq i32 %call.i.i39.i, 0
  br i1 %cmp.i40.i, label %land.rhs.i.i, label %cleanup.critedge.i

land.rhs.i.i:                                     ; preds = %if.end17.i294
  %128 = load i64* %st_ino.i.i.i, align 8, !tbaa !31
  %129 = load i64* %st_ino1.i.i41.i, align 8, !tbaa !31
  %cmp.i.i42.i = icmp eq i64 %128, %129
  br i1 %cmp.i.i42.i, label %land.rhs.i.i45.i, label %cleanup.critedge50.i

land.rhs.i.i45.i:                                 ; preds = %land.rhs.i.i
  %130 = load i64* %st_dev.i.i.i, align 8, !tbaa !32
  %131 = load i64* %st_dev2.i.i43.i, align 8, !tbaa !32
  %cmp3.i.i44.i = icmp eq i64 %130, %131
  store i8 %127, i8* %arrayidx.i38.i, align 1, !tbaa !9
  call void @llvm.lifetime.end(i64 144, i8* %89) #2
  br i1 %cmp3.i.i44.i, label %if.end21.i295, label %if.end146.loopexit

if.end21.i295:                                    ; preds = %land.rhs.i.i45.i
  %132 = load i32* @decompress, align 4, !tbaa !1
  %tobool22.i = icmp eq i32 %132, 0
  br i1 %tobool22.i, label %if.end31.i, label %if.then23.i

if.then23.i:                                      ; preds = %if.end21.i295
  %133 = load i32* @quiet, align 4, !tbaa !1
  %tobool24.i = icmp eq i32 %133, 0
  br i1 %tobool24.i, label %if.then25.i, label %if.end27.i

if.then25.i:                                      ; preds = %if.then23.i
  %134 = load %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %135 = load i8** @progname, align 8, !tbaa !7
  %call26.i = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %134, i8* getelementptr inbounds ([33 x i8]* @.str60, i64 0, i64 0), i8* %135, i8* getelementptr inbounds ([1024 x i8]* @ofname, i64 0, i64 0)) #11
  br label %if.end27.i

if.end27.i:                                       ; preds = %if.then25.i, %if.then23.i
  %136 = load i32* @exit_code, align 4, !tbaa !1
  %cmp28.i = icmp eq i32 %136, 0
  br i1 %cmp28.i, label %if.then29.i, label %if.end146

if.then29.i:                                      ; preds = %if.end27.i
  store i32 2, i32* @exit_code, align 4, !tbaa !1
  br label %if.end146

if.end31.i:                                       ; preds = %if.end21.i295
  %137 = load i32* @ofd, align 4, !tbaa !1
  %call32.i = call i32 @close(i32 %137) #2
  %call33.i = call i32 @unlink(i8* getelementptr inbounds ([1024 x i8]* @ofname, i64 0, i64 0)) #2
  call fastcc void @shorten_name() #2
  br label %for.cond.i

cleanup.critedge.i:                               ; preds = %if.end17.i294
  %.lcssa = phi i8 [ %127, %if.end17.i294 ]
  %arrayidx.i38.i.lcssa = phi i8* [ %arrayidx.i38.i, %if.end17.i294 ]
  store i8 %.lcssa, i8* %arrayidx.i38.i.lcssa, align 1, !tbaa !9
  call void @llvm.lifetime.end(i64 144, i8* %89) #2
  br label %if.end146

cleanup.critedge50.i:                             ; preds = %land.rhs.i.i
  %.lcssa390 = phi i8 [ %127, %land.rhs.i.i ]
  %arrayidx.i38.i.lcssa387 = phi i8* [ %arrayidx.i38.i, %land.rhs.i.i ]
  store i8 %.lcssa390, i8* %arrayidx.i38.i.lcssa387, align 1, !tbaa !9
  call void @llvm.lifetime.end(i64 144, i8* %89) #2
  br label %if.end146

if.end146.loopexit:                               ; preds = %land.rhs.i.i45.i
  br label %if.end146

if.end146:                                        ; preds = %if.end146.loopexit, %cleanup.critedge50.i, %cleanup.critedge.i, %if.then29.i, %if.end27.i
  call void @llvm.lifetime.end(i64 144, i8* %84) #2
  %138 = load i32* @decompress, align 4, !tbaa !1
  %139 = load i32* @save_orig_name, align 4
  %notlhs = icmp ne i32 %138, 0
  %notrhs = icmp eq i32 %139, 0
  %or.cond245.not = or i1 %notrhs, %notlhs
  %140 = load i32* @verbose, align 4
  %tobool151 = icmp ne i32 %140, 0
  %or.cond246 = or i1 %or.cond245.not, %tobool151
  %141 = load i32* @quiet, align 4
  %tobool153 = icmp ne i32 %141, 0
  %or.cond247 = or i1 %or.cond246, %tobool153
  br i1 %or.cond247, label %if.end157, label %if.then154

if.then154:                                       ; preds = %if.end146
  %142 = load %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %143 = load i8** @progname, align 8, !tbaa !7
  %call155 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %142, i8* getelementptr inbounds ([25 x i8]* @.str52, i64 0, i64 0), i8* %143, i8* getelementptr inbounds ([1024 x i8]* @ifname, i64 0, i64 0), i8* getelementptr inbounds ([1024 x i8]* @ofname, i64 0, i64 0)) #11
  br label %if.end157

if.end157:                                        ; preds = %if.then154, %if.end146, %if.then139
  %144 = load i32* @save_orig_name, align 4, !tbaa !1
  %tobool158 = icmp eq i32 %144, 0
  br i1 %tobool158, label %if.then159, label %if.end162

if.then159:                                       ; preds = %if.end157
  %145 = load i32* @no_name, align 4, !tbaa !1
  %lnot161 = icmp eq i32 %145, 0
  %lnot.ext = zext i1 %lnot161 to i32
  store i32 %lnot.ext, i32* @save_orig_name, align 4, !tbaa !1
  br label %if.end162

if.end162:                                        ; preds = %if.then159, %if.end157
  %146 = load i32* @verbose, align 4, !tbaa !1
  %tobool163 = icmp eq i32 %146, 0
  br i1 %tobool163, label %for.cond.preheader, label %if.then164

if.then164:                                       ; preds = %if.end162
  %147 = load %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %call165 = call i64 @strlen(i8* getelementptr inbounds ([1024 x i8]* @ifname, i64 0, i64 0)) #10
  %conv166 = trunc i64 %call165 to i32
  %cmp167 = icmp sgt i32 %conv166, 14
  br i1 %cmp167, label %cond.end176, label %cond.false170

cond.false170:                                    ; preds = %if.then164
  %cmp173 = icmp sgt i32 %conv166, 6
  %cond175 = select i1 %cmp173, i8* getelementptr inbounds ([2 x i8]* @.str54, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8]* @.str55, i64 0, i64 0)
  br label %cond.end176

cond.end176:                                      ; preds = %cond.false170, %if.then164
  %cond177 = phi i8* [ %cond175, %cond.false170 ], [ getelementptr inbounds ([1 x i8]* @.str38, i64 0, i64 0), %if.then164 ]
  %call178 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %147, i8* getelementptr inbounds ([7 x i8]* @.str53, i64 0, i64 0), i8* getelementptr inbounds ([1024 x i8]* @ifname, i64 0, i64 0), i8* %cond177) #11
  br label %for.cond.preheader

for.cond.preheader:                               ; preds = %cond.end176, %if.end162
  %148 = load i32 (i32, i32)** @work, align 8, !tbaa !7
  %149 = load i32* @ifd, align 4, !tbaa !1
  %150 = load i32* @ofd, align 4, !tbaa !1
  %call180373 = call i32 %148(i32 %149, i32 %150) #2
  %cmp181374 = icmp eq i32 %call180373, 0
  br i1 %cmp181374, label %if.end184.preheader, label %if.then183

if.end184.preheader:                              ; preds = %for.cond.preheader
  br label %if.end184

if.then183.loopexit:                              ; preds = %if.end196
  br label %if.then183

if.then183:                                       ; preds = %if.then183.loopexit, %for.cond.preheader
  store i32 -1, i32* @method, align 4, !tbaa !1
  br label %for.end

if.end184:                                        ; preds = %if.end196, %if.end184.preheader
  %151 = load i32* @decompress, align 4, !tbaa !1
  %tobool185 = icmp eq i32 %151, 0
  %152 = load i32* @last_member, align 4
  %tobool186 = icmp ne i32 %152, 0
  %or.cond248 = or i1 %tobool185, %tobool186
  br i1 %or.cond248, label %for.end.loopexit, label %lor.lhs.false187

lor.lhs.false187:                                 ; preds = %if.end184
  %153 = load i32* @inptr, align 4, !tbaa !1
  %154 = load i32* @insize, align 4, !tbaa !1
  %cmp188 = icmp eq i32 %153, %154
  br i1 %cmp188, label %for.end.loopexit, label %if.end191

if.end191:                                        ; preds = %lor.lhs.false187
  %155 = load i32* @ifd, align 4, !tbaa !1
  %call192 = call fastcc i32 @get_method(i32 %155)
  store i32 %call192, i32* @method, align 4, !tbaa !1
  %cmp193 = icmp slt i32 %call192, 0
  br i1 %cmp193, label %for.end.loopexit, label %if.end196

if.end196:                                        ; preds = %if.end191
  store i64 0, i64* @bytes_out, align 8, !tbaa !15
  %156 = load i32 (i32, i32)** @work, align 8, !tbaa !7
  %157 = load i32* @ifd, align 4, !tbaa !1
  %158 = load i32* @ofd, align 4, !tbaa !1
  %call180 = call i32 %156(i32 %157, i32 %158) #2
  %cmp181 = icmp eq i32 %call180, 0
  br i1 %cmp181, label %if.end184, label %if.then183.loopexit

for.end.loopexit:                                 ; preds = %if.end191, %lor.lhs.false187, %if.end184
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %if.then183
  %159 = load i32* @ifd, align 4, !tbaa !1
  %call197 = call i32 @close(i32 %159) #2
  %160 = load i32* @to_stdout, align 4, !tbaa !1
  %tobool198 = icmp eq i32 %160, 0
  br i1 %tobool198, label %land.lhs.true199, label %if.end203

land.lhs.true199:                                 ; preds = %for.end
  %161 = load i32* @ofd, align 4, !tbaa !1
  %call200 = call i32 @close(i32 %161) #2
  %tobool201 = icmp eq i32 %call200, 0
  br i1 %tobool201, label %if.end203, label %if.then202

if.then202:                                       ; preds = %land.lhs.true199
  call void @write_error() #2
  br label %if.end203

if.end203:                                        ; preds = %if.then202, %land.lhs.true199, %for.end
  %162 = load i32* @method, align 4, !tbaa !1
  %cmp204 = icmp eq i32 %162, -1
  br i1 %cmp204, label %if.then206, label %if.end211

if.then206:                                       ; preds = %if.end203
  %163 = load i32* @to_stdout, align 4, !tbaa !1
  %tobool207 = icmp eq i32 %163, 0
  br i1 %tobool207, label %if.then208, label %if.end237

if.then208:                                       ; preds = %if.then206
  %call209 = call i32 @unlink(i8* getelementptr inbounds ([1024 x i8]* @ofname, i64 0, i64 0)) #2
  br label %if.end237

if.end211:                                        ; preds = %if.end203
  %164 = load i32* @verbose, align 4, !tbaa !1
  %tobool212 = icmp eq i32 %164, 0
  br i1 %tobool212, label %if.end234, label %if.then213

if.then213:                                       ; preds = %if.end211
  %165 = load i32* @test, align 4, !tbaa !1
  %tobool214 = icmp eq i32 %165, 0
  br i1 %tobool214, label %if.else217, label %if.then215

if.then215:                                       ; preds = %if.then213
  %166 = load %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %167 = call i64 @fwrite(i8* getelementptr inbounds ([4 x i8]* @.str56, i64 0, i64 0), i64 3, i64 1, %struct._IO_FILE* %166) #14
  br label %if.end226

if.else217:                                       ; preds = %if.then213
  %168 = load i32* @decompress, align 4, !tbaa !1
  %tobool218 = icmp eq i32 %168, 0
  br i1 %tobool218, label %if.else222, label %if.then219

if.then219:                                       ; preds = %if.else217
  %169 = load i64* @bytes_out, align 8, !tbaa !15
  %170 = load i64* @bytes_in, align 8, !tbaa !15
  %171 = load i64* @header_bytes, align 8, !tbaa !15
  %sub220264 = sub i64 %169, %170
  %sub221 = add i64 %sub220264, %171
  %172 = load %struct._IO_FILE** @stderr, align 8, !tbaa !7
  call void @display_ratio(i64 %sub221, i64 %169, %struct._IO_FILE* %172) #2
  br label %if.end226

if.else222:                                       ; preds = %if.else217
  %173 = load i64* @bytes_in, align 8, !tbaa !15
  %174 = load i64* @bytes_out, align 8, !tbaa !15
  %175 = load i64* @header_bytes, align 8, !tbaa !15
  %sub223263 = sub i64 %173, %174
  %sub224 = add i64 %sub223263, %175
  %176 = load %struct._IO_FILE** @stderr, align 8, !tbaa !7
  call void @display_ratio(i64 %sub224, i64 %173, %struct._IO_FILE* %176) #2
  br label %if.end226

if.end226:                                        ; preds = %if.else222, %if.then219, %if.then215
  %177 = load i32* @test, align 4, !tbaa !1
  %178 = load i32* @to_stdout, align 4
  %179 = or i32 %178, %177
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %if.then230, label %if.end232

if.then230:                                       ; preds = %if.end226
  %181 = load %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %call231 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %181, i8* getelementptr inbounds ([21 x i8]* @.str57, i64 0, i64 0), i8* getelementptr inbounds ([1024 x i8]* @ofname, i64 0, i64 0)) #11
  br label %if.end232

if.end232:                                        ; preds = %if.then230, %if.end226
  %182 = load %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %fputc = call i32 @fputc(i32 10, %struct._IO_FILE* %182) #14
  br label %if.end234

if.end234:                                        ; preds = %if.end232, %if.end211
  %183 = load i32* @to_stdout, align 4, !tbaa !1
  %tobool235 = icmp eq i32 %183, 0
  br i1 %tobool235, label %if.then236, label %if.end237

if.then236:                                       ; preds = %if.end234
  %184 = load i32* @decompress, align 4, !tbaa !1
  %185 = load i64* @time_stamp, align 8
  %notlhs.i = icmp eq i32 %184, 0
  %notrhs.i = icmp eq i64 %185, 0
  %or.cond.not.i = or i1 %notrhs.i, %notlhs.i
  %186 = load i64* getelementptr inbounds (%struct.stat* @istat, i64 0, i32 12, i32 0), align 8
  %cmp2.i = icmp eq i64 %186, %185
  %or.cond1.i = or i1 %or.cond.not.i, %cmp2.i
  br i1 %or.cond1.i, label %if.end7.i, label %if.then.i

if.then.i:                                        ; preds = %if.then236
  store i64 %185, i64* getelementptr inbounds (%struct.stat* @istat, i64 0, i32 12, i32 0), align 8, !tbaa !29
  %187 = load i32* @verbose, align 4, !tbaa !1
  %cmp5.i = icmp sgt i32 %187, 1
  br i1 %cmp5.i, label %if.then6.i, label %if.end7.i

if.then6.i:                                       ; preds = %if.then.i
  %188 = load %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %call.i = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %188, i8* getelementptr inbounds ([25 x i8]* @.str59, i64 0, i64 0), i8* getelementptr inbounds ([1024 x i8]* @ofname, i64 0, i64 0)) #11
  %.pre = load i64* getelementptr inbounds (%struct.stat* @istat, i64 0, i32 12, i32 0), align 8, !tbaa !29
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.then6.i, %if.then.i, %if.then236
  %189 = phi i64 [ %.pre, %if.then6.i ], [ %185, %if.then.i ], [ %186, %if.then236 ]
  %190 = bitcast %struct.utimbuf* %timep.i311 to i8*
  call void @llvm.lifetime.start(i64 16, i8* %190)
  %191 = load i64* getelementptr inbounds (%struct.stat* @istat, i64 0, i32 11, i32 0), align 8, !tbaa !33
  %actime.i312 = getelementptr inbounds %struct.utimbuf* %timep.i311, i64 0, i32 0
  store i64 %191, i64* %actime.i312, align 8, !tbaa !24
  %modtime.i313 = getelementptr inbounds %struct.utimbuf* %timep.i311, i64 0, i32 1
  store i64 %189, i64* %modtime.i313, align 8, !tbaa !26
  %call.i314 = call i32 @utime(i8* getelementptr inbounds ([1024 x i8]* @ofname, i64 0, i64 0), %struct.utimbuf* %timep.i311) #2
  %tobool.i315 = icmp eq i32 %call.i314, 0
  br i1 %tobool.i315, label %reset_times.exit329, label %land.lhs.true.i318

land.lhs.true.i318:                               ; preds = %if.end7.i
  %192 = load i32* getelementptr inbounds (%struct.stat* @istat, i64 0, i32 3), align 8, !tbaa !21
  %and.i316 = and i32 %192, 61440
  %cmp.i317 = icmp eq i32 %and.i316, 16384
  br i1 %cmp.i317, label %reset_times.exit329, label %if.then.i320

if.then.i320:                                     ; preds = %land.lhs.true.i318
  %193 = load i32* @quiet, align 4, !tbaa !1
  %tobool2.i319 = icmp eq i32 %193, 0
  br i1 %tobool2.i319, label %if.then3.i322, label %if.end.i324

if.then3.i322:                                    ; preds = %if.then.i320
  %194 = load %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %195 = load i8** @progname, align 8, !tbaa !7
  %call4.i321 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %194, i8* getelementptr inbounds ([5 x i8]* @.str51, i64 0, i64 0), i8* %195) #11
  br label %if.end.i324

if.end.i324:                                      ; preds = %if.then3.i322, %if.then.i320
  %196 = load i32* @exit_code, align 4, !tbaa !1
  %cmp5.i323 = icmp eq i32 %196, 0
  br i1 %cmp5.i323, label %if.then6.i325, label %if.end7.i327

if.then6.i325:                                    ; preds = %if.end.i324
  store i32 2, i32* @exit_code, align 4, !tbaa !1
  br label %if.end7.i327

if.end7.i327:                                     ; preds = %if.then6.i325, %if.end.i324
  %197 = load i32* @quiet, align 4, !tbaa !1
  %tobool8.i326 = icmp eq i32 %197, 0
  br i1 %tobool8.i326, label %if.then9.i328, label %reset_times.exit329

if.then9.i328:                                    ; preds = %if.end7.i327
  call void @perror(i8* getelementptr inbounds ([1024 x i8]* @ofname, i64 0, i64 0)) #11
  br label %reset_times.exit329

reset_times.exit329:                              ; preds = %if.then9.i328, %if.end7.i327, %land.lhs.true.i318, %if.end7.i
  call void @llvm.lifetime.end(i64 16, i8* %190)
  %198 = load i32* getelementptr inbounds (%struct.stat* @istat, i64 0, i32 3), align 8, !tbaa !21
  %and.i = and i32 %198, 4095
  %call8.i = call i32 @chmod(i8* getelementptr inbounds ([1024 x i8]* @ofname, i64 0, i64 0), i32 %and.i) #2
  %tobool9.i = icmp eq i32 %call8.i, 0
  br i1 %tobool9.i, label %if.end21.i, label %if.then10.i

if.then10.i:                                      ; preds = %reset_times.exit329
  %199 = load i32* @quiet, align 4, !tbaa !1
  %tobool11.i = icmp eq i32 %199, 0
  br i1 %tobool11.i, label %if.then12.i, label %if.end14.i

if.then12.i:                                      ; preds = %if.then10.i
  %200 = load %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %201 = load i8** @progname, align 8, !tbaa !7
  %call13.i = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %200, i8* getelementptr inbounds ([5 x i8]* @.str51, i64 0, i64 0), i8* %201) #11
  br label %if.end14.i

if.end14.i:                                       ; preds = %if.then12.i, %if.then10.i
  %202 = load i32* @exit_code, align 4, !tbaa !1
  %cmp15.i = icmp eq i32 %202, 0
  br i1 %cmp15.i, label %if.then16.i, label %if.end17.i

if.then16.i:                                      ; preds = %if.end14.i
  store i32 2, i32* @exit_code, align 4, !tbaa !1
  br label %if.end17.i

if.end17.i:                                       ; preds = %if.then16.i, %if.end14.i
  %203 = load i32* @quiet, align 4, !tbaa !1
  %tobool18.i = icmp eq i32 %203, 0
  br i1 %tobool18.i, label %if.then19.i, label %if.end21.i

if.then19.i:                                      ; preds = %if.end17.i
  call void @perror(i8* getelementptr inbounds ([1024 x i8]* @ofname, i64 0, i64 0)) #11
  br label %if.end21.i

if.end21.i:                                       ; preds = %if.then19.i, %if.end17.i, %reset_times.exit329
  %204 = load i32* getelementptr inbounds (%struct.stat* @istat, i64 0, i32 4), align 4, !tbaa !34
  %205 = load i32* getelementptr inbounds (%struct.stat* @istat, i64 0, i32 5), align 8, !tbaa !35
  %call22.i = call i32 @chown(i8* getelementptr inbounds ([1024 x i8]* @ofname, i64 0, i64 0), i32 %204, i32 %205) #2
  store i32 0, i32* @remove_ofname, align 4, !tbaa !1
  %call23.i = call i32 @chmod(i8* getelementptr inbounds ([1024 x i8]* @ifname, i64 0, i64 0), i32 511) #2
  %call24.i = call i32 @unlink(i8* getelementptr inbounds ([1024 x i8]* @ifname, i64 0, i64 0)) #2
  %tobool25.i = icmp eq i32 %call24.i, 0
  br i1 %tobool25.i, label %if.end237, label %if.then26.i

if.then26.i:                                      ; preds = %if.end21.i
  %206 = load i32* @quiet, align 4, !tbaa !1
  %tobool27.i = icmp eq i32 %206, 0
  br i1 %tobool27.i, label %if.then28.i, label %if.end30.i

if.then28.i:                                      ; preds = %if.then26.i
  %207 = load %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %208 = load i8** @progname, align 8, !tbaa !7
  %call29.i = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %207, i8* getelementptr inbounds ([5 x i8]* @.str51, i64 0, i64 0), i8* %208) #11
  br label %if.end30.i

if.end30.i:                                       ; preds = %if.then28.i, %if.then26.i
  %209 = load i32* @exit_code, align 4, !tbaa !1
  %cmp31.i = icmp eq i32 %209, 0
  br i1 %cmp31.i, label %if.then32.i, label %if.end33.i

if.then32.i:                                      ; preds = %if.end30.i
  store i32 2, i32* @exit_code, align 4, !tbaa !1
  br label %if.end33.i

if.end33.i:                                       ; preds = %if.then32.i, %if.end30.i
  %210 = load i32* @quiet, align 4, !tbaa !1
  %tobool34.i = icmp eq i32 %210, 0
  br i1 %tobool34.i, label %if.then35.i, label %if.end237

if.then35.i:                                      ; preds = %if.end33.i
  call void @perror(i8* getelementptr inbounds ([1024 x i8]* @ifname, i64 0, i64 0)) #11
  br label %if.end237

if.end237:                                        ; preds = %if.then35.i, %if.end33.i, %if.end21.i, %if.end234, %if.then208, %if.then206, %if.then12.i293, %if.then7.i, %if.then2.i288, %if.then135, %if.then130, %if.then122, %if.then140.i, %if.end137.i, %if.then18.i, %if.end16.i, %if.end.i280, %if.then92, %if.end89, %if.then71, %if.end68, %if.then57, %if.end54, %treat_dir.exit, %do.end.i, %if.then8.i, %if.then4.i, %if.then38
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @treat_stdin() #0 {
entry:
  %0 = load i32* @force, align 4, !tbaa !1
  %1 = load i32* @list, align 4
  %2 = or i32 %1, %0
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %land.lhs.true2, label %if.end

land.lhs.true2:                                   ; preds = %entry
  %4 = load i32* @decompress, align 4, !tbaa !1
  %tobool3 = icmp ne i32 %4, 0
  %5 = load %struct._IO_FILE** @stdin, align 8, !tbaa !7
  %6 = load %struct._IO_FILE** @stdout, align 8, !tbaa !7
  %cond = select i1 %tobool3, %struct._IO_FILE* %5, %struct._IO_FILE* %6
  %call = tail call i32 @fileno(%struct._IO_FILE* %cond) #2
  %call4 = tail call i32 @isatty(i32 %call) #2
  %tobool5 = icmp eq i32 %call4, 0
  br i1 %tobool5, label %land.lhs.true2.if.end_crit_edge, label %if.then

land.lhs.true2.if.end_crit_edge:                  ; preds = %land.lhs.true2
  %.pre = load i32* @list, align 4, !tbaa !1
  br label %if.end

if.then:                                          ; preds = %land.lhs.true2
  %7 = load %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %8 = load i8** @progname, align 8, !tbaa !7
  %9 = load i32* @decompress, align 4, !tbaa !1
  %tobool6 = icmp ne i32 %9, 0
  %cond7 = select i1 %tobool6, i8* getelementptr inbounds ([10 x i8]* @.str102, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8]* @.str103, i64 0, i64 0)
  %cond9 = select i1 %tobool6, i8* getelementptr inbounds ([3 x i8]* @.str74, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str38, i64 0, i64 0)
  %call10 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([71 x i8]* @.str101, i64 0, i64 0), i8* %8, i8* %cond7, i8* %cond9) #11
  %10 = load %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %11 = load i8** @progname, align 8, !tbaa !7
  %call11 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %10, i8* getelementptr inbounds ([23 x i8]* @.str104, i64 0, i64 0), i8* %11) #11
  tail call fastcc void @do_exit(i32 1)
  unreachable

if.end:                                           ; preds = %land.lhs.true2.if.end_crit_edge, %entry
  %12 = phi i32 [ %.pre, %land.lhs.true2.if.end_crit_edge ], [ %1, %entry ]
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* getelementptr inbounds ([1024 x i8]* @ifname, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8]* @.str105, i64 0, i64 0), i64 6, i32 1, i1 false)
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* getelementptr inbounds ([1024 x i8]* @ofname, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str2, i64 0, i64 0), i64 7, i32 1, i1 false)
  store i64 0, i64* @time_stamp, align 8, !tbaa !15
  %tobool27 = icmp eq i32 %12, 0
  %13 = load i32* @no_time, align 4
  %tobool29 = icmp ne i32 %13, 0
  %or.cond78 = and i1 %tobool27, %tobool29
  br i1 %or.cond78, label %if.end35, label %if.then30

if.then30:                                        ; preds = %if.end
  %14 = load %struct._IO_FILE** @stdin, align 8, !tbaa !7
  %call31 = tail call i32 @fileno(%struct._IO_FILE* %14) #2
  %call.i = tail call i32 @__fxstat(i32 1, i32 %call31, %struct.stat* @istat) #2
  %cmp = icmp eq i32 %call.i, 0
  br i1 %cmp, label %if.end34, label %if.then33

if.then33:                                        ; preds = %if.then30
  tail call void @error(i8* getelementptr inbounds ([13 x i8]* @.str106, i64 0, i64 0)) #2
  br label %if.end34

if.end34:                                         ; preds = %if.then33, %if.then30
  %15 = load i64* getelementptr inbounds (%struct.stat* @istat, i64 0, i32 12, i32 0), align 8, !tbaa !29
  store i64 %15, i64* @time_stamp, align 8, !tbaa !15
  br label %if.end35

if.end35:                                         ; preds = %if.end34, %if.end
  store i64 -1, i64* @ifile_size, align 8, !tbaa !15
  tail call void @clear_bufs() #2
  store i32 1, i32* @to_stdout, align 4, !tbaa !1
  store i32 0, i32* @part_nb, align 4, !tbaa !1
  %16 = load i32* @decompress, align 4, !tbaa !1
  %tobool36 = icmp eq i32 %16, 0
  br i1 %tobool36, label %if.end42, label %if.then37

if.then37:                                        ; preds = %if.end35
  %17 = load i32* @ifd, align 4, !tbaa !1
  %call38 = tail call fastcc i32 @get_method(i32 %17)
  store i32 %call38, i32* @method, align 4, !tbaa !1
  %cmp39 = icmp slt i32 %call38, 0
  br i1 %cmp39, label %if.then40, label %if.end42

if.then40:                                        ; preds = %if.then37
  %18 = load i32* @exit_code, align 4, !tbaa !1
  tail call fastcc void @do_exit(i32 %18)
  unreachable

if.end42:                                         ; preds = %if.then37, %if.end35
  %19 = load i32* @list, align 4, !tbaa !1
  %tobool43 = icmp eq i32 %19, 0
  br i1 %tobool43, label %for.cond.preheader, label %if.then44

for.cond.preheader:                               ; preds = %if.end42
  %20 = load i32 (i32, i32)** @work, align 8, !tbaa !7
  %21 = load %struct._IO_FILE** @stdin, align 8, !tbaa !7
  %call4681 = tail call i32 @fileno(%struct._IO_FILE* %21) #2
  %22 = load %struct._IO_FILE** @stdout, align 8, !tbaa !7
  %call4782 = tail call i32 @fileno(%struct._IO_FILE* %22) #2
  %call4883 = tail call i32 %20(i32 %call4681, i32 %call4782) #2
  %cmp4984 = icmp eq i32 %call4883, 0
  br i1 %cmp4984, label %if.end51.preheader, label %if.end74

if.end51.preheader:                               ; preds = %for.cond.preheader
  br label %if.end51

if.then44:                                        ; preds = %if.end42
  %23 = load i32* @ifd, align 4, !tbaa !1
  %24 = load i32* @method, align 4, !tbaa !1
  tail call fastcc void @do_list(i32 %23, i32 %24)
  br label %if.end74

if.end51:                                         ; preds = %if.end62, %if.end51.preheader
  %25 = load i32* @decompress, align 4, !tbaa !1
  %tobool52 = icmp eq i32 %25, 0
  %26 = load i32* @last_member, align 4
  %tobool54 = icmp ne i32 %26, 0
  %or.cond79 = or i1 %tobool52, %tobool54
  br i1 %or.cond79, label %for.end, label %lor.lhs.false55

lor.lhs.false55:                                  ; preds = %if.end51
  %27 = load i32* @inptr, align 4, !tbaa !1
  %28 = load i32* @insize, align 4, !tbaa !1
  %cmp56 = icmp eq i32 %27, %28
  br i1 %cmp56, label %for.end, label %if.end58

if.end58:                                         ; preds = %lor.lhs.false55
  %29 = load i32* @ifd, align 4, !tbaa !1
  %call59 = tail call fastcc i32 @get_method(i32 %29)
  store i32 %call59, i32* @method, align 4, !tbaa !1
  %cmp60 = icmp slt i32 %call59, 0
  br i1 %cmp60, label %if.end74.loopexit, label %if.end62

if.end62:                                         ; preds = %if.end58
  store i64 0, i64* @bytes_out, align 8, !tbaa !15
  %30 = load i32 (i32, i32)** @work, align 8, !tbaa !7
  %31 = load %struct._IO_FILE** @stdin, align 8, !tbaa !7
  %call46 = tail call i32 @fileno(%struct._IO_FILE* %31) #2
  %32 = load %struct._IO_FILE** @stdout, align 8, !tbaa !7
  %call47 = tail call i32 @fileno(%struct._IO_FILE* %32) #2
  %call48 = tail call i32 %30(i32 %call46, i32 %call47) #2
  %cmp49 = icmp eq i32 %call48, 0
  br i1 %cmp49, label %if.end51, label %if.end74.loopexit

for.end:                                          ; preds = %lor.lhs.false55, %if.end51
  %tobool52.lcssa = phi i1 [ %tobool52, %lor.lhs.false55 ], [ %tobool52, %if.end51 ]
  %33 = load i32* @verbose, align 4, !tbaa !1
  %tobool63 = icmp eq i32 %33, 0
  br i1 %tobool63, label %if.end74, label %if.then64

if.then64:                                        ; preds = %for.end
  %34 = load i32* @test, align 4, !tbaa !1
  %tobool65 = icmp eq i32 %34, 0
  br i1 %tobool65, label %if.else, label %if.then66

if.then66:                                        ; preds = %if.then64
  %35 = load %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %36 = tail call i64 @fwrite(i8* getelementptr inbounds ([5 x i8]* @.str107, i64 0, i64 0), i64 4, i64 1, %struct._IO_FILE* %35) #14
  br label %if.end74

if.else:                                          ; preds = %if.then64
  br i1 %tobool52.lcssa, label %if.then69, label %if.end74

if.then69:                                        ; preds = %if.else
  %37 = load i64* @bytes_in, align 8, !tbaa !15
  %38 = load i64* @bytes_out, align 8, !tbaa !15
  %39 = load i64* @header_bytes, align 8, !tbaa !15
  %sub80 = sub i64 %37, %38
  %sub70 = add i64 %sub80, %39
  %40 = load %struct._IO_FILE** @stderr, align 8, !tbaa !7
  tail call void @display_ratio(i64 %sub70, i64 %37, %struct._IO_FILE* %40) #2
  %41 = load %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %fputc = tail call i32 @fputc(i32 10, %struct._IO_FILE* %41) #14
  br label %if.end74

if.end74.loopexit:                                ; preds = %if.end62, %if.end58
  br label %if.end74

if.end74:                                         ; preds = %if.end74.loopexit, %if.then69, %if.else, %if.then66, %for.end, %if.then44, %for.cond.preheader
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @do_list(i32 %ifd, i32 %method) #0 {
entry:
  %buf = alloca [8 x i8], align 1
  %.b = load i1* @do_list.first_time, align 1
  %tobool = xor i1 %.b, true
  %cmp = icmp sgt i32 %method, -1
  %or.cond = and i1 %cmp, %tobool
  br i1 %or.cond, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i1 true, i1* @do_list.first_time, align 1
  %0 = load i32* @verbose, align 4, !tbaa !1
  %tobool1 = icmp eq i32 %0, 0
  br i1 %tobool1, label %if.end, label %if.then2

if.then2:                                         ; preds = %if.then
  %call = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([29 x i8]* @.str40, i64 0, i64 0)) #2
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then
  %1 = load i32* @quiet, align 4, !tbaa !1
  %tobool3 = icmp eq i32 %1, 0
  br i1 %tobool3, label %if.then4, label %if.end25

if.then4:                                         ; preds = %if.end
  %puts133 = tail call i32 @puts(i8* getelementptr inbounds ([45 x i8]* @str148, i64 0, i64 0))
  br label %if.end25

if.else:                                          ; preds = %entry
  %cmp7 = icmp slt i32 %method, 0
  br i1 %cmp7, label %if.then8, label %if.end25

if.then8:                                         ; preds = %if.else
  %2 = load i64* @total_in, align 8, !tbaa !15
  %cmp9 = icmp slt i64 %2, 1
  %3 = load i64* @total_out, align 8
  %cmp10 = icmp slt i64 %3, 1
  %or.cond120 = or i1 %cmp9, %cmp10
  br i1 %or.cond120, label %return, label %if.end12

if.end12:                                         ; preds = %if.then8
  %4 = load i32* @verbose, align 4, !tbaa !1
  %tobool13 = icmp eq i32 %4, 0
  br i1 %tobool13, label %if.else16, label %if.then14

if.then14:                                        ; preds = %if.end12
  %call15 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([39 x i8]* @.str42, i64 0, i64 0), i64 %2, i64 %3) #2
  br label %if.end21

if.else16:                                        ; preds = %if.end12
  %5 = load i32* @quiet, align 4, !tbaa !1
  %tobool17 = icmp eq i32 %5, 0
  br i1 %tobool17, label %if.then18, label %if.end21

if.then18:                                        ; preds = %if.else16
  %call19 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([11 x i8]* @.str43, i64 0, i64 0), i64 %2, i64 %3) #2
  br label %if.end21

if.end21:                                         ; preds = %if.then18, %if.else16, %if.then14
  %6 = load i64* @total_out, align 8, !tbaa !15
  %7 = load i64* @total_in, align 8, !tbaa !15
  %8 = load i64* @header_bytes, align 8, !tbaa !15
  %sub132 = sub i64 %6, %7
  %sub22 = add i64 %sub132, %8
  %9 = load %struct._IO_FILE** @stdout, align 8, !tbaa !7
  tail call void @display_ratio(i64 %sub22, i64 %6, %struct._IO_FILE* %9) #2
  %puts = tail call i32 @puts(i8* getelementptr inbounds ([10 x i8]* @str, i64 0, i64 0))
  br label %return

if.end25:                                         ; preds = %if.else, %if.then4, %if.end
  store i64 -1, i64* @bytes_out, align 8, !tbaa !15
  %10 = load i64* @ifile_size, align 8, !tbaa !15
  store i64 %10, i64* @bytes_in, align 8, !tbaa !15
  %cmp26 = icmp ne i32 %method, 8
  %11 = load i32* @last_member, align 4
  %tobool28 = icmp ne i32 %11, 0
  %or.cond121 = or i1 %cmp26, %tobool28
  br i1 %or.cond121, label %if.end87, label %if.then29

if.then29:                                        ; preds = %if.end25
  %call30 = tail call i64 @lseek(i32 %ifd, i64 -8, i32 2) #2
  store i64 %call30, i64* @bytes_in, align 8, !tbaa !15
  %cmp31 = icmp eq i64 %call30, -1
  br i1 %cmp31, label %if.end87, label %if.then32

if.then32:                                        ; preds = %if.then29
  %add = add nsw i64 %call30, 8
  store i64 %add, i64* @bytes_in, align 8, !tbaa !15
  %arraydecay = getelementptr inbounds [8 x i8]* %buf, i64 0, i64 0
  %call33 = call i64 @read(i32 %ifd, i8* %arraydecay, i64 8) #2
  %cmp34 = icmp eq i64 %call33, 8
  br i1 %cmp34, label %if.end36, label %if.then35

if.then35:                                        ; preds = %if.then32
  tail call void @read_error() #2
  br label %if.end36

if.end36:                                         ; preds = %if.then35, %if.then32
  %12 = load i8* %arraydecay, align 1, !tbaa !9
  %conv37 = zext i8 %12 to i64
  %arrayidx38 = getelementptr inbounds [8 x i8]* %buf, i64 0, i64 1
  %13 = load i8* %arrayidx38, align 1, !tbaa !9
  %conv40 = zext i8 %13 to i64
  %shl = shl nuw nsw i64 %conv40, 8
  %or = or i64 %shl, %conv37
  %add.ptr = getelementptr inbounds [8 x i8]* %buf, i64 0, i64 2
  %14 = load i8* %add.ptr, align 1, !tbaa !9
  %conv45 = zext i8 %14 to i64
  %arrayidx48 = getelementptr inbounds [8 x i8]* %buf, i64 0, i64 3
  %15 = load i8* %arrayidx48, align 1, !tbaa !9
  %conv50 = zext i8 %15 to i64
  %shl51 = shl nuw nsw i64 %conv50, 8
  %or52 = or i64 %shl51, %conv45
  %shl54 = shl nuw nsw i64 %or52, 16
  %or55 = or i64 %or, %shl54
  %add.ptr57 = getelementptr inbounds [8 x i8]* %buf, i64 0, i64 4
  %16 = load i8* %add.ptr57, align 1, !tbaa !9
  %conv60 = zext i8 %16 to i64
  %arrayidx63 = getelementptr inbounds [8 x i8]* %buf, i64 0, i64 5
  %17 = load i8* %arrayidx63, align 1, !tbaa !9
  %conv65 = zext i8 %17 to i64
  %shl66 = shl nuw nsw i64 %conv65, 8
  %or67 = or i64 %shl66, %conv60
  %add.ptr71 = getelementptr inbounds [8 x i8]* %buf, i64 0, i64 6
  %18 = load i8* %add.ptr71, align 1, !tbaa !9
  %conv74 = zext i8 %18 to i64
  %arrayidx78 = getelementptr inbounds [8 x i8]* %buf, i64 0, i64 7
  %19 = load i8* %arrayidx78, align 1, !tbaa !9
  %conv80 = zext i8 %19 to i64
  %shl81 = shl nuw nsw i64 %conv80, 8
  %or82 = or i64 %shl81, %conv74
  %shl84 = shl nuw nsw i64 %or82, 16
  %or85 = or i64 %or67, %shl84
  store i64 %or85, i64* @bytes_out, align 8, !tbaa !15
  br label %if.end87

if.end87:                                         ; preds = %if.end36, %if.then29, %if.end25
  %crc.0 = phi i64 [ -1, %if.end25 ], [ %or55, %if.end36 ], [ -1, %if.then29 ]
  %call88 = tail call i8* @ctime(i64* @time_stamp) #2
  %arrayidx90 = getelementptr inbounds i8* %call88, i64 16
  store i8 0, i8* %arrayidx90, align 1, !tbaa !9
  %20 = load i32* @verbose, align 4, !tbaa !1
  %tobool91 = icmp eq i32 %20, 0
  br i1 %tobool91, label %if.end95, label %if.then92

if.then92:                                        ; preds = %if.end87
  %add.ptr89 = getelementptr inbounds i8* %call88, i64 4
  %idxprom = sext i32 %method to i64
  %arrayidx93 = getelementptr inbounds [9 x i8*]* @do_list.methods, i64 0, i64 %idxprom
  %21 = load i8** %arrayidx93, align 8, !tbaa !7
  %call94 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([16 x i8]* @.str45, i64 0, i64 0), i8* %21, i64 %crc.0, i8* %add.ptr89) #2
  br label %if.end95

if.end95:                                         ; preds = %if.then92, %if.end87
  %22 = load i64* @bytes_in, align 8, !tbaa !15
  %23 = load i64* @bytes_out, align 8, !tbaa !15
  %call96 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([11 x i8]* @.str43, i64 0, i64 0), i64 %22, i64 %23) #2
  %24 = load i64* @bytes_in, align 8, !tbaa !15
  %cmp97 = icmp eq i64 %24, -1
  br i1 %cmp97, label %if.end106.thread, label %if.else100

if.end106.thread:                                 ; preds = %if.end95
  store i64 -1, i64* @total_in, align 8, !tbaa !15
  store i64 0, i64* @header_bytes, align 8, !tbaa !15
  store i64 0, i64* @bytes_out, align 8, !tbaa !15
  store i64 0, i64* @bytes_in, align 8, !tbaa !15
  br label %if.else110

if.else100:                                       ; preds = %if.end95
  %25 = load i64* @total_in, align 8, !tbaa !15
  %cmp101 = icmp sgt i64 %25, -1
  br i1 %cmp101, label %if.then103, label %if.end106

if.then103:                                       ; preds = %if.else100
  %add104 = add nsw i64 %25, %24
  store i64 %add104, i64* @total_in, align 8, !tbaa !15
  br label %if.end106

if.end106:                                        ; preds = %if.then103, %if.else100
  %.pr = load i64* @bytes_out, align 8, !tbaa !15
  %cmp107 = icmp eq i64 %.pr, -1
  br i1 %cmp107, label %if.then109, label %if.else110

if.then109:                                       ; preds = %if.end106
  store i64 -1, i64* @total_out, align 8, !tbaa !15
  store i64 0, i64* @header_bytes, align 8, !tbaa !15
  store i64 0, i64* @bytes_out, align 8, !tbaa !15
  store i64 0, i64* @bytes_in, align 8, !tbaa !15
  br label %if.end116

if.else110:                                       ; preds = %if.end106, %if.end106.thread
  %26 = phi i64 [ 0, %if.end106.thread ], [ %24, %if.end106 ]
  %27 = phi i64 [ 0, %if.end106.thread ], [ %.pr, %if.end106 ]
  %28 = load i64* @total_out, align 8, !tbaa !15
  %cmp111 = icmp sgt i64 %28, -1
  br i1 %cmp111, label %if.then113, label %if.end116

if.then113:                                       ; preds = %if.else110
  %add114 = add nsw i64 %28, %27
  store i64 %add114, i64* @total_out, align 8, !tbaa !15
  br label %if.end116

if.end116:                                        ; preds = %if.then113, %if.else110, %if.then109
  %29 = phi i64 [ %26, %if.else110 ], [ %26, %if.then113 ], [ 0, %if.then109 ]
  %30 = phi i64 [ %27, %if.else110 ], [ %27, %if.then113 ], [ 0, %if.then109 ]
  %31 = load i64* @header_bytes, align 8, !tbaa !15
  %sub117127 = sub i64 %30, %29
  %sub118 = add i64 %sub117127, %31
  %32 = load %struct._IO_FILE** @stdout, align 8, !tbaa !7
  tail call void @display_ratio(i64 %sub118, i64 %30, %struct._IO_FILE* %32) #2
  %call119 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([5 x i8]* @.str46, i64 0, i64 0), i8* getelementptr inbounds ([1024 x i8]* @ofname, i64 0, i64 0)) #2
  br label %return

return:                                           ; preds = %if.end116, %if.end21, %if.then8
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc i8* @get_suffix(i8* readonly %name) #0 {
entry:
  %suffix = alloca [33 x i8], align 16
  %0 = getelementptr inbounds [33 x i8]* %suffix, i64 0, i64 0
  call void @llvm.lifetime.start(i64 33, i8* %0) #2
  %1 = load i16* bitcast ([31 x i8]* @z_suffix to i16*), align 16
  %2 = zext i16 %1 to i32
  %conv = and i32 %2, 255
  %sub = add nsw i32 %conv, -122
  %cmp7 = icmp eq i32 %sub, 0
  br i1 %cmp7, label %if.then, label %cond.end

if.then:                                          ; preds = %entry
  %3 = lshr i16 %1, 8
  %4 = zext i16 %3 to i32
  br label %cond.end

cond.end:                                         ; preds = %if.then, %entry
  %__result.0 = phi i32 [ %4, %if.then ], [ %sub, %entry ]
  %cmp36 = icmp eq i32 %__result.0, 0
  %. = select i1 %cmp36, i8** getelementptr inbounds ([9 x i8*]* @get_suffix.known_suffixes, i64 0, i64 1), i8** getelementptr inbounds ([9 x i8*]* @get_suffix.known_suffixes, i64 0, i64 0)
  %call40 = tail call i64 @strlen(i8* %name) #10
  %conv41 = trunc i64 %call40 to i32
  %cmp42 = icmp slt i32 %conv41, 33
  br i1 %cmp42, label %if.then44, label %if.else

if.then44:                                        ; preds = %cond.end
  %call45 = call i8* @strcpy(i8* %0, i8* %name) #2
  br label %if.end50

if.else:                                          ; preds = %cond.end
  %sext = shl i64 %call40, 32
  %idx.ext = ashr exact i64 %sext, 32
  %add.ptr47.sum = add nsw i64 %idx.ext, -32
  %add.ptr48 = getelementptr inbounds i8* %name, i64 %add.ptr47.sum
  %call49 = call i8* @strcpy(i8* %0, i8* %add.ptr48) #2
  br label %if.end50

if.end50:                                         ; preds = %if.else, %if.then44
  %call52 = call i8* @strlwr(i8* %0) #2
  %call54 = call i64 @strlen(i8* %0) #10
  %conv55 = trunc i64 %call54 to i32
  %sext116 = shl i64 %call54, 32
  %idx.ext75 = ashr exact i64 %sext116, 32
  %.pre = load i8** %., align 8, !tbaa !7
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.end50
  %5 = phi i8* [ %.pre, %if.end50 ], [ %7, %do.cond ]
  %suf.1 = phi i8** [ %., %if.end50 ], [ %incdec.ptr89, %do.cond ]
  %call57 = call i64 @strlen(i8* %5) #10
  %conv58 = trunc i64 %call57 to i32
  %cmp59 = icmp sgt i32 %conv55, %conv58
  br i1 %cmp59, label %land.lhs.true61, label %do.cond

land.lhs.true61:                                  ; preds = %do.body
  %sub62 = sub i64 %call54, %call57
  %sub63 = shl i64 %sub62, 32
  %sext115 = add i64 %sub63, -4294967296
  %idxprom = ashr exact i64 %sext115, 32
  %arrayidx64 = getelementptr inbounds [33 x i8]* %suffix, i64 0, i64 %idxprom
  %6 = load i8* %arrayidx64, align 1, !tbaa !9
  %cmp66 = icmp eq i8 %6, 47
  br i1 %cmp66, label %do.cond, label %land.lhs.true68

land.lhs.true68:                                  ; preds = %land.lhs.true61
  %sext117 = shl i64 %call57, 32
  %idx.ext77 = ashr exact i64 %sext117, 32
  %add.ptr76.sum = sub i64 %idx.ext75, %idx.ext77
  %add.ptr78 = getelementptr inbounds [33 x i8]* %suffix, i64 0, i64 %add.ptr76.sum
  %call79 = call i32 @strcmp(i8* %add.ptr78, i8* %5) #2
  %cmp80 = icmp eq i32 %call79, 0
  br i1 %cmp80, label %if.then82, label %do.cond

if.then82:                                        ; preds = %land.lhs.true68
  %idx.ext77.lcssa = phi i64 [ %idx.ext77, %land.lhs.true68 ]
  %sext118 = shl i64 %call40, 32
  %idx.ext83 = ashr exact i64 %sext118, 32
  %add.ptr84.sum = sub i64 %idx.ext83, %idx.ext77.lcssa
  %add.ptr87 = getelementptr inbounds i8* %name, i64 %add.ptr84.sum
  br label %cleanup

do.cond:                                          ; preds = %land.lhs.true68, %land.lhs.true61, %do.body
  %incdec.ptr89 = getelementptr inbounds i8** %suf.1, i64 1
  %7 = load i8** %incdec.ptr89, align 8, !tbaa !7
  %cmp90 = icmp eq i8* %7, null
  br i1 %cmp90, label %cleanup.loopexit, label %do.body

cleanup.loopexit:                                 ; preds = %do.cond
  br label %cleanup

cleanup:                                          ; preds = %cleanup.loopexit, %if.then82
  %retval.0 = phi i8* [ %add.ptr87, %if.then82 ], [ null, %cleanup.loopexit ]
  call void @llvm.lifetime.end(i64 33, i8* %0) #2
  ret i8* %retval.0
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @get_method(i32 %in) #0 {
entry:
  %magic = alloca [2 x i8], align 1
  %0 = load i32* @force, align 4, !tbaa !1
  %tobool = icmp ne i32 %0, 0
  %1 = load i32* @to_stdout, align 4
  %tobool1 = icmp ne i32 %1, 0
  %or.cond = and i1 %tobool, %tobool1
  %2 = load i32* @inptr, align 4, !tbaa !1
  %3 = load i32* @insize, align 4, !tbaa !1
  %cmp = icmp ult i32 %2, %3
  br i1 %or.cond, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %inc = add i32 %2, 1
  store i32 %inc, i32* @inptr, align 4, !tbaa !1
  %idxprom = zext i32 %2 to i64
  %arrayidx = getelementptr inbounds [32832 x i8]* @inbuf, i64 0, i64 %idxprom
  %4 = load i8* %arrayidx, align 1, !tbaa !9
  %conv = zext i8 %4 to i32
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %call = tail call i32 @fill_inbuf(i32 1) #2
  %.pre = load i32* @inptr, align 4, !tbaa !1
  %.pre453 = load i32* @insize, align 4, !tbaa !1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %5 = phi i32 [ %3, %cond.true ], [ %.pre453, %cond.false ]
  %6 = phi i32 [ %inc, %cond.true ], [ %.pre, %cond.false ]
  %cond = phi i32 [ %conv, %cond.true ], [ %call, %cond.false ]
  %conv2 = trunc i32 %cond to i8
  %arrayidx3 = getelementptr inbounds [2 x i8]* %magic, i64 0, i64 0
  store i8 %conv2, i8* %arrayidx3, align 1, !tbaa !9
  %cmp4 = icmp ult i32 %6, %5
  br i1 %cmp4, label %cond.true6, label %cond.false11

cond.true6:                                       ; preds = %cond.end
  %inc7 = add i32 %6, 1
  store i32 %inc7, i32* @inptr, align 4, !tbaa !1
  %idxprom8 = zext i32 %6 to i64
  %arrayidx9 = getelementptr inbounds [32832 x i8]* @inbuf, i64 0, i64 %idxprom8
  %7 = load i8* %arrayidx9, align 1, !tbaa !9
  %conv10 = zext i8 %7 to i32
  br label %cond.end13

cond.false11:                                     ; preds = %cond.end
  %call12 = tail call i32 @fill_inbuf(i32 1) #2
  br label %cond.end13

cond.end13:                                       ; preds = %cond.false11, %cond.true6
  %cond14 = phi i32 [ %conv10, %cond.true6 ], [ %call12, %cond.false11 ]
  %conv15 = trunc i32 %cond14 to i8
  %arrayidx16 = getelementptr inbounds [2 x i8]* %magic, i64 0, i64 1
  store i8 %conv15, i8* %arrayidx16, align 1, !tbaa !9
  br label %if.end

if.else:                                          ; preds = %entry
  br i1 %cmp, label %cond.true19, label %cond.false24

cond.true19:                                      ; preds = %if.else
  %inc20 = add i32 %2, 1
  store i32 %inc20, i32* @inptr, align 4, !tbaa !1
  %idxprom21 = zext i32 %2 to i64
  %arrayidx22 = getelementptr inbounds [32832 x i8]* @inbuf, i64 0, i64 %idxprom21
  %8 = load i8* %arrayidx22, align 1, !tbaa !9
  %conv23 = zext i8 %8 to i32
  br label %cond.end26

cond.false24:                                     ; preds = %if.else
  %call25 = tail call i32 @fill_inbuf(i32 0) #2
  %.pre466 = load i32* @inptr, align 4, !tbaa !1
  %.pre467 = load i32* @insize, align 4, !tbaa !1
  br label %cond.end26

cond.end26:                                       ; preds = %cond.false24, %cond.true19
  %9 = phi i32 [ %3, %cond.true19 ], [ %.pre467, %cond.false24 ]
  %10 = phi i32 [ %inc20, %cond.true19 ], [ %.pre466, %cond.false24 ]
  %cond27 = phi i32 [ %conv23, %cond.true19 ], [ %call25, %cond.false24 ]
  %conv28 = trunc i32 %cond27 to i8
  %arrayidx29 = getelementptr inbounds [2 x i8]* %magic, i64 0, i64 0
  store i8 %conv28, i8* %arrayidx29, align 1, !tbaa !9
  %cmp30 = icmp ult i32 %10, %9
  br i1 %cmp30, label %cond.true32, label %cond.false37

cond.true32:                                      ; preds = %cond.end26
  %inc33 = add i32 %10, 1
  store i32 %inc33, i32* @inptr, align 4, !tbaa !1
  %idxprom34 = zext i32 %10 to i64
  %arrayidx35 = getelementptr inbounds [32832 x i8]* @inbuf, i64 0, i64 %idxprom34
  %11 = load i8* %arrayidx35, align 1, !tbaa !9
  %conv36 = zext i8 %11 to i32
  br label %cond.end39

cond.false37:                                     ; preds = %cond.end26
  %call38 = tail call i32 @fill_inbuf(i32 0) #2
  br label %cond.end39

cond.end39:                                       ; preds = %cond.false37, %cond.true32
  %cond40 = phi i32 [ %conv36, %cond.true32 ], [ %call38, %cond.false37 ]
  %conv41 = trunc i32 %cond40 to i8
  %arrayidx42 = getelementptr inbounds [2 x i8]* %magic, i64 0, i64 1
  store i8 %conv41, i8* %arrayidx42, align 1, !tbaa !9
  br label %if.end

if.end:                                           ; preds = %cond.end39, %cond.end13
  store i32 -1, i32* @method, align 4, !tbaa !1
  %12 = load i32* @part_nb, align 4, !tbaa !1
  %inc43 = add nsw i32 %12, 1
  store i32 %inc43, i32* @part_nb, align 4, !tbaa !1
  store i64 0, i64* @header_bytes, align 8, !tbaa !15
  store i32 0, i32* @last_member, align 4, !tbaa !1
  %arraydecay = getelementptr inbounds [2 x i8]* %magic, i64 0, i64 0
  %call44 = call i32 @memcmp(i8* %arraydecay, i8* getelementptr inbounds ([3 x i8]* @.str80, i64 0, i64 0), i64 2) #10
  %cmp45 = icmp eq i32 %call44, 0
  br i1 %cmp45, label %if.then51, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %call48 = call i32 @memcmp(i8* %arraydecay, i8* getelementptr inbounds ([3 x i8]* @.str81, i64 0, i64 0), i64 2) #10
  %cmp49 = icmp eq i32 %call48, 0
  br i1 %cmp49, label %if.then51, label %if.else356

if.then51:                                        ; preds = %lor.lhs.false, %if.end
  %13 = load i32* @inptr, align 4, !tbaa !1
  %14 = load i32* @insize, align 4, !tbaa !1
  %cmp52 = icmp ult i32 %13, %14
  br i1 %cmp52, label %cond.true54, label %cond.false59

cond.true54:                                      ; preds = %if.then51
  %inc55 = add i32 %13, 1
  store i32 %inc55, i32* @inptr, align 4, !tbaa !1
  %idxprom56 = zext i32 %13 to i64
  %arrayidx57 = getelementptr inbounds [32832 x i8]* @inbuf, i64 0, i64 %idxprom56
  %15 = load i8* %arrayidx57, align 1, !tbaa !9
  %conv58 = zext i8 %15 to i32
  br label %cond.end61

cond.false59:                                     ; preds = %if.then51
  %call60 = tail call i32 @fill_inbuf(i32 0) #2
  br label %cond.end61

cond.end61:                                       ; preds = %cond.false59, %cond.true54
  %cond62 = phi i32 [ %conv58, %cond.true54 ], [ %call60, %cond.false59 ]
  store i32 %cond62, i32* @method, align 4, !tbaa !1
  %cmp63 = icmp eq i32 %cond62, 8
  br i1 %cmp63, label %if.end67, label %if.then65

if.then65:                                        ; preds = %cond.end61
  %16 = load %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %17 = load i8** @progname, align 8, !tbaa !7
  %call66 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %16, i8* getelementptr inbounds ([56 x i8]* @.str82, i64 0, i64 0), i8* %17, i8* getelementptr inbounds ([1024 x i8]* @ifname, i64 0, i64 0), i32 %cond62) #11
  store i32 1, i32* @exit_code, align 4, !tbaa !1
  br label %return

if.end67:                                         ; preds = %cond.end61
  store i32 (i32, i32)* @unzip, i32 (i32, i32)** @work, align 8, !tbaa !7
  %18 = load i32* @inptr, align 4, !tbaa !1
  %19 = load i32* @insize, align 4, !tbaa !1
  %cmp68 = icmp ult i32 %18, %19
  br i1 %cmp68, label %cond.true70, label %cond.false75

cond.true70:                                      ; preds = %if.end67
  %inc71 = add i32 %18, 1
  store i32 %inc71, i32* @inptr, align 4, !tbaa !1
  %idxprom72 = zext i32 %18 to i64
  %arrayidx73 = getelementptr inbounds [32832 x i8]* @inbuf, i64 0, i64 %idxprom72
  %20 = load i8* %arrayidx73, align 1, !tbaa !9
  %conv74 = zext i8 %20 to i32
  br label %cond.end77

cond.false75:                                     ; preds = %if.end67
  %call76 = tail call i32 @fill_inbuf(i32 0) #2
  br label %cond.end77

cond.end77:                                       ; preds = %cond.false75, %cond.true70
  %cond78 = phi i32 [ %conv74, %cond.true70 ], [ %call76, %cond.false75 ]
  %conv80 = and i32 %cond78, 255
  %and = and i32 %cond78, 32
  %cmp81 = icmp eq i32 %and, 0
  br i1 %cmp81, label %if.end85, label %if.then83

if.then83:                                        ; preds = %cond.end77
  %21 = load %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %22 = load i8** @progname, align 8, !tbaa !7
  %call84 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %21, i8* getelementptr inbounds ([50 x i8]* @.str83, i64 0, i64 0), i8* %22, i8* getelementptr inbounds ([1024 x i8]* @ifname, i64 0, i64 0)) #11
  store i32 1, i32* @exit_code, align 4, !tbaa !1
  br label %return

if.end85:                                         ; preds = %cond.end77
  %and87 = and i32 %cond78, 2
  %cmp88 = icmp ne i32 %and87, 0
  br i1 %cmp88, label %if.then90, label %if.end96

if.then90:                                        ; preds = %if.end85
  %23 = load %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %24 = load i8** @progname, align 8, !tbaa !7
  %call91 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %23, i8* getelementptr inbounds ([65 x i8]* @.str84, i64 0, i64 0), i8* %24, i8* getelementptr inbounds ([1024 x i8]* @ifname, i64 0, i64 0)) #11
  store i32 1, i32* @exit_code, align 4, !tbaa !1
  %25 = load i32* @force, align 4, !tbaa !1
  %cmp92 = icmp slt i32 %25, 2
  br i1 %cmp92, label %return, label %if.end96

if.end96:                                         ; preds = %if.then90, %if.end85
  %and98 = and i32 %cond78, 192
  %cmp99 = icmp eq i32 %and98, 0
  br i1 %cmp99, label %if.end108, label %if.then101

if.then101:                                       ; preds = %if.end96
  %26 = load %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %27 = load i8** @progname, align 8, !tbaa !7
  %call103 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %26, i8* getelementptr inbounds ([52 x i8]* @.str85, i64 0, i64 0), i8* %27, i8* getelementptr inbounds ([1024 x i8]* @ifname, i64 0, i64 0), i32 %conv80) #11
  store i32 1, i32* @exit_code, align 4, !tbaa !1
  %28 = load i32* @force, align 4, !tbaa !1
  %cmp104 = icmp slt i32 %28, 2
  br i1 %cmp104, label %return, label %if.end108

if.end108:                                        ; preds = %if.then101, %if.end96
  %29 = load i32* @inptr, align 4, !tbaa !1
  %30 = load i32* @insize, align 4, !tbaa !1
  %cmp109 = icmp ult i32 %29, %30
  br i1 %cmp109, label %cond.true111, label %cond.false116

cond.true111:                                     ; preds = %if.end108
  %inc112 = add i32 %29, 1
  store i32 %inc112, i32* @inptr, align 4, !tbaa !1
  %idxprom113 = zext i32 %29 to i64
  %arrayidx114 = getelementptr inbounds [32832 x i8]* @inbuf, i64 0, i64 %idxprom113
  %31 = load i8* %arrayidx114, align 1, !tbaa !9
  %conv115 = zext i8 %31 to i32
  br label %cond.end118

cond.false116:                                    ; preds = %if.end108
  %call117 = tail call i32 @fill_inbuf(i32 0) #2
  %.pre454 = load i32* @inptr, align 4, !tbaa !1
  %.pre455 = load i32* @insize, align 4, !tbaa !1
  br label %cond.end118

cond.end118:                                      ; preds = %cond.false116, %cond.true111
  %32 = phi i32 [ %30, %cond.true111 ], [ %.pre455, %cond.false116 ]
  %33 = phi i32 [ %inc112, %cond.true111 ], [ %.pre454, %cond.false116 ]
  %cond119 = phi i32 [ %conv115, %cond.true111 ], [ %call117, %cond.false116 ]
  %conv120 = sext i32 %cond119 to i64
  %cmp121 = icmp ult i32 %33, %32
  br i1 %cmp121, label %cond.true123, label %cond.false128

cond.true123:                                     ; preds = %cond.end118
  %inc124 = add i32 %33, 1
  store i32 %inc124, i32* @inptr, align 4, !tbaa !1
  %idxprom125 = zext i32 %33 to i64
  %arrayidx126 = getelementptr inbounds [32832 x i8]* @inbuf, i64 0, i64 %idxprom125
  %34 = load i8* %arrayidx126, align 1, !tbaa !9
  %conv127 = zext i8 %34 to i32
  br label %cond.end130

cond.false128:                                    ; preds = %cond.end118
  %call129 = tail call i32 @fill_inbuf(i32 0) #2
  %.pre456 = load i32* @inptr, align 4, !tbaa !1
  %.pre457 = load i32* @insize, align 4, !tbaa !1
  br label %cond.end130

cond.end130:                                      ; preds = %cond.false128, %cond.true123
  %35 = phi i32 [ %32, %cond.true123 ], [ %.pre457, %cond.false128 ]
  %36 = phi i32 [ %inc124, %cond.true123 ], [ %.pre456, %cond.false128 ]
  %cond131 = phi i32 [ %conv127, %cond.true123 ], [ %call129, %cond.false128 ]
  %conv132 = sext i32 %cond131 to i64
  %shl = shl nsw i64 %conv132, 8
  %or = or i64 %shl, %conv120
  %cmp133 = icmp ult i32 %36, %35
  br i1 %cmp133, label %cond.true135, label %cond.false140

cond.true135:                                     ; preds = %cond.end130
  %inc136 = add i32 %36, 1
  store i32 %inc136, i32* @inptr, align 4, !tbaa !1
  %idxprom137 = zext i32 %36 to i64
  %arrayidx138 = getelementptr inbounds [32832 x i8]* @inbuf, i64 0, i64 %idxprom137
  %37 = load i8* %arrayidx138, align 1, !tbaa !9
  %conv139 = zext i8 %37 to i32
  br label %cond.end142

cond.false140:                                    ; preds = %cond.end130
  %call141 = tail call i32 @fill_inbuf(i32 0) #2
  %.pre458 = load i32* @inptr, align 4, !tbaa !1
  %.pre459 = load i32* @insize, align 4, !tbaa !1
  br label %cond.end142

cond.end142:                                      ; preds = %cond.false140, %cond.true135
  %38 = phi i32 [ %35, %cond.true135 ], [ %.pre459, %cond.false140 ]
  %39 = phi i32 [ %inc136, %cond.true135 ], [ %.pre458, %cond.false140 ]
  %cond143 = phi i32 [ %conv139, %cond.true135 ], [ %call141, %cond.false140 ]
  %conv144 = sext i32 %cond143 to i64
  %shl145 = shl nsw i64 %conv144, 16
  %or146 = or i64 %or, %shl145
  %cmp147 = icmp ult i32 %39, %38
  br i1 %cmp147, label %cond.true149, label %cond.false154

cond.true149:                                     ; preds = %cond.end142
  %inc150 = add i32 %39, 1
  store i32 %inc150, i32* @inptr, align 4, !tbaa !1
  %idxprom151 = zext i32 %39 to i64
  %arrayidx152 = getelementptr inbounds [32832 x i8]* @inbuf, i64 0, i64 %idxprom151
  %40 = load i8* %arrayidx152, align 1, !tbaa !9
  %conv153 = zext i8 %40 to i32
  br label %cond.end156

cond.false154:                                    ; preds = %cond.end142
  %call155 = tail call i32 @fill_inbuf(i32 0) #2
  br label %cond.end156

cond.end156:                                      ; preds = %cond.false154, %cond.true149
  %cond157 = phi i32 [ %conv153, %cond.true149 ], [ %call155, %cond.false154 ]
  %conv158 = sext i32 %cond157 to i64
  %shl159 = shl nsw i64 %conv158, 24
  %or160 = or i64 %or146, %shl159
  %cmp161 = icmp eq i64 %or160, 0
  %41 = load i32* @no_time, align 4
  %tobool164 = icmp ne i32 %41, 0
  %or.cond422 = or i1 %cmp161, %tobool164
  br i1 %or.cond422, label %if.end166, label %if.then165

if.then165:                                       ; preds = %cond.end156
  store i64 %or160, i64* @time_stamp, align 8, !tbaa !15
  br label %if.end166

if.end166:                                        ; preds = %if.then165, %cond.end156
  %42 = load i32* @inptr, align 4, !tbaa !1
  %43 = load i32* @insize, align 4, !tbaa !1
  %cmp167 = icmp ult i32 %42, %43
  br i1 %cmp167, label %cond.true169, label %cond.false174

cond.true169:                                     ; preds = %if.end166
  %inc170 = add i32 %42, 1
  store i32 %inc170, i32* @inptr, align 4, !tbaa !1
  br label %cond.end176

cond.false174:                                    ; preds = %if.end166
  %call175 = tail call i32 @fill_inbuf(i32 0) #2
  %.pre460 = load i32* @inptr, align 4, !tbaa !1
  %.pre461 = load i32* @insize, align 4, !tbaa !1
  br label %cond.end176

cond.end176:                                      ; preds = %cond.false174, %cond.true169
  %44 = phi i32 [ %.pre461, %cond.false174 ], [ %43, %cond.true169 ]
  %45 = phi i32 [ %.pre460, %cond.false174 ], [ %inc170, %cond.true169 ]
  %cmp178 = icmp ult i32 %45, %44
  br i1 %cmp178, label %cond.true180, label %cond.false185

cond.true180:                                     ; preds = %cond.end176
  %inc181 = add i32 %45, 1
  store i32 %inc181, i32* @inptr, align 4, !tbaa !1
  br label %cond.end187

cond.false185:                                    ; preds = %cond.end176
  %call186 = tail call i32 @fill_inbuf(i32 0) #2
  br label %cond.end187

cond.end187:                                      ; preds = %cond.false185, %cond.true180
  br i1 %cmp88, label %if.then193, label %if.end222

if.then193:                                       ; preds = %cond.end187
  %46 = load i32* @inptr, align 4, !tbaa !1
  %47 = load i32* @insize, align 4, !tbaa !1
  %cmp194 = icmp ult i32 %46, %47
  br i1 %cmp194, label %cond.true196, label %cond.false201

cond.true196:                                     ; preds = %if.then193
  %inc197 = add i32 %46, 1
  store i32 %inc197, i32* @inptr, align 4, !tbaa !1
  %idxprom198 = zext i32 %46 to i64
  %arrayidx199 = getelementptr inbounds [32832 x i8]* @inbuf, i64 0, i64 %idxprom198
  %48 = load i8* %arrayidx199, align 1, !tbaa !9
  %conv200 = zext i8 %48 to i32
  br label %cond.end203

cond.false201:                                    ; preds = %if.then193
  %call202 = tail call i32 @fill_inbuf(i32 0) #2
  %.pre462 = load i32* @inptr, align 4, !tbaa !1
  %.pre463 = load i32* @insize, align 4, !tbaa !1
  br label %cond.end203

cond.end203:                                      ; preds = %cond.false201, %cond.true196
  %49 = phi i32 [ %47, %cond.true196 ], [ %.pre463, %cond.false201 ]
  %50 = phi i32 [ %inc197, %cond.true196 ], [ %.pre462, %cond.false201 ]
  %cond204 = phi i32 [ %conv200, %cond.true196 ], [ %call202, %cond.false201 ]
  %cmp205 = icmp ult i32 %50, %49
  br i1 %cmp205, label %cond.true207, label %cond.false212

cond.true207:                                     ; preds = %cond.end203
  %inc208 = add i32 %50, 1
  store i32 %inc208, i32* @inptr, align 4, !tbaa !1
  %idxprom209 = zext i32 %50 to i64
  %arrayidx210 = getelementptr inbounds [32832 x i8]* @inbuf, i64 0, i64 %idxprom209
  %51 = load i8* %arrayidx210, align 1, !tbaa !9
  %conv211 = zext i8 %51 to i32
  br label %cond.end214

cond.false212:                                    ; preds = %cond.end203
  %call213 = tail call i32 @fill_inbuf(i32 0) #2
  br label %cond.end214

cond.end214:                                      ; preds = %cond.false212, %cond.true207
  %cond215 = phi i32 [ %conv211, %cond.true207 ], [ %call213, %cond.false212 ]
  %52 = load i32* @verbose, align 4, !tbaa !1
  %tobool218 = icmp eq i32 %52, 0
  br i1 %tobool218, label %if.end222, label %if.then219

if.then219:                                       ; preds = %cond.end214
  %shl216 = shl i32 %cond215, 8
  %or217 = or i32 %shl216, %cond204
  %53 = load %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %54 = load i8** @progname, align 8, !tbaa !7
  %call220 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %53, i8* getelementptr inbounds ([24 x i8]* @.str86, i64 0, i64 0), i8* %54, i8* getelementptr inbounds ([1024 x i8]* @ifname, i64 0, i64 0), i32 %or217) #11
  br label %if.end222

if.end222:                                        ; preds = %if.then219, %cond.end214, %cond.end187
  %and224 = and i32 %cond78, 4
  %cmp225 = icmp eq i32 %and224, 0
  br i1 %cmp225, label %if.end268, label %if.then227

if.then227:                                       ; preds = %if.end222
  %55 = load i32* @inptr, align 4, !tbaa !1
  %56 = load i32* @insize, align 4, !tbaa !1
  %cmp228 = icmp ult i32 %55, %56
  br i1 %cmp228, label %cond.true230, label %cond.false235

cond.true230:                                     ; preds = %if.then227
  %inc231 = add i32 %55, 1
  store i32 %inc231, i32* @inptr, align 4, !tbaa !1
  %idxprom232 = zext i32 %55 to i64
  %arrayidx233 = getelementptr inbounds [32832 x i8]* @inbuf, i64 0, i64 %idxprom232
  %57 = load i8* %arrayidx233, align 1, !tbaa !9
  %conv234 = zext i8 %57 to i32
  br label %cond.end237

cond.false235:                                    ; preds = %if.then227
  %call236 = tail call i32 @fill_inbuf(i32 0) #2
  %.pre464 = load i32* @inptr, align 4, !tbaa !1
  %.pre465 = load i32* @insize, align 4, !tbaa !1
  br label %cond.end237

cond.end237:                                      ; preds = %cond.false235, %cond.true230
  %58 = phi i32 [ %56, %cond.true230 ], [ %.pre465, %cond.false235 ]
  %59 = phi i32 [ %inc231, %cond.true230 ], [ %.pre464, %cond.false235 ]
  %cond238 = phi i32 [ %conv234, %cond.true230 ], [ %call236, %cond.false235 ]
  %cmp239 = icmp ult i32 %59, %58
  br i1 %cmp239, label %cond.true241, label %cond.false246

cond.true241:                                     ; preds = %cond.end237
  %inc242 = add i32 %59, 1
  store i32 %inc242, i32* @inptr, align 4, !tbaa !1
  %idxprom243 = zext i32 %59 to i64
  %arrayidx244 = getelementptr inbounds [32832 x i8]* @inbuf, i64 0, i64 %idxprom243
  %60 = load i8* %arrayidx244, align 1, !tbaa !9
  %conv245 = zext i8 %60 to i32
  br label %cond.end248

cond.false246:                                    ; preds = %cond.end237
  %call247 = tail call i32 @fill_inbuf(i32 0) #2
  br label %cond.end248

cond.end248:                                      ; preds = %cond.false246, %cond.true241
  %cond249 = phi i32 [ %conv245, %cond.true241 ], [ %call247, %cond.false246 ]
  %shl250 = shl i32 %cond249, 8
  %or251 = or i32 %shl250, %cond238
  %61 = load i32* @verbose, align 4, !tbaa !1
  %tobool252 = icmp eq i32 %61, 0
  br i1 %tobool252, label %while.cond.preheader, label %if.then253

if.then253:                                       ; preds = %cond.end248
  %62 = load %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %63 = load i8** @progname, align 8, !tbaa !7
  %call254 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %62, i8* getelementptr inbounds ([41 x i8]* @.str87, i64 0, i64 0), i8* %63, i8* getelementptr inbounds ([1024 x i8]* @ifname, i64 0, i64 0), i32 %or251) #11
  br label %while.cond.preheader

while.cond.preheader:                             ; preds = %if.then253, %cond.end248
  %tobool256451 = icmp eq i32 %or251, 0
  br i1 %tobool256451, label %if.end268, label %while.body.preheader

while.body.preheader:                             ; preds = %while.cond.preheader
  br label %while.body

while.body:                                       ; preds = %while.cond.backedge, %while.body.preheader
  %dec452.in = phi i32 [ %dec452, %while.cond.backedge ], [ %or251, %while.body.preheader ]
  %dec452 = add i32 %dec452.in, -1
  %64 = load i32* @inptr, align 4, !tbaa !1
  %65 = load i32* @insize, align 4, !tbaa !1
  %cmp257 = icmp ult i32 %64, %65
  br i1 %cmp257, label %cond.true259, label %cond.false264

cond.true259:                                     ; preds = %while.body
  %inc260 = add i32 %64, 1
  store i32 %inc260, i32* @inptr, align 4, !tbaa !1
  br label %while.cond.backedge

cond.false264:                                    ; preds = %while.body
  %call265 = tail call i32 @fill_inbuf(i32 0) #2
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %cond.false264, %cond.true259
  %tobool256 = icmp eq i32 %dec452, 0
  br i1 %tobool256, label %if.end268.loopexit, label %while.body

if.end268.loopexit:                               ; preds = %while.cond.backedge
  br label %if.end268

if.end268:                                        ; preds = %if.end268.loopexit, %while.cond.preheader, %if.end222
  %and270 = and i32 %cond78, 8
  %cmp271 = icmp eq i32 %and270, 0
  br i1 %cmp271, label %if.end328, label %if.then273

if.then273:                                       ; preds = %if.end268
  %66 = load i32* @no_name, align 4, !tbaa !1
  %tobool274 = icmp eq i32 %66, 0
  br i1 %tobool274, label %lor.lhs.false275, label %do.body.preheader

lor.lhs.false275:                                 ; preds = %if.then273
  %67 = load i32* @to_stdout, align 4, !tbaa !1
  %68 = load i32* @list, align 4
  %notlhs446 = icmp ne i32 %67, 0
  %notrhs447 = icmp eq i32 %68, 0
  %or.cond423.not = and i1 %notrhs447, %notlhs446
  %69 = load i32* @part_nb, align 4
  %cmp280 = icmp sgt i32 %69, 1
  %or.cond424 = or i1 %or.cond423.not, %cmp280
  br i1 %or.cond424, label %do.body.preheader, label %if.else298

do.body.preheader:                                ; preds = %lor.lhs.false275, %if.then273
  br label %do.body

do.body:                                          ; preds = %cond.end292, %do.body.preheader
  %70 = load i32* @inptr, align 4, !tbaa !1
  %71 = load i32* @insize, align 4, !tbaa !1
  %cmp283 = icmp ult i32 %70, %71
  br i1 %cmp283, label %cond.true285, label %cond.false290

cond.true285:                                     ; preds = %do.body
  %inc286 = add i32 %70, 1
  store i32 %inc286, i32* @inptr, align 4, !tbaa !1
  %idxprom287 = zext i32 %70 to i64
  %arrayidx288 = getelementptr inbounds [32832 x i8]* @inbuf, i64 0, i64 %idxprom287
  %72 = load i8* %arrayidx288, align 1, !tbaa !9
  %conv289 = zext i8 %72 to i32
  br label %cond.end292

cond.false290:                                    ; preds = %do.body
  %call291 = tail call i32 @fill_inbuf(i32 0) #2
  br label %cond.end292

cond.end292:                                      ; preds = %cond.false290, %cond.true285
  %cond293 = phi i32 [ %conv289, %cond.true285 ], [ %call291, %cond.false290 ]
  %sext.mask448 = and i32 %cond293, 255
  %cmp296 = icmp eq i32 %sext.mask448, 0
  br i1 %cmp296, label %if.end328.loopexit, label %do.body

if.else298:                                       ; preds = %lor.lhs.false275
  %call299 = tail call i8* @basename(i8* getelementptr inbounds ([1024 x i8]* @ofname, i64 0, i64 0)) #2
  br label %for.cond

for.cond:                                         ; preds = %for.cond.backedge, %if.else298
  %p.0 = phi i8* [ %call299, %if.else298 ], [ %incdec.ptr, %for.cond.backedge ]
  %73 = load i32* @inptr, align 4, !tbaa !1
  %74 = load i32* @insize, align 4, !tbaa !1
  %cmp300 = icmp ult i32 %73, %74
  br i1 %cmp300, label %cond.true302, label %cond.false307

cond.true302:                                     ; preds = %for.cond
  %inc303 = add i32 %73, 1
  store i32 %inc303, i32* @inptr, align 4, !tbaa !1
  %idxprom304 = zext i32 %73 to i64
  %arrayidx305 = getelementptr inbounds [32832 x i8]* @inbuf, i64 0, i64 %idxprom304
  %75 = load i8* %arrayidx305, align 1, !tbaa !9
  %conv306 = zext i8 %75 to i32
  br label %cond.end309

cond.false307:                                    ; preds = %for.cond
  %call308 = tail call i32 @fill_inbuf(i32 0) #2
  br label %cond.end309

cond.end309:                                      ; preds = %cond.false307, %cond.true302
  %cond310 = phi i32 [ %conv306, %cond.true302 ], [ %call308, %cond.false307 ]
  %conv311 = trunc i32 %cond310 to i8
  store i8 %conv311, i8* %p.0, align 1, !tbaa !9
  %incdec.ptr = getelementptr inbounds i8* %p.0, i64 1
  %sext.mask = and i32 %cond310, 255
  %cmp313 = icmp eq i32 %sext.mask, 0
  br i1 %cmp313, label %for.end, label %if.end316

if.end316:                                        ; preds = %cond.end309
  %cmp317 = icmp ult i8* %incdec.ptr, getelementptr inbounds ([1024 x i8]* @ofname, i64 1, i64 0)
  br i1 %cmp317, label %for.cond.backedge, label %if.then319

if.then319:                                       ; preds = %if.end316
  tail call void @error(i8* getelementptr inbounds ([39 x i8]* @.str88, i64 0, i64 0)) #2
  br label %for.cond.backedge

for.cond.backedge:                                ; preds = %if.then319, %if.end316
  br label %for.cond

for.end:                                          ; preds = %cond.end309
  %76 = load i32* @list, align 4, !tbaa !1
  %tobool321 = icmp eq i32 %76, 0
  %tobool323 = icmp ne i8* %call299, null
  %or.cond428 = and i1 %tobool321, %tobool323
  br i1 %or.cond428, label %if.then324, label %if.end328

if.then324:                                       ; preds = %for.end
  store i32 0, i32* @list, align 4, !tbaa !1
  br label %if.end328

if.end328.loopexit:                               ; preds = %cond.end292
  br label %if.end328

if.end328:                                        ; preds = %if.end328.loopexit, %if.then324, %for.end, %if.end268
  %and330 = and i32 %cond78, 16
  %cmp331 = icmp eq i32 %and330, 0
  br i1 %cmp331, label %if.end350, label %while.cond334.preheader

while.cond334.preheader:                          ; preds = %if.end328
  br label %while.cond334

while.cond334:                                    ; preds = %cond.end344, %while.cond334.preheader
  %77 = load i32* @inptr, align 4, !tbaa !1
  %78 = load i32* @insize, align 4, !tbaa !1
  %cmp335 = icmp ult i32 %77, %78
  br i1 %cmp335, label %cond.true337, label %cond.false342

cond.true337:                                     ; preds = %while.cond334
  %inc338 = add i32 %77, 1
  store i32 %inc338, i32* @inptr, align 4, !tbaa !1
  %idxprom339 = zext i32 %77 to i64
  %arrayidx340 = getelementptr inbounds [32832 x i8]* @inbuf, i64 0, i64 %idxprom339
  %79 = load i8* %arrayidx340, align 1, !tbaa !9
  %conv341 = zext i8 %79 to i32
  br label %cond.end344

cond.false342:                                    ; preds = %while.cond334
  %call343 = tail call i32 @fill_inbuf(i32 0) #2
  br label %cond.end344

cond.end344:                                      ; preds = %cond.false342, %cond.true337
  %cond345 = phi i32 [ %conv341, %cond.true337 ], [ %call343, %cond.false342 ]
  %cmp346 = icmp eq i32 %cond345, 0
  br i1 %cmp346, label %if.end350.loopexit, label %while.cond334

if.end350.loopexit:                               ; preds = %cond.end344
  br label %if.end350

if.end350:                                        ; preds = %if.end350.loopexit, %if.end328
  %80 = load i32* @part_nb, align 4, !tbaa !1
  %cmp351 = icmp eq i32 %80, 1
  br i1 %cmp351, label %if.then353, label %if.end404

if.then353:                                       ; preds = %if.end350
  %81 = load i32* @inptr, align 4, !tbaa !1
  %conv354 = zext i32 %81 to i64
  %add = add nuw nsw i64 %conv354, 16
  store i64 %add, i64* @header_bytes, align 8, !tbaa !15
  br label %if.end404

if.else356:                                       ; preds = %lor.lhs.false
  %call358 = call i32 @memcmp(i8* %arraydecay, i8* getelementptr inbounds ([5 x i8]* @.str89, i64 0, i64 0), i64 2) #10
  %cmp359 = icmp eq i32 %call358, 0
  %82 = load i32* @inptr, align 4
  %cmp362 = icmp eq i32 %82, 2
  %or.cond425 = and i1 %cmp359, %cmp362
  br i1 %or.cond425, label %land.lhs.true364, label %if.else374

land.lhs.true364:                                 ; preds = %if.else356
  %call365 = tail call i32 @memcmp(i8* getelementptr inbounds ([32832 x i8]* @inbuf, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str89, i64 0, i64 0), i64 4) #10
  %cmp366 = icmp eq i32 %call365, 0
  br i1 %cmp366, label %if.then368, label %if.else374

if.then368:                                       ; preds = %land.lhs.true364
  store i32 0, i32* @inptr, align 4, !tbaa !1
  store i32 (i32, i32)* @unzip, i32 (i32, i32)** @work, align 8, !tbaa !7
  %call369 = tail call i32 @check_zipfile(i32 %in) #2
  %cmp370 = icmp eq i32 %call369, 0
  br i1 %cmp370, label %if.end373, label %return

if.end373:                                        ; preds = %if.then368
  store i32 1, i32* @last_member, align 4, !tbaa !1
  br label %if.end404

if.else374:                                       ; preds = %land.lhs.true364, %if.else356
  %call376 = call i32 @memcmp(i8* %arraydecay, i8* getelementptr inbounds ([3 x i8]* @.str90, i64 0, i64 0), i64 2) #10
  %cmp377 = icmp eq i32 %call376, 0
  br i1 %cmp377, label %if.then379, label %if.else380

if.then379:                                       ; preds = %if.else374
  store i32 (i32, i32)* @unpack, i32 (i32, i32)** @work, align 8, !tbaa !7
  store i32 2, i32* @method, align 4, !tbaa !1
  br label %return

if.else380:                                       ; preds = %if.else374
  %call382 = call i32 @memcmp(i8* %arraydecay, i8* getelementptr inbounds ([3 x i8]* @.str91, i64 0, i64 0), i64 2) #10
  %cmp383 = icmp eq i32 %call382, 0
  br i1 %cmp383, label %if.then385, label %if.else386

if.then385:                                       ; preds = %if.else380
  store i32 (i32, i32)* @unlzw, i32 (i32, i32)** @work, align 8, !tbaa !7
  store i32 1, i32* @method, align 4, !tbaa !1
  store i32 1, i32* @last_member, align 4, !tbaa !1
  br label %return

if.else386:                                       ; preds = %if.else380
  %call388 = call i32 @memcmp(i8* %arraydecay, i8* getelementptr inbounds ([3 x i8]* @.str92, i64 0, i64 0), i64 2) #10
  %cmp389 = icmp eq i32 %call388, 0
  br i1 %cmp389, label %if.then391, label %if.else392

if.then391:                                       ; preds = %if.else386
  store i32 (i32, i32)* @unlzh, i32 (i32, i32)** @work, align 8, !tbaa !7
  store i32 3, i32* @method, align 4, !tbaa !1
  store i32 1, i32* @last_member, align 4, !tbaa !1
  br label %return

if.else392:                                       ; preds = %if.else386
  %83 = load i32* @force, align 4, !tbaa !1
  %84 = load i32* @to_stdout, align 4
  %notlhs = icmp eq i32 %83, 0
  %notrhs = icmp eq i32 %84, 0
  %or.cond426.not = or i1 %notrhs, %notlhs
  %85 = load i32* @list, align 4
  %tobool397 = icmp ne i32 %85, 0
  %or.cond427 = or i1 %or.cond426.not, %tobool397
  br i1 %or.cond427, label %if.end404, label %if.then398

if.then398:                                       ; preds = %if.else392
  store i32 0, i32* @method, align 4, !tbaa !1
  store i32 (i32, i32)* @copy, i32 (i32, i32)** @work, align 8, !tbaa !7
  store i32 0, i32* @inptr, align 4, !tbaa !1
  store i32 1, i32* @last_member, align 4, !tbaa !1
  br label %return

if.end404:                                        ; preds = %if.else392, %if.end373, %if.then353, %if.end350
  %.pr = load i32* @method, align 4, !tbaa !1
  %cmp405 = icmp sgt i32 %.pr, -1
  br i1 %cmp405, label %return, label %if.end408

if.end408:                                        ; preds = %if.end404
  %86 = load i32* @part_nb, align 4, !tbaa !1
  %cmp409 = icmp eq i32 %86, 1
  br i1 %cmp409, label %if.then411, label %if.else413

if.then411:                                       ; preds = %if.end408
  %87 = load %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %88 = load i8** @progname, align 8, !tbaa !7
  %call412 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %87, i8* getelementptr inbounds ([29 x i8]* @.str93, i64 0, i64 0), i8* %88, i8* getelementptr inbounds ([1024 x i8]* @ifname, i64 0, i64 0)) #11
  store i32 1, i32* @exit_code, align 4, !tbaa !1
  br label %return

if.else413:                                       ; preds = %if.end408
  %89 = load i32* @quiet, align 4, !tbaa !1
  %tobool414 = icmp eq i32 %89, 0
  br i1 %tobool414, label %if.then415, label %if.end417

if.then415:                                       ; preds = %if.else413
  %90 = load %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %91 = load i8** @progname, align 8, !tbaa !7
  %call416 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %90, i8* getelementptr inbounds ([53 x i8]* @.str94, i64 0, i64 0), i8* %91, i8* getelementptr inbounds ([1024 x i8]* @ifname, i64 0, i64 0)) #11
  br label %if.end417

if.end417:                                        ; preds = %if.then415, %if.else413
  %92 = load i32* @exit_code, align 4, !tbaa !1
  %cmp418 = icmp eq i32 %92, 0
  br i1 %cmp418, label %if.then420, label %return

if.then420:                                       ; preds = %if.end417
  store i32 2, i32* @exit_code, align 4, !tbaa !1
  br label %return

return:                                           ; preds = %if.then420, %if.end417, %if.then411, %if.end404, %if.then398, %if.then391, %if.then385, %if.then379, %if.then368, %if.then101, %if.then90, %if.then83, %if.then65
  %retval.0 = phi i32 [ -1, %if.then65 ], [ -1, %if.then83 ], [ -1, %if.then411 ], [ -1, %if.then90 ], [ -1, %if.then101 ], [ -1, %if.then368 ], [ %.pr, %if.end404 ], [ -2, %if.then420 ], [ -2, %if.end417 ], [ 2, %if.then379 ], [ 3, %if.then391 ], [ 0, %if.then398 ], [ 1, %if.then385 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind uwtable
define internal fastcc void @shorten_name() #0 {
entry:
  %call = tail call i64 @strlen(i8* getelementptr inbounds ([1024 x i8]* @ofname, i64 0, i64 0)) #10
  %conv = trunc i64 %call to i32
  %0 = load i32* @decompress, align 4, !tbaa !1
  %tobool = icmp eq i32 %0, 0
  br i1 %tobool, label %if.end3, label %if.then

if.then:                                          ; preds = %entry
  %cmp = icmp slt i32 %conv, 2
  br i1 %cmp, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.then
  tail call void @error(i8* getelementptr inbounds ([15 x i8]* @.str61, i64 0, i64 0)) #2
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then
  %sub = shl i64 %call, 32
  %sext = add i64 %sub, -4294967296
  %idxprom = ashr exact i64 %sext, 32
  %arrayidx = getelementptr inbounds [1024 x i8]* @ofname, i64 0, i64 %idxprom
  store i8 0, i8* %arrayidx, align 1, !tbaa !9
  br label %return

if.end3:                                          ; preds = %entry
  %call4 = tail call fastcc i8* @get_suffix(i8* getelementptr inbounds ([1024 x i8]* @ofname, i64 0, i64 0))
  %cmp5 = icmp eq i8* %call4, null
  br i1 %cmp5, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end3
  tail call void @error(i8* getelementptr inbounds ([22 x i8]* @.str62, i64 0, i64 0)) #2
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.end3
  store i8 0, i8* %call4, align 1, !tbaa !9
  store i32 1, i32* @save_orig_name, align 4, !tbaa !1
  %cmp9 = icmp sgt i32 %conv, 4
  br i1 %cmp9, label %cond.false, label %do.body.preheader

do.body.preheader:                                ; preds = %cond.false, %if.end8
  %call62 = tail call i8* @strrchr(i8* getelementptr inbounds ([1024 x i8]* @ofname, i64 0, i64 0), i32 47) #10
  %tobool63 = icmp eq i8* %call62, null
  %add.ptr65 = getelementptr inbounds i8* %call62, i64 1
  %cond68 = select i1 %tobool63, i8* getelementptr inbounds ([1024 x i8]* @ofname, i64 0, i64 0), i8* %add.ptr65
  %1 = load i8* %cond68, align 1, !tbaa !9
  %tobool695 = icmp eq i8 %1, 0
  br label %do.body

cond.false:                                       ; preds = %if.end8
  %add.ptr54 = getelementptr inbounds i8* %call4, i64 -4
  %call55 = tail call i32 @strcmp(i8* %add.ptr54, i8* getelementptr inbounds ([5 x i8]* @.str63, i64 0, i64 0)) #2
  %cmp56 = icmp eq i32 %call55, 0
  br i1 %cmp56, label %if.then58, label %do.body.preheader

if.then58:                                        ; preds = %cond.false
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %add.ptr54, i8* getelementptr inbounds ([5 x i8]* @.str64, i64 0, i64 0), i64 5, i32 1, i1 false)
  br label %return

do.body:                                          ; preds = %land.rhs, %do.body.preheader
  %min_part.0 = phi i32 [ %dec, %land.rhs ], [ 3, %do.body.preheader ]
  br i1 %tobool695, label %land.rhs, label %while.cond.i.preheader.preheader

while.cond.i.preheader.preheader:                 ; preds = %do.body
  br label %while.cond.i.preheader

while.cond.i.preheader:                           ; preds = %while.cond.backedge, %while.cond.i.preheader.preheader
  %trunc.17 = phi i8* [ %trunc.2, %while.cond.backedge ], [ null, %while.cond.i.preheader.preheader ]
  %p.06 = phi i8* [ %incdec.ptr, %while.cond.backedge ], [ %cond68, %while.cond.i.preheader.preheader ]
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.cond.i, %while.cond.i.preheader
  %__result.0.i = phi i64 [ %inc.i, %while.cond.i ], [ 0, %while.cond.i.preheader ]
  %arrayidx.i = getelementptr inbounds i8* %p.06, i64 %__result.0.i
  %2 = load i8* %arrayidx.i, align 1, !tbaa !9
  %inc.i = add i64 %__result.0.i, 1
  switch i8 %2, label %while.cond.i [
    i8 46, label %__strcspn_c1.exit
    i8 0, label %__strcspn_c1.exit
  ]

__strcspn_c1.exit:                                ; preds = %while.cond.i, %while.cond.i
  %__result.0.i.lcssa = phi i64 [ %__result.0.i, %while.cond.i ], [ %__result.0.i, %while.cond.i ]
  %phitmp = trunc i64 %__result.0.i.lcssa to i32
  %sext2 = shl i64 %__result.0.i.lcssa, 32
  %idx.ext = ashr exact i64 %sext2, 32
  %add.ptr119 = getelementptr inbounds i8* %p.06, i64 %idx.ext
  %cmp120 = icmp sgt i32 %phitmp, %min_part.0
  br i1 %cmp120, label %if.then122, label %if.end124

if.then122:                                       ; preds = %__strcspn_c1.exit
  %add.ptr119.sum1 = add nsw i64 %idx.ext, -1
  %add.ptr123 = getelementptr inbounds i8* %p.06, i64 %add.ptr119.sum1
  br label %if.end124

if.end124:                                        ; preds = %if.then122, %__strcspn_c1.exit
  %trunc.2 = phi i8* [ %add.ptr123, %if.then122 ], [ %trunc.17, %__strcspn_c1.exit ]
  %3 = load i8* %add.ptr119, align 1, !tbaa !9
  %tobool125 = icmp eq i8 %3, 0
  br i1 %tobool125, label %do.cond, label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.end124
  %add.ptr119.sum = add nsw i64 %idx.ext, 1
  %incdec.ptr = getelementptr inbounds i8* %p.06, i64 %add.ptr119.sum
  %.pre = load i8* %incdec.ptr, align 1, !tbaa !9
  %phitmp10 = icmp eq i8 %.pre, 0
  br i1 %phitmp10, label %do.cond, label %while.cond.i.preheader

do.cond:                                          ; preds = %while.cond.backedge, %if.end124
  %trunc.2.lcssa = phi i8* [ %trunc.2, %if.end124 ], [ %trunc.2, %while.cond.backedge ]
  %cond = icmp eq i8* %trunc.2.lcssa, null
  br i1 %cond, label %land.rhs, label %do.body135.preheader

do.body135.preheader:                             ; preds = %do.cond
  %trunc.2.lcssa.lcssa = phi i8* [ %trunc.2.lcssa, %do.cond ]
  br label %do.body135

land.rhs:                                         ; preds = %do.cond, %do.body
  %dec = add nsw i32 %min_part.0, -1
  %cmp130 = icmp eq i32 %dec, 0
  br i1 %cmp130, label %if.else, label %do.body

do.body135:                                       ; preds = %do.body135, %do.body135.preheader
  %trunc.3 = phi i8* [ %arrayidx136, %do.body135 ], [ %trunc.2.lcssa.lcssa, %do.body135.preheader ]
  %arrayidx136 = getelementptr inbounds i8* %trunc.3, i64 1
  %4 = load i8* %arrayidx136, align 1, !tbaa !9
  store i8 %4, i8* %trunc.3, align 1, !tbaa !9
  %tobool140 = icmp eq i8 %4, 0
  br i1 %tobool140, label %if.end156.loopexit, label %do.body135

if.else:                                          ; preds = %land.rhs
  %call144 = tail call i8* @strrchr(i8* getelementptr inbounds ([1024 x i8]* @ofname, i64 0, i64 0), i32 46) #10
  %cmp145 = icmp eq i8* %call144, null
  br i1 %cmp145, label %if.then147, label %if.end148

if.then147:                                       ; preds = %if.else
  tail call void @error(i8* getelementptr inbounds ([31 x i8]* @.str66, i64 0, i64 0)) #2
  br label %if.end148

if.end148:                                        ; preds = %if.then147, %if.else
  %arrayidx149 = getelementptr inbounds i8* %call144, i64 1
  %5 = load i8* %arrayidx149, align 1, !tbaa !9
  %cmp151 = icmp eq i8 %5, 0
  %incdec.ptr154 = getelementptr inbounds i8* %call144, i64 -1
  %incdec.ptr154.call144 = select i1 %cmp151, i8* %incdec.ptr154, i8* %call144
  br label %if.end156

if.end156.loopexit:                               ; preds = %do.body135
  %trunc.3.lcssa = phi i8* [ %trunc.3, %do.body135 ]
  br label %if.end156

if.end156:                                        ; preds = %if.end156.loopexit, %if.end148
  %trunc.4 = phi i8* [ %incdec.ptr154.call144, %if.end148 ], [ %trunc.3.lcssa, %if.end156.loopexit ]
  %call157 = tail call i8* @strcpy(i8* %trunc.4, i8* getelementptr inbounds ([31 x i8]* @z_suffix, i64 0, i64 0)) #2
  br label %return

return:                                           ; preds = %if.end156, %if.then58, %if.end
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @huft_build(i32* nocapture readonly %b, i32 %n, i32 %s, i16* nocapture readonly %d, i16* nocapture readonly %e, %struct.huft** nocapture %t, i32* nocapture %m) #0 {
entry:
  %c = alloca [17 x i32], align 16
  %r.sroa.8 = alloca [6 x i8], align 2
  %u = alloca [16 x %struct.huft*], align 16
  %v = alloca [288 x i32], align 16
  %x = alloca [17 x i32], align 16
  %0 = bitcast [17 x i32]* %c to i8*
  call void @llvm.lifetime.start(i64 68, i8* %0) #2
  %1 = bitcast [16 x %struct.huft*]* %u to i8*
  call void @llvm.lifetime.start(i64 128, i8* %1) #2
  %2 = bitcast [288 x i32]* %v to i8*
  call void @llvm.lifetime.start(i64 1152, i8* %2) #2
  %3 = bitcast [17 x i32]* %x to i8*
  call void @llvm.lifetime.start(i64 68, i8* %3) #2
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 68, i32 16, i1 false)
  %xtraiter526 = and i32 %n, 1
  %lcmp.mod527 = icmp ne i32 %xtraiter526, 0
  %lcmp.overflow528 = icmp eq i32 %n, 0
  %lcmp.or529 = or i1 %lcmp.overflow528, %lcmp.mod527
  br i1 %lcmp.or529, label %do.body.unr, label %entry.split

do.body.unr:                                      ; preds = %entry
  %4 = load i32* %b, align 4, !tbaa !1
  %idxprom.unr = zext i32 %4 to i64
  %arrayidx.unr = getelementptr inbounds [17 x i32]* %c, i64 0, i64 %idxprom.unr
  %5 = load i32* %arrayidx.unr, align 4, !tbaa !1
  %inc.unr = add i32 %5, 1
  store i32 %inc.unr, i32* %arrayidx.unr, align 4, !tbaa !1
  %incdec.ptr.unr = getelementptr inbounds i32* %b, i64 1
  %dec.unr = add i32 %n, -1
  %tobool.unr = icmp eq i32 %dec.unr, 0
  br label %entry.split

entry.split:                                      ; preds = %do.body.unr, %entry
  %i.0.unr = phi i32 [ %n, %entry ], [ %dec.unr, %do.body.unr ]
  %p.0.unr = phi i32* [ %b, %entry ], [ %incdec.ptr.unr, %do.body.unr ]
  %6 = icmp ult i32 %n, 2
  br i1 %6, label %do.end, label %entry.split.split

entry.split.split:                                ; preds = %entry.split
  br label %do.body

do.body:                                          ; preds = %do.body, %entry.split.split
  %i.0 = phi i32 [ %i.0.unr, %entry.split.split ], [ %dec.1, %do.body ]
  %p.0 = phi i32* [ %p.0.unr, %entry.split.split ], [ %incdec.ptr.1, %do.body ]
  %7 = load i32* %p.0, align 4, !tbaa !1
  %idxprom = zext i32 %7 to i64
  %arrayidx = getelementptr inbounds [17 x i32]* %c, i64 0, i64 %idxprom
  %8 = load i32* %arrayidx, align 4, !tbaa !1
  %inc = add i32 %8, 1
  store i32 %inc, i32* %arrayidx, align 4, !tbaa !1
  %incdec.ptr = getelementptr inbounds i32* %p.0, i64 1
  %dec = add i32 %i.0, -1
  %9 = load i32* %incdec.ptr, align 4, !tbaa !1
  %idxprom.1 = zext i32 %9 to i64
  %arrayidx.1 = getelementptr inbounds [17 x i32]* %c, i64 0, i64 %idxprom.1
  %10 = load i32* %arrayidx.1, align 4, !tbaa !1
  %inc.1 = add i32 %10, 1
  store i32 %inc.1, i32* %arrayidx.1, align 4, !tbaa !1
  %incdec.ptr.1 = getelementptr inbounds i32* %incdec.ptr, i64 1
  %dec.1 = add i32 %dec, -1
  %tobool.1 = icmp eq i32 %dec.1, 0
  br i1 %tobool.1, label %do.end.unr-lcssa, label %do.body

do.end.unr-lcssa:                                 ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.end.unr-lcssa, %entry.split
  %11 = bitcast [17 x i32]* %c to i64*
  %12 = load i64* %11, align 16
  %13 = trunc i64 %12 to i32
  %cmp = icmp eq i32 %13, %n
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.end
  store %struct.huft* null, %struct.huft** %t, align 8, !tbaa !7
  store i32 0, i32* %m, align 4, !tbaa !1
  br label %cleanup

if.end:                                           ; preds = %do.end
  %14 = lshr i64 %12, 32
  %15 = trunc i64 %14 to i32
  %16 = load i32* %m, align 4, !tbaa !1
  br label %for.body

for.cond:                                         ; preds = %for.body
  %cmp2 = icmp ult i32 %inc8, 17
  br i1 %cmp2, label %for.cond.for.body_crit_edge, label %for.end

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  %idxprom3.phi.trans.insert = zext i32 %inc8 to i64
  %arrayidx4.phi.trans.insert = getelementptr inbounds [17 x i32]* %c, i64 0, i64 %idxprom3.phi.trans.insert
  %.pre = load i32* %arrayidx4.phi.trans.insert, align 4, !tbaa !1
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %if.end
  %17 = phi i32 [ %15, %if.end ], [ %.pre, %for.cond.for.body_crit_edge ]
  %j.0441 = phi i32 [ 1, %if.end ], [ %inc8, %for.cond.for.body_crit_edge ]
  %tobool5 = icmp eq i32 %17, 0
  %inc8 = add i32 %j.0441, 1
  br i1 %tobool5, label %for.cond, label %for.end

for.end:                                          ; preds = %for.body, %for.cond
  %j.0.lcssa = phi i32 [ %j.0441, %for.body ], [ %inc8, %for.cond ]
  %cmp9 = icmp ult i32 %16, %j.0.lcssa
  %j.0. = select i1 %cmp9, i32 %j.0.lcssa, i32 %16
  br label %for.body14

for.cond12:                                       ; preds = %for.body14
  %tobool13 = icmp eq i32 %dec21, 0
  br i1 %tobool13, label %for.end22, label %for.body14

for.body14:                                       ; preds = %for.cond12, %for.end
  %i.1440 = phi i32 [ 16, %for.end ], [ %dec21, %for.cond12 ]
  %idxprom15 = zext i32 %i.1440 to i64
  %arrayidx16 = getelementptr inbounds [17 x i32]* %c, i64 0, i64 %idxprom15
  %18 = load i32* %arrayidx16, align 4, !tbaa !1
  %tobool17 = icmp eq i32 %18, 0
  %dec21 = add i32 %i.1440, -1
  br i1 %tobool17, label %for.cond12, label %for.end22

for.end22:                                        ; preds = %for.body14, %for.cond12
  %i.1.lcssa = phi i32 [ %i.1440, %for.body14 ], [ 0, %for.cond12 ]
  %cmp23 = icmp ugt i32 %j.0., %i.1.lcssa
  %i.1.j.0. = select i1 %cmp23, i32 %i.1.lcssa, i32 %j.0.
  store i32 %i.1.j.0., i32* %m, align 4, !tbaa !1
  %shl = shl i32 1, %j.0.lcssa
  %cmp27436 = icmp ult i32 %j.0.lcssa, %i.1.lcssa
  br i1 %cmp27436, label %for.body28.preheader, label %for.end37

for.body28.preheader:                             ; preds = %for.end22
  br label %for.body28

for.body28:                                       ; preds = %for.inc34, %for.body28.preheader
  %y.0438 = phi i32 [ %shl36, %for.inc34 ], [ %shl, %for.body28.preheader ]
  %j.1437 = phi i32 [ %inc35, %for.inc34 ], [ %j.0.lcssa, %for.body28.preheader ]
  %idxprom29 = zext i32 %j.1437 to i64
  %arrayidx30 = getelementptr inbounds [17 x i32]* %c, i64 0, i64 %idxprom29
  %19 = load i32* %arrayidx30, align 4, !tbaa !1
  %sub = sub i32 %y.0438, %19
  %cmp31 = icmp slt i32 %sub, 0
  br i1 %cmp31, label %cleanup.loopexit484, label %for.inc34

for.inc34:                                        ; preds = %for.body28
  %inc35 = add i32 %j.1437, 1
  %shl36 = shl i32 %sub, 1
  %cmp27 = icmp ult i32 %inc35, %i.1.lcssa
  br i1 %cmp27, label %for.body28, label %for.end37.loopexit

for.end37.loopexit:                               ; preds = %for.inc34
  %shl36.lcssa = phi i32 [ %shl36, %for.inc34 ]
  br label %for.end37

for.end37:                                        ; preds = %for.end37.loopexit, %for.end22
  %y.0.lcssa = phi i32 [ %shl, %for.end22 ], [ %shl36.lcssa, %for.end37.loopexit ]
  %idxprom38 = zext i32 %i.1.lcssa to i64
  %arrayidx39 = getelementptr inbounds [17 x i32]* %c, i64 0, i64 %idxprom38
  %20 = load i32* %arrayidx39, align 4, !tbaa !1
  %sub40 = sub i32 %y.0.lcssa, %20
  %cmp41 = icmp slt i32 %sub40, 0
  br i1 %cmp41, label %cleanup, label %if.end43

if.end43:                                         ; preds = %for.end37
  store i32 %y.0.lcssa, i32* %arrayidx39, align 4, !tbaa !1
  %arrayidx46 = getelementptr inbounds [17 x i32]* %x, i64 0, i64 1
  store i32 0, i32* %arrayidx46, align 4, !tbaa !1
  %dec50430 = add i32 %i.1.lcssa, -1
  %tobool51431 = icmp eq i32 %dec50430, 0
  br i1 %tobool51431, label %do.body55.preheader, label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %if.end43
  %add.ptr49 = getelementptr inbounds [17 x i32]* %x, i64 0, i64 2
  %add.ptr = getelementptr inbounds [17 x i32]* %c, i64 0, i64 1
  %21 = add i32 %i.1.lcssa, -1
  %xtraiter = and i32 %21, 3
  %lcmp.mod = icmp ne i32 %xtraiter, 0
  %lcmp.overflow = icmp eq i32 %21, 0
  %lcmp.or = or i1 %lcmp.overflow, %lcmp.mod
  br i1 %lcmp.or, label %unr.cmp520, label %while.body.lr.ph.split

unr.cmp520:                                       ; preds = %while.body.lr.ph
  %un.tmp521 = icmp eq i32 %xtraiter, 1
  br i1 %un.tmp521, label %while.body.unr510, label %unr.cmp

unr.cmp:                                          ; preds = %unr.cmp520
  %un.tmp = icmp eq i32 %xtraiter, 2
  br i1 %un.tmp, label %while.body.unr504, label %while.body.unr

while.body.unr:                                   ; preds = %unr.cmp
  %incdec.ptr52.unr = getelementptr inbounds i32* %add.ptr, i64 1
  %22 = load i32* %add.ptr, align 4, !tbaa !1
  %add53.unr = add i32 %22, 0
  %incdec.ptr54.unr = getelementptr inbounds i32* %add.ptr49, i64 1
  store i32 %add53.unr, i32* %add.ptr49, align 4, !tbaa !1
  %dec50.unr = add i32 %dec50430, -1
  %tobool51.unr = icmp eq i32 %dec50.unr, 0
  br label %while.body.unr504

while.body.unr504:                                ; preds = %while.body.unr, %unr.cmp
  %dec50435.unr = phi i32 [ %dec50430, %unr.cmp ], [ %dec50.unr, %while.body.unr ]
  %xp.0434.unr = phi i32* [ %add.ptr49, %unr.cmp ], [ %incdec.ptr54.unr, %while.body.unr ]
  %p.1433.unr = phi i32* [ %add.ptr, %unr.cmp ], [ %incdec.ptr52.unr, %while.body.unr ]
  %j.2432.unr = phi i32 [ 0, %unr.cmp ], [ %add53.unr, %while.body.unr ]
  %incdec.ptr52.unr505 = getelementptr inbounds i32* %p.1433.unr, i64 1
  %23 = load i32* %p.1433.unr, align 4, !tbaa !1
  %add53.unr506 = add i32 %23, %j.2432.unr
  %incdec.ptr54.unr507 = getelementptr inbounds i32* %xp.0434.unr, i64 1
  store i32 %add53.unr506, i32* %xp.0434.unr, align 4, !tbaa !1
  %dec50.unr508 = add i32 %dec50435.unr, -1
  %tobool51.unr509 = icmp eq i32 %dec50.unr508, 0
  br label %while.body.unr510

while.body.unr510:                                ; preds = %while.body.unr504, %unr.cmp520
  %dec50435.unr511 = phi i32 [ %dec50430, %unr.cmp520 ], [ %dec50.unr508, %while.body.unr504 ]
  %xp.0434.unr512 = phi i32* [ %add.ptr49, %unr.cmp520 ], [ %incdec.ptr54.unr507, %while.body.unr504 ]
  %p.1433.unr513 = phi i32* [ %add.ptr, %unr.cmp520 ], [ %incdec.ptr52.unr505, %while.body.unr504 ]
  %j.2432.unr514 = phi i32 [ 0, %unr.cmp520 ], [ %add53.unr506, %while.body.unr504 ]
  %incdec.ptr52.unr515 = getelementptr inbounds i32* %p.1433.unr513, i64 1
  %24 = load i32* %p.1433.unr513, align 4, !tbaa !1
  %add53.unr516 = add i32 %24, %j.2432.unr514
  %incdec.ptr54.unr517 = getelementptr inbounds i32* %xp.0434.unr512, i64 1
  store i32 %add53.unr516, i32* %xp.0434.unr512, align 4, !tbaa !1
  %dec50.unr518 = add i32 %dec50435.unr511, -1
  %tobool51.unr519 = icmp eq i32 %dec50.unr518, 0
  br label %while.body.lr.ph.split

while.body.lr.ph.split:                           ; preds = %while.body.unr510, %while.body.lr.ph
  %dec50435.unr522 = phi i32 [ %dec50430, %while.body.lr.ph ], [ %dec50.unr518, %while.body.unr510 ]
  %xp.0434.unr523 = phi i32* [ %add.ptr49, %while.body.lr.ph ], [ %incdec.ptr54.unr517, %while.body.unr510 ]
  %p.1433.unr524 = phi i32* [ %add.ptr, %while.body.lr.ph ], [ %incdec.ptr52.unr515, %while.body.unr510 ]
  %j.2432.unr525 = phi i32 [ 0, %while.body.lr.ph ], [ %add53.unr516, %while.body.unr510 ]
  %25 = icmp ult i32 %21, 4
  br i1 %25, label %do.body55.preheader.loopexit, label %while.body.lr.ph.split.split

while.body.lr.ph.split.split:                     ; preds = %while.body.lr.ph.split
  br label %while.body

while.body:                                       ; preds = %while.body, %while.body.lr.ph.split.split
  %dec50435 = phi i32 [ %dec50435.unr522, %while.body.lr.ph.split.split ], [ %dec50.3, %while.body ]
  %xp.0434 = phi i32* [ %xp.0434.unr523, %while.body.lr.ph.split.split ], [ %incdec.ptr54.3, %while.body ]
  %p.1433 = phi i32* [ %p.1433.unr524, %while.body.lr.ph.split.split ], [ %incdec.ptr52.3, %while.body ]
  %j.2432 = phi i32 [ %j.2432.unr525, %while.body.lr.ph.split.split ], [ %add53.3, %while.body ]
  %incdec.ptr52 = getelementptr inbounds i32* %p.1433, i64 1
  %26 = load i32* %p.1433, align 4, !tbaa !1
  %add53 = add i32 %26, %j.2432
  %incdec.ptr54 = getelementptr inbounds i32* %xp.0434, i64 1
  store i32 %add53, i32* %xp.0434, align 4, !tbaa !1
  %dec50 = add i32 %dec50435, -1
  %incdec.ptr52.1 = getelementptr inbounds i32* %incdec.ptr52, i64 1
  %27 = load i32* %incdec.ptr52, align 4, !tbaa !1
  %add53.1 = add i32 %27, %add53
  %incdec.ptr54.1 = getelementptr inbounds i32* %incdec.ptr54, i64 1
  store i32 %add53.1, i32* %incdec.ptr54, align 4, !tbaa !1
  %dec50.1 = add i32 %dec50, -1
  %incdec.ptr52.2 = getelementptr inbounds i32* %incdec.ptr52.1, i64 1
  %28 = load i32* %incdec.ptr52.1, align 4, !tbaa !1
  %add53.2 = add i32 %28, %add53.1
  %incdec.ptr54.2 = getelementptr inbounds i32* %incdec.ptr54.1, i64 1
  store i32 %add53.2, i32* %incdec.ptr54.1, align 4, !tbaa !1
  %dec50.2 = add i32 %dec50.1, -1
  %incdec.ptr52.3 = getelementptr inbounds i32* %incdec.ptr52.2, i64 1
  %29 = load i32* %incdec.ptr52.2, align 4, !tbaa !1
  %add53.3 = add i32 %29, %add53.2
  %incdec.ptr54.3 = getelementptr inbounds i32* %incdec.ptr54.2, i64 1
  store i32 %add53.3, i32* %incdec.ptr54.2, align 4, !tbaa !1
  %dec50.3 = add i32 %dec50.2, -1
  %tobool51.3 = icmp eq i32 %dec50.3, 0
  br i1 %tobool51.3, label %do.body55.preheader.loopexit.unr-lcssa, label %while.body

do.body55.preheader.loopexit.unr-lcssa:           ; preds = %while.body
  br label %do.body55.preheader.loopexit

do.body55.preheader.loopexit:                     ; preds = %do.body55.preheader.loopexit.unr-lcssa, %while.body.lr.ph.split
  br label %do.body55.preheader

do.body55.preheader:                              ; preds = %do.body55.preheader.loopexit, %if.end43
  br label %do.body55

do.body55:                                        ; preds = %do.cond65, %do.body55.preheader
  %i.3 = phi i32 [ %inc66, %do.cond65 ], [ 0, %do.body55.preheader ]
  %p.2 = phi i32* [ %incdec.ptr56, %do.cond65 ], [ %b, %do.body55.preheader ]
  %incdec.ptr56 = getelementptr inbounds i32* %p.2, i64 1
  %30 = load i32* %p.2, align 4, !tbaa !1
  %cmp57 = icmp eq i32 %30, 0
  br i1 %cmp57, label %do.cond65, label %if.then58

if.then58:                                        ; preds = %do.body55
  %idxprom59 = zext i32 %30 to i64
  %arrayidx60 = getelementptr inbounds [17 x i32]* %x, i64 0, i64 %idxprom59
  %31 = load i32* %arrayidx60, align 4, !tbaa !1
  %inc61 = add i32 %31, 1
  store i32 %inc61, i32* %arrayidx60, align 4, !tbaa !1
  %idxprom62 = zext i32 %31 to i64
  %arrayidx63 = getelementptr inbounds [288 x i32]* %v, i64 0, i64 %idxprom62
  store i32 %i.3, i32* %arrayidx63, align 4, !tbaa !1
  br label %do.cond65

do.cond65:                                        ; preds = %if.then58, %do.body55
  %inc66 = add i32 %i.3, 1
  %cmp67 = icmp ult i32 %inc66, %n
  br i1 %cmp67, label %do.body55, label %do.end68

do.end68:                                         ; preds = %do.cond65
  %arrayidx69 = getelementptr inbounds [17 x i32]* %x, i64 0, i64 0
  store i32 0, i32* %arrayidx69, align 16, !tbaa !1
  %arrayidx72 = getelementptr inbounds [16 x %struct.huft*]* %u, i64 0, i64 0
  store %struct.huft* null, %struct.huft** %arrayidx72, align 16, !tbaa !7
  %cmp74420 = icmp sgt i32 %j.0.lcssa, %i.1.lcssa
  br i1 %cmp74420, label %for.end221, label %for.body75.lr.ph

for.body75.lr.ph:                                 ; preds = %do.end68
  %sub71 = sub nsw i32 0, %i.1.j.0.
  %arraydecay70 = getelementptr inbounds [288 x i32]* %v, i64 0, i64 0
  %conv134 = trunc i32 %i.1.j.0. to i8
  %r.sroa.8.0..sroa_idx = getelementptr inbounds [6 x i8]* %r.sroa.8, i64 0, i64 0
  %idx.ext153 = zext i32 %n to i64
  %add.ptr154 = getelementptr inbounds [288 x i32]* %v, i64 0, i64 %idx.ext153
  %32 = sext i32 %j.0.lcssa to i64
  br label %for.body75

for.body75:                                       ; preds = %for.inc219, %for.body75.lr.ph
  %indvars.iv460 = phi i64 [ %indvars.iv.next461, %for.inc219 ], [ %32, %for.body75.lr.ph ]
  %z.0429 = phi i32 [ %z.1.lcssa, %for.inc219 ], [ 0, %for.body75.lr.ph ]
  %w.0428 = phi i32 [ %w.1.lcssa, %for.inc219 ], [ %sub71, %for.body75.lr.ph ]
  %r.sroa.8255.0427 = phi %struct.huft* [ %r.sroa.8255.1.lcssa, %for.inc219 ], [ undef, %for.body75.lr.ph ]
  %q.0426 = phi %struct.huft* [ %q.1.lcssa, %for.inc219 ], [ null, %for.body75.lr.ph ]
  %p.3425 = phi i32* [ %p.4.lcssa, %for.inc219 ], [ %arraydecay70, %for.body75.lr.ph ]
  %i.4423 = phi i32 [ %i.5.lcssa, %for.inc219 ], [ 0, %for.body75.lr.ph ]
  %h.0422 = phi i32 [ %h.1.lcssa, %for.inc219 ], [ -1, %for.body75.lr.ph ]
  %t.addr.0421 = phi %struct.huft** [ %t.addr.1.lcssa, %for.inc219 ], [ %t, %for.body75.lr.ph ]
  %arrayidx77 = getelementptr inbounds [17 x i32]* %c, i64 0, i64 %indvars.iv460
  %33 = load i32* %arrayidx77, align 4, !tbaa !1
  %tobool80401 = icmp eq i32 %33, 0
  br i1 %tobool80401, label %for.body75.for.inc219_crit_edge, label %while.cond82.preheader.lr.ph

for.body75.for.inc219_crit_edge:                  ; preds = %for.body75
  %.pre463 = trunc i64 %indvars.iv460 to i32
  br label %for.inc219

while.cond82.preheader.lr.ph:                     ; preds = %for.body75
  %34 = add nsw i64 %indvars.iv460, 4294967295
  %35 = trunc i64 %34 to i32
  %shl198 = shl i32 1, %35
  br label %while.cond82.preheader

while.cond206.while.cond78.loopexit_crit_edge:    ; preds = %while.body214
  %sub216.lcssa = phi i32 [ %sub216, %while.body214 ]
  %indvars.iv.next.lcssa = phi i64 [ %indvars.iv.next, %while.body214 ]
  %36 = trunc i64 %indvars.iv.next.lcssa to i32
  br label %while.cond78.loopexit

while.cond78.loopexit:                            ; preds = %while.cond206.preheader, %while.cond206.while.cond78.loopexit_crit_edge
  %w.3.lcssa = phi i32 [ %sub216.lcssa, %while.cond206.while.cond78.loopexit_crit_edge ], [ %w.2.lcssa, %while.cond206.preheader ]
  %h.3.lcssa = phi i32 [ %36, %while.cond206.while.cond78.loopexit_crit_edge ], [ %h.2.lcssa, %while.cond206.preheader ]
  %tobool80 = icmp eq i32 %dec79411, 0
  br i1 %tobool80, label %for.inc219.loopexit, label %while.cond82.preheader

while.cond82.preheader:                           ; preds = %while.cond78.loopexit, %while.cond82.preheader.lr.ph
  %dec79411.in = phi i32 [ %33, %while.cond82.preheader.lr.ph ], [ %dec79411, %while.cond78.loopexit ]
  %z.1410 = phi i32 [ %z.0429, %while.cond82.preheader.lr.ph ], [ %z.2.lcssa, %while.cond78.loopexit ]
  %w.1409 = phi i32 [ %w.0428, %while.cond82.preheader.lr.ph ], [ %w.3.lcssa, %while.cond78.loopexit ]
  %r.sroa.8255.1408 = phi %struct.huft* [ %r.sroa.8255.0427, %while.cond82.preheader.lr.ph ], [ %r.sroa.8255.3, %while.cond78.loopexit ]
  %q.1407 = phi %struct.huft* [ %q.0426, %while.cond82.preheader.lr.ph ], [ %q.2.lcssa, %while.cond78.loopexit ]
  %p.4406 = phi i32* [ %p.3425, %while.cond82.preheader.lr.ph ], [ %p.5, %while.cond78.loopexit ]
  %i.5405 = phi i32 [ %i.4423, %while.cond82.preheader.lr.ph ], [ %xor.lcssa, %while.cond78.loopexit ]
  %h.1404 = phi i32 [ %h.0422, %while.cond82.preheader.lr.ph ], [ %h.3.lcssa, %while.cond78.loopexit ]
  %t.addr.1402 = phi %struct.huft** [ %t.addr.0421, %while.cond82.preheader.lr.ph ], [ %t.addr.2.lcssa, %while.cond78.loopexit ]
  %dec79411 = add i32 %dec79411.in, -1
  br label %while.cond82.outer

while.cond82.outer:                               ; preds = %if.then131, %while.cond82.preheader
  %t.addr.2.ph = phi %struct.huft** [ %t.addr.1402, %while.cond82.preheader ], [ %t126.lcssa, %if.then131 ]
  %h.2.ph = phi i32 [ %h.1404, %while.cond82.preheader ], [ %inc86.lcssa499, %if.then131 ]
  %q.2.ph = phi %struct.huft* [ %q.1407, %while.cond82.preheader ], [ %.lcssa502, %if.then131 ]
  %r.sroa.8255.2.ph = phi %struct.huft* [ %r.sroa.8255.1408, %while.cond82.preheader ], [ %.lcssa502, %if.then131 ]
  %w.2.ph = phi i32 [ %w.1409, %while.cond82.preheader ], [ %add83.lcssa496, %if.then131 ]
  %z.2.ph = phi i32 [ %z.1410, %while.cond82.preheader ], [ %shl111.lcssa501, %if.then131 ]
  br label %while.cond82

while.cond82:                                     ; preds = %if.end121, %while.cond82.outer
  %t.addr.2 = phi %struct.huft** [ %t126, %if.end121 ], [ %t.addr.2.ph, %while.cond82.outer ]
  %h.2 = phi i32 [ 0, %if.end121 ], [ %h.2.ph, %while.cond82.outer ]
  %q.2 = phi %struct.huft* [ %43, %if.end121 ], [ %q.2.ph, %while.cond82.outer ]
  %w.2 = phi i32 [ %add83, %if.end121 ], [ %w.2.ph, %while.cond82.outer ]
  %z.2 = phi i32 [ %shl111, %if.end121 ], [ %z.2.ph, %while.cond82.outer ]
  %add83 = add nsw i32 %w.2, %i.1.j.0.
  %37 = trunc i64 %indvars.iv460 to i32
  %cmp84 = icmp sgt i32 %37, %add83
  br i1 %cmp84, label %while.body85, label %while.end148

while.body85:                                     ; preds = %while.cond82
  %inc86 = add nsw i32 %h.2, 1
  %sub88 = sub nsw i32 %i.1.lcssa, %add83
  %cmp89 = icmp ugt i32 %sub88, %i.1.j.0.
  %cond = select i1 %cmp89, i32 %i.1.j.0., i32 %sub88
  %sub90 = sub nsw i32 %37, %add83
  %shl91 = shl i32 1, %sub90
  %cmp93 = icmp ugt i32 %shl91, %dec79411.in
  br i1 %cmp93, label %if.then94, label %if.end110

if.then94:                                        ; preds = %while.body85
  %inc100382 = add i32 %sub90, 1
  %cmp101383 = icmp ult i32 %inc100382, %cond
  br i1 %cmp101383, label %while.body102.lr.ph, label %if.end110

while.body102.lr.ph:                              ; preds = %if.then94
  %sub96 = sub i32 %shl91, %dec79411.in
  br label %while.body102

while.cond99:                                     ; preds = %while.body102
  %sub108 = sub i32 %shl103, %38
  %inc100 = add i32 %inc100386, 1
  %cmp101 = icmp ult i32 %inc100, %cond
  br i1 %cmp101, label %while.body102, label %if.end110.loopexit

while.body102:                                    ; preds = %while.cond99, %while.body102.lr.ph
  %inc100386 = phi i32 [ %inc100382, %while.body102.lr.ph ], [ %inc100, %while.cond99 ]
  %xp.1385 = phi i32* [ %arrayidx77, %while.body102.lr.ph ], [ %incdec.ptr104, %while.cond99 ]
  %f.0384 = phi i32 [ %sub96, %while.body102.lr.ph ], [ %sub108, %while.cond99 ]
  %shl103 = shl i32 %f.0384, 1
  %incdec.ptr104 = getelementptr inbounds i32* %xp.1385, i64 1
  %38 = load i32* %incdec.ptr104, align 4, !tbaa !1
  %cmp105 = icmp ugt i32 %shl103, %38
  br i1 %cmp105, label %while.cond99, label %if.end110.loopexit

if.end110.loopexit:                               ; preds = %while.body102, %while.cond99
  %j.4.ph = phi i32 [ %inc100, %while.cond99 ], [ %inc100386, %while.body102 ]
  br label %if.end110

if.end110:                                        ; preds = %if.end110.loopexit, %if.then94, %while.body85
  %j.4 = phi i32 [ %sub90, %while.body85 ], [ %inc100382, %if.then94 ], [ %j.4.ph, %if.end110.loopexit ]
  %shl111 = shl i32 1, %j.4
  %add112 = add i32 %shl111, 1
  %conv = zext i32 %add112 to i64
  %mul = shl nuw nsw i64 %conv, 4
  %call = call noalias i8* @malloc(i64 %mul) #2
  %cmp113 = icmp eq i8* %call, null
  br i1 %cmp113, label %if.then115, label %if.end121

if.then115:                                       ; preds = %if.end110
  %inc86.lcssa = phi i32 [ %inc86, %if.end110 ]
  %tobool116 = icmp eq i32 %inc86.lcssa, 0
  br i1 %tobool116, label %cleanup, label %if.then117

if.then117:                                       ; preds = %if.then115
  %39 = load %struct.huft** %arrayidx72, align 16, !tbaa !7
  %cmp4.i = icmp eq %struct.huft* %39, null
  br i1 %cmp4.i, label %cleanup, label %while.body.i.preheader

while.body.i.preheader:                           ; preds = %if.then117
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i, %while.body.i.preheader
  %p.05.i = phi %struct.huft* [ %40, %while.body.i ], [ %39, %while.body.i.preheader ]
  %t1.i = getelementptr inbounds %struct.huft* %p.05.i, i64 -1, i32 2, i32 0
  %40 = load %struct.huft** %t1.i, align 8, !tbaa !7
  %41 = getelementptr inbounds %struct.huft* %p.05.i, i64 -1, i32 0
  call void @free(i8* %41) #2
  %cmp.i = icmp eq %struct.huft* %40, null
  br i1 %cmp.i, label %cleanup.loopexit, label %while.body.i

if.end121:                                        ; preds = %if.end110
  %42 = load i32* @hufts, align 4, !tbaa !1
  %add123 = add i32 %42, %add112
  store i32 %add123, i32* @hufts, align 4, !tbaa !1
  %add.ptr124 = getelementptr inbounds i8* %call, i64 16
  %43 = bitcast i8* %add.ptr124 to %struct.huft*
  store %struct.huft* %43, %struct.huft** %t.addr.2, align 8, !tbaa !7
  %v125 = getelementptr inbounds i8* %call, i64 8
  %t126 = bitcast i8* %v125 to %struct.huft**
  store %struct.huft* null, %struct.huft** %t126, align 8, !tbaa !7
  %idxprom128 = sext i32 %inc86 to i64
  %arrayidx129 = getelementptr inbounds [16 x %struct.huft*]* %u, i64 0, i64 %idxprom128
  store %struct.huft* %43, %struct.huft** %arrayidx129, align 8, !tbaa !7
  %tobool130 = icmp eq i32 %inc86, 0
  br i1 %tobool130, label %while.cond82, label %if.then131

if.then131:                                       ; preds = %if.end121
  %idxprom128.lcssa = phi i64 [ %idxprom128, %if.end121 ]
  %t126.lcssa = phi %struct.huft** [ %t126, %if.end121 ]
  %.lcssa502 = phi %struct.huft* [ %43, %if.end121 ]
  %shl111.lcssa501 = phi i32 [ %shl111, %if.end121 ]
  %j.4.lcssa500 = phi i32 [ %j.4, %if.end121 ]
  %inc86.lcssa499 = phi i32 [ %inc86, %if.end121 ]
  %add83.lcssa496 = phi i32 [ %add83, %if.end121 ]
  %w.2.lcssa492 = phi i32 [ %w.2, %if.end121 ]
  %h.2.lcssa488 = phi i32 [ %h.2, %if.end121 ]
  %arrayidx133 = getelementptr inbounds [17 x i32]* %x, i64 0, i64 %idxprom128.lcssa
  store i32 %i.5405, i32* %arrayidx133, align 4, !tbaa !1
  %add136 = add i32 %j.4.lcssa500, 16
  %conv137 = trunc i32 %add136 to i8
  %shr = lshr i32 %i.5405, %w.2.lcssa492
  %idxprom142 = zext i32 %shr to i64
  %idxprom144 = sext i32 %h.2.lcssa488 to i64
  %arrayidx145 = getelementptr inbounds [16 x %struct.huft*]* %u, i64 0, i64 %idxprom144
  %44 = load %struct.huft** %arrayidx145, align 8, !tbaa !7
  %r.sroa.0.0..sroa_idx = getelementptr inbounds %struct.huft* %44, i64 %idxprom142, i32 0
  store i8 %conv137, i8* %r.sroa.0.0..sroa_idx, align 8
  %r.sroa.6.0..sroa_idx = getelementptr inbounds %struct.huft* %44, i64 %idxprom142, i32 1
  store i8 %conv134, i8* %r.sroa.6.0..sroa_idx, align 1
  %r.sroa.8.0..sroa_raw_idx = getelementptr inbounds i8* %r.sroa.0.0..sroa_idx, i64 2
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %r.sroa.8.0..sroa_raw_idx, i8* %r.sroa.8.0..sroa_idx, i64 6, i32 2, i1 false)
  %r.sroa.8255.0..sroa_idx256 = getelementptr inbounds %struct.huft* %44, i64 %idxprom142, i32 2, i32 0
  store %struct.huft* %.lcssa502, %struct.huft** %r.sroa.8255.0..sroa_idx256, align 8
  br label %while.cond82.outer

while.end148:                                     ; preds = %while.cond82
  %r.sroa.8255.2.ph.lcssa = phi %struct.huft* [ %r.sroa.8255.2.ph, %while.cond82 ]
  %.lcssa = phi i32 [ %37, %while.cond82 ]
  %z.2.lcssa = phi i32 [ %z.2, %while.cond82 ]
  %w.2.lcssa = phi i32 [ %w.2, %while.cond82 ]
  %q.2.lcssa = phi %struct.huft* [ %q.2, %while.cond82 ]
  %h.2.lcssa = phi i32 [ %h.2, %while.cond82 ]
  %t.addr.2.lcssa = phi %struct.huft** [ %t.addr.2, %while.cond82 ]
  %sub149 = sub nsw i32 %.lcssa, %w.2.lcssa
  %conv150 = trunc i32 %sub149 to i8
  %cmp155 = icmp ult i32* %p.4406, %add.ptr154
  br i1 %cmp155, label %if.else, label %if.end184

if.else:                                          ; preds = %while.end148
  %45 = load i32* %p.4406, align 4, !tbaa !1
  %cmp159 = icmp ult i32 %45, %s
  br i1 %cmp159, label %if.then161, label %if.else171

if.then161:                                       ; preds = %if.else
  %cmp162 = icmp ult i32 %45, 256
  %conv165 = select i1 %cmp162, i8 16, i8 15
  %conv167 = zext i32 %45 to i64
  %46 = ptrtoint %struct.huft* %r.sroa.8255.2.ph.lcssa to i64
  %r.sroa.8255.8.insert.ext = and i64 %conv167, 65535
  %r.sroa.8255.8.insert.mask = and i64 %46, -65536
  %r.sroa.8255.8.insert.insert = or i64 %r.sroa.8255.8.insert.ext, %r.sroa.8255.8.insert.mask
  %47 = inttoptr i64 %r.sroa.8255.8.insert.insert to %struct.huft*
  %incdec.ptr170 = getelementptr inbounds i32* %p.4406, i64 1
  br label %if.end184

if.else171:                                       ; preds = %if.else
  %sub172 = sub i32 %45, %s
  %idxprom173 = zext i32 %sub172 to i64
  %arrayidx174 = getelementptr inbounds i16* %e, i64 %idxprom173
  %48 = load i16* %arrayidx174, align 2, !tbaa !5
  %conv175 = trunc i16 %48 to i8
  %incdec.ptr177 = getelementptr inbounds i32* %p.4406, i64 1
  %arrayidx180 = getelementptr inbounds i16* %d, i64 %idxprom173
  %49 = load i16* %arrayidx180, align 2, !tbaa !5
  %50 = ptrtoint %struct.huft* %r.sroa.8255.2.ph.lcssa to i64
  %r.sroa.8255.8.insert.ext260 = zext i16 %49 to i64
  %r.sroa.8255.8.insert.mask261 = and i64 %50, -65536
  %r.sroa.8255.8.insert.insert262 = or i64 %r.sroa.8255.8.insert.ext260, %r.sroa.8255.8.insert.mask261
  %51 = inttoptr i64 %r.sroa.8255.8.insert.insert262 to %struct.huft*
  br label %if.end184

if.end184:                                        ; preds = %if.else171, %if.then161, %while.end148
  %p.5 = phi i32* [ %incdec.ptr170, %if.then161 ], [ %incdec.ptr177, %if.else171 ], [ %p.4406, %while.end148 ]
  %r.sroa.8255.3 = phi %struct.huft* [ %47, %if.then161 ], [ %51, %if.else171 ], [ %r.sroa.8255.2.ph.lcssa, %while.end148 ]
  %r.sroa.0.0 = phi i8 [ %conv165, %if.then161 ], [ %conv175, %if.else171 ], [ 99, %while.end148 ]
  %shl186 = shl i32 1, %sub149
  %shr187 = lshr i32 %i.5405, %w.2.lcssa
  %cmp189388 = icmp ult i32 %shr187, %z.2.lcssa
  br i1 %cmp189388, label %for.body191.preheader, label %for.cond199.preheader

for.body191.preheader:                            ; preds = %if.end184
  br label %for.body191

for.body191:                                      ; preds = %for.body191, %for.body191.preheader
  %j.5389 = phi i32 [ %add195, %for.body191 ], [ %shr187, %for.body191.preheader ]
  %idxprom192 = zext i32 %j.5389 to i64
  %r.sroa.0.0..sroa_idx248 = getelementptr inbounds %struct.huft* %q.2.lcssa, i64 %idxprom192, i32 0
  store i8 %r.sroa.0.0, i8* %r.sroa.0.0..sroa_idx248, align 8
  %r.sroa.6.0..sroa_idx250 = getelementptr inbounds %struct.huft* %q.2.lcssa, i64 %idxprom192, i32 1
  store i8 %conv150, i8* %r.sroa.6.0..sroa_idx250, align 1
  %r.sroa.8.0..sroa_raw_idx253 = getelementptr inbounds i8* %r.sroa.0.0..sroa_idx248, i64 2
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %r.sroa.8.0..sroa_raw_idx253, i8* %r.sroa.8.0..sroa_idx, i64 6, i32 2, i1 false)
  %r.sroa.8255.0..sroa_idx257 = getelementptr inbounds %struct.huft* %q.2.lcssa, i64 %idxprom192, i32 2, i32 0
  store %struct.huft* %r.sroa.8255.3, %struct.huft** %r.sroa.8255.0..sroa_idx257, align 8
  %add195 = add i32 %j.5389, %shl186
  %cmp189 = icmp ult i32 %add195, %z.2.lcssa
  br i1 %cmp189, label %for.body191, label %for.cond199.preheader.loopexit

for.cond199.preheader.loopexit:                   ; preds = %for.body191
  br label %for.cond199.preheader

for.cond199.preheader:                            ; preds = %for.cond199.preheader.loopexit, %if.end184
  br label %for.cond199

for.cond199:                                      ; preds = %for.cond199, %for.cond199.preheader
  %i.6 = phi i32 [ %xor, %for.cond199 ], [ %i.5405, %for.cond199.preheader ]
  %j.6 = phi i32 [ %shr203, %for.cond199 ], [ %shl198, %for.cond199.preheader ]
  %and = and i32 %j.6, %i.6
  %tobool200 = icmp eq i32 %and, 0
  %xor = xor i32 %j.6, %i.6
  %shr203 = lshr i32 %j.6, 1
  br i1 %tobool200, label %while.cond206.preheader, label %for.cond199

while.cond206.preheader:                          ; preds = %for.cond199
  %xor.lcssa = phi i32 [ %xor, %for.cond199 ]
  %shl207390 = shl i32 1, %w.2.lcssa
  %sub208391 = add nsw i32 %shl207390, -1
  %and209392 = and i32 %sub208391, %xor.lcssa
  %idxprom210393 = sext i32 %h.2.lcssa to i64
  %arrayidx211394 = getelementptr inbounds [17 x i32]* %x, i64 0, i64 %idxprom210393
  %52 = load i32* %arrayidx211394, align 4, !tbaa !1
  %cmp212395 = icmp eq i32 %and209392, %52
  br i1 %cmp212395, label %while.cond78.loopexit, label %while.body214.preheader

while.body214.preheader:                          ; preds = %while.cond206.preheader
  br label %while.body214

while.body214:                                    ; preds = %while.body214, %while.body214.preheader
  %indvars.iv = phi i64 [ %indvars.iv.next, %while.body214 ], [ %idxprom210393, %while.body214.preheader ]
  %w.3397 = phi i32 [ %sub216, %while.body214 ], [ %w.2.lcssa, %while.body214.preheader ]
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %sub216 = sub nsw i32 %w.3397, %i.1.j.0.
  %shl207 = shl i32 1, %sub216
  %sub208 = add nsw i32 %shl207, -1
  %and209 = and i32 %sub208, %xor.lcssa
  %arrayidx211 = getelementptr inbounds [17 x i32]* %x, i64 0, i64 %indvars.iv.next
  %53 = load i32* %arrayidx211, align 4, !tbaa !1
  %cmp212 = icmp eq i32 %and209, %53
  br i1 %cmp212, label %while.cond206.while.cond78.loopexit_crit_edge, label %while.body214

for.inc219.loopexit:                              ; preds = %while.cond78.loopexit
  %h.3.lcssa.lcssa = phi i32 [ %h.3.lcssa, %while.cond78.loopexit ]
  %w.3.lcssa.lcssa = phi i32 [ %w.3.lcssa, %while.cond78.loopexit ]
  %xor.lcssa.lcssa = phi i32 [ %xor.lcssa, %while.cond78.loopexit ]
  %r.sroa.8255.3.lcssa = phi %struct.huft* [ %r.sroa.8255.3, %while.cond78.loopexit ]
  %p.5.lcssa = phi i32* [ %p.5, %while.cond78.loopexit ]
  %t.addr.2.lcssa.lcssa = phi %struct.huft** [ %t.addr.2.lcssa, %while.cond78.loopexit ]
  %q.2.lcssa.lcssa = phi %struct.huft* [ %q.2.lcssa, %while.cond78.loopexit ]
  %z.2.lcssa.lcssa = phi i32 [ %z.2.lcssa, %while.cond78.loopexit ]
  %.lcssa.lcssa = phi i32 [ %.lcssa, %while.cond78.loopexit ]
  br label %for.inc219

for.inc219:                                       ; preds = %for.inc219.loopexit, %for.body75.for.inc219_crit_edge
  %.pre-phi = phi i32 [ %.pre463, %for.body75.for.inc219_crit_edge ], [ %.lcssa.lcssa, %for.inc219.loopexit ]
  %z.1.lcssa = phi i32 [ %z.0429, %for.body75.for.inc219_crit_edge ], [ %z.2.lcssa.lcssa, %for.inc219.loopexit ]
  %w.1.lcssa = phi i32 [ %w.0428, %for.body75.for.inc219_crit_edge ], [ %w.3.lcssa.lcssa, %for.inc219.loopexit ]
  %r.sroa.8255.1.lcssa = phi %struct.huft* [ %r.sroa.8255.0427, %for.body75.for.inc219_crit_edge ], [ %r.sroa.8255.3.lcssa, %for.inc219.loopexit ]
  %q.1.lcssa = phi %struct.huft* [ %q.0426, %for.body75.for.inc219_crit_edge ], [ %q.2.lcssa.lcssa, %for.inc219.loopexit ]
  %p.4.lcssa = phi i32* [ %p.3425, %for.body75.for.inc219_crit_edge ], [ %p.5.lcssa, %for.inc219.loopexit ]
  %i.5.lcssa = phi i32 [ %i.4423, %for.body75.for.inc219_crit_edge ], [ %xor.lcssa.lcssa, %for.inc219.loopexit ]
  %h.1.lcssa = phi i32 [ %h.0422, %for.body75.for.inc219_crit_edge ], [ %h.3.lcssa.lcssa, %for.inc219.loopexit ]
  %t.addr.1.lcssa = phi %struct.huft** [ %t.addr.0421, %for.body75.for.inc219_crit_edge ], [ %t.addr.2.lcssa.lcssa, %for.inc219.loopexit ]
  %indvars.iv.next461 = add nsw i64 %indvars.iv460, 1
  %cmp74 = icmp slt i32 %.pre-phi, %i.1.lcssa
  br i1 %cmp74, label %for.body75, label %for.end221.loopexit

for.end221.loopexit:                              ; preds = %for.inc219
  br label %for.end221

for.end221:                                       ; preds = %for.end221.loopexit, %do.end68
  %cmp224 = icmp ne i32 %i.1.lcssa, 1
  %not.cmp222 = icmp ne i32 %y.0.lcssa, %20
  %.cmp224 = and i1 %cmp224, %not.cmp222
  %land.ext = zext i1 %.cmp224 to i32
  br label %cleanup

cleanup.loopexit:                                 ; preds = %while.body.i
  br label %cleanup

cleanup.loopexit484:                              ; preds = %for.body28
  br label %cleanup

cleanup:                                          ; preds = %cleanup.loopexit484, %cleanup.loopexit, %for.end221, %if.then117, %if.then115, %for.end37, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %land.ext, %for.end221 ], [ 2, %for.end37 ], [ 3, %if.then115 ], [ 3, %if.then117 ], [ 3, %cleanup.loopexit ], [ 2, %cleanup.loopexit484 ]
  call void @llvm.lifetime.end(i64 68, i8* %3) #2
  call void @llvm.lifetime.end(i64 1152, i8* %2) #2
  call void @llvm.lifetime.end(i64 128, i8* %1) #2
  call void @llvm.lifetime.end(i64 68, i8* %0) #2
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #5

; Function Attrs: nounwind uwtable
define i32 @huft_free(%struct.huft* %t) #0 {
entry:
  %cmp4 = icmp eq %struct.huft* %t, null
  br i1 %cmp4, label %while.end, label %while.body.preheader

while.body.preheader:                             ; preds = %entry
  br label %while.body

while.body:                                       ; preds = %while.body, %while.body.preheader
  %p.05 = phi %struct.huft* [ %0, %while.body ], [ %t, %while.body.preheader ]
  %t1 = getelementptr inbounds %struct.huft* %p.05, i64 -1, i32 2, i32 0
  %0 = load %struct.huft** %t1, align 8, !tbaa !7
  %1 = getelementptr inbounds %struct.huft* %p.05, i64 -1, i32 0
  tail call void @free(i8* %1) #2
  %cmp = icmp eq %struct.huft* %0, null
  br i1 %cmp, label %while.end.loopexit, label %while.body

while.end.loopexit:                               ; preds = %while.body
  br label %while.end

while.end:                                        ; preds = %while.end.loopexit, %entry
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @inflate_codes(%struct.huft* nocapture readonly %tl, %struct.huft* nocapture readonly %td, i32 %bl, i32 %bd) #0 {
entry:
  %0 = load i64* @bb, align 8, !tbaa !15
  %1 = load i32* @bk, align 4, !tbaa !1
  %2 = load i32* @outcnt, align 4, !tbaa !1
  %idxprom = sext i32 %bl to i64
  %arrayidx = getelementptr inbounds [17 x i16]* @mask_bits, i64 0, i64 %idxprom
  %3 = load i16* %arrayidx, align 2, !tbaa !5
  %conv = zext i16 %3 to i64
  %idxprom1 = sext i32 %bd to i64
  %arrayidx2 = getelementptr inbounds [17 x i16]* @mask_bits, i64 0, i64 %idxprom1
  %4 = load i16* %arrayidx2, align 2, !tbaa !5
  %conv3 = zext i16 %4 to i64
  br label %while.cond.outer

while.cond.loopexit:                              ; preds = %do.cond285
  %w.4.lcssa = phi i32 [ %w.4, %do.cond285 ]
  %sub242 = sub i32 %k.9.lcssa, %e.3
  br label %while.cond.outer.backedge

while.cond.outer:                                 ; preds = %while.cond.outer.backedge, %entry
  %w.0.ph = phi i32 [ %2, %entry ], [ %w.0.ph.be, %while.cond.outer.backedge ]
  %b.0.ph = phi i64 [ %0, %entry ], [ %b.0.ph.be, %while.cond.outer.backedge ]
  %k.0.ph = phi i32 [ %1, %entry ], [ %k.0.ph.be, %while.cond.outer.backedge ]
  %cmp393 = icmp ult i32 %k.0.ph, %bl
  br i1 %cmp393, label %while.body.preheader, label %while.end

while.body.preheader:                             ; preds = %while.cond.outer
  br label %while.body

while.body:                                       ; preds = %cond.end, %while.body.preheader
  %k.0395 = phi i32 [ %add, %cond.end ], [ %k.0.ph, %while.body.preheader ]
  %b.0394 = phi i64 [ %or, %cond.end ], [ %b.0.ph, %while.body.preheader ]
  %5 = load i32* @inptr, align 4, !tbaa !1
  %6 = load i32* @insize, align 4, !tbaa !1
  %cmp5 = icmp ult i32 %5, %6
  br i1 %cmp5, label %cond.true, label %cond.false

cond.true:                                        ; preds = %while.body
  %inc = add i32 %5, 1
  store i32 %inc, i32* @inptr, align 4, !tbaa !1
  %idxprom7 = zext i32 %5 to i64
  %arrayidx8 = getelementptr inbounds [0 x i8]* bitcast ([32832 x i8]* @inbuf to [0 x i8]*), i64 0, i64 %idxprom7
  %7 = load i8* %arrayidx8, align 1, !tbaa !9
  %conv9 = zext i8 %7 to i32
  br label %cond.end

cond.false:                                       ; preds = %while.body
  %call = tail call i32 @fill_inbuf(i32 0) #2
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv9, %cond.true ], [ %call, %cond.false ]
  %conv10 = zext i32 %cond to i64
  %conv11 = and i64 %conv10, 255
  %sh_prom = zext i32 %k.0395 to i64
  %shl = shl i64 %conv11, %sh_prom
  %or = or i64 %shl, %b.0394
  %add = add i32 %k.0395, 8
  %cmp = icmp ult i32 %add, %bl
  br i1 %cmp, label %while.body, label %while.end.loopexit

while.end.loopexit:                               ; preds = %cond.end
  %add.lcssa = phi i32 [ %add, %cond.end ]
  %or.lcssa = phi i64 [ %or, %cond.end ]
  br label %while.end

while.end:                                        ; preds = %while.end.loopexit, %while.cond.outer
  %k.0.lcssa = phi i32 [ %k.0.ph, %while.cond.outer ], [ %add.lcssa, %while.end.loopexit ]
  %b.0.lcssa = phi i64 [ %b.0.ph, %while.cond.outer ], [ %or.lcssa, %while.end.loopexit ]
  %and = and i64 %b.0.lcssa, %conv
  %add.ptr = getelementptr inbounds %struct.huft* %tl, i64 %and
  %e13 = getelementptr inbounds %struct.huft* %add.ptr, i64 0, i32 0
  %8 = load i8* %e13, align 1, !tbaa !36
  %conv14 = zext i8 %8 to i32
  %cmp15 = icmp ugt i8 %8, 16
  br i1 %cmp15, label %do.body.preheader, label %if.end60

do.body.preheader:                                ; preds = %while.end
  br label %do.body

do.body:                                          ; preds = %do.cond, %do.body.preheader
  %t.0 = phi %struct.huft* [ %add.ptr55, %do.cond ], [ %add.ptr, %do.body.preheader ]
  %e.0 = phi i32 [ %conv57, %do.cond ], [ %conv14, %do.body.preheader ]
  %b.1 = phi i64 [ %b.2.lcssa, %do.cond ], [ %b.0.lcssa, %do.body.preheader ]
  %k.1 = phi i32 [ %k.2.lcssa, %do.cond ], [ %k.0.lcssa, %do.body.preheader ]
  %cmp17 = icmp eq i32 %e.0, 99
  br i1 %cmp17, label %return.loopexit432, label %if.end

if.end:                                           ; preds = %do.body
  %b20 = getelementptr inbounds %struct.huft* %t.0, i64 0, i32 1
  %9 = load i8* %b20, align 1, !tbaa !38
  %conv21 = zext i8 %9 to i32
  %sh_prom22 = zext i8 %9 to i64
  %shr = lshr i64 %b.1, %sh_prom22
  %sub = sub i32 %k.1, %conv21
  %sub25 = add nsw i32 %e.0, -16
  %cmp27397 = icmp ult i32 %sub, %sub25
  br i1 %cmp27397, label %while.body29.preheader, label %do.cond

while.body29.preheader:                           ; preds = %if.end
  br label %while.body29

while.body29:                                     ; preds = %cond.end39, %while.body29.preheader
  %k.2399 = phi i32 [ %add46, %cond.end39 ], [ %sub, %while.body29.preheader ]
  %b.2398 = phi i64 [ %or45, %cond.end39 ], [ %shr, %while.body29.preheader ]
  %10 = load i32* @inptr, align 4, !tbaa !1
  %11 = load i32* @insize, align 4, !tbaa !1
  %cmp30 = icmp ult i32 %10, %11
  br i1 %cmp30, label %cond.true32, label %cond.false37

cond.true32:                                      ; preds = %while.body29
  %inc33 = add i32 %10, 1
  store i32 %inc33, i32* @inptr, align 4, !tbaa !1
  %idxprom34 = zext i32 %10 to i64
  %arrayidx35 = getelementptr inbounds [0 x i8]* bitcast ([32832 x i8]* @inbuf to [0 x i8]*), i64 0, i64 %idxprom34
  %12 = load i8* %arrayidx35, align 1, !tbaa !9
  %conv36 = zext i8 %12 to i32
  br label %cond.end39

cond.false37:                                     ; preds = %while.body29
  %call38 = tail call i32 @fill_inbuf(i32 0) #2
  br label %cond.end39

cond.end39:                                       ; preds = %cond.false37, %cond.true32
  %cond40 = phi i32 [ %conv36, %cond.true32 ], [ %call38, %cond.false37 ]
  %conv41 = zext i32 %cond40 to i64
  %conv42 = and i64 %conv41, 255
  %sh_prom43 = zext i32 %k.2399 to i64
  %shl44 = shl i64 %conv42, %sh_prom43
  %or45 = or i64 %shl44, %b.2398
  %add46 = add i32 %k.2399, 8
  %cmp27 = icmp ult i32 %add46, %sub25
  br i1 %cmp27, label %while.body29, label %do.cond.loopexit

do.cond.loopexit:                                 ; preds = %cond.end39
  %add46.lcssa = phi i32 [ %add46, %cond.end39 ]
  %or45.lcssa = phi i64 [ %or45, %cond.end39 ]
  br label %do.cond

do.cond:                                          ; preds = %do.cond.loopexit, %if.end
  %k.2.lcssa = phi i32 [ %sub, %if.end ], [ %add46.lcssa, %do.cond.loopexit ]
  %b.2.lcssa = phi i64 [ %shr, %if.end ], [ %or45.lcssa, %do.cond.loopexit ]
  %t48 = getelementptr inbounds %struct.huft* %t.0, i64 0, i32 2, i32 0
  %13 = load %struct.huft** %t48, align 8, !tbaa !7
  %idxprom50 = zext i32 %sub25 to i64
  %arrayidx51 = getelementptr inbounds [17 x i16]* @mask_bits, i64 0, i64 %idxprom50
  %14 = load i16* %arrayidx51, align 2, !tbaa !5
  %conv52 = zext i16 %14 to i64
  %and53 = and i64 %conv52, %b.2.lcssa
  %add.ptr55 = getelementptr inbounds %struct.huft* %13, i64 %and53
  %e56 = getelementptr inbounds %struct.huft* %add.ptr55, i64 0, i32 0
  %15 = load i8* %e56, align 1, !tbaa !36
  %conv57 = zext i8 %15 to i32
  %cmp58 = icmp ugt i8 %15, 16
  br i1 %cmp58, label %do.body, label %if.end60.loopexit

if.end60.loopexit:                                ; preds = %do.cond
  %conv57.lcssa = phi i32 [ %conv57, %do.cond ]
  %add.ptr55.lcssa = phi %struct.huft* [ %add.ptr55, %do.cond ]
  %b.2.lcssa.lcssa = phi i64 [ %b.2.lcssa, %do.cond ]
  %k.2.lcssa.lcssa = phi i32 [ %k.2.lcssa, %do.cond ]
  br label %if.end60

if.end60:                                         ; preds = %if.end60.loopexit, %while.end
  %t.1 = phi %struct.huft* [ %add.ptr, %while.end ], [ %add.ptr55.lcssa, %if.end60.loopexit ]
  %e.1 = phi i32 [ %conv14, %while.end ], [ %conv57.lcssa, %if.end60.loopexit ]
  %b.3 = phi i64 [ %b.0.lcssa, %while.end ], [ %b.2.lcssa.lcssa, %if.end60.loopexit ]
  %k.3 = phi i32 [ %k.0.lcssa, %while.end ], [ %k.2.lcssa.lcssa, %if.end60.loopexit ]
  %b61 = getelementptr inbounds %struct.huft* %t.1, i64 0, i32 1
  %16 = load i8* %b61, align 1, !tbaa !38
  %conv62 = zext i8 %16 to i32
  %sh_prom63 = zext i8 %16 to i64
  %shr64 = lshr i64 %b.3, %sh_prom63
  %sub67 = sub i32 %k.3, %conv62
  switch i32 %e.1, label %while.cond85.preheader [
    i32 16, label %if.then70
    i32 15, label %for.end
  ]

while.cond85.preheader:                           ; preds = %if.end60
  %cmp86402 = icmp ult i32 %sub67, %e.1
  br i1 %cmp86402, label %while.body88.preheader, label %while.end106

while.body88.preheader:                           ; preds = %while.cond85.preheader
  br label %while.body88

if.then70:                                        ; preds = %if.end60
  %v71 = getelementptr inbounds %struct.huft* %t.1, i64 0, i32 2
  %n72 = bitcast %union.anon* %v71 to i16*
  %17 = load i16* %n72, align 2, !tbaa !5
  %conv73 = trunc i16 %17 to i8
  %inc74 = add i32 %w.0.ph, 1
  %idxprom75 = zext i32 %w.0.ph to i64
  %arrayidx76 = getelementptr inbounds [0 x i8]* bitcast ([65536 x i8]* @window to [0 x i8]*), i64 0, i64 %idxprom75
  store i8 %conv73, i8* %arrayidx76, align 1, !tbaa !9
  %cmp77 = icmp eq i32 %inc74, 32768
  br i1 %cmp77, label %if.then79, label %while.cond.outer.backedge

if.then79:                                        ; preds = %if.then70
  store i32 32768, i32* @outcnt, align 4, !tbaa !1
  tail call void @flush_window() #2
  br label %while.cond.outer.backedge

while.cond.outer.backedge:                        ; preds = %if.then79, %if.then70, %while.cond.loopexit
  %w.0.ph.be = phi i32 [ %w.4.lcssa, %while.cond.loopexit ], [ %inc74, %if.then70 ], [ 0, %if.then79 ]
  %b.0.ph.be = phi i64 [ %shr241, %while.cond.loopexit ], [ %shr64, %if.then70 ], [ %shr64, %if.then79 ]
  %k.0.ph.be = phi i32 [ %sub242, %while.cond.loopexit ], [ %sub67, %if.then70 ], [ %sub67, %if.then79 ]
  br label %while.cond.outer

while.body88:                                     ; preds = %cond.end98, %while.body88.preheader
  %k.4404 = phi i32 [ %add105, %cond.end98 ], [ %sub67, %while.body88.preheader ]
  %b.4403 = phi i64 [ %or104, %cond.end98 ], [ %shr64, %while.body88.preheader ]
  %18 = load i32* @inptr, align 4, !tbaa !1
  %19 = load i32* @insize, align 4, !tbaa !1
  %cmp89 = icmp ult i32 %18, %19
  br i1 %cmp89, label %cond.true91, label %cond.false96

cond.true91:                                      ; preds = %while.body88
  %inc92 = add i32 %18, 1
  store i32 %inc92, i32* @inptr, align 4, !tbaa !1
  %idxprom93 = zext i32 %18 to i64
  %arrayidx94 = getelementptr inbounds [0 x i8]* bitcast ([32832 x i8]* @inbuf to [0 x i8]*), i64 0, i64 %idxprom93
  %20 = load i8* %arrayidx94, align 1, !tbaa !9
  %conv95 = zext i8 %20 to i32
  br label %cond.end98

cond.false96:                                     ; preds = %while.body88
  %call97 = tail call i32 @fill_inbuf(i32 0) #2
  br label %cond.end98

cond.end98:                                       ; preds = %cond.false96, %cond.true91
  %cond99 = phi i32 [ %conv95, %cond.true91 ], [ %call97, %cond.false96 ]
  %conv100 = zext i32 %cond99 to i64
  %conv101 = and i64 %conv100, 255
  %sh_prom102 = zext i32 %k.4404 to i64
  %shl103 = shl i64 %conv101, %sh_prom102
  %or104 = or i64 %shl103, %b.4403
  %add105 = add i32 %k.4404, 8
  %cmp86 = icmp ult i32 %add105, %e.1
  br i1 %cmp86, label %while.body88, label %while.end106.loopexit

while.end106.loopexit:                            ; preds = %cond.end98
  %add105.lcssa = phi i32 [ %add105, %cond.end98 ]
  %or104.lcssa = phi i64 [ %or104, %cond.end98 ]
  br label %while.end106

while.end106:                                     ; preds = %while.end106.loopexit, %while.cond85.preheader
  %k.4.lcssa = phi i32 [ %sub67, %while.cond85.preheader ], [ %add105.lcssa, %while.end106.loopexit ]
  %b.4.lcssa = phi i64 [ %shr64, %while.cond85.preheader ], [ %or104.lcssa, %while.end106.loopexit ]
  %v107 = getelementptr inbounds %struct.huft* %t.1, i64 0, i32 2
  %n108 = bitcast %union.anon* %v107 to i16*
  %21 = load i16* %n108, align 2, !tbaa !5
  %conv109 = zext i16 %21 to i32
  %conv110 = trunc i64 %b.4.lcssa to i32
  %idxprom111 = zext i32 %e.1 to i64
  %arrayidx112 = getelementptr inbounds [17 x i16]* @mask_bits, i64 0, i64 %idxprom111
  %22 = load i16* %arrayidx112, align 2, !tbaa !5
  %conv113 = zext i16 %22 to i32
  %and114 = and i32 %conv113, %conv110
  %add115 = add nuw nsw i32 %and114, %conv109
  %shr117 = lshr i64 %b.4.lcssa, %idxprom111
  %sub118 = sub i32 %k.4.lcssa, %e.1
  %cmp120407 = icmp ult i32 %sub118, %bd
  br i1 %cmp120407, label %while.body122.preheader, label %while.end140

while.body122.preheader:                          ; preds = %while.end106
  br label %while.body122

while.body122:                                    ; preds = %cond.end132, %while.body122.preheader
  %k.5409 = phi i32 [ %add139, %cond.end132 ], [ %sub118, %while.body122.preheader ]
  %b.5408 = phi i64 [ %or138, %cond.end132 ], [ %shr117, %while.body122.preheader ]
  %23 = load i32* @inptr, align 4, !tbaa !1
  %24 = load i32* @insize, align 4, !tbaa !1
  %cmp123 = icmp ult i32 %23, %24
  br i1 %cmp123, label %cond.true125, label %cond.false130

cond.true125:                                     ; preds = %while.body122
  %inc126 = add i32 %23, 1
  store i32 %inc126, i32* @inptr, align 4, !tbaa !1
  %idxprom127 = zext i32 %23 to i64
  %arrayidx128 = getelementptr inbounds [0 x i8]* bitcast ([32832 x i8]* @inbuf to [0 x i8]*), i64 0, i64 %idxprom127
  %25 = load i8* %arrayidx128, align 1, !tbaa !9
  %conv129 = zext i8 %25 to i32
  br label %cond.end132

cond.false130:                                    ; preds = %while.body122
  %call131 = tail call i32 @fill_inbuf(i32 0) #2
  br label %cond.end132

cond.end132:                                      ; preds = %cond.false130, %cond.true125
  %cond133 = phi i32 [ %conv129, %cond.true125 ], [ %call131, %cond.false130 ]
  %conv134 = zext i32 %cond133 to i64
  %conv135 = and i64 %conv134, 255
  %sh_prom136 = zext i32 %k.5409 to i64
  %shl137 = shl i64 %conv135, %sh_prom136
  %or138 = or i64 %shl137, %b.5408
  %add139 = add i32 %k.5409, 8
  %cmp120 = icmp ult i32 %add139, %bd
  br i1 %cmp120, label %while.body122, label %while.end140.loopexit

while.end140.loopexit:                            ; preds = %cond.end132
  %add139.lcssa = phi i32 [ %add139, %cond.end132 ]
  %or138.lcssa = phi i64 [ %or138, %cond.end132 ]
  br label %while.end140

while.end140:                                     ; preds = %while.end140.loopexit, %while.end106
  %k.5.lcssa = phi i32 [ %sub118, %while.end106 ], [ %add139.lcssa, %while.end140.loopexit ]
  %b.5.lcssa = phi i64 [ %shr117, %while.end106 ], [ %or138.lcssa, %while.end140.loopexit ]
  %and142 = and i64 %b.5.lcssa, %conv3
  %add.ptr144 = getelementptr inbounds %struct.huft* %td, i64 %and142
  %e145 = getelementptr inbounds %struct.huft* %add.ptr144, i64 0, i32 0
  %26 = load i8* %e145, align 1, !tbaa !36
  %conv146 = zext i8 %26 to i32
  %cmp147 = icmp ugt i8 %26, 16
  br i1 %cmp147, label %do.body150.preheader, label %if.end200

do.body150.preheader:                             ; preds = %while.end140
  br label %do.body150

do.body150:                                       ; preds = %do.cond185, %do.body150.preheader
  %t.2 = phi %struct.huft* [ %add.ptr194, %do.cond185 ], [ %add.ptr144, %do.body150.preheader ]
  %e.2 = phi i32 [ %conv196, %do.cond185 ], [ %conv146, %do.body150.preheader ]
  %b.6 = phi i64 [ %b.7.lcssa, %do.cond185 ], [ %b.5.lcssa, %do.body150.preheader ]
  %k.6 = phi i32 [ %k.7.lcssa, %do.cond185 ], [ %k.5.lcssa, %do.body150.preheader ]
  %cmp151 = icmp eq i32 %e.2, 99
  br i1 %cmp151, label %return.loopexit, label %if.end154

if.end154:                                        ; preds = %do.body150
  %b155 = getelementptr inbounds %struct.huft* %t.2, i64 0, i32 1
  %27 = load i8* %b155, align 1, !tbaa !38
  %conv156 = zext i8 %27 to i32
  %sh_prom157 = zext i8 %27 to i64
  %shr158 = lshr i64 %b.6, %sh_prom157
  %sub161 = sub i32 %k.6, %conv156
  %sub162 = add nsw i32 %e.2, -16
  %cmp164412 = icmp ult i32 %sub161, %sub162
  br i1 %cmp164412, label %while.body166.preheader, label %do.cond185

while.body166.preheader:                          ; preds = %if.end154
  br label %while.body166

while.body166:                                    ; preds = %cond.end176, %while.body166.preheader
  %k.7414 = phi i32 [ %add183, %cond.end176 ], [ %sub161, %while.body166.preheader ]
  %b.7413 = phi i64 [ %or182, %cond.end176 ], [ %shr158, %while.body166.preheader ]
  %28 = load i32* @inptr, align 4, !tbaa !1
  %29 = load i32* @insize, align 4, !tbaa !1
  %cmp167 = icmp ult i32 %28, %29
  br i1 %cmp167, label %cond.true169, label %cond.false174

cond.true169:                                     ; preds = %while.body166
  %inc170 = add i32 %28, 1
  store i32 %inc170, i32* @inptr, align 4, !tbaa !1
  %idxprom171 = zext i32 %28 to i64
  %arrayidx172 = getelementptr inbounds [0 x i8]* bitcast ([32832 x i8]* @inbuf to [0 x i8]*), i64 0, i64 %idxprom171
  %30 = load i8* %arrayidx172, align 1, !tbaa !9
  %conv173 = zext i8 %30 to i32
  br label %cond.end176

cond.false174:                                    ; preds = %while.body166
  %call175 = tail call i32 @fill_inbuf(i32 0) #2
  br label %cond.end176

cond.end176:                                      ; preds = %cond.false174, %cond.true169
  %cond177 = phi i32 [ %conv173, %cond.true169 ], [ %call175, %cond.false174 ]
  %conv178 = zext i32 %cond177 to i64
  %conv179 = and i64 %conv178, 255
  %sh_prom180 = zext i32 %k.7414 to i64
  %shl181 = shl i64 %conv179, %sh_prom180
  %or182 = or i64 %shl181, %b.7413
  %add183 = add i32 %k.7414, 8
  %cmp164 = icmp ult i32 %add183, %sub162
  br i1 %cmp164, label %while.body166, label %do.cond185.loopexit

do.cond185.loopexit:                              ; preds = %cond.end176
  %add183.lcssa = phi i32 [ %add183, %cond.end176 ]
  %or182.lcssa = phi i64 [ %or182, %cond.end176 ]
  br label %do.cond185

do.cond185:                                       ; preds = %do.cond185.loopexit, %if.end154
  %k.7.lcssa = phi i32 [ %sub161, %if.end154 ], [ %add183.lcssa, %do.cond185.loopexit ]
  %b.7.lcssa = phi i64 [ %shr158, %if.end154 ], [ %or182.lcssa, %do.cond185.loopexit ]
  %t187 = getelementptr inbounds %struct.huft* %t.2, i64 0, i32 2, i32 0
  %31 = load %struct.huft** %t187, align 8, !tbaa !7
  %idxprom189 = zext i32 %sub162 to i64
  %arrayidx190 = getelementptr inbounds [17 x i16]* @mask_bits, i64 0, i64 %idxprom189
  %32 = load i16* %arrayidx190, align 2, !tbaa !5
  %conv191 = zext i16 %32 to i64
  %and192 = and i64 %conv191, %b.7.lcssa
  %add.ptr194 = getelementptr inbounds %struct.huft* %31, i64 %and192
  %e195 = getelementptr inbounds %struct.huft* %add.ptr194, i64 0, i32 0
  %33 = load i8* %e195, align 1, !tbaa !36
  %conv196 = zext i8 %33 to i32
  %cmp197 = icmp ugt i8 %33, 16
  br i1 %cmp197, label %do.body150, label %if.end200.loopexit

if.end200.loopexit:                               ; preds = %do.cond185
  %conv196.lcssa = phi i32 [ %conv196, %do.cond185 ]
  %add.ptr194.lcssa = phi %struct.huft* [ %add.ptr194, %do.cond185 ]
  %b.7.lcssa.lcssa = phi i64 [ %b.7.lcssa, %do.cond185 ]
  %k.7.lcssa.lcssa = phi i32 [ %k.7.lcssa, %do.cond185 ]
  br label %if.end200

if.end200:                                        ; preds = %if.end200.loopexit, %while.end140
  %t.3 = phi %struct.huft* [ %add.ptr144, %while.end140 ], [ %add.ptr194.lcssa, %if.end200.loopexit ]
  %e.3 = phi i32 [ %conv146, %while.end140 ], [ %conv196.lcssa, %if.end200.loopexit ]
  %b.8 = phi i64 [ %b.5.lcssa, %while.end140 ], [ %b.7.lcssa.lcssa, %if.end200.loopexit ]
  %k.8 = phi i32 [ %k.5.lcssa, %while.end140 ], [ %k.7.lcssa.lcssa, %if.end200.loopexit ]
  %b201 = getelementptr inbounds %struct.huft* %t.3, i64 0, i32 1
  %34 = load i8* %b201, align 1, !tbaa !38
  %conv202 = zext i8 %34 to i32
  %sh_prom203 = zext i8 %34 to i64
  %shr204 = lshr i64 %b.8, %sh_prom203
  %sub207 = sub i32 %k.8, %conv202
  %cmp209417 = icmp ult i32 %sub207, %e.3
  br i1 %cmp209417, label %while.body211.preheader, label %while.end229

while.body211.preheader:                          ; preds = %if.end200
  br label %while.body211

while.body211:                                    ; preds = %cond.end221, %while.body211.preheader
  %k.9419 = phi i32 [ %add228, %cond.end221 ], [ %sub207, %while.body211.preheader ]
  %b.9418 = phi i64 [ %or227, %cond.end221 ], [ %shr204, %while.body211.preheader ]
  %35 = load i32* @inptr, align 4, !tbaa !1
  %36 = load i32* @insize, align 4, !tbaa !1
  %cmp212 = icmp ult i32 %35, %36
  br i1 %cmp212, label %cond.true214, label %cond.false219

cond.true214:                                     ; preds = %while.body211
  %inc215 = add i32 %35, 1
  store i32 %inc215, i32* @inptr, align 4, !tbaa !1
  %idxprom216 = zext i32 %35 to i64
  %arrayidx217 = getelementptr inbounds [0 x i8]* bitcast ([32832 x i8]* @inbuf to [0 x i8]*), i64 0, i64 %idxprom216
  %37 = load i8* %arrayidx217, align 1, !tbaa !9
  %conv218 = zext i8 %37 to i32
  br label %cond.end221

cond.false219:                                    ; preds = %while.body211
  %call220 = tail call i32 @fill_inbuf(i32 0) #2
  br label %cond.end221

cond.end221:                                      ; preds = %cond.false219, %cond.true214
  %cond222 = phi i32 [ %conv218, %cond.true214 ], [ %call220, %cond.false219 ]
  %conv223 = zext i32 %cond222 to i64
  %conv224 = and i64 %conv223, 255
  %sh_prom225 = zext i32 %k.9419 to i64
  %shl226 = shl i64 %conv224, %sh_prom225
  %or227 = or i64 %shl226, %b.9418
  %add228 = add i32 %k.9419, 8
  %cmp209 = icmp ult i32 %add228, %e.3
  br i1 %cmp209, label %while.body211, label %while.end229.loopexit

while.end229.loopexit:                            ; preds = %cond.end221
  %add228.lcssa = phi i32 [ %add228, %cond.end221 ]
  %or227.lcssa = phi i64 [ %or227, %cond.end221 ]
  br label %while.end229

while.end229:                                     ; preds = %while.end229.loopexit, %if.end200
  %k.9.lcssa = phi i32 [ %sub207, %if.end200 ], [ %add228.lcssa, %while.end229.loopexit ]
  %b.9.lcssa = phi i64 [ %shr204, %if.end200 ], [ %or227.lcssa, %while.end229.loopexit ]
  %v230 = getelementptr inbounds %struct.huft* %t.3, i64 0, i32 2
  %n231 = bitcast %union.anon* %v230 to i16*
  %38 = load i16* %n231, align 2, !tbaa !5
  %conv232 = zext i16 %38 to i32
  %sub233 = sub i32 %w.0.ph, %conv232
  %conv234 = trunc i64 %b.9.lcssa to i32
  %idxprom235 = zext i32 %e.3 to i64
  %arrayidx236 = getelementptr inbounds [17 x i16]* @mask_bits, i64 0, i64 %idxprom235
  %39 = load i16* %arrayidx236, align 2, !tbaa !5
  %conv237 = zext i16 %39 to i32
  %and238 = and i32 %conv237, %conv234
  %sub239 = sub i32 %sub233, %and238
  %shr241 = lshr i64 %b.9.lcssa, %idxprom235
  br label %do.body243

do.body243:                                       ; preds = %do.cond285, %while.end229
  %n.0 = phi i32 [ %add115, %while.end229 ], [ %sub258, %do.cond285 ]
  %d.0 = phi i32 [ %sub239, %while.end229 ], [ %d.2, %do.cond285 ]
  %w.1 = phi i32 [ %w.0.ph, %while.end229 ], [ %w.4, %do.cond285 ]
  %and244 = and i32 %d.0, 32767
  %cmp245 = icmp ult i32 %w.1, %and244
  %cond250 = select i1 %cmp245, i32 %and244, i32 %w.1
  %sub251 = sub i32 32768, %cond250
  %cmp252 = icmp ugt i32 %sub251, %n.0
  %cond257 = select i1 %cmp252, i32 %n.0, i32 %sub251
  %sub258 = sub i32 %n.0, %cond257
  %sub259 = sub i32 %w.1, %and244
  %cmp260 = icmp ult i32 %sub259, %cond257
  br i1 %cmp260, label %do.body271.preheader, label %if.then262

do.body271.preheader:                             ; preds = %do.body243
  %40 = xor i32 %n.0, -1
  %41 = and i32 %d.0, 32767
  %42 = icmp ugt i32 %w.1, %41
  %umax = select i1 %42, i32 %w.1, i32 %41
  %43 = add i32 %umax, -32769
  %44 = icmp ult i32 %43, %40
  %umax426 = select i1 %44, i32 %40, i32 %43
  %45 = add nsw i32 %41, -1
  %46 = sub i32 -1, %n.0
  %47 = trunc i32 %d.0 to i15
  %48 = zext i15 %47 to i32
  %49 = icmp ugt i32 %w.1, %48
  %umax437 = select i1 %49, i32 %w.1, i32 %48
  %50 = add i32 %umax437, -32769
  %51 = icmp ugt i32 %46, %50
  %umax438 = select i1 %51, i32 %46, i32 %50
  %52 = sub i32 -1, %umax438
  %xtraiter = and i32 %52, 1
  %lcmp.mod = icmp ne i32 %xtraiter, 0
  %lcmp.overflow = icmp eq i32 %52, 0
  %lcmp.or = or i1 %lcmp.overflow, %lcmp.mod
  br i1 %lcmp.or, label %do.body271.unr, label %do.body271.preheader.split

do.body271.unr:                                   ; preds = %do.body271.preheader
  %inc272.unr = add i32 %and244, 1
  %idxprom273.unr = zext i32 %and244 to i64
  %arrayidx274.unr = getelementptr inbounds [0 x i8]* bitcast ([65536 x i8]* @window to [0 x i8]*), i64 0, i64 %idxprom273.unr
  %53 = load i8* %arrayidx274.unr, align 1, !tbaa !9
  %inc275.unr = add i32 %w.1, 1
  %idxprom276.unr = zext i32 %w.1 to i64
  %arrayidx277.unr = getelementptr inbounds [0 x i8]* bitcast ([65536 x i8]* @window to [0 x i8]*), i64 0, i64 %idxprom276.unr
  store i8 %53, i8* %arrayidx277.unr, align 1, !tbaa !9
  %dec.unr = add i32 %cond257, -1
  %tobool.unr = icmp eq i32 %dec.unr, 0
  br label %do.body271.preheader.split

do.body271.preheader.split:                       ; preds = %do.body271.unr, %do.body271.preheader
  %d.1.unr = phi i32 [ %and244, %do.body271.preheader ], [ %inc272.unr, %do.body271.unr ]
  %w.2.unr = phi i32 [ %w.1, %do.body271.preheader ], [ %inc275.unr, %do.body271.unr ]
  %e.4.unr = phi i32 [ %cond257, %do.body271.preheader ], [ %dec.unr, %do.body271.unr ]
  %54 = icmp ult i32 %52, 2
  br i1 %54, label %if.end280.loopexit, label %do.body271.preheader.split.split

do.body271.preheader.split.split:                 ; preds = %do.body271.preheader.split
  br label %do.body271

if.then262:                                       ; preds = %do.body243
  %idx.ext263 = zext i32 %w.1 to i64
  %add.ptr264 = getelementptr inbounds [0 x i8]* bitcast ([65536 x i8]* @window to [0 x i8]*), i64 0, i64 %idx.ext263
  %idx.ext265 = zext i32 %and244 to i64
  %add.ptr266 = getelementptr inbounds [0 x i8]* bitcast ([65536 x i8]* @window to [0 x i8]*), i64 0, i64 %idx.ext265
  %conv267 = zext i32 %cond257 to i64
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %add.ptr264, i8* %add.ptr266, i64 %conv267, i32 1, i1 false)
  %add268 = add i32 %cond257, %w.1
  %add269 = add i32 %cond257, %and244
  br label %if.end280

do.body271:                                       ; preds = %do.body271, %do.body271.preheader.split.split
  %d.1 = phi i32 [ %d.1.unr, %do.body271.preheader.split.split ], [ %inc272.1, %do.body271 ]
  %w.2 = phi i32 [ %w.2.unr, %do.body271.preheader.split.split ], [ %inc275.1, %do.body271 ]
  %e.4 = phi i32 [ %e.4.unr, %do.body271.preheader.split.split ], [ %dec.1, %do.body271 ]
  %inc272 = add i32 %d.1, 1
  %idxprom273 = zext i32 %d.1 to i64
  %arrayidx274 = getelementptr inbounds [0 x i8]* bitcast ([65536 x i8]* @window to [0 x i8]*), i64 0, i64 %idxprom273
  %55 = load i8* %arrayidx274, align 1, !tbaa !9
  %inc275 = add i32 %w.2, 1
  %idxprom276 = zext i32 %w.2 to i64
  %arrayidx277 = getelementptr inbounds [0 x i8]* bitcast ([65536 x i8]* @window to [0 x i8]*), i64 0, i64 %idxprom276
  store i8 %55, i8* %arrayidx277, align 1, !tbaa !9
  %dec = add i32 %e.4, -1
  %inc272.1 = add i32 %inc272, 1
  %idxprom273.1 = zext i32 %inc272 to i64
  %arrayidx274.1 = getelementptr inbounds [0 x i8]* bitcast ([65536 x i8]* @window to [0 x i8]*), i64 0, i64 %idxprom273.1
  %56 = load i8* %arrayidx274.1, align 1, !tbaa !9
  %inc275.1 = add i32 %inc275, 1
  %idxprom276.1 = zext i32 %inc275 to i64
  %arrayidx277.1 = getelementptr inbounds [0 x i8]* bitcast ([65536 x i8]* @window to [0 x i8]*), i64 0, i64 %idxprom276.1
  store i8 %56, i8* %arrayidx277.1, align 1, !tbaa !9
  %dec.1 = add i32 %dec, -1
  %tobool.1 = icmp eq i32 %dec.1, 0
  br i1 %tobool.1, label %if.end280.loopexit.unr-lcssa, label %do.body271

if.end280.loopexit.unr-lcssa:                     ; preds = %do.body271
  br label %if.end280.loopexit

if.end280.loopexit:                               ; preds = %if.end280.loopexit.unr-lcssa, %do.body271.preheader.split
  %57 = add i32 %w.1, -1
  %58 = sub i32 %57, %umax426
  %59 = sub i32 %45, %umax426
  br label %if.end280

if.end280:                                        ; preds = %if.end280.loopexit, %if.then262
  %d.2 = phi i32 [ %add269, %if.then262 ], [ %59, %if.end280.loopexit ]
  %w.3 = phi i32 [ %add268, %if.then262 ], [ %58, %if.end280.loopexit ]
  %cmp281 = icmp eq i32 %w.3, 32768
  br i1 %cmp281, label %if.then283, label %do.cond285

if.then283:                                       ; preds = %if.end280
  store i32 32768, i32* @outcnt, align 4, !tbaa !1
  tail call void @flush_window() #2
  br label %do.cond285

do.cond285:                                       ; preds = %if.then283, %if.end280
  %w.4 = phi i32 [ 0, %if.then283 ], [ %w.3, %if.end280 ]
  %tobool286 = icmp eq i32 %n.0, %cond257
  br i1 %tobool286, label %while.cond.loopexit, label %do.body243

for.end:                                          ; preds = %if.end60
  %sub67.lcssa = phi i32 [ %sub67, %if.end60 ]
  %shr64.lcssa = phi i64 [ %shr64, %if.end60 ]
  %w.0.ph.lcssa433 = phi i32 [ %w.0.ph, %if.end60 ]
  store i32 %w.0.ph.lcssa433, i32* @outcnt, align 4, !tbaa !1
  store i64 %shr64.lcssa, i64* @bb, align 8, !tbaa !15
  store i32 %sub67.lcssa, i32* @bk, align 4, !tbaa !1
  br label %return

return.loopexit:                                  ; preds = %do.body150
  br label %return

return.loopexit432:                               ; preds = %do.body
  br label %return

return:                                           ; preds = %return.loopexit432, %return.loopexit, %for.end
  %retval.0 = phi i32 [ 0, %for.end ], [ 1, %return.loopexit ], [ 1, %return.loopexit432 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind uwtable
define i32 @inflate_stored() #0 {
entry:
  %0 = load i64* @bb, align 8, !tbaa !15
  %1 = load i32* @bk, align 4, !tbaa !1
  %2 = load i32* @outcnt, align 4, !tbaa !1
  %and = and i32 %1, 7
  %sh_prom = zext i32 %and to i64
  %shr = lshr i64 %0, %sh_prom
  %sub = sub i32 %1, %and
  %cmp120 = icmp ult i32 %sub, 16
  br i1 %cmp120, label %while.body.lr.ph, label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %3 = and i32 %1, 7
  %4 = sub i32 %1, %3
  %5 = zext i32 %4 to i64
  %6 = add nuw nsw i32 %3, 15
  %7 = sub i32 %6, %1
  %8 = and i32 %7, -8
  %9 = add i32 %1, %8
  %10 = add i32 %9, 8
  br label %while.body

while.body:                                       ; preds = %cond.end, %while.body.lr.ph
  %indvars.iv126 = phi i64 [ %5, %while.body.lr.ph ], [ %indvars.iv.next127, %cond.end ]
  %k.0122 = phi i32 [ %sub, %while.body.lr.ph ], [ %add, %cond.end ]
  %b.0121 = phi i64 [ %shr, %while.body.lr.ph ], [ %or, %cond.end ]
  %11 = load i32* @inptr, align 4, !tbaa !1
  %12 = load i32* @insize, align 4, !tbaa !1
  %cmp1 = icmp ult i32 %11, %12
  br i1 %cmp1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %while.body
  %inc = add i32 %11, 1
  store i32 %inc, i32* @inptr, align 4, !tbaa !1
  %idxprom = zext i32 %11 to i64
  %arrayidx = getelementptr inbounds [0 x i8]* bitcast ([32832 x i8]* @inbuf to [0 x i8]*), i64 0, i64 %idxprom
  %13 = load i8* %arrayidx, align 1, !tbaa !9
  %conv = zext i8 %13 to i32
  br label %cond.end

cond.false:                                       ; preds = %while.body
  %call = tail call i32 @fill_inbuf(i32 0) #2
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %call, %cond.false ]
  %conv2 = zext i32 %cond to i64
  %conv3 = and i64 %conv2, 255
  %shl = shl i64 %conv3, %indvars.iv126
  %or = or i64 %shl, %b.0121
  %add = add i32 %k.0122, 8
  %cmp = icmp ult i32 %add, 16
  %indvars.iv.next127 = add nuw nsw i64 %indvars.iv126, 8
  br i1 %cmp, label %while.body, label %while.cond.while.end_crit_edge

while.cond.while.end_crit_edge:                   ; preds = %cond.end
  %or.lcssa = phi i64 [ %or, %cond.end ]
  %14 = sub i32 %10, %3
  br label %while.end

while.end:                                        ; preds = %while.cond.while.end_crit_edge, %entry
  %k.0.lcssa = phi i32 [ %14, %while.cond.while.end_crit_edge ], [ %sub, %entry ]
  %b.0.lcssa = phi i64 [ %or.lcssa, %while.cond.while.end_crit_edge ], [ %shr, %entry ]
  %conv5 = trunc i64 %b.0.lcssa to i32
  %and6 = and i32 %conv5, 65535
  %shr7 = lshr i64 %b.0.lcssa, 16
  %sub8 = add i32 %k.0.lcssa, -16
  %cmp10115 = icmp ult i32 %sub8, 16
  br i1 %cmp10115, label %while.body12.lr.ph, label %while.end30

while.body12.lr.ph:                               ; preds = %while.end
  %15 = zext i32 %sub8 to i64
  %16 = sub i32 31, %k.0.lcssa
  %17 = and i32 %16, -8
  %18 = add i32 %k.0.lcssa, %17
  br label %while.body12

while.body12:                                     ; preds = %cond.end22, %while.body12.lr.ph
  %indvars.iv = phi i64 [ %15, %while.body12.lr.ph ], [ %indvars.iv.next, %cond.end22 ]
  %k.1117 = phi i32 [ %sub8, %while.body12.lr.ph ], [ %add29, %cond.end22 ]
  %b.1116 = phi i64 [ %shr7, %while.body12.lr.ph ], [ %or28, %cond.end22 ]
  %19 = load i32* @inptr, align 4, !tbaa !1
  %20 = load i32* @insize, align 4, !tbaa !1
  %cmp13 = icmp ult i32 %19, %20
  br i1 %cmp13, label %cond.true15, label %cond.false20

cond.true15:                                      ; preds = %while.body12
  %inc16 = add i32 %19, 1
  store i32 %inc16, i32* @inptr, align 4, !tbaa !1
  %idxprom17 = zext i32 %19 to i64
  %arrayidx18 = getelementptr inbounds [0 x i8]* bitcast ([32832 x i8]* @inbuf to [0 x i8]*), i64 0, i64 %idxprom17
  %21 = load i8* %arrayidx18, align 1, !tbaa !9
  %conv19 = zext i8 %21 to i32
  br label %cond.end22

cond.false20:                                     ; preds = %while.body12
  %call21 = tail call i32 @fill_inbuf(i32 0) #2
  br label %cond.end22

cond.end22:                                       ; preds = %cond.false20, %cond.true15
  %cond23 = phi i32 [ %conv19, %cond.true15 ], [ %call21, %cond.false20 ]
  %conv24 = zext i32 %cond23 to i64
  %conv25 = and i64 %conv24, 255
  %shl27 = shl i64 %conv25, %indvars.iv
  %or28 = or i64 %shl27, %b.1116
  %add29 = add i32 %k.1117, 8
  %cmp10 = icmp ult i32 %add29, 16
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 8
  br i1 %cmp10, label %while.body12, label %while.cond9.while.end30_crit_edge

while.cond9.while.end30_crit_edge:                ; preds = %cond.end22
  %or28.lcssa = phi i64 [ %or28, %cond.end22 ]
  %22 = add i32 %18, -8
  br label %while.end30

while.end30:                                      ; preds = %while.cond9.while.end30_crit_edge, %while.end
  %k.1.lcssa = phi i32 [ %22, %while.cond9.while.end30_crit_edge ], [ %sub8, %while.end ]
  %b.1.lcssa = phi i64 [ %or28.lcssa, %while.cond9.while.end30_crit_edge ], [ %shr7, %while.end ]
  %neg = and i64 %b.1.lcssa, 65535
  %and31 = xor i64 %neg, 65535
  %conv32 = trunc i64 %and31 to i32
  %cmp33 = icmp eq i32 %and6, %conv32
  br i1 %cmp33, label %if.end, label %return

if.end:                                           ; preds = %while.end30
  %shr35 = lshr i64 %b.1.lcssa, 16
  %sub36 = add i32 %k.1.lcssa, -16
  %tobool107 = icmp eq i32 %and6, 0
  br i1 %tobool107, label %while.end71, label %while.cond39.preheader.preheader

while.cond39.preheader.preheader:                 ; preds = %if.end
  br label %while.cond39.preheader

while.cond39.preheader:                           ; preds = %if.end68, %while.cond39.preheader.preheader
  %dec111.in = phi i32 [ %dec111, %if.end68 ], [ %and6, %while.cond39.preheader.preheader ]
  %k.2110 = phi i32 [ %sub70, %if.end68 ], [ %sub36, %while.cond39.preheader.preheader ]
  %b.2109 = phi i64 [ %shr69, %if.end68 ], [ %shr35, %while.cond39.preheader.preheader ]
  %w.0108 = phi i32 [ %w.1, %if.end68 ], [ %2, %while.cond39.preheader.preheader ]
  %dec111 = add i32 %dec111.in, -1
  %cmp40102 = icmp ult i32 %k.2110, 8
  br i1 %cmp40102, label %while.body42.preheader, label %while.end60

while.body42.preheader:                           ; preds = %while.cond39.preheader
  br label %while.body42

while.body42:                                     ; preds = %cond.end52, %while.body42.preheader
  %k.3104 = phi i32 [ %add59, %cond.end52 ], [ %k.2110, %while.body42.preheader ]
  %b.3103 = phi i64 [ %or58, %cond.end52 ], [ %b.2109, %while.body42.preheader ]
  %23 = load i32* @inptr, align 4, !tbaa !1
  %24 = load i32* @insize, align 4, !tbaa !1
  %cmp43 = icmp ult i32 %23, %24
  br i1 %cmp43, label %cond.true45, label %cond.false50

cond.true45:                                      ; preds = %while.body42
  %inc46 = add i32 %23, 1
  store i32 %inc46, i32* @inptr, align 4, !tbaa !1
  %idxprom47 = zext i32 %23 to i64
  %arrayidx48 = getelementptr inbounds [0 x i8]* bitcast ([32832 x i8]* @inbuf to [0 x i8]*), i64 0, i64 %idxprom47
  %25 = load i8* %arrayidx48, align 1, !tbaa !9
  %conv49 = zext i8 %25 to i32
  br label %cond.end52

cond.false50:                                     ; preds = %while.body42
  %call51 = tail call i32 @fill_inbuf(i32 0) #2
  br label %cond.end52

cond.end52:                                       ; preds = %cond.false50, %cond.true45
  %cond53 = phi i32 [ %conv49, %cond.true45 ], [ %call51, %cond.false50 ]
  %conv54 = zext i32 %cond53 to i64
  %conv55 = and i64 %conv54, 255
  %sh_prom56 = zext i32 %k.3104 to i64
  %shl57 = shl i64 %conv55, %sh_prom56
  %or58 = or i64 %shl57, %b.3103
  %add59 = add i32 %k.3104, 8
  %cmp40 = icmp ugt i32 %k.3104, -9
  br i1 %cmp40, label %while.body42, label %while.end60.loopexit

while.end60.loopexit:                             ; preds = %cond.end52
  %add59.lcssa = phi i32 [ %add59, %cond.end52 ]
  %or58.lcssa = phi i64 [ %or58, %cond.end52 ]
  br label %while.end60

while.end60:                                      ; preds = %while.end60.loopexit, %while.cond39.preheader
  %k.3.lcssa = phi i32 [ %k.2110, %while.cond39.preheader ], [ %add59.lcssa, %while.end60.loopexit ]
  %b.3.lcssa = phi i64 [ %b.2109, %while.cond39.preheader ], [ %or58.lcssa, %while.end60.loopexit ]
  %conv61 = trunc i64 %b.3.lcssa to i8
  %inc62 = add i32 %w.0108, 1
  %idxprom63 = zext i32 %w.0108 to i64
  %arrayidx64 = getelementptr inbounds [0 x i8]* bitcast ([65536 x i8]* @window to [0 x i8]*), i64 0, i64 %idxprom63
  store i8 %conv61, i8* %arrayidx64, align 1, !tbaa !9
  %cmp65 = icmp eq i32 %inc62, 32768
  br i1 %cmp65, label %if.then67, label %if.end68

if.then67:                                        ; preds = %while.end60
  store i32 32768, i32* @outcnt, align 4, !tbaa !1
  tail call void @flush_window() #2
  br label %if.end68

if.end68:                                         ; preds = %if.then67, %while.end60
  %w.1 = phi i32 [ 0, %if.then67 ], [ %inc62, %while.end60 ]
  %shr69 = lshr i64 %b.3.lcssa, 8
  %sub70 = add i32 %k.3.lcssa, -8
  %tobool = icmp eq i32 %dec111, 0
  br i1 %tobool, label %while.end71.loopexit, label %while.cond39.preheader

while.end71.loopexit:                             ; preds = %if.end68
  %sub70.lcssa = phi i32 [ %sub70, %if.end68 ]
  %shr69.lcssa = phi i64 [ %shr69, %if.end68 ]
  %w.1.lcssa = phi i32 [ %w.1, %if.end68 ]
  br label %while.end71

while.end71:                                      ; preds = %while.end71.loopexit, %if.end
  %k.2.lcssa = phi i32 [ %sub36, %if.end ], [ %sub70.lcssa, %while.end71.loopexit ]
  %b.2.lcssa = phi i64 [ %shr35, %if.end ], [ %shr69.lcssa, %while.end71.loopexit ]
  %w.0.lcssa = phi i32 [ %2, %if.end ], [ %w.1.lcssa, %while.end71.loopexit ]
  store i32 %w.0.lcssa, i32* @outcnt, align 4, !tbaa !1
  store i64 %b.2.lcssa, i64* @bb, align 8, !tbaa !15
  store i32 %k.2.lcssa, i32* @bk, align 4, !tbaa !1
  br label %return

return:                                           ; preds = %while.end71, %while.end30
  %retval.0 = phi i32 [ 0, %while.end71 ], [ 1, %while.end30 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind uwtable
define i32 @inflate_fixed() #0 {
entry:
  %tl = alloca %struct.huft*, align 8
  %td = alloca %struct.huft*, align 8
  %bl = alloca i32, align 4
  %bd = alloca i32, align 4
  %l = alloca [288 x i32], align 16
  %0 = bitcast [288 x i32]* %l to i8*
  call void @llvm.lifetime.start(i64 1152, i8* %0) #2
  br label %vector.body

vector.body:                                      ; preds = %entry
  %1 = getelementptr inbounds [288 x i32]* %l, i64 0, i64 0
  %2 = bitcast i32* %1 to <4 x i32>*
  store <4 x i32> <i32 8, i32 8, i32 8, i32 8>, <4 x i32>* %2, align 16, !tbaa !1
  %3 = getelementptr [288 x i32]* %l, i64 0, i64 4
  %4 = bitcast i32* %3 to <4 x i32>*
  store <4 x i32> <i32 8, i32 8, i32 8, i32 8>, <4 x i32>* %4, align 16, !tbaa !1
  %5 = getelementptr inbounds [288 x i32]* %l, i64 0, i64 8
  %6 = bitcast i32* %5 to <4 x i32>*
  store <4 x i32> <i32 8, i32 8, i32 8, i32 8>, <4 x i32>* %6, align 16, !tbaa !1
  %7 = getelementptr [288 x i32]* %l, i64 0, i64 12
  %8 = bitcast i32* %7 to <4 x i32>*
  store <4 x i32> <i32 8, i32 8, i32 8, i32 8>, <4 x i32>* %8, align 16, !tbaa !1
  %9 = getelementptr inbounds [288 x i32]* %l, i64 0, i64 16
  %10 = bitcast i32* %9 to <4 x i32>*
  store <4 x i32> <i32 8, i32 8, i32 8, i32 8>, <4 x i32>* %10, align 16, !tbaa !1
  %11 = getelementptr [288 x i32]* %l, i64 0, i64 20
  %12 = bitcast i32* %11 to <4 x i32>*
  store <4 x i32> <i32 8, i32 8, i32 8, i32 8>, <4 x i32>* %12, align 16, !tbaa !1
  %13 = getelementptr inbounds [288 x i32]* %l, i64 0, i64 24
  %14 = bitcast i32* %13 to <4 x i32>*
  store <4 x i32> <i32 8, i32 8, i32 8, i32 8>, <4 x i32>* %14, align 16, !tbaa !1
  %15 = getelementptr [288 x i32]* %l, i64 0, i64 28
  %16 = bitcast i32* %15 to <4 x i32>*
  store <4 x i32> <i32 8, i32 8, i32 8, i32 8>, <4 x i32>* %16, align 16, !tbaa !1
  %17 = getelementptr inbounds [288 x i32]* %l, i64 0, i64 32
  %18 = bitcast i32* %17 to <4 x i32>*
  store <4 x i32> <i32 8, i32 8, i32 8, i32 8>, <4 x i32>* %18, align 16, !tbaa !1
  %19 = getelementptr [288 x i32]* %l, i64 0, i64 36
  %20 = bitcast i32* %19 to <4 x i32>*
  store <4 x i32> <i32 8, i32 8, i32 8, i32 8>, <4 x i32>* %20, align 16, !tbaa !1
  %21 = getelementptr inbounds [288 x i32]* %l, i64 0, i64 40
  %22 = bitcast i32* %21 to <4 x i32>*
  store <4 x i32> <i32 8, i32 8, i32 8, i32 8>, <4 x i32>* %22, align 16, !tbaa !1
  %23 = getelementptr [288 x i32]* %l, i64 0, i64 44
  %24 = bitcast i32* %23 to <4 x i32>*
  store <4 x i32> <i32 8, i32 8, i32 8, i32 8>, <4 x i32>* %24, align 16, !tbaa !1
  %25 = getelementptr inbounds [288 x i32]* %l, i64 0, i64 48
  %26 = bitcast i32* %25 to <4 x i32>*
  store <4 x i32> <i32 8, i32 8, i32 8, i32 8>, <4 x i32>* %26, align 16, !tbaa !1
  %27 = getelementptr [288 x i32]* %l, i64 0, i64 52
  %28 = bitcast i32* %27 to <4 x i32>*
  store <4 x i32> <i32 8, i32 8, i32 8, i32 8>, <4 x i32>* %28, align 16, !tbaa !1
  %29 = getelementptr inbounds [288 x i32]* %l, i64 0, i64 56
  %30 = bitcast i32* %29 to <4 x i32>*
  store <4 x i32> <i32 8, i32 8, i32 8, i32 8>, <4 x i32>* %30, align 16, !tbaa !1
  %31 = getelementptr [288 x i32]* %l, i64 0, i64 60
  %32 = bitcast i32* %31 to <4 x i32>*
  store <4 x i32> <i32 8, i32 8, i32 8, i32 8>, <4 x i32>* %32, align 16, !tbaa !1
  %33 = getelementptr inbounds [288 x i32]* %l, i64 0, i64 64
  %34 = bitcast i32* %33 to <4 x i32>*
  store <4 x i32> <i32 8, i32 8, i32 8, i32 8>, <4 x i32>* %34, align 16, !tbaa !1
  %35 = getelementptr [288 x i32]* %l, i64 0, i64 68
  %36 = bitcast i32* %35 to <4 x i32>*
  store <4 x i32> <i32 8, i32 8, i32 8, i32 8>, <4 x i32>* %36, align 16, !tbaa !1
  %37 = getelementptr inbounds [288 x i32]* %l, i64 0, i64 72
  %38 = bitcast i32* %37 to <4 x i32>*
  store <4 x i32> <i32 8, i32 8, i32 8, i32 8>, <4 x i32>* %38, align 16, !tbaa !1
  %39 = getelementptr [288 x i32]* %l, i64 0, i64 76
  %40 = bitcast i32* %39 to <4 x i32>*
  store <4 x i32> <i32 8, i32 8, i32 8, i32 8>, <4 x i32>* %40, align 16, !tbaa !1
  %41 = getelementptr inbounds [288 x i32]* %l, i64 0, i64 80
  %42 = bitcast i32* %41 to <4 x i32>*
  store <4 x i32> <i32 8, i32 8, i32 8, i32 8>, <4 x i32>* %42, align 16, !tbaa !1
  %43 = getelementptr [288 x i32]* %l, i64 0, i64 84
  %44 = bitcast i32* %43 to <4 x i32>*
  store <4 x i32> <i32 8, i32 8, i32 8, i32 8>, <4 x i32>* %44, align 16, !tbaa !1
  %45 = getelementptr inbounds [288 x i32]* %l, i64 0, i64 88
  %46 = bitcast i32* %45 to <4 x i32>*
  store <4 x i32> <i32 8, i32 8, i32 8, i32 8>, <4 x i32>* %46, align 16, !tbaa !1
  %47 = getelementptr [288 x i32]* %l, i64 0, i64 92
  %48 = bitcast i32* %47 to <4 x i32>*
  store <4 x i32> <i32 8, i32 8, i32 8, i32 8>, <4 x i32>* %48, align 16, !tbaa !1
  %49 = getelementptr inbounds [288 x i32]* %l, i64 0, i64 96
  %50 = bitcast i32* %49 to <4 x i32>*
  store <4 x i32> <i32 8, i32 8, i32 8, i32 8>, <4 x i32>* %50, align 16, !tbaa !1
  %51 = getelementptr [288 x i32]* %l, i64 0, i64 100
  %52 = bitcast i32* %51 to <4 x i32>*
  store <4 x i32> <i32 8, i32 8, i32 8, i32 8>, <4 x i32>* %52, align 16, !tbaa !1
  %53 = getelementptr inbounds [288 x i32]* %l, i64 0, i64 104
  %54 = bitcast i32* %53 to <4 x i32>*
  store <4 x i32> <i32 8, i32 8, i32 8, i32 8>, <4 x i32>* %54, align 16, !tbaa !1
  %55 = getelementptr [288 x i32]* %l, i64 0, i64 108
  %56 = bitcast i32* %55 to <4 x i32>*
  store <4 x i32> <i32 8, i32 8, i32 8, i32 8>, <4 x i32>* %56, align 16, !tbaa !1
  %57 = getelementptr inbounds [288 x i32]* %l, i64 0, i64 112
  %58 = bitcast i32* %57 to <4 x i32>*
  store <4 x i32> <i32 8, i32 8, i32 8, i32 8>, <4 x i32>* %58, align 16, !tbaa !1
  %59 = getelementptr [288 x i32]* %l, i64 0, i64 116
  %60 = bitcast i32* %59 to <4 x i32>*
  store <4 x i32> <i32 8, i32 8, i32 8, i32 8>, <4 x i32>* %60, align 16, !tbaa !1
  %61 = getelementptr inbounds [288 x i32]* %l, i64 0, i64 120
  %62 = bitcast i32* %61 to <4 x i32>*
  store <4 x i32> <i32 8, i32 8, i32 8, i32 8>, <4 x i32>* %62, align 16, !tbaa !1
  %63 = getelementptr [288 x i32]* %l, i64 0, i64 124
  %64 = bitcast i32* %63 to <4 x i32>*
  store <4 x i32> <i32 8, i32 8, i32 8, i32 8>, <4 x i32>* %64, align 16, !tbaa !1
  %65 = getelementptr inbounds [288 x i32]* %l, i64 0, i64 128
  %66 = bitcast i32* %65 to <4 x i32>*
  store <4 x i32> <i32 8, i32 8, i32 8, i32 8>, <4 x i32>* %66, align 16, !tbaa !1
  %67 = getelementptr [288 x i32]* %l, i64 0, i64 132
  %68 = bitcast i32* %67 to <4 x i32>*
  store <4 x i32> <i32 8, i32 8, i32 8, i32 8>, <4 x i32>* %68, align 16, !tbaa !1
  %69 = getelementptr inbounds [288 x i32]* %l, i64 0, i64 136
  %70 = bitcast i32* %69 to <4 x i32>*
  store <4 x i32> <i32 8, i32 8, i32 8, i32 8>, <4 x i32>* %70, align 16, !tbaa !1
  %71 = getelementptr [288 x i32]* %l, i64 0, i64 140
  %72 = bitcast i32* %71 to <4 x i32>*
  store <4 x i32> <i32 8, i32 8, i32 8, i32 8>, <4 x i32>* %72, align 16, !tbaa !1
  br label %vector.body95

vector.body95:                                    ; preds = %vector.body
  %73 = getelementptr inbounds [288 x i32]* %l, i64 0, i64 144
  %74 = bitcast i32* %73 to <4 x i32>*
  store <4 x i32> <i32 9, i32 9, i32 9, i32 9>, <4 x i32>* %74, align 16, !tbaa !1
  %75 = getelementptr inbounds [288 x i32]* %l, i64 0, i64 148
  %76 = bitcast i32* %75 to <4 x i32>*
  store <4 x i32> <i32 9, i32 9, i32 9, i32 9>, <4 x i32>* %76, align 16, !tbaa !1
  %77 = getelementptr inbounds [288 x i32]* %l, i64 0, i64 152
  %78 = bitcast i32* %77 to <4 x i32>*
  store <4 x i32> <i32 9, i32 9, i32 9, i32 9>, <4 x i32>* %78, align 16, !tbaa !1
  %79 = getelementptr inbounds [288 x i32]* %l, i64 0, i64 156
  %80 = bitcast i32* %79 to <4 x i32>*
  store <4 x i32> <i32 9, i32 9, i32 9, i32 9>, <4 x i32>* %80, align 16, !tbaa !1
  %81 = getelementptr inbounds [288 x i32]* %l, i64 0, i64 160
  %82 = bitcast i32* %81 to <4 x i32>*
  store <4 x i32> <i32 9, i32 9, i32 9, i32 9>, <4 x i32>* %82, align 16, !tbaa !1
  %83 = getelementptr inbounds [288 x i32]* %l, i64 0, i64 164
  %84 = bitcast i32* %83 to <4 x i32>*
  store <4 x i32> <i32 9, i32 9, i32 9, i32 9>, <4 x i32>* %84, align 16, !tbaa !1
  %85 = getelementptr inbounds [288 x i32]* %l, i64 0, i64 168
  %86 = bitcast i32* %85 to <4 x i32>*
  store <4 x i32> <i32 9, i32 9, i32 9, i32 9>, <4 x i32>* %86, align 16, !tbaa !1
  %87 = getelementptr inbounds [288 x i32]* %l, i64 0, i64 172
  %88 = bitcast i32* %87 to <4 x i32>*
  store <4 x i32> <i32 9, i32 9, i32 9, i32 9>, <4 x i32>* %88, align 16, !tbaa !1
  %89 = getelementptr inbounds [288 x i32]* %l, i64 0, i64 176
  %90 = bitcast i32* %89 to <4 x i32>*
  store <4 x i32> <i32 9, i32 9, i32 9, i32 9>, <4 x i32>* %90, align 16, !tbaa !1
  %91 = getelementptr inbounds [288 x i32]* %l, i64 0, i64 180
  %92 = bitcast i32* %91 to <4 x i32>*
  store <4 x i32> <i32 9, i32 9, i32 9, i32 9>, <4 x i32>* %92, align 16, !tbaa !1
  %93 = getelementptr inbounds [288 x i32]* %l, i64 0, i64 184
  %94 = bitcast i32* %93 to <4 x i32>*
  store <4 x i32> <i32 9, i32 9, i32 9, i32 9>, <4 x i32>* %94, align 16, !tbaa !1
  %95 = getelementptr inbounds [288 x i32]* %l, i64 0, i64 188
  %96 = bitcast i32* %95 to <4 x i32>*
  store <4 x i32> <i32 9, i32 9, i32 9, i32 9>, <4 x i32>* %96, align 16, !tbaa !1
  %97 = getelementptr inbounds [288 x i32]* %l, i64 0, i64 192
  %98 = bitcast i32* %97 to <4 x i32>*
  store <4 x i32> <i32 9, i32 9, i32 9, i32 9>, <4 x i32>* %98, align 16, !tbaa !1
  %99 = getelementptr inbounds [288 x i32]* %l, i64 0, i64 196
  %100 = bitcast i32* %99 to <4 x i32>*
  store <4 x i32> <i32 9, i32 9, i32 9, i32 9>, <4 x i32>* %100, align 16, !tbaa !1
  %101 = getelementptr inbounds [288 x i32]* %l, i64 0, i64 200
  %102 = bitcast i32* %101 to <4 x i32>*
  store <4 x i32> <i32 9, i32 9, i32 9, i32 9>, <4 x i32>* %102, align 16, !tbaa !1
  %103 = getelementptr inbounds [288 x i32]* %l, i64 0, i64 204
  %104 = bitcast i32* %103 to <4 x i32>*
  store <4 x i32> <i32 9, i32 9, i32 9, i32 9>, <4 x i32>* %104, align 16, !tbaa !1
  %105 = getelementptr inbounds [288 x i32]* %l, i64 0, i64 208
  %106 = bitcast i32* %105 to <4 x i32>*
  store <4 x i32> <i32 9, i32 9, i32 9, i32 9>, <4 x i32>* %106, align 16, !tbaa !1
  %107 = getelementptr inbounds [288 x i32]* %l, i64 0, i64 212
  %108 = bitcast i32* %107 to <4 x i32>*
  store <4 x i32> <i32 9, i32 9, i32 9, i32 9>, <4 x i32>* %108, align 16, !tbaa !1
  %109 = getelementptr inbounds [288 x i32]* %l, i64 0, i64 216
  %110 = bitcast i32* %109 to <4 x i32>*
  store <4 x i32> <i32 9, i32 9, i32 9, i32 9>, <4 x i32>* %110, align 16, !tbaa !1
  %111 = getelementptr inbounds [288 x i32]* %l, i64 0, i64 220
  %112 = bitcast i32* %111 to <4 x i32>*
  store <4 x i32> <i32 9, i32 9, i32 9, i32 9>, <4 x i32>* %112, align 16, !tbaa !1
  %113 = getelementptr inbounds [288 x i32]* %l, i64 0, i64 224
  %114 = bitcast i32* %113 to <4 x i32>*
  store <4 x i32> <i32 9, i32 9, i32 9, i32 9>, <4 x i32>* %114, align 16, !tbaa !1
  %115 = getelementptr inbounds [288 x i32]* %l, i64 0, i64 228
  %116 = bitcast i32* %115 to <4 x i32>*
  store <4 x i32> <i32 9, i32 9, i32 9, i32 9>, <4 x i32>* %116, align 16, !tbaa !1
  %117 = getelementptr inbounds [288 x i32]* %l, i64 0, i64 232
  %118 = bitcast i32* %117 to <4 x i32>*
  store <4 x i32> <i32 9, i32 9, i32 9, i32 9>, <4 x i32>* %118, align 16, !tbaa !1
  %119 = getelementptr inbounds [288 x i32]* %l, i64 0, i64 236
  %120 = bitcast i32* %119 to <4 x i32>*
  store <4 x i32> <i32 9, i32 9, i32 9, i32 9>, <4 x i32>* %120, align 16, !tbaa !1
  %121 = getelementptr inbounds [288 x i32]* %l, i64 0, i64 240
  %122 = bitcast i32* %121 to <4 x i32>*
  store <4 x i32> <i32 9, i32 9, i32 9, i32 9>, <4 x i32>* %122, align 16, !tbaa !1
  %123 = getelementptr inbounds [288 x i32]* %l, i64 0, i64 244
  %124 = bitcast i32* %123 to <4 x i32>*
  store <4 x i32> <i32 9, i32 9, i32 9, i32 9>, <4 x i32>* %124, align 16, !tbaa !1
  %125 = getelementptr inbounds [288 x i32]* %l, i64 0, i64 248
  %126 = bitcast i32* %125 to <4 x i32>*
  store <4 x i32> <i32 9, i32 9, i32 9, i32 9>, <4 x i32>* %126, align 16, !tbaa !1
  %127 = getelementptr inbounds [288 x i32]* %l, i64 0, i64 252
  %128 = bitcast i32* %127 to <4 x i32>*
  store <4 x i32> <i32 9, i32 9, i32 9, i32 9>, <4 x i32>* %128, align 16, !tbaa !1
  br label %vector.body112

vector.body112:                                   ; preds = %vector.body95
  %129 = getelementptr inbounds [288 x i32]* %l, i64 0, i64 256
  %130 = bitcast i32* %129 to <4 x i32>*
  store <4 x i32> <i32 7, i32 7, i32 7, i32 7>, <4 x i32>* %130, align 16, !tbaa !1
  %131 = getelementptr inbounds [288 x i32]* %l, i64 0, i64 260
  %132 = bitcast i32* %131 to <4 x i32>*
  store <4 x i32> <i32 7, i32 7, i32 7, i32 7>, <4 x i32>* %132, align 16, !tbaa !1
  %133 = getelementptr inbounds [288 x i32]* %l, i64 0, i64 264
  %134 = bitcast i32* %133 to <4 x i32>*
  store <4 x i32> <i32 7, i32 7, i32 7, i32 7>, <4 x i32>* %134, align 16, !tbaa !1
  %135 = getelementptr inbounds [288 x i32]* %l, i64 0, i64 268
  %136 = bitcast i32* %135 to <4 x i32>*
  store <4 x i32> <i32 7, i32 7, i32 7, i32 7>, <4 x i32>* %136, align 16, !tbaa !1
  %137 = getelementptr inbounds [288 x i32]* %l, i64 0, i64 272
  %138 = bitcast i32* %137 to <4 x i32>*
  store <4 x i32> <i32 7, i32 7, i32 7, i32 7>, <4 x i32>* %138, align 16, !tbaa !1
  %139 = getelementptr inbounds [288 x i32]* %l, i64 0, i64 276
  %140 = bitcast i32* %139 to <4 x i32>*
  store <4 x i32> <i32 7, i32 7, i32 7, i32 7>, <4 x i32>* %140, align 16, !tbaa !1
  br label %for.body19

for.body19:                                       ; preds = %vector.body112
  %arrayidx21 = getelementptr inbounds [288 x i32]* %l, i64 0, i64 280
  store i32 8, i32* %arrayidx21, align 4, !tbaa !1
  %arrayidx21.1 = getelementptr inbounds [288 x i32]* %l, i64 0, i64 281
  store i32 8, i32* %arrayidx21.1, align 4, !tbaa !1
  %arrayidx21.2 = getelementptr inbounds [288 x i32]* %l, i64 0, i64 282
  store i32 8, i32* %arrayidx21.2, align 4, !tbaa !1
  %arrayidx21.3 = getelementptr inbounds [288 x i32]* %l, i64 0, i64 283
  store i32 8, i32* %arrayidx21.3, align 4, !tbaa !1
  %arrayidx21.4 = getelementptr inbounds [288 x i32]* %l, i64 0, i64 284
  store i32 8, i32* %arrayidx21.4, align 4, !tbaa !1
  %arrayidx21.5 = getelementptr inbounds [288 x i32]* %l, i64 0, i64 285
  store i32 8, i32* %arrayidx21.5, align 4, !tbaa !1
  %arrayidx21.6 = getelementptr inbounds [288 x i32]* %l, i64 0, i64 286
  store i32 8, i32* %arrayidx21.6, align 4, !tbaa !1
  %arrayidx21.7 = getelementptr inbounds [288 x i32]* %l, i64 0, i64 287
  store i32 8, i32* %arrayidx21.7, align 4, !tbaa !1
  store i32 7, i32* %bl, align 4, !tbaa !1
  %arraydecay = getelementptr inbounds [288 x i32]* %l, i64 0, i64 0
  %call = call i32 @huft_build(i32* %arraydecay, i32 288, i32 257, i16* getelementptr inbounds ([31 x i16]* @cplens, i64 0, i64 0), i16* getelementptr inbounds ([31 x i16]* @cplext, i64 0, i64 0), %struct.huft** %tl, i32* %bl)
  %cmp25 = icmp eq i32 %call, 0
  br i1 %cmp25, label %for.cond26.preheader, label %cleanup

for.cond26.preheader:                             ; preds = %for.body19
  %141 = bitcast [288 x i32]* %l to <4 x i32>*
  store <4 x i32> <i32 5, i32 5, i32 5, i32 5>, <4 x i32>* %141, align 16, !tbaa !1
  %arrayidx30.4 = getelementptr inbounds [288 x i32]* %l, i64 0, i64 4
  %142 = bitcast i32* %arrayidx30.4 to <4 x i32>*
  store <4 x i32> <i32 5, i32 5, i32 5, i32 5>, <4 x i32>* %142, align 16, !tbaa !1
  %arrayidx30.8 = getelementptr inbounds [288 x i32]* %l, i64 0, i64 8
  %143 = bitcast i32* %arrayidx30.8 to <4 x i32>*
  store <4 x i32> <i32 5, i32 5, i32 5, i32 5>, <4 x i32>* %143, align 16, !tbaa !1
  %arrayidx30.12 = getelementptr inbounds [288 x i32]* %l, i64 0, i64 12
  %144 = bitcast i32* %arrayidx30.12 to <4 x i32>*
  store <4 x i32> <i32 5, i32 5, i32 5, i32 5>, <4 x i32>* %144, align 16, !tbaa !1
  %arrayidx30.16 = getelementptr inbounds [288 x i32]* %l, i64 0, i64 16
  %145 = bitcast i32* %arrayidx30.16 to <4 x i32>*
  store <4 x i32> <i32 5, i32 5, i32 5, i32 5>, <4 x i32>* %145, align 16, !tbaa !1
  %arrayidx30.20 = getelementptr inbounds [288 x i32]* %l, i64 0, i64 20
  %146 = bitcast i32* %arrayidx30.20 to <4 x i32>*
  store <4 x i32> <i32 5, i32 5, i32 5, i32 5>, <4 x i32>* %146, align 16, !tbaa !1
  %arrayidx30.24 = getelementptr inbounds [288 x i32]* %l, i64 0, i64 24
  %147 = bitcast i32* %arrayidx30.24 to <4 x i32>*
  store <4 x i32> <i32 5, i32 5, i32 5, i32 5>, <4 x i32>* %147, align 16, !tbaa !1
  %arrayidx30.28 = getelementptr inbounds [288 x i32]* %l, i64 0, i64 28
  store i32 5, i32* %arrayidx30.28, align 16, !tbaa !1
  %arrayidx30.29 = getelementptr inbounds [288 x i32]* %l, i64 0, i64 29
  store i32 5, i32* %arrayidx30.29, align 4, !tbaa !1
  store i32 5, i32* %bd, align 4, !tbaa !1
  %call35 = call i32 @huft_build(i32* %arraydecay, i32 30, i32 0, i16* getelementptr inbounds ([30 x i16]* @cpdist, i64 0, i64 0), i16* getelementptr inbounds ([30 x i16]* @cpdext, i64 0, i64 0), %struct.huft** %td, i32* %bd)
  %cmp36 = icmp sgt i32 %call35, 1
  %148 = load %struct.huft** %tl, align 8, !tbaa !7
  br i1 %cmp36, label %if.then37, label %if.end39

if.then37:                                        ; preds = %for.cond26.preheader
  %cmp4.i = icmp eq %struct.huft* %148, null
  br i1 %cmp4.i, label %cleanup, label %while.body.i.preheader

while.body.i.preheader:                           ; preds = %if.then37
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i, %while.body.i.preheader
  %p.05.i = phi %struct.huft* [ %149, %while.body.i ], [ %148, %while.body.i.preheader ]
  %t1.i = getelementptr inbounds %struct.huft* %p.05.i, i64 -1, i32 2, i32 0
  %149 = load %struct.huft** %t1.i, align 8, !tbaa !7
  %150 = getelementptr inbounds %struct.huft* %p.05.i, i64 -1, i32 0
  tail call void @free(i8* %150) #2
  %cmp.i = icmp eq %struct.huft* %149, null
  br i1 %cmp.i, label %cleanup.loopexit, label %while.body.i

if.end39:                                         ; preds = %for.cond26.preheader
  %151 = load %struct.huft** %td, align 8, !tbaa !7
  %152 = load i32* %bl, align 4, !tbaa !1
  %153 = load i32* %bd, align 4, !tbaa !1
  %call40 = tail call i32 @inflate_codes(%struct.huft* %148, %struct.huft* %151, i32 %152, i32 %153)
  %tobool = icmp eq i32 %call40, 0
  br i1 %tobool, label %if.end42, label %cleanup

if.end42:                                         ; preds = %if.end39
  %cmp4.i61 = icmp eq %struct.huft* %148, null
  br i1 %cmp4.i61, label %huft_free.exit66, label %while.body.i65.preheader

while.body.i65.preheader:                         ; preds = %if.end42
  br label %while.body.i65

while.body.i65:                                   ; preds = %while.body.i65, %while.body.i65.preheader
  %p.05.i62 = phi %struct.huft* [ %154, %while.body.i65 ], [ %148, %while.body.i65.preheader ]
  %t1.i63 = getelementptr inbounds %struct.huft* %p.05.i62, i64 -1, i32 2, i32 0
  %154 = load %struct.huft** %t1.i63, align 8, !tbaa !7
  %155 = getelementptr inbounds %struct.huft* %p.05.i62, i64 -1, i32 0
  tail call void @free(i8* %155) #2
  %cmp.i64 = icmp eq %struct.huft* %154, null
  br i1 %cmp.i64, label %huft_free.exit66.loopexit, label %while.body.i65

huft_free.exit66.loopexit:                        ; preds = %while.body.i65
  br label %huft_free.exit66

huft_free.exit66:                                 ; preds = %huft_free.exit66.loopexit, %if.end42
  %cmp4.i67 = icmp eq %struct.huft* %151, null
  br i1 %cmp4.i67, label %cleanup, label %while.body.i71.preheader

while.body.i71.preheader:                         ; preds = %huft_free.exit66
  br label %while.body.i71

while.body.i71:                                   ; preds = %while.body.i71, %while.body.i71.preheader
  %p.05.i68 = phi %struct.huft* [ %156, %while.body.i71 ], [ %151, %while.body.i71.preheader ]
  %t1.i69 = getelementptr inbounds %struct.huft* %p.05.i68, i64 -1, i32 2, i32 0
  %156 = load %struct.huft** %t1.i69, align 8, !tbaa !7
  %157 = getelementptr inbounds %struct.huft* %p.05.i68, i64 -1, i32 0
  tail call void @free(i8* %157) #2
  %cmp.i70 = icmp eq %struct.huft* %156, null
  br i1 %cmp.i70, label %cleanup.loopexit127, label %while.body.i71

cleanup.loopexit:                                 ; preds = %while.body.i
  br label %cleanup

cleanup.loopexit127:                              ; preds = %while.body.i71
  br label %cleanup

cleanup:                                          ; preds = %cleanup.loopexit127, %cleanup.loopexit, %huft_free.exit66, %if.end39, %if.then37, %for.body19
  %retval.0 = phi i32 [ %call, %for.body19 ], [ 1, %if.end39 ], [ %call35, %if.then37 ], [ 0, %huft_free.exit66 ], [ %call35, %cleanup.loopexit ], [ 0, %cleanup.loopexit127 ]
  call void @llvm.lifetime.end(i64 1152, i8* %0) #2
  ret i32 %retval.0
}

; Function Attrs: nounwind uwtable
define i32 @inflate_dynamic() #0 {
entry:
  %tl = alloca %struct.huft*, align 8
  %td = alloca %struct.huft*, align 8
  %bl = alloca i32, align 4
  %bd = alloca i32, align 4
  %ll = alloca [316 x i32], align 16
  %0 = bitcast [316 x i32]* %ll to i8*
  call void @llvm.lifetime.start(i64 1264, i8* %0) #2
  %1 = load i64* @bb, align 8, !tbaa !15
  %2 = load i32* @bk, align 4, !tbaa !1
  %cmp545 = icmp ult i32 %2, 5
  br i1 %cmp545, label %while.body.lr.ph, label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %3 = zext i32 %2 to i64
  %4 = sub i32 4, %2
  %5 = and i32 %4, -8
  %6 = add i32 %2, %5
  br label %while.body

while.body:                                       ; preds = %cond.end, %while.body.lr.ph
  %indvars.iv604 = phi i64 [ %3, %while.body.lr.ph ], [ %indvars.iv.next605, %cond.end ]
  %k.0547 = phi i32 [ %2, %while.body.lr.ph ], [ %add, %cond.end ]
  %b.0546 = phi i64 [ %1, %while.body.lr.ph ], [ %or, %cond.end ]
  %7 = load i32* @inptr, align 4, !tbaa !1
  %8 = load i32* @insize, align 4, !tbaa !1
  %cmp1 = icmp ult i32 %7, %8
  br i1 %cmp1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %while.body
  %inc = add i32 %7, 1
  store i32 %inc, i32* @inptr, align 4, !tbaa !1
  %idxprom = zext i32 %7 to i64
  %arrayidx = getelementptr inbounds [0 x i8]* bitcast ([32832 x i8]* @inbuf to [0 x i8]*), i64 0, i64 %idxprom
  %9 = load i8* %arrayidx, align 1, !tbaa !9
  %conv = zext i8 %9 to i32
  br label %cond.end

cond.false:                                       ; preds = %while.body
  %call = tail call i32 @fill_inbuf(i32 0) #2
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %call, %cond.false ]
  %conv2 = zext i32 %cond to i64
  %conv3 = and i64 %conv2, 255
  %shl = shl i64 %conv3, %indvars.iv604
  %or = or i64 %shl, %b.0546
  %add = add i32 %k.0547, 8
  %cmp = icmp ult i32 %add, 5
  %indvars.iv.next605 = add nuw nsw i64 %indvars.iv604, 8
  br i1 %cmp, label %while.body, label %while.cond.while.end_crit_edge

while.cond.while.end_crit_edge:                   ; preds = %cond.end
  %or.lcssa = phi i64 [ %or, %cond.end ]
  %10 = add i32 %6, 8
  br label %while.end

while.end:                                        ; preds = %while.cond.while.end_crit_edge, %entry
  %k.0.lcssa = phi i32 [ %10, %while.cond.while.end_crit_edge ], [ %2, %entry ]
  %b.0.lcssa = phi i64 [ %or.lcssa, %while.cond.while.end_crit_edge ], [ %1, %entry ]
  %conv4 = trunc i64 %b.0.lcssa to i32
  %and = and i32 %conv4, 31
  %add5 = add nuw nsw i32 %and, 257
  %shr = lshr i64 %b.0.lcssa, 5
  %sub = add i32 %k.0.lcssa, -5
  %cmp7540 = icmp ult i32 %sub, 5
  br i1 %cmp7540, label %while.body9.lr.ph, label %while.end27

while.body9.lr.ph:                                ; preds = %while.end
  %11 = zext i32 %sub to i64
  %12 = sub i32 9, %k.0.lcssa
  %13 = and i32 %12, -8
  %14 = add i32 %k.0.lcssa, %13
  br label %while.body9

while.body9:                                      ; preds = %cond.end19, %while.body9.lr.ph
  %indvars.iv601 = phi i64 [ %11, %while.body9.lr.ph ], [ %indvars.iv.next602, %cond.end19 ]
  %k.1542 = phi i32 [ %sub, %while.body9.lr.ph ], [ %add26, %cond.end19 ]
  %b.1541 = phi i64 [ %shr, %while.body9.lr.ph ], [ %or25, %cond.end19 ]
  %15 = load i32* @inptr, align 4, !tbaa !1
  %16 = load i32* @insize, align 4, !tbaa !1
  %cmp10 = icmp ult i32 %15, %16
  br i1 %cmp10, label %cond.true12, label %cond.false17

cond.true12:                                      ; preds = %while.body9
  %inc13 = add i32 %15, 1
  store i32 %inc13, i32* @inptr, align 4, !tbaa !1
  %idxprom14 = zext i32 %15 to i64
  %arrayidx15 = getelementptr inbounds [0 x i8]* bitcast ([32832 x i8]* @inbuf to [0 x i8]*), i64 0, i64 %idxprom14
  %17 = load i8* %arrayidx15, align 1, !tbaa !9
  %conv16 = zext i8 %17 to i32
  br label %cond.end19

cond.false17:                                     ; preds = %while.body9
  %call18 = tail call i32 @fill_inbuf(i32 0) #2
  br label %cond.end19

cond.end19:                                       ; preds = %cond.false17, %cond.true12
  %cond20 = phi i32 [ %conv16, %cond.true12 ], [ %call18, %cond.false17 ]
  %conv21 = zext i32 %cond20 to i64
  %conv22 = and i64 %conv21, 255
  %shl24 = shl i64 %conv22, %indvars.iv601
  %or25 = or i64 %shl24, %b.1541
  %add26 = add i32 %k.1542, 8
  %cmp7 = icmp ult i32 %add26, 5
  %indvars.iv.next602 = add nuw nsw i64 %indvars.iv601, 8
  br i1 %cmp7, label %while.body9, label %while.cond6.while.end27_crit_edge

while.cond6.while.end27_crit_edge:                ; preds = %cond.end19
  %or25.lcssa = phi i64 [ %or25, %cond.end19 ]
  %18 = add i32 %14, 3
  br label %while.end27

while.end27:                                      ; preds = %while.cond6.while.end27_crit_edge, %while.end
  %k.1.lcssa = phi i32 [ %18, %while.cond6.while.end27_crit_edge ], [ %sub, %while.end ]
  %b.1.lcssa = phi i64 [ %or25.lcssa, %while.cond6.while.end27_crit_edge ], [ %shr, %while.end ]
  %conv28 = trunc i64 %b.1.lcssa to i32
  %and29 = and i32 %conv28, 31
  %add30 = add nuw nsw i32 %and29, 1
  %shr31 = lshr i64 %b.1.lcssa, 5
  %sub32 = add i32 %k.1.lcssa, -5
  %cmp34535 = icmp ult i32 %sub32, 4
  br i1 %cmp34535, label %while.body36.lr.ph, label %while.end54

while.body36.lr.ph:                               ; preds = %while.end27
  %19 = zext i32 %sub32 to i64
  %20 = sub i32 8, %k.1.lcssa
  %21 = and i32 %20, -8
  %22 = add i32 %k.1.lcssa, %21
  br label %while.body36

while.body36:                                     ; preds = %cond.end46, %while.body36.lr.ph
  %indvars.iv598 = phi i64 [ %19, %while.body36.lr.ph ], [ %indvars.iv.next599, %cond.end46 ]
  %k.2537 = phi i32 [ %sub32, %while.body36.lr.ph ], [ %add53, %cond.end46 ]
  %b.2536 = phi i64 [ %shr31, %while.body36.lr.ph ], [ %or52, %cond.end46 ]
  %23 = load i32* @inptr, align 4, !tbaa !1
  %24 = load i32* @insize, align 4, !tbaa !1
  %cmp37 = icmp ult i32 %23, %24
  br i1 %cmp37, label %cond.true39, label %cond.false44

cond.true39:                                      ; preds = %while.body36
  %inc40 = add i32 %23, 1
  store i32 %inc40, i32* @inptr, align 4, !tbaa !1
  %idxprom41 = zext i32 %23 to i64
  %arrayidx42 = getelementptr inbounds [0 x i8]* bitcast ([32832 x i8]* @inbuf to [0 x i8]*), i64 0, i64 %idxprom41
  %25 = load i8* %arrayidx42, align 1, !tbaa !9
  %conv43 = zext i8 %25 to i32
  br label %cond.end46

cond.false44:                                     ; preds = %while.body36
  %call45 = tail call i32 @fill_inbuf(i32 0) #2
  br label %cond.end46

cond.end46:                                       ; preds = %cond.false44, %cond.true39
  %cond47 = phi i32 [ %conv43, %cond.true39 ], [ %call45, %cond.false44 ]
  %conv48 = zext i32 %cond47 to i64
  %conv49 = and i64 %conv48, 255
  %shl51 = shl i64 %conv49, %indvars.iv598
  %or52 = or i64 %shl51, %b.2536
  %add53 = add i32 %k.2537, 8
  %cmp34 = icmp ult i32 %add53, 4
  %indvars.iv.next599 = add nuw nsw i64 %indvars.iv598, 8
  br i1 %cmp34, label %while.body36, label %while.cond33.while.end54_crit_edge

while.cond33.while.end54_crit_edge:               ; preds = %cond.end46
  %or52.lcssa = phi i64 [ %or52, %cond.end46 ]
  %26 = add i32 %22, 3
  br label %while.end54

while.end54:                                      ; preds = %while.cond33.while.end54_crit_edge, %while.end27
  %k.2.lcssa = phi i32 [ %26, %while.cond33.while.end54_crit_edge ], [ %sub32, %while.end27 ]
  %b.2.lcssa = phi i64 [ %or52.lcssa, %while.cond33.while.end54_crit_edge ], [ %shr31, %while.end27 ]
  %cmp60 = icmp ugt i32 %add5, 286
  %cmp62 = icmp ugt i32 %add30, 30
  %or.cond = or i1 %cmp60, %cmp62
  br i1 %or.cond, label %cleanup, label %if.end

if.end:                                           ; preds = %while.end54
  %sub59 = add i32 %k.2.lcssa, -4
  %shr58 = lshr i64 %b.2.lcssa, 4
  %27 = trunc i64 %b.2.lcssa to i32
  %28 = and i32 %27, 15
  %29 = add nuw nsw i32 %28, 4
  br label %while.cond66.preheader

while.cond66.preheader:                           ; preds = %while.end87, %if.end
  %indvars.iv594 = phi i64 [ 0, %if.end ], [ %indvars.iv.next595, %while.end87 ]
  %k.3534 = phi i32 [ %sub59, %if.end ], [ %sub95, %while.end87 ]
  %b.3533 = phi i64 [ %shr58, %if.end ], [ %shr94, %while.end87 ]
  %cmp67527 = icmp ult i32 %k.3534, 3
  br i1 %cmp67527, label %while.body69.lr.ph, label %while.end87

while.body69.lr.ph:                               ; preds = %while.cond66.preheader
  %30 = zext i32 %k.3534 to i64
  %31 = sub i32 2, %k.3534
  %32 = and i32 %31, -8
  br label %while.body69

for.cond97.preheader:                             ; preds = %while.end87
  %sub95.lcssa = phi i32 [ %sub95, %while.end87 ]
  %shr94.lcssa = phi i64 [ %shr94, %while.end87 ]
  %33 = add nuw nsw i32 %28, 4
  %cmp98525 = icmp ult i32 %33, 19
  br i1 %cmp98525, label %for.body100.lr.ph, label %for.end107

for.body100.lr.ph:                                ; preds = %for.cond97.preheader
  %34 = zext i32 %33 to i64
  %35 = and i64 %b.2.lcssa, 15
  %36 = sub i64 14, %35
  %37 = and i64 %36, 4294967295
  %38 = add nuw nsw i64 %37, 1
  %end.idx = add nuw nsw i64 %38, %34
  %fold663 = and i64 %36, 1
  %n.mod.vf = xor i64 %fold663, 1
  %n.vec = sub i64 %38, %n.mod.vf
  %end.idx.rnd.down = add nsw i64 %n.vec, %34
  %cmp.zero = icmp eq i64 %38, %n.mod.vf
  br i1 %cmp.zero, label %middle.block, label %vector.body.preheader

vector.body.preheader:                            ; preds = %for.body100.lr.ph
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.body.preheader
  %index = phi i64 [ %index.next, %vector.body ], [ %34, %vector.body.preheader ]
  %induction633 = add i64 %index, 1
  %39 = getelementptr inbounds [19 x i32]* @border, i64 0, i64 %index
  %40 = getelementptr inbounds [19 x i32]* @border, i64 0, i64 %induction633
  %41 = load i32* %39, align 4, !tbaa !1
  %42 = load i32* %40, align 4, !tbaa !1
  %43 = zext i32 %41 to i64
  %44 = zext i32 %42 to i64
  %45 = getelementptr inbounds [316 x i32]* %ll, i64 0, i64 %43
  %46 = getelementptr inbounds [316 x i32]* %ll, i64 0, i64 %44
  store i32 0, i32* %45, align 4, !tbaa !1
  store i32 0, i32* %46, align 4, !tbaa !1
  %index.next = add i64 %index, 2
  %47 = icmp eq i64 %index.next, %end.idx.rnd.down
  br i1 %47, label %middle.block.loopexit, label %vector.body, !llvm.loop !39

middle.block.loopexit:                            ; preds = %vector.body
  br label %middle.block

middle.block:                                     ; preds = %middle.block.loopexit, %for.body100.lr.ph
  %resume.val = phi i64 [ %34, %for.body100.lr.ph ], [ %end.idx.rnd.down, %middle.block.loopexit ]
  %cmp.n = icmp eq i64 %end.idx, %resume.val
  br i1 %cmp.n, label %for.end107, label %for.body100.preheader

for.body100.preheader:                            ; preds = %middle.block
  %48 = add i64 %resume.val, 1
  %49 = trunc i64 %48 to i32
  %50 = sub i32 20, %49
  %xtraiter706 = and i32 %50, 1
  %lcmp.mod707 = icmp ne i32 %xtraiter706, 0
  %lcmp.overflow708 = icmp eq i32 %50, 0
  %lcmp.or709 = or i1 %lcmp.overflow708, %lcmp.mod707
  br i1 %lcmp.or709, label %for.body100.unr, label %for.body100.preheader.split

for.body100.unr:                                  ; preds = %for.body100.preheader
  %arrayidx102.unr = getelementptr inbounds [19 x i32]* @border, i64 0, i64 %resume.val
  %51 = load i32* %arrayidx102.unr, align 4, !tbaa !1
  %idxprom103.unr = zext i32 %51 to i64
  %arrayidx104.unr = getelementptr inbounds [316 x i32]* %ll, i64 0, i64 %idxprom103.unr
  store i32 0, i32* %arrayidx104.unr, align 4, !tbaa !1
  %indvars.iv.next589.unr = add nuw nsw i64 %resume.val, 1
  %lftr.wideiv.unr = trunc i64 %indvars.iv.next589.unr to i32
  %exitcond.unr = icmp eq i32 %lftr.wideiv.unr, 19
  br label %for.body100.preheader.split

for.body100.preheader.split:                      ; preds = %for.body100.unr, %for.body100.preheader
  %indvars.iv588.unr = phi i64 [ %resume.val, %for.body100.preheader ], [ %indvars.iv.next589.unr, %for.body100.unr ]
  %52 = icmp ult i32 %50, 2
  br i1 %52, label %for.end107.loopexit, label %for.body100.preheader.split.split

for.body100.preheader.split.split:                ; preds = %for.body100.preheader.split
  br label %for.body100

while.body69:                                     ; preds = %cond.end79, %while.body69.lr.ph
  %indvars.iv591 = phi i64 [ %30, %while.body69.lr.ph ], [ %indvars.iv.next592, %cond.end79 ]
  %k.4529 = phi i32 [ %k.3534, %while.body69.lr.ph ], [ %add86, %cond.end79 ]
  %b.4528 = phi i64 [ %b.3533, %while.body69.lr.ph ], [ %or85, %cond.end79 ]
  %53 = load i32* @inptr, align 4, !tbaa !1
  %54 = load i32* @insize, align 4, !tbaa !1
  %cmp70 = icmp ult i32 %53, %54
  br i1 %cmp70, label %cond.true72, label %cond.false77

cond.true72:                                      ; preds = %while.body69
  %inc73 = add i32 %53, 1
  store i32 %inc73, i32* @inptr, align 4, !tbaa !1
  %idxprom74 = zext i32 %53 to i64
  %arrayidx75 = getelementptr inbounds [0 x i8]* bitcast ([32832 x i8]* @inbuf to [0 x i8]*), i64 0, i64 %idxprom74
  %55 = load i8* %arrayidx75, align 1, !tbaa !9
  %conv76 = zext i8 %55 to i32
  br label %cond.end79

cond.false77:                                     ; preds = %while.body69
  %call78 = tail call i32 @fill_inbuf(i32 0) #2
  br label %cond.end79

cond.end79:                                       ; preds = %cond.false77, %cond.true72
  %cond80 = phi i32 [ %conv76, %cond.true72 ], [ %call78, %cond.false77 ]
  %conv81 = zext i32 %cond80 to i64
  %conv82 = and i64 %conv81, 255
  %shl84 = shl i64 %conv82, %indvars.iv591
  %or85 = or i64 %shl84, %b.4528
  %add86 = add i32 %k.4529, 8
  %cmp67 = icmp ult i32 %add86, 3
  %indvars.iv.next592 = add nuw nsw i64 %indvars.iv591, 8
  br i1 %cmp67, label %while.body69, label %while.cond66.while.end87_crit_edge

while.cond66.while.end87_crit_edge:               ; preds = %cond.end79
  %or85.lcssa = phi i64 [ %or85, %cond.end79 ]
  %56 = add i32 %k.3534, 8
  %57 = add i32 %56, %32
  br label %while.end87

while.end87:                                      ; preds = %while.cond66.while.end87_crit_edge, %while.cond66.preheader
  %k.4.lcssa = phi i32 [ %57, %while.cond66.while.end87_crit_edge ], [ %k.3534, %while.cond66.preheader ]
  %b.4.lcssa = phi i64 [ %or85.lcssa, %while.cond66.while.end87_crit_edge ], [ %b.3533, %while.cond66.preheader ]
  %conv88 = trunc i64 %b.4.lcssa to i32
  %and89 = and i32 %conv88, 7
  %arrayidx91 = getelementptr inbounds [19 x i32]* @border, i64 0, i64 %indvars.iv594
  %58 = load i32* %arrayidx91, align 4, !tbaa !1
  %idxprom92 = zext i32 %58 to i64
  %arrayidx93 = getelementptr inbounds [316 x i32]* %ll, i64 0, i64 %idxprom92
  store i32 %and89, i32* %arrayidx93, align 4, !tbaa !1
  %shr94 = lshr i64 %b.4.lcssa, 3
  %sub95 = add i32 %k.4.lcssa, -3
  %indvars.iv.next595 = add nuw nsw i64 %indvars.iv594, 1
  %lftr.wideiv596 = trunc i64 %indvars.iv.next595 to i32
  %exitcond597 = icmp eq i32 %lftr.wideiv596, %29
  br i1 %exitcond597, label %for.cond97.preheader, label %while.cond66.preheader

for.body100:                                      ; preds = %for.body100, %for.body100.preheader.split.split
  %indvars.iv588 = phi i64 [ %indvars.iv588.unr, %for.body100.preheader.split.split ], [ %indvars.iv.next589.1, %for.body100 ]
  %arrayidx102 = getelementptr inbounds [19 x i32]* @border, i64 0, i64 %indvars.iv588
  %59 = load i32* %arrayidx102, align 4, !tbaa !1
  %idxprom103 = zext i32 %59 to i64
  %arrayidx104 = getelementptr inbounds [316 x i32]* %ll, i64 0, i64 %idxprom103
  store i32 0, i32* %arrayidx104, align 4, !tbaa !1
  %indvars.iv.next589 = add nuw nsw i64 %indvars.iv588, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next589 to i32
  %arrayidx102.1 = getelementptr inbounds [19 x i32]* @border, i64 0, i64 %indvars.iv.next589
  %60 = load i32* %arrayidx102.1, align 4, !tbaa !1
  %idxprom103.1 = zext i32 %60 to i64
  %arrayidx104.1 = getelementptr inbounds [316 x i32]* %ll, i64 0, i64 %idxprom103.1
  store i32 0, i32* %arrayidx104.1, align 4, !tbaa !1
  %indvars.iv.next589.1 = add nuw nsw i64 %indvars.iv.next589, 1
  %lftr.wideiv.1 = trunc i64 %indvars.iv.next589.1 to i32
  %exitcond.1 = icmp eq i32 %lftr.wideiv.1, 19
  br i1 %exitcond.1, label %for.end107.loopexit.unr-lcssa, label %for.body100, !llvm.loop !40

for.end107.loopexit.unr-lcssa:                    ; preds = %for.body100
  br label %for.end107.loopexit

for.end107.loopexit:                              ; preds = %for.end107.loopexit.unr-lcssa, %for.body100.preheader.split
  br label %for.end107

for.end107:                                       ; preds = %for.end107.loopexit, %middle.block, %for.cond97.preheader
  store i32 7, i32* %bl, align 4, !tbaa !1
  %arraydecay = getelementptr inbounds [316 x i32]* %ll, i64 0, i64 0
  %call108 = call i32 @huft_build(i32* %arraydecay, i32 19, i32 19, i16* null, i16* null, %struct.huft** %tl, i32* %bl)
  switch i32 %call108, label %cleanup [
    i32 0, label %if.end117
    i32 1, label %if.then114
  ]

if.then114:                                       ; preds = %for.end107
  %61 = load %struct.huft** %tl, align 8, !tbaa !7
  %cmp4.i = icmp eq %struct.huft* %61, null
  br i1 %cmp4.i, label %cleanup, label %while.body.i.preheader

while.body.i.preheader:                           ; preds = %if.then114
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i, %while.body.i.preheader
  %p.05.i = phi %struct.huft* [ %62, %while.body.i ], [ %61, %while.body.i.preheader ]
  %t1.i = getelementptr inbounds %struct.huft* %p.05.i, i64 -1, i32 2, i32 0
  %62 = load %struct.huft** %t1.i, align 8, !tbaa !7
  %63 = getelementptr inbounds %struct.huft* %p.05.i, i64 -1, i32 0
  tail call void @free(i8* %63) #2
  %cmp.i = icmp eq %struct.huft* %62, null
  br i1 %cmp.i, label %cleanup.loopexit667, label %while.body.i

if.end117:                                        ; preds = %for.end107
  %add118 = add nuw nsw i32 %add30, %add5
  %64 = load i32* %bl, align 4, !tbaa !1
  %idxprom119 = sext i32 %64 to i64
  %arrayidx120 = getelementptr inbounds [17 x i16]* @mask_bits, i64 0, i64 %idxprom119
  %65 = load i16* %arrayidx120, align 2, !tbaa !5
  %conv121 = zext i16 %65 to i64
  %66 = load %struct.huft** %tl, align 8, !tbaa !7
  br label %while.cond126.preheader.lr.ph

while.cond122.loopexit458.unr-lcssa:              ; preds = %while.body199
  br label %while.cond122.loopexit458

while.cond122.loopexit458:                        ; preds = %while.cond198.preheader.split, %while.cond122.loopexit458.unr-lcssa
  %67 = add nsw i64 %91, 1
  %68 = add nsw i64 %67, %94
  %69 = trunc i64 %68 to i32
  %cmp123 = icmp ult i32 %69, %add118
  br i1 %cmp123, label %while.cond126.preheader, label %while.cond122.while.end292_crit_edge

while.cond126.preheader.lr.ph:                    ; preds = %while.cond122.outer.backedge, %if.end117
  %k.5.ph524 = phi i32 [ %sub95.lcssa, %if.end117 ], [ %k.5.ph.be, %while.cond122.outer.backedge ]
  %b.5.ph523 = phi i64 [ %shr94.lcssa, %if.end117 ], [ %b.5.ph.be, %while.cond122.outer.backedge ]
  %i.0.ph522 = phi i32 [ 0, %if.end117 ], [ %i.0.ph.be, %while.cond122.outer.backedge ]
  %l.0.ph521 = phi i32 [ 0, %if.end117 ], [ %l.0.ph.be, %while.cond122.outer.backedge ]
  br label %while.cond126.preheader

while.cond126.preheader:                          ; preds = %while.cond126.preheader.lr.ph, %while.cond122.loopexit458
  %k.5498 = phi i32 [ %k.5.ph524, %while.cond126.preheader.lr.ph ], [ %sub192, %while.cond122.loopexit458 ]
  %b.5497 = phi i64 [ %b.5.ph523, %while.cond126.preheader.lr.ph ], [ %shr191, %while.cond122.loopexit458 ]
  %i.0496 = phi i32 [ %i.0.ph522, %while.cond126.preheader.lr.ph ], [ %69, %while.cond122.loopexit458 ]
  %cmp127484 = icmp ult i32 %k.5498, %64
  br i1 %cmp127484, label %while.body129.preheader, label %while.end147

while.body129.preheader:                          ; preds = %while.cond126.preheader
  br label %while.body129

while.body129:                                    ; preds = %cond.end139, %while.body129.preheader
  %k.6486 = phi i32 [ %add146, %cond.end139 ], [ %k.5498, %while.body129.preheader ]
  %b.6485 = phi i64 [ %or145, %cond.end139 ], [ %b.5497, %while.body129.preheader ]
  %70 = load i32* @inptr, align 4, !tbaa !1
  %71 = load i32* @insize, align 4, !tbaa !1
  %cmp130 = icmp ult i32 %70, %71
  br i1 %cmp130, label %cond.true132, label %cond.false137

cond.true132:                                     ; preds = %while.body129
  %inc133 = add i32 %70, 1
  store i32 %inc133, i32* @inptr, align 4, !tbaa !1
  %idxprom134 = zext i32 %70 to i64
  %arrayidx135 = getelementptr inbounds [0 x i8]* bitcast ([32832 x i8]* @inbuf to [0 x i8]*), i64 0, i64 %idxprom134
  %72 = load i8* %arrayidx135, align 1, !tbaa !9
  %conv136 = zext i8 %72 to i32
  br label %cond.end139

cond.false137:                                    ; preds = %while.body129
  %call138 = tail call i32 @fill_inbuf(i32 0) #2
  br label %cond.end139

cond.end139:                                      ; preds = %cond.false137, %cond.true132
  %cond140 = phi i32 [ %conv136, %cond.true132 ], [ %call138, %cond.false137 ]
  %conv141 = zext i32 %cond140 to i64
  %conv142 = and i64 %conv141, 255
  %sh_prom143 = zext i32 %k.6486 to i64
  %shl144 = shl i64 %conv142, %sh_prom143
  %or145 = or i64 %shl144, %b.6485
  %add146 = add i32 %k.6486, 8
  %cmp127 = icmp ult i32 %add146, %64
  br i1 %cmp127, label %while.body129, label %while.end147.loopexit

while.end147.loopexit:                            ; preds = %cond.end139
  %add146.lcssa = phi i32 [ %add146, %cond.end139 ]
  %or145.lcssa = phi i64 [ %or145, %cond.end139 ]
  br label %while.end147

while.end147:                                     ; preds = %while.end147.loopexit, %while.cond126.preheader
  %k.6.lcssa = phi i32 [ %k.5498, %while.cond126.preheader ], [ %add146.lcssa, %while.end147.loopexit ]
  %b.6.lcssa = phi i64 [ %b.5497, %while.cond126.preheader ], [ %or145.lcssa, %while.end147.loopexit ]
  %and149 = and i64 %b.6.lcssa, %conv121
  %add.ptr = getelementptr inbounds %struct.huft* %66, i64 %and149
  %b150 = getelementptr inbounds %struct.huft* %66, i64 %and149, i32 1
  %73 = load i8* %b150, align 1, !tbaa !38
  %conv151 = zext i8 %73 to i32
  %sh_prom152 = zext i8 %73 to i64
  %shr153 = lshr i64 %b.6.lcssa, %sh_prom152
  %sub154 = sub i32 %k.6.lcssa, %conv151
  %v = getelementptr inbounds %struct.huft* %66, i64 %and149, i32 2
  %n155 = bitcast %union.anon* %v to i16*
  %74 = load i16* %n155, align 2, !tbaa !5
  %cmp157 = icmp ult i16 %74, 16
  br i1 %cmp157, label %if.then159, label %if.else

if.then159:                                       ; preds = %while.end147
  %.lcssa = phi i16 [ %74, %while.end147 ]
  %sub154.lcssa = phi i32 [ %sub154, %while.end147 ]
  %shr153.lcssa = phi i64 [ %shr153, %while.end147 ]
  %add.ptr.lcssa = phi %struct.huft* [ %add.ptr, %while.end147 ]
  %i.0496.lcssa = phi i32 [ %i.0496, %while.end147 ]
  store %struct.huft* %add.ptr.lcssa, %struct.huft** %td, align 8, !tbaa !7
  %conv156.le = zext i16 %.lcssa to i32
  %inc160 = add nsw i32 %i.0496.lcssa, 1
  %idxprom161 = sext i32 %i.0496.lcssa to i64
  %arrayidx162 = getelementptr inbounds [316 x i32]* %ll, i64 0, i64 %idxprom161
  store i32 %conv156.le, i32* %arrayidx162, align 4, !tbaa !1
  br label %while.cond122.outer.backedge

while.cond122.outer.backedge:                     ; preds = %while.cond281.preheader, %while.cond240.preheader, %if.then159
  %l.0.ph.be = phi i32 [ 0, %while.cond240.preheader ], [ 0, %while.cond281.preheader ], [ %conv156.le, %if.then159 ]
  %i.0.ph.be = phi i32 [ %112, %while.cond240.preheader ], [ %126, %while.cond281.preheader ], [ %inc160, %if.then159 ]
  %b.5.ph.be = phi i64 [ %shr233, %while.cond240.preheader ], [ %shr274, %while.cond281.preheader ], [ %shr153.lcssa, %if.then159 ]
  %k.5.ph.be = phi i32 [ %sub234, %while.cond240.preheader ], [ %sub275, %while.cond281.preheader ], [ %sub154.lcssa, %if.then159 ]
  %cmp123495 = icmp ult i32 %i.0.ph.be, %add118
  br i1 %cmp123495, label %while.cond126.preheader.lr.ph, label %while.end292.loopexit

if.else:                                          ; preds = %while.end147
  switch i16 %74, label %while.cond249.preheader [
    i16 16, label %while.cond166.preheader
    i16 17, label %while.cond208.preheader
  ]

while.cond208.preheader:                          ; preds = %if.else
  %sub154.lcssa681 = phi i32 [ %sub154, %if.else ]
  %shr153.lcssa677 = phi i64 [ %shr153, %if.else ]
  %add.ptr.lcssa673 = phi %struct.huft* [ %add.ptr, %if.else ]
  %i.0496.lcssa669 = phi i32 [ %i.0496, %if.else ]
  store %struct.huft* %add.ptr.lcssa673, %struct.huft** %td, align 8, !tbaa !7
  %cmp209507 = icmp ult i32 %sub154.lcssa681, 3
  br i1 %cmp209507, label %while.body211.lr.ph, label %while.end229

while.body211.lr.ph:                              ; preds = %while.cond208.preheader
  %75 = zext i32 %sub154.lcssa681 to i64
  %76 = sub i32 2, %sub154.lcssa681
  %77 = and i32 %76, -8
  br label %while.body211

while.cond166.preheader:                          ; preds = %if.else
  %cmp167488 = icmp ult i32 %sub154, 2
  br i1 %cmp167488, label %while.body169.lr.ph, label %while.end187

while.body169.lr.ph:                              ; preds = %while.cond166.preheader
  %78 = zext i32 %sub154 to i64
  %79 = add i32 %k.6.lcssa, 8
  %80 = add nuw nsw i32 %conv151, 1
  %81 = sub i32 %80, %k.6.lcssa
  %82 = and i32 %81, -8
  %83 = add i32 %79, %82
  br label %while.body169

while.cond249.preheader:                          ; preds = %if.else
  %sub154.lcssa680 = phi i32 [ %sub154, %if.else ]
  %shr153.lcssa676 = phi i64 [ %shr153, %if.else ]
  %add.ptr.lcssa672 = phi %struct.huft* [ %add.ptr, %if.else ]
  %i.0496.lcssa668 = phi i32 [ %i.0496, %if.else ]
  store %struct.huft* %add.ptr.lcssa672, %struct.huft** %td, align 8, !tbaa !7
  %cmp250514 = icmp ult i32 %sub154.lcssa680, 7
  br i1 %cmp250514, label %while.body252.lr.ph, label %while.end270

while.body252.lr.ph:                              ; preds = %while.cond249.preheader
  %84 = zext i32 %sub154.lcssa680 to i64
  %85 = sub i32 6, %sub154.lcssa680
  %86 = and i32 %85, -8
  br label %while.body252

while.body169:                                    ; preds = %cond.end179, %while.body169.lr.ph
  %indvars.iv = phi i64 [ %78, %while.body169.lr.ph ], [ %indvars.iv.next, %cond.end179 ]
  %k.7490 = phi i32 [ %sub154, %while.body169.lr.ph ], [ %add186, %cond.end179 ]
  %b.7489 = phi i64 [ %shr153, %while.body169.lr.ph ], [ %or185, %cond.end179 ]
  %87 = load i32* @inptr, align 4, !tbaa !1
  %88 = load i32* @insize, align 4, !tbaa !1
  %cmp170 = icmp ult i32 %87, %88
  br i1 %cmp170, label %cond.true172, label %cond.false177

cond.true172:                                     ; preds = %while.body169
  %inc173 = add i32 %87, 1
  store i32 %inc173, i32* @inptr, align 4, !tbaa !1
  %idxprom174 = zext i32 %87 to i64
  %arrayidx175 = getelementptr inbounds [0 x i8]* bitcast ([32832 x i8]* @inbuf to [0 x i8]*), i64 0, i64 %idxprom174
  %89 = load i8* %arrayidx175, align 1, !tbaa !9
  %conv176 = zext i8 %89 to i32
  br label %cond.end179

cond.false177:                                    ; preds = %while.body169
  %call178 = tail call i32 @fill_inbuf(i32 0) #2
  br label %cond.end179

cond.end179:                                      ; preds = %cond.false177, %cond.true172
  %cond180 = phi i32 [ %conv176, %cond.true172 ], [ %call178, %cond.false177 ]
  %conv181 = zext i32 %cond180 to i64
  %conv182 = and i64 %conv181, 255
  %shl184 = shl i64 %conv182, %indvars.iv
  %or185 = or i64 %shl184, %b.7489
  %add186 = add i32 %k.7490, 8
  %cmp167 = icmp ult i32 %add186, 2
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 8
  br i1 %cmp167, label %while.body169, label %while.cond166.while.end187_crit_edge

while.cond166.while.end187_crit_edge:             ; preds = %cond.end179
  %or185.lcssa = phi i64 [ %or185, %cond.end179 ]
  %90 = sub i32 %83, %conv151
  br label %while.end187

while.end187:                                     ; preds = %while.cond166.while.end187_crit_edge, %while.cond166.preheader
  %k.7.lcssa = phi i32 [ %90, %while.cond166.while.end187_crit_edge ], [ %sub154, %while.cond166.preheader ]
  %b.7.lcssa = phi i64 [ %or185.lcssa, %while.cond166.while.end187_crit_edge ], [ %shr153, %while.cond166.preheader ]
  %conv188 = trunc i64 %b.7.lcssa to i32
  %and189 = and i32 %conv188, 3
  %add190 = add nuw nsw i32 %and189, 3
  %shr191 = lshr i64 %b.7.lcssa, 2
  %sub192 = add i32 %k.7.lcssa, -2
  %add193 = add i32 %add190, %i.0496
  %cmp194 = icmp ugt i32 %add193, %add118
  br i1 %cmp194, label %cleanup.loopexit460.loopexit, label %while.cond198.preheader

while.cond198.preheader:                          ; preds = %while.end187
  %91 = sext i32 %i.0496 to i64
  %92 = and i64 %b.7.lcssa, 3
  %93 = add nuw nsw i64 %92, 2
  %94 = and i64 %93, 7
  %95 = trunc i64 %b.7.lcssa to i2
  %96 = zext i2 %95 to i32
  %97 = add i32 %96, 3
  %xtraiter = and i32 %97, 3
  %lcmp.mod = icmp ne i32 %xtraiter, 0
  %lcmp.overflow = icmp eq i32 %97, 0
  %lcmp.or = or i1 %lcmp.overflow, %lcmp.mod
  br i1 %lcmp.or, label %unr.cmp702, label %while.cond198.preheader.split

unr.cmp702:                                       ; preds = %while.cond198.preheader
  %un.tmp703 = icmp eq i32 %xtraiter, 1
  br i1 %un.tmp703, label %while.body199.unr695, label %unr.cmp

unr.cmp:                                          ; preds = %unr.cmp702
  %un.tmp = icmp eq i32 %xtraiter, 2
  br i1 %un.tmp, label %while.body199.unr690, label %while.body199.unr

while.body199.unr:                                ; preds = %unr.cmp
  %dec.unr = add i32 %add190, -1
  %indvars.iv.next574.unr = add nsw i64 %91, 1
  %arrayidx202.unr = getelementptr inbounds [316 x i32]* %ll, i64 0, i64 %91
  store i32 %l.0.ph521, i32* %arrayidx202.unr, align 4, !tbaa !1
  %tobool.unr = icmp eq i32 %dec.unr, 0
  br label %while.body199.unr690

while.body199.unr690:                             ; preds = %while.body199.unr, %unr.cmp
  %indvars.iv573.unr = phi i64 [ %91, %unr.cmp ], [ %indvars.iv.next574.unr, %while.body199.unr ]
  %j.2493.unr = phi i32 [ %add190, %unr.cmp ], [ %dec.unr, %while.body199.unr ]
  %dec.unr691 = add i32 %j.2493.unr, -1
  %indvars.iv.next574.unr692 = add nsw i64 %indvars.iv573.unr, 1
  %arrayidx202.unr693 = getelementptr inbounds [316 x i32]* %ll, i64 0, i64 %indvars.iv573.unr
  store i32 %l.0.ph521, i32* %arrayidx202.unr693, align 4, !tbaa !1
  %tobool.unr694 = icmp eq i32 %dec.unr691, 0
  br label %while.body199.unr695

while.body199.unr695:                             ; preds = %while.body199.unr690, %unr.cmp702
  %indvars.iv573.unr696 = phi i64 [ %91, %unr.cmp702 ], [ %indvars.iv.next574.unr692, %while.body199.unr690 ]
  %j.2493.unr697 = phi i32 [ %add190, %unr.cmp702 ], [ %dec.unr691, %while.body199.unr690 ]
  %dec.unr698 = add i32 %j.2493.unr697, -1
  %indvars.iv.next574.unr699 = add nsw i64 %indvars.iv573.unr696, 1
  %arrayidx202.unr700 = getelementptr inbounds [316 x i32]* %ll, i64 0, i64 %indvars.iv573.unr696
  store i32 %l.0.ph521, i32* %arrayidx202.unr700, align 4, !tbaa !1
  %tobool.unr701 = icmp eq i32 %dec.unr698, 0
  br label %while.cond198.preheader.split

while.cond198.preheader.split:                    ; preds = %while.body199.unr695, %while.cond198.preheader
  %indvars.iv573.unr704 = phi i64 [ %91, %while.cond198.preheader ], [ %indvars.iv.next574.unr699, %while.body199.unr695 ]
  %j.2493.unr705 = phi i32 [ %add190, %while.cond198.preheader ], [ %dec.unr698, %while.body199.unr695 ]
  %98 = icmp ult i32 %97, 4
  br i1 %98, label %while.cond122.loopexit458, label %while.cond198.preheader.split.split

while.cond198.preheader.split.split:              ; preds = %while.cond198.preheader.split
  br label %while.body199

while.body199:                                    ; preds = %while.body199, %while.cond198.preheader.split.split
  %indvars.iv573 = phi i64 [ %indvars.iv573.unr704, %while.cond198.preheader.split.split ], [ %indvars.iv.next574.3, %while.body199 ]
  %j.2493 = phi i32 [ %j.2493.unr705, %while.cond198.preheader.split.split ], [ %dec.3, %while.body199 ]
  %dec = add i32 %j.2493, -1
  %indvars.iv.next574 = add nsw i64 %indvars.iv573, 1
  %arrayidx202 = getelementptr inbounds [316 x i32]* %ll, i64 0, i64 %indvars.iv573
  store i32 %l.0.ph521, i32* %arrayidx202, align 4, !tbaa !1
  %dec.1 = add i32 %dec, -1
  %indvars.iv.next574.1 = add nsw i64 %indvars.iv.next574, 1
  %arrayidx202.1 = getelementptr inbounds [316 x i32]* %ll, i64 0, i64 %indvars.iv.next574
  store i32 %l.0.ph521, i32* %arrayidx202.1, align 4, !tbaa !1
  %dec.2 = add i32 %dec.1, -1
  %indvars.iv.next574.2 = add nsw i64 %indvars.iv.next574.1, 1
  %arrayidx202.2 = getelementptr inbounds [316 x i32]* %ll, i64 0, i64 %indvars.iv.next574.1
  store i32 %l.0.ph521, i32* %arrayidx202.2, align 4, !tbaa !1
  %dec.3 = add i32 %dec.2, -1
  %indvars.iv.next574.3 = add nsw i64 %indvars.iv.next574.2, 1
  %arrayidx202.3 = getelementptr inbounds [316 x i32]* %ll, i64 0, i64 %indvars.iv.next574.2
  store i32 %l.0.ph521, i32* %arrayidx202.3, align 4, !tbaa !1
  %tobool.3 = icmp eq i32 %dec.3, 0
  br i1 %tobool.3, label %while.cond122.loopexit458.unr-lcssa, label %while.body199, !llvm.loop !41

while.body211:                                    ; preds = %cond.end221, %while.body211.lr.ph
  %indvars.iv575 = phi i64 [ %75, %while.body211.lr.ph ], [ %indvars.iv.next576, %cond.end221 ]
  %k.8509 = phi i32 [ %sub154.lcssa681, %while.body211.lr.ph ], [ %add228, %cond.end221 ]
  %b.8508 = phi i64 [ %shr153.lcssa677, %while.body211.lr.ph ], [ %or227, %cond.end221 ]
  %99 = load i32* @inptr, align 4, !tbaa !1
  %100 = load i32* @insize, align 4, !tbaa !1
  %cmp212 = icmp ult i32 %99, %100
  br i1 %cmp212, label %cond.true214, label %cond.false219

cond.true214:                                     ; preds = %while.body211
  %inc215 = add i32 %99, 1
  store i32 %inc215, i32* @inptr, align 4, !tbaa !1
  %idxprom216 = zext i32 %99 to i64
  %arrayidx217 = getelementptr inbounds [0 x i8]* bitcast ([32832 x i8]* @inbuf to [0 x i8]*), i64 0, i64 %idxprom216
  %101 = load i8* %arrayidx217, align 1, !tbaa !9
  %conv218 = zext i8 %101 to i32
  br label %cond.end221

cond.false219:                                    ; preds = %while.body211
  %call220 = tail call i32 @fill_inbuf(i32 0) #2
  br label %cond.end221

cond.end221:                                      ; preds = %cond.false219, %cond.true214
  %cond222 = phi i32 [ %conv218, %cond.true214 ], [ %call220, %cond.false219 ]
  %conv223 = zext i32 %cond222 to i64
  %conv224 = and i64 %conv223, 255
  %shl226 = shl i64 %conv224, %indvars.iv575
  %or227 = or i64 %shl226, %b.8508
  %add228 = add i32 %k.8509, 8
  %cmp209 = icmp ult i32 %add228, 3
  %indvars.iv.next576 = add nuw nsw i64 %indvars.iv575, 8
  br i1 %cmp209, label %while.body211, label %while.cond208.while.end229_crit_edge

while.cond208.while.end229_crit_edge:             ; preds = %cond.end221
  %or227.lcssa = phi i64 [ %or227, %cond.end221 ]
  %102 = add i32 %sub154.lcssa681, 8
  %103 = add i32 %102, %77
  br label %while.end229

while.end229:                                     ; preds = %while.cond208.while.end229_crit_edge, %while.cond208.preheader
  %k.8.lcssa = phi i32 [ %103, %while.cond208.while.end229_crit_edge ], [ %sub154.lcssa681, %while.cond208.preheader ]
  %b.8.lcssa = phi i64 [ %or227.lcssa, %while.cond208.while.end229_crit_edge ], [ %shr153.lcssa677, %while.cond208.preheader ]
  %conv230 = trunc i64 %b.8.lcssa to i32
  %and231 = and i32 %conv230, 7
  %add232 = add nuw nsw i32 %and231, 3
  %add235 = add i32 %add232, %i.0496.lcssa669
  %cmp236 = icmp ugt i32 %add235, %add118
  br i1 %cmp236, label %cleanup.loopexit666, label %while.cond240.preheader

while.cond240.preheader:                          ; preds = %while.end229
  %sub234 = add i32 %k.8.lcssa, -3
  %shr233 = lshr i64 %b.8.lcssa, 3
  %104 = sext i32 %i.0496.lcssa669 to i64
  %105 = and i64 %b.8.lcssa, 7
  %106 = add nuw nsw i64 %105, 2
  %107 = and i64 %106, 15
  %scevgep = getelementptr [316 x i32]* %ll, i64 0, i64 %104
  %scevgep580 = bitcast i32* %scevgep to i8*
  %108 = shl nuw nsw i64 %107, 2
  %109 = add nuw nsw i64 %108, 4
  call void @llvm.memset.p0i8.i64(i8* %scevgep580, i8 0, i64 %109, i32 4, i1 false)
  %110 = add nsw i64 %104, 1
  %111 = add nsw i64 %110, %107
  %112 = trunc i64 %111 to i32
  br label %while.cond122.outer.backedge

while.body252:                                    ; preds = %cond.end262, %while.body252.lr.ph
  %indvars.iv581 = phi i64 [ %84, %while.body252.lr.ph ], [ %indvars.iv.next582, %cond.end262 ]
  %k.9516 = phi i32 [ %sub154.lcssa680, %while.body252.lr.ph ], [ %add269, %cond.end262 ]
  %b.9515 = phi i64 [ %shr153.lcssa676, %while.body252.lr.ph ], [ %or268, %cond.end262 ]
  %113 = load i32* @inptr, align 4, !tbaa !1
  %114 = load i32* @insize, align 4, !tbaa !1
  %cmp253 = icmp ult i32 %113, %114
  br i1 %cmp253, label %cond.true255, label %cond.false260

cond.true255:                                     ; preds = %while.body252
  %inc256 = add i32 %113, 1
  store i32 %inc256, i32* @inptr, align 4, !tbaa !1
  %idxprom257 = zext i32 %113 to i64
  %arrayidx258 = getelementptr inbounds [0 x i8]* bitcast ([32832 x i8]* @inbuf to [0 x i8]*), i64 0, i64 %idxprom257
  %115 = load i8* %arrayidx258, align 1, !tbaa !9
  %conv259 = zext i8 %115 to i32
  br label %cond.end262

cond.false260:                                    ; preds = %while.body252
  %call261 = tail call i32 @fill_inbuf(i32 0) #2
  br label %cond.end262

cond.end262:                                      ; preds = %cond.false260, %cond.true255
  %cond263 = phi i32 [ %conv259, %cond.true255 ], [ %call261, %cond.false260 ]
  %conv264 = zext i32 %cond263 to i64
  %conv265 = and i64 %conv264, 255
  %shl267 = shl i64 %conv265, %indvars.iv581
  %or268 = or i64 %shl267, %b.9515
  %add269 = add i32 %k.9516, 8
  %cmp250 = icmp ult i32 %add269, 7
  %indvars.iv.next582 = add nuw nsw i64 %indvars.iv581, 8
  br i1 %cmp250, label %while.body252, label %while.cond249.while.end270_crit_edge

while.cond249.while.end270_crit_edge:             ; preds = %cond.end262
  %or268.lcssa = phi i64 [ %or268, %cond.end262 ]
  %116 = add i32 %sub154.lcssa680, 8
  %117 = add i32 %116, %86
  br label %while.end270

while.end270:                                     ; preds = %while.cond249.while.end270_crit_edge, %while.cond249.preheader
  %k.9.lcssa = phi i32 [ %117, %while.cond249.while.end270_crit_edge ], [ %sub154.lcssa680, %while.cond249.preheader ]
  %b.9.lcssa = phi i64 [ %or268.lcssa, %while.cond249.while.end270_crit_edge ], [ %shr153.lcssa676, %while.cond249.preheader ]
  %conv271 = trunc i64 %b.9.lcssa to i32
  %and272 = and i32 %conv271, 127
  %add273 = add nuw nsw i32 %and272, 11
  %add276 = add i32 %add273, %i.0496.lcssa668
  %cmp277 = icmp ugt i32 %add276, %add118
  br i1 %cmp277, label %cleanup.loopexit666, label %while.cond281.preheader

while.cond281.preheader:                          ; preds = %while.end270
  %sub275 = add i32 %k.9.lcssa, -7
  %shr274 = lshr i64 %b.9.lcssa, 7
  %118 = sext i32 %i.0496.lcssa668 to i64
  %119 = and i64 %b.9.lcssa, 127
  %120 = add nuw nsw i64 %119, 10
  %121 = and i64 %120, 255
  %scevgep586 = getelementptr [316 x i32]* %ll, i64 0, i64 %118
  %scevgep586587 = bitcast i32* %scevgep586 to i8*
  %122 = shl nuw nsw i64 %121, 2
  %123 = add nuw nsw i64 %122, 4
  call void @llvm.memset.p0i8.i64(i8* %scevgep586587, i8 0, i64 %123, i32 4, i1 false)
  %124 = add nsw i64 %118, 1
  %125 = add nsw i64 %124, %121
  %126 = trunc i64 %125 to i32
  br label %while.cond122.outer.backedge

while.cond122.while.end292_crit_edge:             ; preds = %while.cond122.loopexit458
  %sub192.lcssa689 = phi i32 [ %sub192, %while.cond122.loopexit458 ]
  %shr191.lcssa688 = phi i64 [ %shr191, %while.cond122.loopexit458 ]
  %add.ptr.lcssa675 = phi %struct.huft* [ %add.ptr, %while.cond122.loopexit458 ]
  store %struct.huft* %add.ptr.lcssa675, %struct.huft** %td, align 8, !tbaa !7
  br label %while.end292

while.end292.loopexit:                            ; preds = %while.cond122.outer.backedge
  %k.5.ph.be.lcssa = phi i32 [ %k.5.ph.be, %while.cond122.outer.backedge ]
  %b.5.ph.be.lcssa = phi i64 [ %b.5.ph.be, %while.cond122.outer.backedge ]
  br label %while.end292

while.end292:                                     ; preds = %while.end292.loopexit, %while.cond122.while.end292_crit_edge
  %k.5.lcssa = phi i32 [ %sub192.lcssa689, %while.cond122.while.end292_crit_edge ], [ %k.5.ph.be.lcssa, %while.end292.loopexit ]
  %b.5.lcssa = phi i64 [ %shr191.lcssa688, %while.cond122.while.end292_crit_edge ], [ %b.5.ph.be.lcssa, %while.end292.loopexit ]
  %cmp4.i420 = icmp eq %struct.huft* %66, null
  br i1 %cmp4.i420, label %huft_free.exit425, label %while.body.i424.preheader

while.body.i424.preheader:                        ; preds = %while.end292
  br label %while.body.i424

while.body.i424:                                  ; preds = %while.body.i424, %while.body.i424.preheader
  %p.05.i421 = phi %struct.huft* [ %127, %while.body.i424 ], [ %66, %while.body.i424.preheader ]
  %t1.i422 = getelementptr inbounds %struct.huft* %p.05.i421, i64 -1, i32 2, i32 0
  %127 = load %struct.huft** %t1.i422, align 8, !tbaa !7
  %128 = getelementptr inbounds %struct.huft* %p.05.i421, i64 -1, i32 0
  tail call void @free(i8* %128) #2
  %cmp.i423 = icmp eq %struct.huft* %127, null
  br i1 %cmp.i423, label %huft_free.exit425.loopexit, label %while.body.i424

huft_free.exit425.loopexit:                       ; preds = %while.body.i424
  br label %huft_free.exit425

huft_free.exit425:                                ; preds = %huft_free.exit425.loopexit, %while.end292
  store i64 %b.5.lcssa, i64* @bb, align 8, !tbaa !15
  store i32 %k.5.lcssa, i32* @bk, align 4, !tbaa !1
  %129 = load i32* @lbits, align 4, !tbaa !1
  store i32 %129, i32* %bl, align 4, !tbaa !1
  %call295 = call i32 @huft_build(i32* %arraydecay, i32 %add5, i32 257, i16* getelementptr inbounds ([31 x i16]* @cplens, i64 0, i64 0), i16* getelementptr inbounds ([31 x i16]* @cplext, i64 0, i64 0), %struct.huft** %tl, i32* %bl)
  switch i32 %call295, label %cleanup [
    i32 0, label %if.end305
    i32 1, label %if.then301
  ]

if.then301:                                       ; preds = %huft_free.exit425
  %130 = load %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %131 = tail call i64 @fwrite(i8* getelementptr inbounds ([26 x i8]* @.str27, i64 0, i64 0), i64 25, i64 1, %struct._IO_FILE* %130) #14
  %132 = load %struct.huft** %tl, align 8, !tbaa !7
  %cmp4.i426 = icmp eq %struct.huft* %132, null
  br i1 %cmp4.i426, label %cleanup, label %while.body.i430.preheader

while.body.i430.preheader:                        ; preds = %if.then301
  br label %while.body.i430

while.body.i430:                                  ; preds = %while.body.i430, %while.body.i430.preheader
  %p.05.i427 = phi %struct.huft* [ %133, %while.body.i430 ], [ %132, %while.body.i430.preheader ]
  %t1.i428 = getelementptr inbounds %struct.huft* %p.05.i427, i64 -1, i32 2, i32 0
  %133 = load %struct.huft** %t1.i428, align 8, !tbaa !7
  %134 = getelementptr inbounds %struct.huft* %p.05.i427, i64 -1, i32 0
  tail call void @free(i8* %134) #2
  %cmp.i429 = icmp eq %struct.huft* %133, null
  br i1 %cmp.i429, label %cleanup.loopexit665, label %while.body.i430

if.end305:                                        ; preds = %huft_free.exit425
  %135 = load i32* @dbits, align 4, !tbaa !1
  store i32 %135, i32* %bd, align 4, !tbaa !1
  %idx.ext307 = zext i32 %add5 to i64
  %add.ptr308 = getelementptr inbounds [316 x i32]* %ll, i64 0, i64 %idx.ext307
  %call309 = call i32 @huft_build(i32* %add.ptr308, i32 %add30, i32 0, i16* getelementptr inbounds ([30 x i16]* @cpdist, i64 0, i64 0), i16* getelementptr inbounds ([30 x i16]* @cpdext, i64 0, i64 0), %struct.huft** %td, i32* %bd)
  switch i32 %call309, label %if.end318 [
    i32 0, label %if.end320
    i32 1, label %if.then315
  ]

if.then315:                                       ; preds = %if.end305
  %136 = load %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %137 = tail call i64 @fwrite(i8* getelementptr inbounds ([27 x i8]* @.str148, i64 0, i64 0), i64 26, i64 1, %struct._IO_FILE* %136) #14
  %138 = load %struct.huft** %td, align 8, !tbaa !7
  %cmp4.i432 = icmp eq %struct.huft* %138, null
  br i1 %cmp4.i432, label %if.end318, label %while.body.i436.preheader

while.body.i436.preheader:                        ; preds = %if.then315
  br label %while.body.i436

while.body.i436:                                  ; preds = %while.body.i436, %while.body.i436.preheader
  %p.05.i433 = phi %struct.huft* [ %139, %while.body.i436 ], [ %138, %while.body.i436.preheader ]
  %t1.i434 = getelementptr inbounds %struct.huft* %p.05.i433, i64 -1, i32 2, i32 0
  %139 = load %struct.huft** %t1.i434, align 8, !tbaa !7
  %140 = getelementptr inbounds %struct.huft* %p.05.i433, i64 -1, i32 0
  tail call void @free(i8* %140) #2
  %cmp.i435 = icmp eq %struct.huft* %139, null
  br i1 %cmp.i435, label %if.end318.loopexit, label %while.body.i436

if.end318.loopexit:                               ; preds = %while.body.i436
  br label %if.end318

if.end318:                                        ; preds = %if.end318.loopexit, %if.then315, %if.end305
  %141 = load %struct.huft** %tl, align 8, !tbaa !7
  %cmp4.i438 = icmp eq %struct.huft* %141, null
  br i1 %cmp4.i438, label %cleanup, label %while.body.i442.preheader

while.body.i442.preheader:                        ; preds = %if.end318
  br label %while.body.i442

while.body.i442:                                  ; preds = %while.body.i442, %while.body.i442.preheader
  %p.05.i439 = phi %struct.huft* [ %142, %while.body.i442 ], [ %141, %while.body.i442.preheader ]
  %t1.i440 = getelementptr inbounds %struct.huft* %p.05.i439, i64 -1, i32 2, i32 0
  %142 = load %struct.huft** %t1.i440, align 8, !tbaa !7
  %143 = getelementptr inbounds %struct.huft* %p.05.i439, i64 -1, i32 0
  tail call void @free(i8* %143) #2
  %cmp.i441 = icmp eq %struct.huft* %142, null
  br i1 %cmp.i441, label %cleanup.loopexit, label %while.body.i442

if.end320:                                        ; preds = %if.end305
  %144 = load %struct.huft** %tl, align 8, !tbaa !7
  %145 = load %struct.huft** %td, align 8, !tbaa !7
  %146 = load i32* %bl, align 4, !tbaa !1
  %147 = load i32* %bd, align 4, !tbaa !1
  %call321 = tail call i32 @inflate_codes(%struct.huft* %144, %struct.huft* %145, i32 %146, i32 %147)
  %tobool322 = icmp eq i32 %call321, 0
  br i1 %tobool322, label %if.end324, label %cleanup

if.end324:                                        ; preds = %if.end320
  %cmp4.i444 = icmp eq %struct.huft* %144, null
  br i1 %cmp4.i444, label %huft_free.exit449, label %while.body.i448.preheader

while.body.i448.preheader:                        ; preds = %if.end324
  br label %while.body.i448

while.body.i448:                                  ; preds = %while.body.i448, %while.body.i448.preheader
  %p.05.i445 = phi %struct.huft* [ %148, %while.body.i448 ], [ %144, %while.body.i448.preheader ]
  %t1.i446 = getelementptr inbounds %struct.huft* %p.05.i445, i64 -1, i32 2, i32 0
  %148 = load %struct.huft** %t1.i446, align 8, !tbaa !7
  %149 = getelementptr inbounds %struct.huft* %p.05.i445, i64 -1, i32 0
  tail call void @free(i8* %149) #2
  %cmp.i447 = icmp eq %struct.huft* %148, null
  br i1 %cmp.i447, label %huft_free.exit449.loopexit, label %while.body.i448

huft_free.exit449.loopexit:                       ; preds = %while.body.i448
  br label %huft_free.exit449

huft_free.exit449:                                ; preds = %huft_free.exit449.loopexit, %if.end324
  %cmp4.i450 = icmp eq %struct.huft* %145, null
  br i1 %cmp4.i450, label %cleanup, label %while.body.i454.preheader

while.body.i454.preheader:                        ; preds = %huft_free.exit449
  br label %while.body.i454

while.body.i454:                                  ; preds = %while.body.i454, %while.body.i454.preheader
  %p.05.i451 = phi %struct.huft* [ %150, %while.body.i454 ], [ %145, %while.body.i454.preheader ]
  %t1.i452 = getelementptr inbounds %struct.huft* %p.05.i451, i64 -1, i32 2, i32 0
  %150 = load %struct.huft** %t1.i452, align 8, !tbaa !7
  %151 = getelementptr inbounds %struct.huft* %p.05.i451, i64 -1, i32 0
  tail call void @free(i8* %151) #2
  %cmp.i453 = icmp eq %struct.huft* %150, null
  br i1 %cmp.i453, label %cleanup.loopexit664, label %while.body.i454

cleanup.loopexit460.loopexit:                     ; preds = %while.end187
  %add.ptr.lcssa674 = phi %struct.huft* [ %add.ptr, %while.end187 ]
  store %struct.huft* %add.ptr.lcssa674, %struct.huft** %td, align 8, !tbaa !7
  br label %cleanup

cleanup.loopexit:                                 ; preds = %while.body.i442
  br label %cleanup

cleanup.loopexit664:                              ; preds = %while.body.i454
  br label %cleanup

cleanup.loopexit665:                              ; preds = %while.body.i430
  br label %cleanup

cleanup.loopexit666:                              ; preds = %while.end270, %while.end229
  br label %cleanup

cleanup.loopexit667:                              ; preds = %while.body.i
  br label %cleanup

cleanup:                                          ; preds = %cleanup.loopexit667, %cleanup.loopexit666, %cleanup.loopexit665, %cleanup.loopexit664, %cleanup.loopexit, %cleanup.loopexit460.loopexit, %huft_free.exit449, %if.end320, %if.end318, %if.then301, %huft_free.exit425, %if.then114, %for.end107, %while.end54
  %retval.0 = phi i32 [ 1, %while.end54 ], [ %call108, %for.end107 ], [ %call295, %huft_free.exit425 ], [ 1, %if.end320 ], [ 1, %if.then114 ], [ 1, %if.then301 ], [ %call309, %if.end318 ], [ 0, %huft_free.exit449 ], [ 1, %cleanup.loopexit460.loopexit ], [ %call309, %cleanup.loopexit ], [ 0, %cleanup.loopexit664 ], [ 1, %cleanup.loopexit665 ], [ 1, %cleanup.loopexit666 ], [ 1, %cleanup.loopexit667 ]
  call void @llvm.lifetime.end(i64 1264, i8* %0) #2
  ret i32 %retval.0
}

; Function Attrs: nounwind uwtable
define i32 @inflate_block(i32* nocapture %e) #0 {
entry:
  %0 = load i64* @bb, align 8, !tbaa !15
  %1 = load i32* @bk, align 4, !tbaa !1
  %cmp64 = icmp eq i32 %1, 0
  br i1 %cmp64, label %while.body, label %while.end

while.body:                                       ; preds = %entry
  %2 = load i32* @inptr, align 4, !tbaa !1
  %3 = load i32* @insize, align 4, !tbaa !1
  %cmp1 = icmp ult i32 %2, %3
  br i1 %cmp1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %while.body
  %inc = add i32 %2, 1
  store i32 %inc, i32* @inptr, align 4, !tbaa !1
  %idxprom = zext i32 %2 to i64
  %arrayidx = getelementptr inbounds [0 x i8]* bitcast ([32832 x i8]* @inbuf to [0 x i8]*), i64 0, i64 %idxprom
  %4 = load i8* %arrayidx, align 1, !tbaa !9
  %conv = zext i8 %4 to i32
  br label %while.end.thread

cond.false:                                       ; preds = %while.body
  %call = tail call i32 @fill_inbuf(i32 0) #2
  br label %while.end.thread

while.end.thread:                                 ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %call, %cond.false ]
  %conv2 = zext i32 %cond to i64
  %conv3 = and i64 %conv2, 255
  %or = or i64 %conv3, %0
  %conv470 = trunc i64 %or to i32
  %and71 = and i32 %conv470, 1
  store i32 %and71, i32* %e, align 4, !tbaa !1
  %shr72 = lshr i64 %or, 1
  br label %while.end26

while.end:                                        ; preds = %entry
  %conv4 = trunc i64 %0 to i32
  %and = and i32 %conv4, 1
  store i32 %and, i32* %e, align 4, !tbaa !1
  %shr = lshr i64 %0, 1
  %sub = add i32 %1, -1
  %cmp660 = icmp ult i32 %sub, 2
  br i1 %cmp660, label %while.body8.lr.ph, label %while.end26

while.body8.lr.ph:                                ; preds = %while.end
  %5 = zext i32 %sub to i64
  %6 = sub i32 2, %1
  %7 = and i32 %6, -8
  %8 = add i32 %1, %7
  br label %while.body8

while.body8:                                      ; preds = %cond.end18, %while.body8.lr.ph
  %indvars.iv = phi i64 [ %5, %while.body8.lr.ph ], [ %indvars.iv.next, %cond.end18 ]
  %k.162 = phi i32 [ %sub, %while.body8.lr.ph ], [ %add25, %cond.end18 ]
  %b.161 = phi i64 [ %shr, %while.body8.lr.ph ], [ %or24, %cond.end18 ]
  %9 = load i32* @inptr, align 4, !tbaa !1
  %10 = load i32* @insize, align 4, !tbaa !1
  %cmp9 = icmp ult i32 %9, %10
  br i1 %cmp9, label %cond.true11, label %cond.false16

cond.true11:                                      ; preds = %while.body8
  %inc12 = add i32 %9, 1
  store i32 %inc12, i32* @inptr, align 4, !tbaa !1
  %idxprom13 = zext i32 %9 to i64
  %arrayidx14 = getelementptr inbounds [0 x i8]* bitcast ([32832 x i8]* @inbuf to [0 x i8]*), i64 0, i64 %idxprom13
  %11 = load i8* %arrayidx14, align 1, !tbaa !9
  %conv15 = zext i8 %11 to i32
  br label %cond.end18

cond.false16:                                     ; preds = %while.body8
  %call17 = tail call i32 @fill_inbuf(i32 0) #2
  br label %cond.end18

cond.end18:                                       ; preds = %cond.false16, %cond.true11
  %cond19 = phi i32 [ %conv15, %cond.true11 ], [ %call17, %cond.false16 ]
  %conv20 = zext i32 %cond19 to i64
  %conv21 = and i64 %conv20, 255
  %shl23 = shl i64 %conv21, %indvars.iv
  %or24 = or i64 %shl23, %b.161
  %add25 = add i32 %k.162, 8
  %cmp6 = icmp ult i32 %add25, 2
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 8
  br i1 %cmp6, label %while.body8, label %while.cond5.while.end26_crit_edge

while.cond5.while.end26_crit_edge:                ; preds = %cond.end18
  %or24.lcssa = phi i64 [ %or24, %cond.end18 ]
  %12 = add i32 %8, 7
  br label %while.end26

while.end26:                                      ; preds = %while.cond5.while.end26_crit_edge, %while.end, %while.end.thread
  %k.1.lcssa = phi i32 [ %12, %while.cond5.while.end26_crit_edge ], [ %sub, %while.end ], [ 7, %while.end.thread ]
  %b.1.lcssa = phi i64 [ %or24.lcssa, %while.cond5.while.end26_crit_edge ], [ %shr, %while.end ], [ %shr72, %while.end.thread ]
  %conv27 = trunc i64 %b.1.lcssa to i32
  %and28 = and i32 %conv27, 3
  %shr29 = lshr i64 %b.1.lcssa, 2
  %sub30 = add i32 %k.1.lcssa, -2
  store i64 %shr29, i64* @bb, align 8, !tbaa !15
  store i32 %sub30, i32* @bk, align 4, !tbaa !1
  switch i32 %and28, label %return [
    i32 2, label %if.then
    i32 0, label %if.then36
    i32 1, label %if.then41
  ]

if.then:                                          ; preds = %while.end26
  %call33 = tail call i32 @inflate_dynamic()
  br label %return

if.then36:                                        ; preds = %while.end26
  %call37 = tail call i32 @inflate_stored()
  br label %return

if.then41:                                        ; preds = %while.end26
  %call42 = tail call i32 @inflate_fixed()
  br label %return

return:                                           ; preds = %if.then41, %if.then36, %if.then, %while.end26
  %retval.0 = phi i32 [ %call33, %if.then ], [ %call37, %if.then36 ], [ %call42, %if.then41 ], [ 2, %while.end26 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind uwtable
define i32 @inflate() #0 {
entry:
  %e = alloca i32, align 4
  store i32 0, i32* @outcnt, align 4, !tbaa !1
  store i32 0, i32* @bk, align 4, !tbaa !1
  store i64 0, i64* @bb, align 8, !tbaa !15
  br label %do.body

do.body:                                          ; preds = %if.end, %entry
  store i32 0, i32* @hufts, align 4, !tbaa !1
  %call = call i32 @inflate_block(i32* %e)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.end, label %return.loopexit

if.end:                                           ; preds = %do.body
  %0 = load i32* %e, align 4, !tbaa !1
  %lnot = icmp eq i32 %0, 0
  br i1 %lnot, label %do.body, label %while.condthread-pre-split

while.condthread-pre-split:                       ; preds = %if.end
  %.pr = load i32* @bk, align 4, !tbaa !1
  %cmp46 = icmp ugt i32 %.pr, 7
  br i1 %cmp46, label %while.body.lr.ph, label %while.end

while.body.lr.ph:                                 ; preds = %while.condthread-pre-split
  %inptr.promoted = load i32* @inptr, align 4, !tbaa !1
  %1 = add i32 %.pr, -8
  %2 = lshr i32 %1, 3
  %3 = shl nuw i32 %2, 3
  %4 = add i32 %inptr.promoted, -1
  %5 = sub i32 %4, %2
  %6 = sub i32 %1, %3
  store i32 %6, i32* @bk, align 4, !tbaa !1
  store i32 %5, i32* @inptr, align 4, !tbaa !1
  br label %while.end

while.end:                                        ; preds = %while.body.lr.ph, %while.condthread-pre-split
  tail call void @flush_window() #2
  br label %return

return.loopexit:                                  ; preds = %do.body
  %call.lcssa = phi i32 [ %call, %do.body ]
  br label %return

return:                                           ; preds = %return.loopexit, %while.end
  %retval.0 = phi i32 [ 0, %while.end ], [ %call.lcssa, %return.loopexit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind uwtable
define i32 @lzw(i32 %in, i32 %out) #0 {
entry:
  %.b = load i1* @msg_done, align 1
  br i1 %.b, label %return, label %if.end

if.end:                                           ; preds = %entry
  store i1 true, i1* @msg_done, align 1
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %1 = tail call i64 @fwrite(i8* getelementptr inbounds ([44 x i8]* @.str58, i64 0, i64 0), i64 43, i64 1, %struct._IO_FILE* %0) #14
  %cmp = icmp eq i32 %in, %out
  br i1 %cmp, label %return, label %if.then1

if.then1:                                         ; preds = %if.end
  store i32 1, i32* @exit_code, align 4, !tbaa !1
  br label %return

return:                                           ; preds = %if.then1, %if.end, %entry
  ret i32 1
}

; Function Attrs: nounwind uwtable
define void @ct_init(i16* %attr, i32* %methodp) #0 {
entry:
  %next_code.i = alloca [16 x i16], align 16
  store i16* %attr, i16** @file_type, align 8, !tbaa !7
  store i32* %methodp, i32** @file_method, align 8, !tbaa !7
  store i64 0, i64* @input_len, align 8, !tbaa !15
  store i64 0, i64* @compressed_len, align 8, !tbaa !15
  %0 = load i16* getelementptr inbounds ([30 x %struct.ct_data]* @static_dtree, i64 0, i64 0, i32 1, i32 0), align 2, !tbaa !5
  %cmp = icmp eq i16 %0, 0
  br i1 %cmp, label %for.body.preheader, label %return

for.body.preheader:                               ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.inc14, %for.body.preheader
  %indvars.iv243 = phi i64 [ %indvars.iv.next244, %for.inc14 ], [ 0, %for.body.preheader ]
  %code.0207 = phi i32 [ %inc15, %for.inc14 ], [ 0, %for.body.preheader ]
  %length.0206 = phi i32 [ %length.1.lcssa, %for.inc14 ], [ 0, %for.body.preheader ]
  %arrayidx = getelementptr inbounds [29 x i32]* @base_length, i64 0, i64 %indvars.iv243
  store i32 %length.0206, i32* %arrayidx, align 4, !tbaa !1
  %arrayidx6 = getelementptr inbounds [29 x i32]* @extra_lbits, i64 0, i64 %indvars.iv243
  %1 = load i32* %arrayidx6, align 4, !tbaa !1
  %cmp7202 = icmp eq i32 %1, 31
  br i1 %cmp7202, label %for.inc14, label %for.body9.lr.ph

for.body9.lr.ph:                                  ; preds = %for.body
  %conv10 = trunc i32 %code.0207 to i8
  %shl = shl i32 1, %1
  %2 = sext i32 %length.0206 to i64
  %3 = icmp sgt i32 %shl, 1
  %shl.op = add i32 %shl, -1
  %4 = zext i32 %shl.op to i64
  %5 = select i1 %3, i64 %4, i64 0
  %scevgep241 = getelementptr [256 x i8]* @length_code, i64 0, i64 %2
  %6 = add nuw nsw i64 %5, 1
  call void @llvm.memset.p0i8.i64(i8* %scevgep241, i8 %conv10, i64 %6, i32 1, i1 false)
  %7 = add nsw i64 %2, 1
  %8 = add nsw i64 %7, %5
  %9 = trunc i64 %8 to i32
  br label %for.inc14

for.inc14:                                        ; preds = %for.body9.lr.ph, %for.body
  %length.1.lcssa = phi i32 [ %9, %for.body9.lr.ph ], [ %length.0206, %for.body ]
  %indvars.iv.next244 = add nuw nsw i64 %indvars.iv243, 1
  %inc15 = add nsw i32 %code.0207, 1
  %exitcond245 = icmp eq i64 %indvars.iv.next244, 28
  br i1 %exitcond245, label %for.end16, label %for.body

for.end16:                                        ; preds = %for.inc14
  %length.1.lcssa.lcssa = phi i32 [ %length.1.lcssa, %for.inc14 ]
  %sub = add nsw i32 %length.1.lcssa.lcssa, -1
  %idxprom18 = sext i32 %sub to i64
  %arrayidx19 = getelementptr inbounds [256 x i8]* @length_code, i64 0, i64 %idxprom18
  store i8 28, i8* %arrayidx19, align 1, !tbaa !9
  br label %for.body23

for.body23:                                       ; preds = %for.inc40, %for.end16
  %indvars.iv235 = phi i64 [ 0, %for.end16 ], [ %indvars.iv.next236, %for.inc40 ]
  %dist.0200 = phi i32 [ 0, %for.end16 ], [ %dist.1.lcssa, %for.inc40 ]
  %code.1199 = phi i32 [ 0, %for.end16 ], [ %inc41, %for.inc40 ]
  %arrayidx25 = getelementptr inbounds [30 x i32]* @base_dist, i64 0, i64 %indvars.iv235
  store i32 %dist.0200, i32* %arrayidx25, align 4, !tbaa !1
  %arrayidx28 = getelementptr inbounds [30 x i32]* @extra_dbits, i64 0, i64 %indvars.iv235
  %10 = load i32* %arrayidx28, align 4, !tbaa !1
  %cmp30195 = icmp eq i32 %10, 31
  br i1 %cmp30195, label %for.inc40, label %for.body32.lr.ph

for.body32.lr.ph:                                 ; preds = %for.body23
  %conv33 = trunc i32 %code.1199 to i8
  %shl29 = shl i32 1, %10
  %11 = sext i32 %dist.0200 to i64
  %12 = icmp sgt i32 %shl29, 1
  %shl29.op = add i32 %shl29, -1
  %13 = zext i32 %shl29.op to i64
  %14 = select i1 %12, i64 %13, i64 0
  %scevgep233 = getelementptr [512 x i8]* @dist_code, i64 0, i64 %11
  %15 = add nuw nsw i64 %14, 1
  call void @llvm.memset.p0i8.i64(i8* %scevgep233, i8 %conv33, i64 %15, i32 1, i1 false)
  %16 = add nsw i64 %11, 1
  %17 = add nsw i64 %16, %14
  %18 = trunc i64 %17 to i32
  br label %for.inc40

for.inc40:                                        ; preds = %for.body32.lr.ph, %for.body23
  %dist.1.lcssa = phi i32 [ %18, %for.body32.lr.ph ], [ %dist.0200, %for.body23 ]
  %indvars.iv.next236 = add nuw nsw i64 %indvars.iv235, 1
  %inc41 = add nsw i32 %code.1199, 1
  %exitcond237 = icmp eq i64 %indvars.iv.next236, 16
  br i1 %exitcond237, label %for.body46.lr.ph, label %for.body23

for.body46.lr.ph:                                 ; preds = %for.inc40
  %dist.1.lcssa.lcssa = phi i32 [ %dist.1.lcssa, %for.inc40 ]
  %shr = ashr i32 %dist.1.lcssa.lcssa, 7
  br label %for.body46

for.cond68.preheader:                             ; preds = %for.inc65
  call void @llvm.memset.p0i8.i64(i8* bitcast ([16 x i16]* @bl_count to i8*), i8 0, i64 32, i32 16, i1 false)
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %for.cond68.preheader
  %index = phi i64 [ 0, %for.cond68.preheader ], [ %index.next.2, %vector.body ]
  %induction247248 = or i64 %index, 1
  %19 = getelementptr inbounds [288 x %struct.ct_data]* @static_ltree, i64 0, i64 %index, i32 1, i32 0
  %20 = getelementptr inbounds [288 x %struct.ct_data]* @static_ltree, i64 0, i64 %induction247248, i32 1, i32 0
  store i16 8, i16* %19, align 2, !tbaa !5
  store i16 8, i16* %20, align 2, !tbaa !5
  %index.next = add i64 %index, 2
  %induction247248.1 = or i64 %index.next, 1
  %21 = getelementptr inbounds [288 x %struct.ct_data]* @static_ltree, i64 0, i64 %index.next, i32 1, i32 0
  %22 = getelementptr inbounds [288 x %struct.ct_data]* @static_ltree, i64 0, i64 %induction247248.1, i32 1, i32 0
  store i16 8, i16* %21, align 2, !tbaa !5
  store i16 8, i16* %22, align 2, !tbaa !5
  %index.next.1 = add i64 %index.next, 2
  %induction247248.2 = or i64 %index.next.1, 1
  %23 = getelementptr inbounds [288 x %struct.ct_data]* @static_ltree, i64 0, i64 %index.next.1, i32 1, i32 0
  %24 = getelementptr inbounds [288 x %struct.ct_data]* @static_ltree, i64 0, i64 %induction247248.2, i32 1, i32 0
  store i16 8, i16* %23, align 2, !tbaa !5
  store i16 8, i16* %24, align 2, !tbaa !5
  %index.next.2 = add i64 %index.next.1, 2
  %25 = icmp eq i64 %index.next.2, 144
  br i1 %25, label %while.body86.lr.ph, label %vector.body, !llvm.loop !42

for.body46:                                       ; preds = %for.inc65, %for.body46.lr.ph
  %indvars.iv226 = phi i64 [ 16, %for.body46.lr.ph ], [ %indvars.iv.next227, %for.inc65 ]
  %dist.2193 = phi i32 [ %shr, %for.body46.lr.ph ], [ %dist.3.lcssa, %for.inc65 ]
  %shl47 = shl i32 %dist.2193, 7
  %arrayidx49 = getelementptr inbounds [30 x i32]* @base_dist, i64 0, i64 %indvars.iv226
  store i32 %shl47, i32* %arrayidx49, align 4, !tbaa !1
  %arrayidx52 = getelementptr inbounds [30 x i32]* @extra_dbits, i64 0, i64 %indvars.iv226
  %26 = load i32* %arrayidx52, align 4, !tbaa !1
  %cmp55187 = icmp eq i32 %26, 38
  br i1 %cmp55187, label %for.inc65, label %for.body57.lr.ph

for.body57.lr.ph:                                 ; preds = %for.body46
  %conv58 = trunc i64 %indvars.iv226 to i8
  %sub53 = add nsw i32 %26, -7
  %shl54 = shl i32 1, %sub53
  %27 = sext i32 %dist.2193 to i64
  %28 = icmp sgt i32 %shl54, 1
  %shl54.op = add i32 %shl54, -1
  %29 = zext i32 %shl54.op to i64
  %30 = select i1 %28, i64 %29, i64 0
  %.sum = add nsw i64 %27, 256
  %scevgep = getelementptr [512 x i8]* @dist_code, i64 0, i64 %.sum
  %31 = add nuw nsw i64 %30, 1
  call void @llvm.memset.p0i8.i64(i8* %scevgep, i8 %conv58, i64 %31, i32 1, i1 false)
  %32 = add nsw i64 %27, 1
  %33 = add nsw i64 %32, %30
  %34 = trunc i64 %33 to i32
  br label %for.inc65

for.inc65:                                        ; preds = %for.body57.lr.ph, %for.body46
  %dist.3.lcssa = phi i32 [ %34, %for.body57.lr.ph ], [ %dist.2193, %for.body46 ]
  %indvars.iv.next227 = add nsw i64 %indvars.iv226, 1
  %lftr.wideiv228 = trunc i64 %indvars.iv.next227 to i32
  %exitcond229 = icmp eq i32 %lftr.wideiv228, 30
  br i1 %exitcond229, label %for.cond68.preheader, label %for.body46

while.body86.lr.ph:                               ; preds = %vector.body
  store i16 144, i16* getelementptr inbounds ([16 x i16]* @bl_count, i64 0, i64 8), align 16, !tbaa !5
  br label %while.body86

while.body97.lr.ph:                               ; preds = %while.body86
  store i16 112, i16* getelementptr inbounds ([16 x i16]* @bl_count, i64 0, i64 9), align 2, !tbaa !5
  br label %while.body97

while.body86:                                     ; preds = %while.body86, %while.body86.lr.ph
  %indvars.iv213 = phi i64 [ 144, %while.body86.lr.ph ], [ %indvars.iv.next214.3, %while.body86 ]
  %indvars.iv.next214 = add nsw i64 %indvars.iv213, 1
  %len91 = getelementptr inbounds [288 x %struct.ct_data]* @static_ltree, i64 0, i64 %indvars.iv213, i32 1, i32 0
  store i16 9, i16* %len91, align 2, !tbaa !5
  %indvars.iv.next214.1 = add nsw i64 %indvars.iv.next214, 1
  %len91.1 = getelementptr inbounds [288 x %struct.ct_data]* @static_ltree, i64 0, i64 %indvars.iv.next214, i32 1, i32 0
  store i16 9, i16* %len91.1, align 2, !tbaa !5
  %indvars.iv.next214.2 = add nsw i64 %indvars.iv.next214.1, 1
  %len91.2 = getelementptr inbounds [288 x %struct.ct_data]* @static_ltree, i64 0, i64 %indvars.iv.next214.1, i32 1, i32 0
  store i16 9, i16* %len91.2, align 2, !tbaa !5
  %indvars.iv.next214.3 = add nsw i64 %indvars.iv.next214.2, 1
  %len91.3 = getelementptr inbounds [288 x %struct.ct_data]* @static_ltree, i64 0, i64 %indvars.iv.next214.2, i32 1, i32 0
  store i16 9, i16* %len91.3, align 2, !tbaa !5
  %lftr.wideiv.3 = trunc i64 %indvars.iv.next214.3 to i32
  %exitcond215.3 = icmp eq i32 %lftr.wideiv.3, 256
  br i1 %exitcond215.3, label %while.body97.lr.ph, label %while.body86

while.body97:                                     ; preds = %while.body97.lr.ph
  store i16 7, i16* getelementptr inbounds ([288 x %struct.ct_data]* @static_ltree, i64 0, i64 256, i32 1, i32 0), align 2, !tbaa !5
  store i16 7, i16* getelementptr inbounds ([288 x %struct.ct_data]* @static_ltree, i64 0, i64 257, i32 1, i32 0), align 2, !tbaa !5
  store i16 7, i16* getelementptr inbounds ([288 x %struct.ct_data]* @static_ltree, i64 0, i64 258, i32 1, i32 0), align 2, !tbaa !5
  store i16 7, i16* getelementptr inbounds ([288 x %struct.ct_data]* @static_ltree, i64 0, i64 259, i32 1, i32 0), align 2, !tbaa !5
  store i16 7, i16* getelementptr inbounds ([288 x %struct.ct_data]* @static_ltree, i64 0, i64 260, i32 1, i32 0), align 2, !tbaa !5
  store i16 7, i16* getelementptr inbounds ([288 x %struct.ct_data]* @static_ltree, i64 0, i64 261, i32 1, i32 0), align 2, !tbaa !5
  store i16 7, i16* getelementptr inbounds ([288 x %struct.ct_data]* @static_ltree, i64 0, i64 262, i32 1, i32 0), align 2, !tbaa !5
  store i16 7, i16* getelementptr inbounds ([288 x %struct.ct_data]* @static_ltree, i64 0, i64 263, i32 1, i32 0), align 2, !tbaa !5
  store i16 7, i16* getelementptr inbounds ([288 x %struct.ct_data]* @static_ltree, i64 0, i64 264, i32 1, i32 0), align 2, !tbaa !5
  store i16 7, i16* getelementptr inbounds ([288 x %struct.ct_data]* @static_ltree, i64 0, i64 265, i32 1, i32 0), align 2, !tbaa !5
  store i16 7, i16* getelementptr inbounds ([288 x %struct.ct_data]* @static_ltree, i64 0, i64 266, i32 1, i32 0), align 2, !tbaa !5
  store i16 7, i16* getelementptr inbounds ([288 x %struct.ct_data]* @static_ltree, i64 0, i64 267, i32 1, i32 0), align 2, !tbaa !5
  store i16 7, i16* getelementptr inbounds ([288 x %struct.ct_data]* @static_ltree, i64 0, i64 268, i32 1, i32 0), align 2, !tbaa !5
  store i16 7, i16* getelementptr inbounds ([288 x %struct.ct_data]* @static_ltree, i64 0, i64 269, i32 1, i32 0), align 2, !tbaa !5
  store i16 7, i16* getelementptr inbounds ([288 x %struct.ct_data]* @static_ltree, i64 0, i64 270, i32 1, i32 0), align 2, !tbaa !5
  store i16 7, i16* getelementptr inbounds ([288 x %struct.ct_data]* @static_ltree, i64 0, i64 271, i32 1, i32 0), align 2, !tbaa !5
  store i16 7, i16* getelementptr inbounds ([288 x %struct.ct_data]* @static_ltree, i64 0, i64 272, i32 1, i32 0), align 2, !tbaa !5
  store i16 7, i16* getelementptr inbounds ([288 x %struct.ct_data]* @static_ltree, i64 0, i64 273, i32 1, i32 0), align 2, !tbaa !5
  store i16 7, i16* getelementptr inbounds ([288 x %struct.ct_data]* @static_ltree, i64 0, i64 274, i32 1, i32 0), align 2, !tbaa !5
  store i16 7, i16* getelementptr inbounds ([288 x %struct.ct_data]* @static_ltree, i64 0, i64 275, i32 1, i32 0), align 2, !tbaa !5
  store i16 7, i16* getelementptr inbounds ([288 x %struct.ct_data]* @static_ltree, i64 0, i64 276, i32 1, i32 0), align 2, !tbaa !5
  store i16 7, i16* getelementptr inbounds ([288 x %struct.ct_data]* @static_ltree, i64 0, i64 277, i32 1, i32 0), align 2, !tbaa !5
  store i16 7, i16* getelementptr inbounds ([288 x %struct.ct_data]* @static_ltree, i64 0, i64 278, i32 1, i32 0), align 2, !tbaa !5
  store i16 7, i16* getelementptr inbounds ([288 x %struct.ct_data]* @static_ltree, i64 0, i64 279, i32 1, i32 0), align 2, !tbaa !5
  store i16 24, i16* getelementptr inbounds ([16 x i16]* @bl_count, i64 0, i64 7), align 2, !tbaa !5
  br label %while.body108

while.body108:                                    ; preds = %while.body97
  store i16 8, i16* getelementptr inbounds ([288 x %struct.ct_data]* @static_ltree, i64 0, i64 280, i32 1, i32 0), align 2, !tbaa !5
  store i16 8, i16* getelementptr inbounds ([288 x %struct.ct_data]* @static_ltree, i64 0, i64 281, i32 1, i32 0), align 2, !tbaa !5
  store i16 8, i16* getelementptr inbounds ([288 x %struct.ct_data]* @static_ltree, i64 0, i64 282, i32 1, i32 0), align 2, !tbaa !5
  store i16 8, i16* getelementptr inbounds ([288 x %struct.ct_data]* @static_ltree, i64 0, i64 283, i32 1, i32 0), align 2, !tbaa !5
  store i16 8, i16* getelementptr inbounds ([288 x %struct.ct_data]* @static_ltree, i64 0, i64 284, i32 1, i32 0), align 2, !tbaa !5
  store i16 8, i16* getelementptr inbounds ([288 x %struct.ct_data]* @static_ltree, i64 0, i64 285, i32 1, i32 0), align 2, !tbaa !5
  store i16 8, i16* getelementptr inbounds ([288 x %struct.ct_data]* @static_ltree, i64 0, i64 286, i32 1, i32 0), align 2, !tbaa !5
  store i16 8, i16* getelementptr inbounds ([288 x %struct.ct_data]* @static_ltree, i64 0, i64 287, i32 1, i32 0), align 2, !tbaa !5
  store i16 152, i16* getelementptr inbounds ([16 x i16]* @bl_count, i64 0, i64 8), align 16, !tbaa !5
  %35 = bitcast [16 x i16]* %next_code.i to i8*
  call void @llvm.lifetime.start(i64 32, i8* %35)
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %while.body108
  %36 = phi i32 [ 0, %while.body108 ], [ %phitmp246, %for.body.i.for.body.i_crit_edge ]
  %indvars.iv39.i = phi i64 [ 1, %while.body108 ], [ %indvars.iv.next40.i, %for.body.i.for.body.i_crit_edge ]
  %code.038.i = phi i32 [ 0, %while.body108 ], [ %phitmp, %for.body.i.for.body.i_crit_edge ]
  %add.i = add nuw nsw i32 %36, %code.038.i
  %shl.i = shl nuw nsw i32 %add.i, 1
  %conv2.i = trunc i32 %shl.i to i16
  %arrayidx4.i = getelementptr inbounds [16 x i16]* %next_code.i, i64 0, i64 %indvars.iv39.i
  store i16 %conv2.i, i16* %arrayidx4.i, align 2, !tbaa !5
  %indvars.iv.next40.i = add nuw nsw i64 %indvars.iv39.i, 1
  %exitcond42.i = icmp eq i64 %indvars.iv.next40.i, 16
  br i1 %exitcond42.i, label %for.body8.i.preheader, label %for.body.i.for.body.i_crit_edge

for.body8.i.preheader:                            ; preds = %for.body.i
  br label %for.body8.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  %arrayidx.i.phi.trans.insert = getelementptr inbounds [16 x i16]* @bl_count, i64 0, i64 %indvars.iv39.i
  %.pre = load i16* %arrayidx.i.phi.trans.insert, align 2, !tbaa !5
  %phitmp = and i32 %shl.i, 65534
  %phitmp246 = zext i16 %.pre to i32
  br label %for.body.i

for.body8.i:                                      ; preds = %for.inc23.i, %for.body8.i.preheader
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %for.inc23.i ], [ 0, %for.body8.i.preheader ]
  %len11.i = getelementptr inbounds [288 x %struct.ct_data]* @static_ltree, i64 0, i64 %indvars.iv.i, i32 1, i32 0
  %37 = load i16* %len11.i, align 2, !tbaa !5
  %cmp13.i = icmp eq i16 %37, 0
  br i1 %cmp13.i, label %for.inc23.i, label %if.end.i

if.end.i:                                         ; preds = %for.body8.i
  %conv12.i = zext i16 %37 to i32
  %idxprom15.i = zext i16 %37 to i64
  %arrayidx16.i = getelementptr inbounds [16 x i16]* %next_code.i, i64 0, i64 %idxprom15.i
  %38 = load i16* %arrayidx16.i, align 2, !tbaa !5
  %inc17.i = add i16 %38, 1
  store i16 %inc17.i, i16* %arrayidx16.i, align 2, !tbaa !5
  %conv18.i = zext i16 %38 to i32
  %call.i = tail call i32 @bi_reverse(i32 %conv18.i, i32 %conv12.i) #2
  %conv19.i = trunc i32 %call.i to i16
  %code22.i = getelementptr inbounds [288 x %struct.ct_data]* @static_ltree, i64 0, i64 %indvars.iv.i, i32 0, i32 0
  store i16 %conv19.i, i16* %code22.i, align 4, !tbaa !5
  br label %for.inc23.i

for.inc23.i:                                      ; preds = %if.end.i, %for.body8.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %exitcond208 = icmp eq i64 %indvars.iv.next.i, 288
  br i1 %exitcond208, label %for.body119.preheader, label %for.body8.i

for.body119.preheader:                            ; preds = %for.inc23.i
  br label %for.body119

for.body119:                                      ; preds = %for.body119, %for.body119.preheader
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body119 ], [ 0, %for.body119.preheader ]
  %len123 = getelementptr inbounds [30 x %struct.ct_data]* @static_dtree, i64 0, i64 %indvars.iv, i32 1, i32 0
  store i16 5, i16* %len123, align 2, !tbaa !5
  %39 = trunc i64 %indvars.iv to i32
  %call = tail call i32 @bi_reverse(i32 %39, i32 5) #2
  %conv124 = trunc i32 %call to i16
  %code127 = getelementptr inbounds [30 x %struct.ct_data]* @static_dtree, i64 0, i64 %indvars.iv, i32 0, i32 0
  store i16 %conv124, i16* %code127, align 4, !tbaa !5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 30
  br i1 %exitcond, label %for.end130, label %for.body119

for.end130:                                       ; preds = %for.body119
  tail call fastcc void @init_block()
  br label %return

return:                                           ; preds = %for.end130, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define i64 @flush_block(i8* %buf, i64 %stored_len, i32 %eof) #0 {
entry:
  %0 = load i8* @flags, align 1, !tbaa !9
  %1 = load i32* @last_flags, align 4, !tbaa !1
  %idxprom = zext i32 %1 to i64
  %arrayidx = getelementptr inbounds [4096 x i8]* @flag_buf, i64 0, i64 %idxprom
  store i8 %0, i8* %arrayidx, align 1, !tbaa !9
  %2 = load i16** @file_type, align 8, !tbaa !7
  %3 = load i16* %2, align 2, !tbaa !5
  %cmp = icmp eq i16 %3, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load i64* bitcast ([573 x %struct.ct_data]* @dyn_ltree to i64*), align 16
  %5 = trunc i64 %4 to i32
  %6 = lshr i64 %4, 32
  %7 = trunc i64 %6 to i32
  %conv.1.i = and i32 %7, 65535
  %8 = load i64* bitcast (i16* getelementptr inbounds ([573 x %struct.ct_data]* @dyn_ltree, i64 0, i64 2, i32 0, i32 0) to i64*), align 8
  %9 = trunc i64 %8 to i32
  %conv.2.i = and i32 %9, 65535
  %10 = lshr i64 %8, 32
  %11 = trunc i64 %10 to i32
  %conv.3.i = and i32 %11, 65535
  %12 = load i64* bitcast (i16* getelementptr inbounds ([573 x %struct.ct_data]* @dyn_ltree, i64 0, i64 4, i32 0, i32 0) to i64*), align 16
  %13 = trunc i64 %12 to i32
  %conv.4.i = and i32 %13, 65535
  %14 = lshr i64 %12, 32
  %15 = trunc i64 %14 to i32
  %conv.5.i = and i32 %15, 65535
  %16 = load i64* bitcast (i16* getelementptr inbounds ([573 x %struct.ct_data]* @dyn_ltree, i64 0, i64 6, i32 0, i32 0) to i64*), align 8
  %17 = trunc i64 %16 to i32
  %conv.6.i = and i32 %17, 65535
  %18 = lshr i64 %16, 32
  %19 = trunc i64 %18 to i16
  br label %while.body4.i

while.body16.lr.ph.i:                             ; preds = %while.body4.i
  %add11.i.lcssa = phi i32 [ %add11.i, %while.body4.i ]
  %conv.i = and i32 %5, 65535
  %add.1.i = add nuw nsw i32 %conv.1.i, %conv.i
  %add.2.i = add nuw nsw i32 %add.1.i, %conv.2.i
  %add.3.i = add nuw nsw i32 %add.2.i, %conv.3.i
  %add.4.i = add nuw nsw i32 %add.3.i, %conv.4.i
  %add.5.i = add nuw nsw i32 %add.4.i, %conv.5.i
  %add.6.i = add nuw nsw i32 %add.5.i, %conv.6.i
  %20 = insertelement <4 x i32> <i32 undef, i32 0, i32 0, i32 0>, i32 %add.6.i, i32 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %while.body16.lr.ph.i
  %index = phi i64 [ 128, %while.body16.lr.ph.i ], [ %index.next, %vector.body ]
  %vec.phi = phi <4 x i32> [ %20, %while.body16.lr.ph.i ], [ %54, %vector.body ]
  %vec.phi88 = phi <4 x i32> [ zeroinitializer, %while.body16.lr.ph.i ], [ %55, %vector.body ]
  %broadcast.splatinsert = insertelement <4 x i64> undef, i64 %index, i32 0
  %broadcast.splat = shufflevector <4 x i64> %broadcast.splatinsert, <4 x i64> undef, <4 x i32> zeroinitializer
  %induction = add <4 x i64> %broadcast.splat, <i64 0, i64 1, i64 2, i64 3>
  %induction87 = add <4 x i64> %broadcast.splat, <i64 4, i64 5, i64 6, i64 7>
  %21 = getelementptr inbounds [573 x %struct.ct_data]* @dyn_ltree, i64 0, i64 %index, i32 0, i32 0
  %22 = extractelement <4 x i64> %induction, i32 1
  %23 = getelementptr inbounds [573 x %struct.ct_data]* @dyn_ltree, i64 0, i64 %22, i32 0, i32 0
  %24 = extractelement <4 x i64> %induction, i32 2
  %25 = getelementptr inbounds [573 x %struct.ct_data]* @dyn_ltree, i64 0, i64 %24, i32 0, i32 0
  %26 = extractelement <4 x i64> %induction, i32 3
  %27 = getelementptr inbounds [573 x %struct.ct_data]* @dyn_ltree, i64 0, i64 %26, i32 0, i32 0
  %28 = extractelement <4 x i64> %induction87, i32 0
  %29 = getelementptr inbounds [573 x %struct.ct_data]* @dyn_ltree, i64 0, i64 %28, i32 0, i32 0
  %30 = extractelement <4 x i64> %induction87, i32 1
  %31 = getelementptr inbounds [573 x %struct.ct_data]* @dyn_ltree, i64 0, i64 %30, i32 0, i32 0
  %32 = extractelement <4 x i64> %induction87, i32 2
  %33 = getelementptr inbounds [573 x %struct.ct_data]* @dyn_ltree, i64 0, i64 %32, i32 0, i32 0
  %34 = extractelement <4 x i64> %induction87, i32 3
  %35 = getelementptr inbounds [573 x %struct.ct_data]* @dyn_ltree, i64 0, i64 %34, i32 0, i32 0
  %36 = load i16* %21, align 16, !tbaa !5
  %37 = insertelement <4 x i16> undef, i16 %36, i32 0
  %38 = load i16* %23, align 4, !tbaa !5
  %39 = insertelement <4 x i16> %37, i16 %38, i32 1
  %40 = load i16* %25, align 4, !tbaa !5
  %41 = insertelement <4 x i16> %39, i16 %40, i32 2
  %42 = load i16* %27, align 4, !tbaa !5
  %43 = insertelement <4 x i16> %41, i16 %42, i32 3
  %44 = load i16* %29, align 4, !tbaa !5
  %45 = insertelement <4 x i16> undef, i16 %44, i32 0
  %46 = load i16* %31, align 4, !tbaa !5
  %47 = insertelement <4 x i16> %45, i16 %46, i32 1
  %48 = load i16* %33, align 4, !tbaa !5
  %49 = insertelement <4 x i16> %47, i16 %48, i32 2
  %50 = load i16* %35, align 4, !tbaa !5
  %51 = insertelement <4 x i16> %49, i16 %50, i32 3
  %52 = zext <4 x i16> %43 to <4 x i32>
  %53 = zext <4 x i16> %51 to <4 x i32>
  %54 = add <4 x i32> %52, %vec.phi
  %55 = add <4 x i32> %53, %vec.phi88
  %index.next = add i64 %index, 8
  %56 = icmp eq i64 %index.next, 256
  br i1 %56, label %middle.block, label %vector.body, !llvm.loop !43

middle.block:                                     ; preds = %vector.body
  %.lcssa93 = phi <4 x i32> [ %55, %vector.body ]
  %.lcssa = phi <4 x i32> [ %54, %vector.body ]
  %bin.rdx = add <4 x i32> %.lcssa93, %.lcssa
  %rdx.shuf = shufflevector <4 x i32> %bin.rdx, <4 x i32> undef, <4 x i32> <i32 2, i32 3, i32 undef, i32 undef>
  %bin.rdx90 = add <4 x i32> %bin.rdx, %rdx.shuf
  %rdx.shuf91 = shufflevector <4 x i32> %bin.rdx90, <4 x i32> undef, <4 x i32> <i32 1, i32 undef, i32 undef, i32 undef>
  %bin.rdx92 = add <4 x i32> %bin.rdx90, %rdx.shuf91
  %57 = extractelement <4 x i32> %bin.rdx92, i32 0
  %phitmp.i = lshr i32 %add11.i.lcssa, 2
  %not.cmp25.i = icmp ule i32 %57, %phitmp.i
  %conv27.i = zext i1 %not.cmp25.i to i16
  store i16 %conv27.i, i16* %2, align 2, !tbaa !5
  br label %if.end

while.body4.i:                                    ; preds = %while.body4.i.while.body4.i_crit_edge, %if.then
  %58 = phi i16 [ %19, %if.then ], [ %.pre, %while.body4.i.while.body4.i_crit_edge ]
  %indvars.iv49.i = phi i64 [ 8, %if.then ], [ %phitmp, %while.body4.i.while.body4.i_crit_edge ]
  %ascii_freq.044.i = phi i32 [ 0, %if.then ], [ %add11.i, %while.body4.i.while.body4.i_crit_edge ]
  %conv10.i = zext i16 %58 to i32
  %add11.i = add i32 %conv10.i, %ascii_freq.044.i
  %exitcond85 = icmp eq i64 %indvars.iv49.i, 128
  br i1 %exitcond85, label %while.body16.lr.ph.i, label %while.body4.i.while.body4.i_crit_edge

while.body4.i.while.body4.i_crit_edge:            ; preds = %while.body4.i
  %freq9.i.phi.trans.insert = getelementptr inbounds [573 x %struct.ct_data]* @dyn_ltree, i64 0, i64 %indvars.iv49.i, i32 0, i32 0
  %.pre = load i16* %freq9.i.phi.trans.insert, align 4, !tbaa !5
  %phitmp = add i64 %indvars.iv49.i, 1
  br label %while.body4.i

if.end:                                           ; preds = %middle.block, %entry
  tail call fastcc void @build_tree(%struct.tree_desc* @l_desc)
  tail call fastcc void @build_tree(%struct.tree_desc* @d_desc)
  %59 = load i32* getelementptr inbounds (%struct.tree_desc* @l_desc, i64 0, i32 6), align 4, !tbaa !44
  tail call fastcc void @scan_tree(%struct.ct_data* getelementptr inbounds ([573 x %struct.ct_data]* @dyn_ltree, i64 0, i64 0), i32 %59) #2
  %60 = load i32* getelementptr inbounds (%struct.tree_desc* @d_desc, i64 0, i32 6), align 4, !tbaa !44
  tail call fastcc void @scan_tree(%struct.ct_data* getelementptr inbounds ([61 x %struct.ct_data]* @dyn_dtree, i64 0, i64 0), i32 %60) #2
  tail call fastcc void @build_tree(%struct.tree_desc* @bl_desc) #2
  br label %for.body.i

for.cond.i:                                       ; preds = %for.body.i
  %61 = trunc i64 %indvars.iv.next.i75 to i32
  %cmp.i = icmp sgt i32 %61, 2
  br i1 %cmp.i, label %for.body.i, label %build_bl_tree.exit

for.body.i:                                       ; preds = %for.cond.i, %if.end
  %indvars.iv.i74 = phi i64 [ 18, %if.end ], [ %indvars.iv.next.i75, %for.cond.i ]
  %max_blindex.014.i = phi i32 [ 18, %if.end ], [ %dec.i, %for.cond.i ]
  %arrayidx.i = getelementptr inbounds [19 x i8]* @bl_order, i64 0, i64 %indvars.iv.i74
  %62 = load i8* %arrayidx.i, align 1, !tbaa !9
  %idxprom1.i = zext i8 %62 to i64
  %len.i = getelementptr inbounds [39 x %struct.ct_data]* @bl_tree, i64 0, i64 %idxprom1.i, i32 1, i32 0
  %63 = load i16* %len.i, align 2, !tbaa !5
  %cmp3.i = icmp eq i16 %63, 0
  %indvars.iv.next.i75 = add nsw i64 %indvars.iv.i74, -1
  %dec.i = add nsw i32 %max_blindex.014.i, -1
  %64 = trunc i64 %indvars.iv.i74 to i32
  br i1 %cmp3.i, label %for.cond.i, label %build_bl_tree.exit

build_bl_tree.exit:                               ; preds = %for.body.i, %for.cond.i
  %max_blindex.0.lcssa.i = phi i32 [ %64, %for.body.i ], [ %dec.i, %for.cond.i ]
  %65 = mul i32 %max_blindex.0.lcssa.i, 3
  %add7.i = add i32 %65, 17
  %conv8.i = sext i32 %add7.i to i64
  %66 = load i64* @opt_len, align 8, !tbaa !15
  %add9.i = add i64 %conv8.i, %66
  store i64 %add9.i, i64* @opt_len, align 8, !tbaa !15
  %add2 = add i64 %add9.i, 10
  %shr = lshr i64 %add2, 3
  %67 = load i64* @static_len, align 8, !tbaa !15
  %add4 = add i64 %67, 10
  %shr5 = lshr i64 %add4, 3
  %68 = load i64* @input_len, align 8, !tbaa !15
  %add6 = add i64 %68, %stored_len
  store i64 %add6, i64* @input_len, align 8, !tbaa !15
  %cmp7 = icmp ugt i64 %shr5, %shr
  %shr.shr5 = select i1 %cmp7, i64 %shr, i64 %shr5
  %tobool = icmp eq i32 %eof, 0
  %add23 = add i64 %stored_len, 4
  %cmp24 = icmp ule i64 %add23, %shr.shr5
  %cmp27 = icmp ne i8* %buf, null
  %or.cond60 = and i1 %cmp24, %cmp27
  br i1 %or.cond60, label %if.then29, label %if.else37

if.then29:                                        ; preds = %build_bl_tree.exit
  tail call void @send_bits(i32 %eof, i32 3) #2
  %69 = load i64* @compressed_len, align 8, !tbaa !15
  %add32 = add i64 %69, 10
  %and = and i64 %add32, -8
  %shl34 = shl i64 %add23, 3
  %add35 = add i64 %and, %shl34
  store i64 %add35, i64* @compressed_len, align 8, !tbaa !15
  %conv36 = trunc i64 %stored_len to i32
  tail call void @copy_block(i8* %buf, i32 %conv36, i32 1) #2
  br label %if.end53

if.else37:                                        ; preds = %build_bl_tree.exit
  %cmp38 = icmp eq i64 %shr5, %shr.shr5
  br i1 %cmp38, label %if.then40, label %if.else44

if.then40:                                        ; preds = %if.else37
  %add41 = add nsw i32 %eof, 2
  tail call void @send_bits(i32 %add41, i32 3) #2
  tail call fastcc void @compress_block(%struct.ct_data* getelementptr inbounds ([288 x %struct.ct_data]* @static_ltree, i64 0, i64 0), %struct.ct_data* getelementptr inbounds ([30 x %struct.ct_data]* @static_dtree, i64 0, i64 0))
  %70 = load i64* @static_len, align 8, !tbaa !15
  %add42 = add i64 %70, 3
  %71 = load i64* @compressed_len, align 8, !tbaa !15
  %add43 = add i64 %add42, %71
  store i64 %add43, i64* @compressed_len, align 8, !tbaa !15
  br label %if.end53

if.else44:                                        ; preds = %if.else37
  %add45 = add nsw i32 %eof, 4
  tail call void @send_bits(i32 %add45, i32 3) #2
  %72 = load i32* getelementptr inbounds (%struct.tree_desc* @l_desc, i64 0, i32 6), align 4, !tbaa !44
  %73 = load i32* getelementptr inbounds (%struct.tree_desc* @d_desc, i64 0, i32 6), align 4, !tbaa !44
  %sub.i = add nsw i32 %72, -256
  tail call void @send_bits(i32 %sub.i, i32 5) #2
  tail call void @send_bits(i32 %73, i32 5) #2
  %sub2.i = add nsw i32 %max_blindex.0.lcssa.i, -3
  tail call void @send_bits(i32 %sub2.i, i32 4) #2
  %cmp12.i = icmp sgt i32 %max_blindex.0.lcssa.i, -1
  br i1 %cmp12.i, label %for.body.i83.preheader, label %send_all_trees.exit

for.body.i83.preheader:                           ; preds = %if.else44
  %74 = add i32 %max_blindex.0.lcssa.i, 1
  br label %for.body.i83

for.body.i83:                                     ; preds = %for.body.i83, %for.body.i83.preheader
  %indvars.iv.i76 = phi i64 [ %indvars.iv.next.i80, %for.body.i83 ], [ 0, %for.body.i83.preheader ]
  %arrayidx.i77 = getelementptr inbounds [19 x i8]* @bl_order, i64 0, i64 %indvars.iv.i76
  %75 = load i8* %arrayidx.i77, align 1, !tbaa !9
  %idxprom3.i = zext i8 %75 to i64
  %len.i78 = getelementptr inbounds [39 x %struct.ct_data]* @bl_tree, i64 0, i64 %idxprom3.i, i32 1, i32 0
  %76 = load i16* %len.i78, align 2, !tbaa !5
  %conv.i79 = zext i16 %76 to i32
  tail call void @send_bits(i32 %conv.i79, i32 3) #2
  %indvars.iv.next.i80 = add nuw nsw i64 %indvars.iv.i76, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next.i80 to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %74
  br i1 %exitcond, label %send_all_trees.exit.loopexit, label %for.body.i83

send_all_trees.exit.loopexit:                     ; preds = %for.body.i83
  br label %send_all_trees.exit

send_all_trees.exit:                              ; preds = %send_all_trees.exit.loopexit, %if.else44
  tail call fastcc void @send_tree(%struct.ct_data* getelementptr inbounds ([573 x %struct.ct_data]* @dyn_ltree, i64 0, i64 0), i32 %72) #2
  tail call fastcc void @send_tree(%struct.ct_data* getelementptr inbounds ([61 x %struct.ct_data]* @dyn_dtree, i64 0, i64 0), i32 %73) #2
  tail call fastcc void @compress_block(%struct.ct_data* getelementptr inbounds ([573 x %struct.ct_data]* @dyn_ltree, i64 0, i64 0), %struct.ct_data* getelementptr inbounds ([61 x %struct.ct_data]* @dyn_dtree, i64 0, i64 0))
  %77 = load i64* @opt_len, align 8, !tbaa !15
  %add49 = add i64 %77, 3
  %78 = load i64* @compressed_len, align 8, !tbaa !15
  %add50 = add i64 %add49, %78
  store i64 %add50, i64* @compressed_len, align 8, !tbaa !15
  br label %if.end53

if.end53:                                         ; preds = %send_all_trees.exit, %if.then40, %if.then29
  tail call fastcc void @init_block()
  br i1 %tobool, label %if.end53.if.end57_crit_edge, label %if.then55

if.end53.if.end57_crit_edge:                      ; preds = %if.end53
  %.pre86 = load i64* @compressed_len, align 8, !tbaa !15
  br label %if.end57

if.then55:                                        ; preds = %if.end53
  tail call void @bi_windup() #2
  %79 = load i64* @compressed_len, align 8, !tbaa !15
  %add56 = add i64 %79, 7
  store i64 %add56, i64* @compressed_len, align 8, !tbaa !15
  br label %if.end57

if.end57:                                         ; preds = %if.then55, %if.end53.if.end57_crit_edge
  %80 = phi i64 [ %.pre86, %if.end53.if.end57_crit_edge ], [ %add56, %if.then55 ]
  %shr58 = lshr i64 %80, 3
  ret i64 %shr58
}

; Function Attrs: nounwind uwtable
define i32 @ct_tally(i32 %dist, i32 %lc) #0 {
entry:
  %conv = trunc i32 %lc to i8
  %0 = load i32* @last_lit, align 4, !tbaa !1
  %inc = add i32 %0, 1
  store i32 %inc, i32* @last_lit, align 4, !tbaa !1
  %idxprom = zext i32 %0 to i64
  %arrayidx = getelementptr inbounds [0 x i8]* bitcast ([32832 x i8]* @inbuf to [0 x i8]*), i64 0, i64 %idxprom
  store i8 %conv, i8* %arrayidx, align 1, !tbaa !9
  %cmp = icmp eq i32 %dist, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %idxprom2 = sext i32 %lc to i64
  %freq = getelementptr inbounds [573 x %struct.ct_data]* @dyn_ltree, i64 0, i64 %idxprom2, i32 0, i32 0
  %1 = load i16* %freq, align 4, !tbaa !5
  %inc4 = add i16 %1, 1
  store i16 %inc4, i16* %freq, align 4, !tbaa !5
  %.pre = load i8* @flag_bit, align 1, !tbaa !9
  br label %if.end

if.else:                                          ; preds = %entry
  %dec = add nsw i32 %dist, -1
  %idxprom5 = sext i32 %lc to i64
  %arrayidx6 = getelementptr inbounds [256 x i8]* @length_code, i64 0, i64 %idxprom5
  %2 = load i8* %arrayidx6, align 1, !tbaa !9
  %conv7 = zext i8 %2 to i64
  %add91 = or i64 %conv7, 256
  %add8 = add nuw nsw i64 %add91, 1
  %idxprom992 = and i64 %add8, 1023
  %freq12 = getelementptr inbounds [573 x %struct.ct_data]* @dyn_ltree, i64 0, i64 %idxprom992, i32 0, i32 0
  %3 = load i16* %freq12, align 4, !tbaa !5
  %inc13 = add i16 %3, 1
  store i16 %inc13, i16* %freq12, align 4, !tbaa !5
  %cmp14 = icmp slt i32 %dist, 257
  br i1 %cmp14, label %cond.end, label %cond.false

cond.false:                                       ; preds = %if.else
  %shr = ashr i32 %dec, 7
  %add19 = add nsw i32 %shr, 256
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.else
  %idxprom16.pn.in = phi i32 [ %add19, %cond.false ], [ %dec, %if.else ]
  %idxprom16.pn = sext i32 %idxprom16.pn.in to i64
  %.sink.in = getelementptr inbounds [512 x i8]* @dist_code, i64 0, i64 %idxprom16.pn
  %.sink = load i8* %.sink.in, align 1
  %idxprom23 = zext i8 %.sink to i64
  %freq26 = getelementptr inbounds [61 x %struct.ct_data]* @dyn_dtree, i64 0, i64 %idxprom23, i32 0, i32 0
  %4 = load i16* %freq26, align 4, !tbaa !5
  %inc27 = add i16 %4, 1
  store i16 %inc27, i16* %freq26, align 4, !tbaa !5
  %conv28 = trunc i32 %dec to i16
  %5 = load i32* @last_dist, align 4, !tbaa !1
  %inc29 = add i32 %5, 1
  store i32 %inc29, i32* @last_dist, align 4, !tbaa !1
  %idxprom30 = zext i32 %5 to i64
  %arrayidx31 = getelementptr inbounds [0 x i16]* bitcast ([32768 x i16]* @d_buf to [0 x i16]*), i64 0, i64 %idxprom30
  store i16 %conv28, i16* %arrayidx31, align 2, !tbaa !5
  %6 = load i8* @flag_bit, align 1, !tbaa !9
  %7 = load i8* @flags, align 1, !tbaa !9
  %or93 = or i8 %7, %6
  store i8 %or93, i8* @flags, align 1, !tbaa !9
  br label %if.end

if.end:                                           ; preds = %cond.end, %if.then
  %8 = phi i8 [ %6, %cond.end ], [ %.pre, %if.then ]
  %shl = shl i8 %8, 1
  store i8 %shl, i8* @flag_bit, align 1, !tbaa !9
  %and = and i32 %inc, 7
  %cmp37 = icmp eq i32 %and, 0
  br i1 %cmp37, label %if.then39, label %if.end43

if.then39:                                        ; preds = %if.end
  %9 = load i8* @flags, align 1, !tbaa !9
  %10 = load i32* @last_flags, align 4, !tbaa !1
  %inc40 = add i32 %10, 1
  store i32 %inc40, i32* @last_flags, align 4, !tbaa !1
  %idxprom41 = zext i32 %10 to i64
  %arrayidx42 = getelementptr inbounds [4096 x i8]* @flag_buf, i64 0, i64 %idxprom41
  store i8 %9, i8* %arrayidx42, align 1, !tbaa !9
  store i8 0, i8* @flags, align 1, !tbaa !9
  store i8 1, i8* @flag_bit, align 1, !tbaa !9
  br label %if.end43

if.end43:                                         ; preds = %if.then39, %if.end
  %11 = load i32* @level, align 4, !tbaa !1
  %cmp44 = icmp sgt i32 %11, 2
  %and46 = and i32 %inc, 4095
  %cmp47 = icmp eq i32 %and46, 0
  %or.cond = and i1 %cmp44, %cmp47
  br i1 %or.cond, label %if.then49, label %if.end75

if.then49:                                        ; preds = %if.end43
  %conv50 = zext i32 %inc to i64
  %mul = shl nuw nsw i64 %conv50, 3
  %12 = load i32* @strstart, align 4, !tbaa !1
  %13 = load i64* @block_start, align 8, !tbaa !15
  br label %for.body

for.body:                                         ; preds = %for.body, %if.then49
  %indvars.iv = phi i64 [ 0, %if.then49 ], [ %indvars.iv.next.1, %for.body ]
  %out_length.094 = phi i64 [ %mul, %if.then49 ], [ %add64.1, %for.body ]
  %freq57 = getelementptr inbounds [61 x %struct.ct_data]* @dyn_dtree, i64 0, i64 %indvars.iv, i32 0, i32 0
  %14 = load i16* %freq57, align 4, !tbaa !5
  %conv58 = zext i16 %14 to i64
  %arrayidx60 = getelementptr inbounds [30 x i32]* @extra_dbits, i64 0, i64 %indvars.iv
  %15 = load i32* %arrayidx60, align 4, !tbaa !1
  %conv61 = sext i32 %15 to i64
  %add62 = add nsw i64 %conv61, 5
  %mul63 = mul i64 %add62, %conv58
  %add64 = add i64 %mul63, %out_length.094
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %freq57.1 = getelementptr inbounds [61 x %struct.ct_data]* @dyn_dtree, i64 0, i64 %indvars.iv.next, i32 0, i32 0
  %16 = load i16* %freq57.1, align 4, !tbaa !5
  %conv58.1 = zext i16 %16 to i64
  %arrayidx60.1 = getelementptr inbounds [30 x i32]* @extra_dbits, i64 0, i64 %indvars.iv.next
  %17 = load i32* %arrayidx60.1, align 4, !tbaa !1
  %conv61.1 = sext i32 %17 to i64
  %add62.1 = add nsw i64 %conv61.1, 5
  %mul63.1 = mul i64 %add62.1, %conv58.1
  %add64.1 = add i64 %mul63.1, %add64
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv.next, 1
  %exitcond.1 = icmp eq i64 %indvars.iv.next.1, 30
  br i1 %exitcond.1, label %for.end, label %for.body

for.end:                                          ; preds = %for.body
  %add64.lcssa = phi i64 [ %add64.1, %for.body ]
  %18 = load i32* @last_dist, align 4, !tbaa !1
  %div = lshr i32 %inc, 1
  %cmp67 = icmp ult i32 %18, %div
  br i1 %cmp67, label %land.lhs.true69, label %if.end75

land.lhs.true69:                                  ; preds = %for.end
  %conv51 = zext i32 %12 to i64
  %sub = sub i64 %conv51, %13
  %shr66 = lshr i64 %add64.lcssa, 3
  %div70 = lshr i64 %sub, 1
  %cmp71 = icmp ult i64 %shr66, %div70
  br i1 %cmp71, label %return, label %if.end75

if.end75:                                         ; preds = %land.lhs.true69, %for.end, %if.end43
  %cmp76 = icmp eq i32 %inc, 32767
  br i1 %cmp76, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %if.end75
  %19 = load i32* @last_dist, align 4, !tbaa !1
  %cmp78 = icmp eq i32 %19, 32768
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.end75
  %20 = phi i1 [ true, %if.end75 ], [ %cmp78, %lor.rhs ]
  %lor.ext = zext i1 %20 to i32
  br label %return

return:                                           ; preds = %lor.end, %land.lhs.true69
  %retval.0 = phi i32 [ %lor.ext, %lor.end ], [ 1, %land.lhs.true69 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind uwtable
define internal fastcc void @init_block() #0 {
entry:
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %entry
  %index = phi i64 [ 0, %entry ], [ %index.next, %vector.body ]
  %induction3233 = or i64 %index, 1
  %0 = getelementptr inbounds [573 x %struct.ct_data]* @dyn_ltree, i64 0, i64 %index, i32 0, i32 0
  %1 = getelementptr inbounds [573 x %struct.ct_data]* @dyn_ltree, i64 0, i64 %induction3233, i32 0, i32 0
  store i16 0, i16* %0, align 8, !tbaa !5
  store i16 0, i16* %1, align 4, !tbaa !5
  %index.next = add i64 %index, 2
  %2 = icmp eq i64 %index.next, 286
  br i1 %2, label %for.cond1.preheader, label %vector.body, !llvm.loop !46

for.cond1.preheader:                              ; preds = %vector.body
  store i16 0, i16* getelementptr inbounds ([61 x %struct.ct_data]* @dyn_dtree, i64 0, i64 0, i32 0, i32 0), align 16, !tbaa !5
  store i16 0, i16* getelementptr inbounds ([61 x %struct.ct_data]* @dyn_dtree, i64 0, i64 1, i32 0, i32 0), align 4, !tbaa !5
  store i16 0, i16* getelementptr inbounds ([61 x %struct.ct_data]* @dyn_dtree, i64 0, i64 2, i32 0, i32 0), align 8, !tbaa !5
  store i16 0, i16* getelementptr inbounds ([61 x %struct.ct_data]* @dyn_dtree, i64 0, i64 3, i32 0, i32 0), align 4, !tbaa !5
  store i16 0, i16* getelementptr inbounds ([61 x %struct.ct_data]* @dyn_dtree, i64 0, i64 4, i32 0, i32 0), align 16, !tbaa !5
  store i16 0, i16* getelementptr inbounds ([61 x %struct.ct_data]* @dyn_dtree, i64 0, i64 5, i32 0, i32 0), align 4, !tbaa !5
  store i16 0, i16* getelementptr inbounds ([61 x %struct.ct_data]* @dyn_dtree, i64 0, i64 6, i32 0, i32 0), align 8, !tbaa !5
  store i16 0, i16* getelementptr inbounds ([61 x %struct.ct_data]* @dyn_dtree, i64 0, i64 7, i32 0, i32 0), align 4, !tbaa !5
  store i16 0, i16* getelementptr inbounds ([61 x %struct.ct_data]* @dyn_dtree, i64 0, i64 8, i32 0, i32 0), align 16, !tbaa !5
  store i16 0, i16* getelementptr inbounds ([61 x %struct.ct_data]* @dyn_dtree, i64 0, i64 9, i32 0, i32 0), align 4, !tbaa !5
  store i16 0, i16* getelementptr inbounds ([61 x %struct.ct_data]* @dyn_dtree, i64 0, i64 10, i32 0, i32 0), align 8, !tbaa !5
  store i16 0, i16* getelementptr inbounds ([61 x %struct.ct_data]* @dyn_dtree, i64 0, i64 11, i32 0, i32 0), align 4, !tbaa !5
  store i16 0, i16* getelementptr inbounds ([61 x %struct.ct_data]* @dyn_dtree, i64 0, i64 12, i32 0, i32 0), align 16, !tbaa !5
  store i16 0, i16* getelementptr inbounds ([61 x %struct.ct_data]* @dyn_dtree, i64 0, i64 13, i32 0, i32 0), align 4, !tbaa !5
  store i16 0, i16* getelementptr inbounds ([61 x %struct.ct_data]* @dyn_dtree, i64 0, i64 14, i32 0, i32 0), align 8, !tbaa !5
  store i16 0, i16* getelementptr inbounds ([61 x %struct.ct_data]* @dyn_dtree, i64 0, i64 15, i32 0, i32 0), align 4, !tbaa !5
  store i16 0, i16* getelementptr inbounds ([61 x %struct.ct_data]* @dyn_dtree, i64 0, i64 16, i32 0, i32 0), align 16, !tbaa !5
  store i16 0, i16* getelementptr inbounds ([61 x %struct.ct_data]* @dyn_dtree, i64 0, i64 17, i32 0, i32 0), align 4, !tbaa !5
  store i16 0, i16* getelementptr inbounds ([61 x %struct.ct_data]* @dyn_dtree, i64 0, i64 18, i32 0, i32 0), align 8, !tbaa !5
  store i16 0, i16* getelementptr inbounds ([61 x %struct.ct_data]* @dyn_dtree, i64 0, i64 19, i32 0, i32 0), align 4, !tbaa !5
  store i16 0, i16* getelementptr inbounds ([61 x %struct.ct_data]* @dyn_dtree, i64 0, i64 20, i32 0, i32 0), align 16, !tbaa !5
  store i16 0, i16* getelementptr inbounds ([61 x %struct.ct_data]* @dyn_dtree, i64 0, i64 21, i32 0, i32 0), align 4, !tbaa !5
  store i16 0, i16* getelementptr inbounds ([61 x %struct.ct_data]* @dyn_dtree, i64 0, i64 22, i32 0, i32 0), align 8, !tbaa !5
  store i16 0, i16* getelementptr inbounds ([61 x %struct.ct_data]* @dyn_dtree, i64 0, i64 23, i32 0, i32 0), align 4, !tbaa !5
  store i16 0, i16* getelementptr inbounds ([61 x %struct.ct_data]* @dyn_dtree, i64 0, i64 24, i32 0, i32 0), align 16, !tbaa !5
  store i16 0, i16* getelementptr inbounds ([61 x %struct.ct_data]* @dyn_dtree, i64 0, i64 25, i32 0, i32 0), align 4, !tbaa !5
  store i16 0, i16* getelementptr inbounds ([61 x %struct.ct_data]* @dyn_dtree, i64 0, i64 26, i32 0, i32 0), align 8, !tbaa !5
  store i16 0, i16* getelementptr inbounds ([61 x %struct.ct_data]* @dyn_dtree, i64 0, i64 27, i32 0, i32 0), align 4, !tbaa !5
  store i16 0, i16* getelementptr inbounds ([61 x %struct.ct_data]* @dyn_dtree, i64 0, i64 28, i32 0, i32 0), align 16, !tbaa !5
  store i16 0, i16* getelementptr inbounds ([61 x %struct.ct_data]* @dyn_dtree, i64 0, i64 29, i32 0, i32 0), align 4, !tbaa !5
  store i16 0, i16* getelementptr inbounds ([39 x %struct.ct_data]* @bl_tree, i64 0, i64 0, i32 0, i32 0), align 16, !tbaa !5
  store i16 0, i16* getelementptr inbounds ([39 x %struct.ct_data]* @bl_tree, i64 0, i64 1, i32 0, i32 0), align 4, !tbaa !5
  store i16 0, i16* getelementptr inbounds ([39 x %struct.ct_data]* @bl_tree, i64 0, i64 2, i32 0, i32 0), align 8, !tbaa !5
  store i16 0, i16* getelementptr inbounds ([39 x %struct.ct_data]* @bl_tree, i64 0, i64 3, i32 0, i32 0), align 4, !tbaa !5
  store i16 0, i16* getelementptr inbounds ([39 x %struct.ct_data]* @bl_tree, i64 0, i64 4, i32 0, i32 0), align 16, !tbaa !5
  store i16 0, i16* getelementptr inbounds ([39 x %struct.ct_data]* @bl_tree, i64 0, i64 5, i32 0, i32 0), align 4, !tbaa !5
  store i16 0, i16* getelementptr inbounds ([39 x %struct.ct_data]* @bl_tree, i64 0, i64 6, i32 0, i32 0), align 8, !tbaa !5
  store i16 0, i16* getelementptr inbounds ([39 x %struct.ct_data]* @bl_tree, i64 0, i64 7, i32 0, i32 0), align 4, !tbaa !5
  store i16 0, i16* getelementptr inbounds ([39 x %struct.ct_data]* @bl_tree, i64 0, i64 8, i32 0, i32 0), align 16, !tbaa !5
  store i16 0, i16* getelementptr inbounds ([39 x %struct.ct_data]* @bl_tree, i64 0, i64 9, i32 0, i32 0), align 4, !tbaa !5
  store i16 0, i16* getelementptr inbounds ([39 x %struct.ct_data]* @bl_tree, i64 0, i64 10, i32 0, i32 0), align 8, !tbaa !5
  store i16 0, i16* getelementptr inbounds ([39 x %struct.ct_data]* @bl_tree, i64 0, i64 11, i32 0, i32 0), align 4, !tbaa !5
  store i16 0, i16* getelementptr inbounds ([39 x %struct.ct_data]* @bl_tree, i64 0, i64 12, i32 0, i32 0), align 16, !tbaa !5
  store i16 0, i16* getelementptr inbounds ([39 x %struct.ct_data]* @bl_tree, i64 0, i64 13, i32 0, i32 0), align 4, !tbaa !5
  store i16 0, i16* getelementptr inbounds ([39 x %struct.ct_data]* @bl_tree, i64 0, i64 14, i32 0, i32 0), align 8, !tbaa !5
  store i16 0, i16* getelementptr inbounds ([39 x %struct.ct_data]* @bl_tree, i64 0, i64 15, i32 0, i32 0), align 4, !tbaa !5
  store i16 0, i16* getelementptr inbounds ([39 x %struct.ct_data]* @bl_tree, i64 0, i64 16, i32 0, i32 0), align 16, !tbaa !5
  store i16 0, i16* getelementptr inbounds ([39 x %struct.ct_data]* @bl_tree, i64 0, i64 17, i32 0, i32 0), align 4, !tbaa !5
  store i16 0, i16* getelementptr inbounds ([39 x %struct.ct_data]* @bl_tree, i64 0, i64 18, i32 0, i32 0), align 8, !tbaa !5
  store i16 1, i16* getelementptr inbounds ([573 x %struct.ct_data]* @dyn_ltree, i64 0, i64 256, i32 0, i32 0), align 16, !tbaa !5
  store i64 0, i64* @static_len, align 8, !tbaa !15
  store i64 0, i64* @opt_len, align 8, !tbaa !15
  store i32 0, i32* @last_flags, align 4, !tbaa !1
  store i32 0, i32* @last_dist, align 4, !tbaa !1
  store i32 0, i32* @last_lit, align 4, !tbaa !1
  store i8 0, i8* @flags, align 1, !tbaa !9
  store i8 1, i8* @flag_bit, align 1, !tbaa !9
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @build_tree(%struct.tree_desc* nocapture %desc) #0 {
entry:
  %next_code.i = alloca [16 x i16], align 16
  %dyn_tree = getelementptr inbounds %struct.tree_desc* %desc, i64 0, i32 0
  %0 = load %struct.ct_data** %dyn_tree, align 8, !tbaa !47
  %static_tree = getelementptr inbounds %struct.tree_desc* %desc, i64 0, i32 1
  %1 = load %struct.ct_data** %static_tree, align 8, !tbaa !48
  %elems1 = getelementptr inbounds %struct.tree_desc* %desc, i64 0, i32 4
  %2 = load i32* %elems1, align 4, !tbaa !49
  store i32 0, i32* @heap_len, align 4, !tbaa !1
  store i32 573, i32* @heap_max, align 4, !tbaa !1
  %cmp153 = icmp sgt i32 %2, 0
  br i1 %cmp153, label %for.body.preheader, label %while.body.lr.ph

for.body.preheader:                               ; preds = %entry
  br label %for.body

while.cond.preheader:                             ; preds = %for.inc
  %max_code.1.lcssa = phi i32 [ %max_code.1, %for.inc ]
  %.lcssa173 = phi i32 [ %10, %for.inc ]
  %cmp11150 = icmp slt i32 %.lcssa173, 2
  br i1 %cmp11150, label %while.body.lr.ph, label %while.end

while.body.lr.ph:                                 ; preds = %while.cond.preheader, %entry
  %max_code.0.lcssa167 = phi i32 [ %max_code.1.lcssa, %while.cond.preheader ], [ -1, %entry ]
  %3 = phi i32 [ %.lcssa173, %while.cond.preheader ], [ 0, %entry ]
  %tobool = icmp eq %struct.ct_data* %1, null
  %opt_len.promoted = load i64* @opt_len, align 8, !tbaa !15
  %4 = sext i32 %3 to i64
  %5 = sub i32 1, %3
  %6 = zext i32 %5 to i64
  br label %while.body

for.body:                                         ; preds = %for.inc, %for.body.preheader
  %7 = phi i32 [ %10, %for.inc ], [ 0, %for.body.preheader ]
  %indvars.iv161 = phi i64 [ %indvars.iv.next162, %for.inc ], [ 0, %for.body.preheader ]
  %max_code.0154 = phi i32 [ %max_code.1, %for.inc ], [ -1, %for.body.preheader ]
  %freq = getelementptr inbounds %struct.ct_data* %0, i64 %indvars.iv161, i32 0, i32 0
  %8 = load i16* %freq, align 2, !tbaa !5
  %cmp2 = icmp eq i16 %8, 0
  br i1 %cmp2, label %if.else, label %if.then

if.then:                                          ; preds = %for.body
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* @heap_len, align 4, !tbaa !1
  %idxprom4 = sext i32 %inc to i64
  %arrayidx5 = getelementptr inbounds [573 x i32]* @heap, i64 0, i64 %idxprom4
  %9 = trunc i64 %indvars.iv161 to i32
  store i32 %9, i32* %arrayidx5, align 4, !tbaa !1
  %arrayidx7 = getelementptr inbounds [573 x i8]* @depth, i64 0, i64 %indvars.iv161
  store i8 0, i8* %arrayidx7, align 1, !tbaa !9
  br label %for.inc

if.else:                                          ; preds = %for.body
  %len = getelementptr inbounds %struct.ct_data* %0, i64 %indvars.iv161, i32 1, i32 0
  store i16 0, i16* %len, align 2, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %if.else, %if.then
  %10 = phi i32 [ %inc, %if.then ], [ %7, %if.else ]
  %max_code.1 = phi i32 [ %9, %if.then ], [ %max_code.0154, %if.else ]
  %indvars.iv.next162 = add nuw nsw i64 %indvars.iv161, 1
  %lftr.wideiv163 = trunc i64 %indvars.iv.next162 to i32
  %exitcond164 = icmp eq i32 %lftr.wideiv163, %2
  br i1 %exitcond164, label %while.cond.preheader, label %for.body

while.body:                                       ; preds = %while.cond.backedge, %while.body.lr.ph
  %indvars.iv159 = phi i64 [ %4, %while.body.lr.ph ], [ %indvars.iv.next160, %while.cond.backedge ]
  %max_code.2151 = phi i32 [ %max_code.0.lcssa167, %while.body.lr.ph ], [ %inc15.max_code.2, %while.cond.backedge ]
  %cmp13 = icmp slt i32 %max_code.2151, 2
  %inc15 = add nsw i32 %max_code.2151, 1
  %inc15.max_code.2 = select i1 %cmp13, i32 %inc15, i32 %max_code.2151
  %inc15. = select i1 %cmp13, i32 %inc15, i32 0
  %indvars.iv.next160 = add nsw i64 %indvars.iv159, 1
  %arrayidx18 = getelementptr inbounds [573 x i32]* @heap, i64 0, i64 %indvars.iv.next160
  store i32 %inc15., i32* %arrayidx18, align 4, !tbaa !1
  %idxprom19 = sext i32 %inc15. to i64
  %freq22 = getelementptr inbounds %struct.ct_data* %0, i64 %idxprom19, i32 0, i32 0
  store i16 1, i16* %freq22, align 2, !tbaa !5
  %arrayidx24 = getelementptr inbounds [573 x i8]* @depth, i64 0, i64 %idxprom19
  store i8 0, i8* %arrayidx24, align 1, !tbaa !9
  br i1 %tobool, label %while.cond.backedge, label %if.then25

if.then25:                                        ; preds = %while.body
  %len29 = getelementptr inbounds %struct.ct_data* %1, i64 %idxprom19, i32 1, i32 0
  %11 = load i16* %len29, align 2, !tbaa !5
  %conv30 = zext i16 %11 to i64
  %12 = load i64* @static_len, align 8, !tbaa !15
  %sub = sub i64 %12, %conv30
  store i64 %sub, i64* @static_len, align 8, !tbaa !15
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.then25, %while.body
  %13 = trunc i64 %indvars.iv.next160 to i32
  %cmp11 = icmp slt i32 %13, 2
  br i1 %cmp11, label %while.body, label %while.cond.while.end_crit_edge

while.cond.while.end_crit_edge:                   ; preds = %while.cond.backedge
  %inc15.max_code.2.lcssa = phi i32 [ %inc15.max_code.2, %while.cond.backedge ]
  %14 = add i64 %opt_len.promoted, -1
  %15 = sub i64 %14, %6
  store i32 2, i32* @heap_len, align 4, !tbaa !1
  store i64 %15, i64* @opt_len, align 8, !tbaa !15
  br label %while.end

while.end:                                        ; preds = %while.cond.while.end_crit_edge, %while.cond.preheader
  %max_code.2.lcssa = phi i32 [ %inc15.max_code.2.lcssa, %while.cond.while.end_crit_edge ], [ %max_code.1.lcssa, %while.cond.preheader ]
  %max_code32 = getelementptr inbounds %struct.tree_desc* %desc, i64 0, i32 6
  store i32 %max_code.2.lcssa, i32* %max_code32, align 4, !tbaa !44
  %16 = load i32* @heap_len, align 4, !tbaa !1
  %cmp34148 = icmp sgt i32 %16, 1
  br i1 %cmp34148, label %for.body36.lr.ph, label %do.body.preheader

for.body36.lr.ph:                                 ; preds = %while.end
  %div = sdiv i32 %16, 2
  br label %for.body36

for.cond33.do.body.preheader_crit_edge:           ; preds = %for.body36
  %.pre.pre = load i32* @heap_len, align 4, !tbaa !1
  br label %do.body.preheader

do.body.preheader:                                ; preds = %for.cond33.do.body.preheader_crit_edge, %while.end
  %.pre = phi i32 [ %.pre.pre, %for.cond33.do.body.preheader_crit_edge ], [ %16, %while.end ]
  %17 = sext i32 %2 to i64
  br label %do.body

for.body36:                                       ; preds = %for.body36, %for.body36.lr.ph
  %n.1149 = phi i32 [ %div, %for.body36.lr.ph ], [ %dec38, %for.body36 ]
  tail call fastcc void @pqdownheap(%struct.ct_data* %0, i32 %n.1149)
  %dec38 = add nsw i32 %n.1149, -1
  %cmp34 = icmp sgt i32 %dec38, 0
  br i1 %cmp34, label %for.body36, label %for.cond33.do.body.preheader_crit_edge

do.body:                                          ; preds = %do.body, %do.body.preheader
  %18 = phi i32 [ %.pre, %do.body.preheader ], [ %28, %do.body ]
  %indvars.iv = phi i64 [ %17, %do.body.preheader ], [ %indvars.iv.next, %do.body ]
  %19 = load i32* getelementptr inbounds ([573 x i32]* @heap, i64 0, i64 1), align 4, !tbaa !1
  %dec40 = add nsw i32 %18, -1
  store i32 %dec40, i32* @heap_len, align 4, !tbaa !1
  %idxprom41 = sext i32 %18 to i64
  %arrayidx42 = getelementptr inbounds [573 x i32]* @heap, i64 0, i64 %idxprom41
  %20 = load i32* %arrayidx42, align 4, !tbaa !1
  store i32 %20, i32* getelementptr inbounds ([573 x i32]* @heap, i64 0, i64 1), align 4, !tbaa !1
  tail call fastcc void @pqdownheap(%struct.ct_data* %0, i32 1)
  %21 = load i32* getelementptr inbounds ([573 x i32]* @heap, i64 0, i64 1), align 4, !tbaa !1
  %22 = load i32* @heap_max, align 4, !tbaa !1
  %dec43 = add nsw i32 %22, -1
  %idxprom44 = sext i32 %dec43 to i64
  %arrayidx45 = getelementptr inbounds [573 x i32]* @heap, i64 0, i64 %idxprom44
  store i32 %19, i32* %arrayidx45, align 4, !tbaa !1
  %dec46 = add nsw i32 %22, -2
  store i32 %dec46, i32* @heap_max, align 4, !tbaa !1
  %idxprom47 = sext i32 %dec46 to i64
  %arrayidx48 = getelementptr inbounds [573 x i32]* @heap, i64 0, i64 %idxprom47
  store i32 %21, i32* %arrayidx48, align 4, !tbaa !1
  %idxprom49 = sext i32 %19 to i64
  %freq52 = getelementptr inbounds %struct.ct_data* %0, i64 %idxprom49, i32 0, i32 0
  %23 = load i16* %freq52, align 2, !tbaa !5
  %idxprom54 = sext i32 %21 to i64
  %freq57 = getelementptr inbounds %struct.ct_data* %0, i64 %idxprom54, i32 0, i32 0
  %24 = load i16* %freq57, align 2, !tbaa !5
  %add = add i16 %24, %23
  %freq63 = getelementptr inbounds %struct.ct_data* %0, i64 %indvars.iv, i32 0, i32 0
  store i16 %add, i16* %freq63, align 2, !tbaa !5
  %arrayidx65 = getelementptr inbounds [573 x i8]* @depth, i64 0, i64 %idxprom49
  %25 = load i8* %arrayidx65, align 1, !tbaa !9
  %arrayidx68 = getelementptr inbounds [573 x i8]* @depth, i64 0, i64 %idxprom54
  %26 = load i8* %arrayidx68, align 1, !tbaa !9
  %cmp70 = icmp ult i8 %25, %26
  %. = select i1 %cmp70, i8 %26, i8 %25
  %add82 = add i8 %., 1
  %arrayidx85 = getelementptr inbounds [573 x i8]* @depth, i64 0, i64 %indvars.iv
  store i8 %add82, i8* %arrayidx85, align 1, !tbaa !9
  %27 = trunc i64 %indvars.iv to i32
  %conv86 = trunc i64 %indvars.iv to i16
  %dad = getelementptr inbounds %struct.ct_data* %0, i64 %idxprom54, i32 1, i32 0
  store i16 %conv86, i16* %dad, align 2, !tbaa !5
  %dad93 = getelementptr inbounds %struct.ct_data* %0, i64 %idxprom49, i32 1, i32 0
  store i16 %conv86, i16* %dad93, align 2, !tbaa !5
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  store i32 %27, i32* getelementptr inbounds ([573 x i32]* @heap, i64 0, i64 1), align 4, !tbaa !1
  tail call fastcc void @pqdownheap(%struct.ct_data* %0, i32 1)
  %28 = load i32* @heap_len, align 4, !tbaa !1
  %cmp95 = icmp sgt i32 %28, 1
  br i1 %cmp95, label %do.body, label %do.end

do.end:                                           ; preds = %do.body
  %29 = load i32* getelementptr inbounds ([573 x i32]* @heap, i64 0, i64 1), align 4, !tbaa !1
  %30 = load i32* @heap_max, align 4, !tbaa !1
  %dec97 = add nsw i32 %30, -1
  store i32 %dec97, i32* @heap_max, align 4, !tbaa !1
  %idxprom98 = sext i32 %dec97 to i64
  %arrayidx99 = getelementptr inbounds [573 x i32]* @heap, i64 0, i64 %idxprom98
  store i32 %29, i32* %arrayidx99, align 4, !tbaa !1
  %31 = load %struct.ct_data** %dyn_tree, align 8, !tbaa !47
  %extra_bits.i = getelementptr inbounds %struct.tree_desc* %desc, i64 0, i32 2
  %32 = load i32** %extra_bits.i, align 8, !tbaa !50
  %extra_base.i = getelementptr inbounds %struct.tree_desc* %desc, i64 0, i32 3
  %33 = load i32* %extra_base.i, align 4, !tbaa !51
  %34 = load i32* %max_code32, align 4, !tbaa !44
  %max_length2.i = getelementptr inbounds %struct.tree_desc* %desc, i64 0, i32 5
  %35 = load i32* %max_length2.i, align 4, !tbaa !52
  %36 = load %struct.ct_data** %static_tree, align 8, !tbaa !48
  tail call void @llvm.memset.p0i8.i64(i8* bitcast ([16 x i16]* @bl_count to i8*), i8 0, i64 32, i32 16, i1 false) #2
  %idxprom5.i = sext i32 %29 to i64
  %len.i = getelementptr inbounds %struct.ct_data* %31, i64 %idxprom5.i, i32 1, i32 0
  store i16 0, i16* %len.i, align 2, !tbaa !5
  %cmp8199.i = icmp slt i32 %30, 573
  br i1 %cmp8199.i, label %for.body9.lr.ph.i, label %gen_bitlen.exit

for.body9.lr.ph.i:                                ; preds = %do.end
  %tobool.i = icmp eq %struct.ct_data* %36, null
  %37 = sext i32 %30 to i64
  br label %for.body9.i

for.body9.i:                                      ; preds = %for.cond7.backedge.i, %for.body9.lr.ph.i
  %indvars.iv211.i = phi i64 [ %37, %for.body9.lr.ph.i ], [ %indvars.iv.next212.i, %for.cond7.backedge.i ]
  %h.0201.i = phi i32 [ %30, %for.body9.lr.ph.i ], [ %h.0.i, %for.cond7.backedge.i ]
  %overflow.0200.i = phi i32 [ 0, %for.body9.lr.ph.i ], [ %overflow.0.inc22.i, %for.cond7.backedge.i ]
  %arrayidx11.i = getelementptr inbounds [573 x i32]* @heap, i64 0, i64 %indvars.iv211.i
  %38 = load i32* %arrayidx11.i, align 4, !tbaa !1
  %idxprom12.i = sext i32 %38 to i64
  %dad.i = getelementptr inbounds %struct.ct_data* %31, i64 %idxprom12.i, i32 1, i32 0
  %39 = load i16* %dad.i, align 2, !tbaa !5
  %idxprom15.i = zext i16 %39 to i64
  %len18.i = getelementptr inbounds %struct.ct_data* %31, i64 %idxprom15.i, i32 1, i32 0
  %40 = load i16* %len18.i, align 2, !tbaa !5
  %conv.i = zext i16 %40 to i32
  %add19.i = add nuw nsw i32 %conv.i, 1
  %cmp20.i = icmp slt i32 %conv.i, %35
  %add19..i = select i1 %cmp20.i, i32 %add19.i, i32 %35
  %41 = zext i1 %cmp20.i to i32
  %inc22.i = xor i32 %41, 1
  %overflow.0.inc22.i = add nsw i32 %inc22.i, %overflow.0200.i
  %conv23.i = trunc i32 %add19..i to i16
  store i16 %conv23.i, i16* %dad.i, align 2, !tbaa !5
  %cmp28.i = icmp sgt i32 %38, %34
  br i1 %cmp28.i, label %for.cond7.backedge.i, label %if.end31.i

if.end31.i:                                       ; preds = %for.body9.i
  %idxprom32.i = sext i32 %add19..i to i64
  %arrayidx33.i = getelementptr inbounds [16 x i16]* @bl_count, i64 0, i64 %idxprom32.i
  %42 = load i16* %arrayidx33.i, align 2, !tbaa !5
  %inc34.i = add i16 %42, 1
  store i16 %inc34.i, i16* %arrayidx33.i, align 2, !tbaa !5
  %cmp35.i = icmp slt i32 %38, %33
  br i1 %cmp35.i, label %if.end40.i, label %if.then37.i

if.then37.i:                                      ; preds = %if.end31.i
  %sub.i = sub nsw i32 %38, %33
  %idxprom38.i = sext i32 %sub.i to i64
  %arrayidx39.i = getelementptr inbounds i32* %32, i64 %idxprom38.i
  %43 = load i32* %arrayidx39.i, align 4, !tbaa !1
  br label %if.end40.i

if.end40.i:                                       ; preds = %if.then37.i, %if.end31.i
  %xbits.0.i = phi i32 [ %43, %if.then37.i ], [ 0, %if.end31.i ]
  %freq.i = getelementptr inbounds %struct.ct_data* %31, i64 %idxprom12.i, i32 0, i32 0
  %44 = load i16* %freq.i, align 2, !tbaa !5
  %conv43.i = zext i16 %44 to i64
  %add44.i = add nsw i32 %xbits.0.i, %add19..i
  %conv45.i = sext i32 %add44.i to i64
  %mul.i = mul i64 %conv43.i, %conv45.i
  %45 = load i64* @opt_len, align 8, !tbaa !15
  %add46.i = add i64 %mul.i, %45
  store i64 %add46.i, i64* @opt_len, align 8, !tbaa !15
  br i1 %tobool.i, label %for.cond7.backedge.i, label %if.then47.i

for.cond7.backedge.i:                             ; preds = %if.then47.i, %if.end40.i, %for.body9.i
  %h.0.i = add nsw i32 %h.0201.i, 1
  %indvars.iv.next212.i = add nsw i64 %indvars.iv211.i, 1
  %exitcond.i = icmp eq i32 %h.0.i, 573
  br i1 %exitcond.i, label %for.end61.i, label %for.body9.i

if.then47.i:                                      ; preds = %if.end40.i
  %len52.i = getelementptr inbounds %struct.ct_data* %36, i64 %idxprom12.i, i32 1, i32 0
  %46 = load i16* %len52.i, align 2, !tbaa !5
  %conv53.i = zext i16 %46 to i32
  %add54.i = add nsw i32 %conv53.i, %xbits.0.i
  %conv55.i = sext i32 %add54.i to i64
  %mul56.i = mul i64 %conv55.i, %conv43.i
  %47 = load i64* @static_len, align 8, !tbaa !15
  %add57.i = add i64 %mul56.i, %47
  store i64 %add57.i, i64* @static_len, align 8, !tbaa !15
  br label %for.cond7.backedge.i

for.end61.i:                                      ; preds = %for.cond7.backedge.i
  %overflow.0.inc22.i.lcssa = phi i32 [ %overflow.0.inc22.i, %for.cond7.backedge.i ]
  %cmp62.i = icmp eq i32 %overflow.0.inc22.i.lcssa, 0
  br i1 %cmp62.i, label %gen_bitlen.exit, label %do.body.preheader.i

do.body.preheader.i:                              ; preds = %for.end61.i
  %idxprom81.i = sext i32 %35 to i64
  %arrayidx82.i = getelementptr inbounds [16 x i16]* @bl_count, i64 0, i64 %idxprom81.i
  br label %do.body.i

do.body.i:                                        ; preds = %while.end.i, %do.body.preheader.i
  %overflow.2.i = phi i32 [ %sub84.i, %while.end.i ], [ %overflow.0.inc22.i.lcssa, %do.body.preheader.i ]
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.cond.i, %do.body.i
  %indvars.iv209.i = phi i64 [ %indvars.iv.next210.i, %while.cond.i ], [ %idxprom81.i, %do.body.i ]
  %indvars.iv.next210.i = add nsw i64 %indvars.iv209.i, -1
  %arrayidx68.i = getelementptr inbounds [16 x i16]* @bl_count, i64 0, i64 %indvars.iv.next210.i
  %48 = load i16* %arrayidx68.i, align 2, !tbaa !5
  %cmp70.i = icmp eq i16 %48, 0
  br i1 %cmp70.i, label %while.cond.i, label %while.end.i

while.end.i:                                      ; preds = %while.cond.i
  %.lcssa172 = phi i16 [ %48, %while.cond.i ]
  %arrayidx68.i.lcssa = phi i16* [ %arrayidx68.i, %while.cond.i ]
  %indvars.iv209.i.lcssa = phi i64 [ %indvars.iv209.i, %while.cond.i ]
  %dec74.i = add i16 %.lcssa172, -1
  store i16 %dec74.i, i16* %arrayidx68.i.lcssa, align 2, !tbaa !5
  %sext.i = shl i64 %indvars.iv209.i.lcssa, 32
  %idxprom76.i = ashr exact i64 %sext.i, 32
  %arrayidx77.i = getelementptr inbounds [16 x i16]* @bl_count, i64 0, i64 %idxprom76.i
  %49 = load i16* %arrayidx77.i, align 2, !tbaa !5
  %add79.i = add i16 %49, 2
  store i16 %add79.i, i16* %arrayidx77.i, align 2, !tbaa !5
  %50 = load i16* %arrayidx82.i, align 2, !tbaa !5
  %dec83.i = add i16 %50, -1
  store i16 %dec83.i, i16* %arrayidx82.i, align 2, !tbaa !5
  %sub84.i = add nsw i32 %overflow.2.i, -2
  %cmp85.i = icmp sgt i32 %sub84.i, 0
  br i1 %cmp85.i, label %do.body.i, label %for.cond87.preheader.i

for.cond87.preheader.i:                           ; preds = %while.end.i
  %dec83.i.lcssa = phi i16 [ %dec83.i, %while.end.i ]
  %cmp88195.i = icmp eq i32 %35, 0
  br i1 %cmp88195.i, label %gen_bitlen.exit, label %for.body90.i.preheader

for.body90.i.preheader:                           ; preds = %for.cond87.preheader.i
  br label %for.body90.i

for.body90.i:                                     ; preds = %for.inc135.for.body90_crit_edge.i, %for.body90.i.preheader
  %51 = phi i16 [ %.pre.i, %for.inc135.for.body90_crit_edge.i ], [ %dec83.i.lcssa, %for.body90.i.preheader ]
  %indvars.iv207.i = phi i64 [ %indvars.iv.next208.i, %for.inc135.for.body90_crit_edge.i ], [ %idxprom81.i, %for.body90.i.preheader ]
  %h.1197.i = phi i64 [ %indvars.iv.i.lcssa, %for.inc135.for.body90_crit_edge.i ], [ 573, %for.body90.i.preheader ]
  %conv93.i = zext i16 %51 to i32
  %52 = trunc i64 %indvars.iv207.i to i32
  %conv127.i = trunc i64 %indvars.iv207.i to i16
  br label %while.cond94.outer.i

while.cond94.outer.i:                             ; preds = %if.end132.i, %for.body90.i
  %n.0.ph.i = phi i32 [ %dec133.i, %if.end132.i ], [ %conv93.i, %for.body90.i ]
  %h.2.ph.i = phi i64 [ %indvars.iv.next.i.lcssa, %if.end132.i ], [ %h.1197.i, %for.body90.i ]
  %cmp95.i = icmp eq i32 %n.0.ph.i, 0
  %sext218.i = shl i64 %h.2.ph.i, 32
  %53 = ashr exact i64 %sext218.i, 32
  br label %while.cond94.i

while.cond94.i:                                   ; preds = %while.body97.i, %while.cond94.outer.i
  %indvars.iv.i = phi i64 [ %53, %while.cond94.outer.i ], [ %indvars.iv.next.i, %while.body97.i ]
  br i1 %cmp95.i, label %for.inc135.i, label %while.body97.i

while.body97.i:                                   ; preds = %while.cond94.i
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1
  %arrayidx100.i = getelementptr inbounds [573 x i32]* @heap, i64 0, i64 %indvars.iv.next.i
  %54 = load i32* %arrayidx100.i, align 4, !tbaa !1
  %cmp101.i = icmp sgt i32 %54, %34
  br i1 %cmp101.i, label %while.cond94.i, label %if.end104.i

if.end104.i:                                      ; preds = %while.body97.i
  %.lcssa = phi i32 [ %54, %while.body97.i ]
  %indvars.iv.next.i.lcssa = phi i64 [ %indvars.iv.next.i, %while.body97.i ]
  %idxprom105.i = sext i32 %.lcssa to i64
  %len108.i = getelementptr inbounds %struct.ct_data* %31, i64 %idxprom105.i, i32 1, i32 0
  %55 = load i16* %len108.i, align 2, !tbaa !5
  %conv109.i = zext i16 %55 to i32
  %cmp110.i = icmp eq i32 %conv109.i, %52
  br i1 %cmp110.i, label %if.end132.i, label %if.then112.i

if.then112.i:                                     ; preds = %if.end104.i
  %conv118.i = zext i16 %55 to i64
  %sub119.i = sub nsw i64 %indvars.iv207.i, %conv118.i
  %freq123.i = getelementptr inbounds %struct.ct_data* %31, i64 %idxprom105.i, i32 0, i32 0
  %56 = load i16* %freq123.i, align 2, !tbaa !5
  %conv124.i = zext i16 %56 to i64
  %mul125.i = mul nsw i64 %conv124.i, %sub119.i
  %57 = load i64* @opt_len, align 8, !tbaa !15
  %add126.i = add i64 %mul125.i, %57
  store i64 %add126.i, i64* @opt_len, align 8, !tbaa !15
  store i16 %conv127.i, i16* %len108.i, align 2, !tbaa !5
  br label %if.end132.i

if.end132.i:                                      ; preds = %if.then112.i, %if.end104.i
  %dec133.i = add nsw i32 %n.0.ph.i, -1
  br label %while.cond94.outer.i

for.inc135.i:                                     ; preds = %while.cond94.i
  %indvars.iv.i.lcssa = phi i64 [ %indvars.iv.i, %while.cond94.i ]
  %indvars.iv.next208.i = add nsw i64 %indvars.iv207.i, -1
  %58 = trunc i64 %indvars.iv.next208.i to i32
  %cmp88.i = icmp eq i32 %58, 0
  br i1 %cmp88.i, label %gen_bitlen.exit.loopexit, label %for.inc135.for.body90_crit_edge.i

for.inc135.for.body90_crit_edge.i:                ; preds = %for.inc135.i
  %arrayidx92.phi.trans.insert.i = getelementptr inbounds [16 x i16]* @bl_count, i64 0, i64 %indvars.iv.next208.i
  %.pre.i = load i16* %arrayidx92.phi.trans.insert.i, align 2, !tbaa !5
  br label %for.body90.i

gen_bitlen.exit.loopexit:                         ; preds = %for.inc135.i
  br label %gen_bitlen.exit

gen_bitlen.exit:                                  ; preds = %gen_bitlen.exit.loopexit, %for.cond87.preheader.i, %for.end61.i, %do.end
  %59 = bitcast [16 x i16]* %next_code.i to i8*
  call void @llvm.lifetime.start(i64 32, i8* %59)
  br label %for.body.i

for.cond5.preheader.i:                            ; preds = %for.body.i
  %cmp635.i = icmp slt i32 %max_code.2.lcssa, 0
  br i1 %cmp635.i, label %gen_codes.exit, label %for.body8.lr.ph.i

for.body8.lr.ph.i:                                ; preds = %for.cond5.preheader.i
  %60 = add i32 %max_code.2.lcssa, 1
  br label %for.body8.i

for.body.i:                                       ; preds = %for.body.i, %gen_bitlen.exit
  %indvars.iv39.i = phi i64 [ 1, %gen_bitlen.exit ], [ %indvars.iv.next40.i, %for.body.i ]
  %code.038.i = phi i32 [ 0, %gen_bitlen.exit ], [ %shl.i, %for.body.i ]
  %conv.i140 = and i32 %code.038.i, 65534
  %61 = add nsw i64 %indvars.iv39.i, -1
  %arrayidx.i = getelementptr inbounds [16 x i16]* @bl_count, i64 0, i64 %61
  %62 = load i16* %arrayidx.i, align 2, !tbaa !5
  %conv1.i = zext i16 %62 to i32
  %add.i = add nuw nsw i32 %conv1.i, %conv.i140
  %shl.i = shl nuw nsw i32 %add.i, 1
  %conv2.i = trunc i32 %shl.i to i16
  %arrayidx4.i141 = getelementptr inbounds [16 x i16]* %next_code.i, i64 0, i64 %indvars.iv39.i
  store i16 %conv2.i, i16* %arrayidx4.i141, align 2, !tbaa !5
  %indvars.iv.next40.i = add nuw nsw i64 %indvars.iv39.i, 1
  %exitcond42.i = icmp eq i64 %indvars.iv.next40.i, 16
  br i1 %exitcond42.i, label %for.cond5.preheader.i, label %for.body.i

for.body8.i:                                      ; preds = %for.inc23.i, %for.body8.lr.ph.i
  %indvars.iv.i142 = phi i64 [ %indvars.iv.next.i144, %for.inc23.i ], [ 0, %for.body8.lr.ph.i ]
  %len11.i = getelementptr inbounds %struct.ct_data* %0, i64 %indvars.iv.i142, i32 1, i32 0
  %63 = load i16* %len11.i, align 2, !tbaa !5
  %cmp13.i = icmp eq i16 %63, 0
  br i1 %cmp13.i, label %for.inc23.i, label %if.end.i

if.end.i:                                         ; preds = %for.body8.i
  %conv12.i = zext i16 %63 to i32
  %idxprom15.i143 = zext i16 %63 to i64
  %arrayidx16.i = getelementptr inbounds [16 x i16]* %next_code.i, i64 0, i64 %idxprom15.i143
  %64 = load i16* %arrayidx16.i, align 2, !tbaa !5
  %inc17.i = add i16 %64, 1
  store i16 %inc17.i, i16* %arrayidx16.i, align 2, !tbaa !5
  %conv18.i = zext i16 %64 to i32
  %call.i = tail call i32 @bi_reverse(i32 %conv18.i, i32 %conv12.i) #2
  %conv19.i = trunc i32 %call.i to i16
  %code22.i = getelementptr inbounds %struct.ct_data* %0, i64 %indvars.iv.i142, i32 0, i32 0
  store i16 %conv19.i, i16* %code22.i, align 2, !tbaa !5
  br label %for.inc23.i

for.inc23.i:                                      ; preds = %if.end.i, %for.body8.i
  %indvars.iv.next.i144 = add nuw nsw i64 %indvars.iv.i142, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next.i144 to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %60
  br i1 %exitcond, label %gen_codes.exit.loopexit, label %for.body8.i

gen_codes.exit.loopexit:                          ; preds = %for.inc23.i
  br label %gen_codes.exit

gen_codes.exit:                                   ; preds = %gen_codes.exit.loopexit, %for.cond5.preheader.i
  call void @llvm.lifetime.end(i64 32, i8* %59)
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @scan_tree(%struct.ct_data* nocapture %tree, i32 %max_code) #0 {
entry:
  %len = getelementptr inbounds %struct.ct_data* %tree, i64 0, i32 1, i32 0
  %0 = load i16* %len, align 2, !tbaa !5
  %conv = zext i16 %0 to i32
  %cmp = icmp eq i16 %0, 0
  %. = select i1 %cmp, i32 138, i32 7
  %.82 = select i1 %cmp, i32 3, i32 4
  %add = add nsw i32 %max_code, 1
  %idxprom = sext i32 %add to i64
  %len4 = getelementptr inbounds %struct.ct_data* %tree, i64 %idxprom, i32 1, i32 0
  store i16 -1, i16* %len4, align 2, !tbaa !5
  br label %for.cond.outer

for.cond.outer:                                   ; preds = %for.cond.outer.backedge, %entry
  %prevlen.0.ph = phi i32 [ -1, %entry ], [ %nextlen.0.ph, %for.cond.outer.backedge ]
  %n.0.ph = phi i64 [ 0, %entry ], [ %phitmp, %for.cond.outer.backedge ]
  %nextlen.0.ph = phi i32 [ %conv, %entry ], [ %conv12.lcssa, %for.cond.outer.backedge ]
  %max_count.1.ph = phi i32 [ %., %entry ], [ %max_count.1.ph.be, %for.cond.outer.backedge ]
  %min_count.1.ph = phi i32 [ %.82, %entry ], [ %min_count.1.ph.be, %for.cond.outer.backedge ]
  br label %for.cond

for.cond:                                         ; preds = %for.body, %for.cond.outer
  %indvars.iv = phi i64 [ %n.0.ph, %for.cond.outer ], [ %indvars.iv.next, %for.body ]
  %count.0 = phi i32 [ 0, %for.cond.outer ], [ %inc, %for.body ]
  %1 = trunc i64 %indvars.iv to i32
  %cmp5 = icmp sgt i32 %1, %max_code
  br i1 %cmp5, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %len11 = getelementptr inbounds %struct.ct_data* %tree, i64 %indvars.iv.next, i32 1, i32 0
  %2 = load i16* %len11, align 2, !tbaa !5
  %conv12 = zext i16 %2 to i32
  %inc = add nsw i32 %count.0, 1
  %cmp13 = icmp slt i32 %inc, %max_count.1.ph
  %cmp15 = icmp eq i32 %nextlen.0.ph, %conv12
  %or.cond = and i1 %cmp13, %cmp15
  br i1 %or.cond, label %for.cond, label %if.else

if.else:                                          ; preds = %for.body
  %cmp15.lcssa = phi i1 [ %cmp15, %for.body ]
  %inc.lcssa = phi i32 [ %inc, %for.body ]
  %conv12.lcssa = phi i32 [ %conv12, %for.body ]
  %.lcssa = phi i16 [ %2, %for.body ]
  %indvars.iv.next.lcssa = phi i64 [ %indvars.iv.next, %for.body ]
  %cmp18 = icmp slt i32 %inc.lcssa, %min_count.1.ph
  br i1 %cmp18, label %if.then20, label %if.else26

if.then20:                                        ; preds = %if.else
  %idxprom2181 = zext i32 %nextlen.0.ph to i64
  %freq = getelementptr inbounds [39 x %struct.ct_data]* @bl_tree, i64 0, i64 %idxprom2181, i32 0, i32 0
  %3 = load i16* %freq, align 4, !tbaa !5
  %conv23 = zext i16 %3 to i32
  %add24 = add nsw i32 %conv23, %inc.lcssa
  %conv25 = trunc i32 %add24 to i16
  store i16 %conv25, i16* %freq, align 4, !tbaa !5
  br label %if.end50

if.else26:                                        ; preds = %if.else
  %cmp27 = icmp eq i32 %nextlen.0.ph, 0
  br i1 %cmp27, label %if.else40, label %if.then29

if.then29:                                        ; preds = %if.else26
  %cmp30 = icmp eq i32 %nextlen.0.ph, %prevlen.0.ph
  br i1 %cmp30, label %if.end38, label %if.then32

if.then32:                                        ; preds = %if.then29
  %idxprom3380 = zext i32 %nextlen.0.ph to i64
  %freq36 = getelementptr inbounds [39 x %struct.ct_data]* @bl_tree, i64 0, i64 %idxprom3380, i32 0, i32 0
  %4 = load i16* %freq36, align 4, !tbaa !5
  %inc37 = add i16 %4, 1
  store i16 %inc37, i16* %freq36, align 4, !tbaa !5
  br label %if.end38

if.end38:                                         ; preds = %if.then32, %if.then29
  %5 = load i16* getelementptr inbounds ([39 x %struct.ct_data]* @bl_tree, i64 0, i64 16, i32 0, i32 0), align 16, !tbaa !5
  %inc39 = add i16 %5, 1
  store i16 %inc39, i16* getelementptr inbounds ([39 x %struct.ct_data]* @bl_tree, i64 0, i64 16, i32 0, i32 0), align 16, !tbaa !5
  br label %if.end50

if.else40:                                        ; preds = %if.else26
  %cmp41 = icmp slt i32 %inc.lcssa, 11
  br i1 %cmp41, label %if.then43, label %if.else45

if.then43:                                        ; preds = %if.else40
  %6 = load i16* getelementptr inbounds ([39 x %struct.ct_data]* @bl_tree, i64 0, i64 17, i32 0, i32 0), align 4, !tbaa !5
  %inc44 = add i16 %6, 1
  store i16 %inc44, i16* getelementptr inbounds ([39 x %struct.ct_data]* @bl_tree, i64 0, i64 17, i32 0, i32 0), align 4, !tbaa !5
  br label %if.end50

if.else45:                                        ; preds = %if.else40
  %7 = load i16* getelementptr inbounds ([39 x %struct.ct_data]* @bl_tree, i64 0, i64 18, i32 0, i32 0), align 8, !tbaa !5
  %inc46 = add i16 %7, 1
  store i16 %inc46, i16* getelementptr inbounds ([39 x %struct.ct_data]* @bl_tree, i64 0, i64 18, i32 0, i32 0), align 8, !tbaa !5
  br label %if.end50

if.end50:                                         ; preds = %if.else45, %if.then43, %if.end38, %if.then20
  %cmp51 = icmp eq i16 %.lcssa, 0
  br i1 %cmp51, label %for.cond.outer.backedge, label %if.else54

for.cond.outer.backedge:                          ; preds = %if.else54, %if.end50
  %max_count.1.ph.be = phi i32 [ %.83, %if.else54 ], [ 138, %if.end50 ]
  %min_count.1.ph.be = phi i32 [ %.84, %if.else54 ], [ 3, %if.end50 ]
  %sext = shl i64 %indvars.iv.next.lcssa, 32
  %phitmp = ashr exact i64 %sext, 32
  br label %for.cond.outer

if.else54:                                        ; preds = %if.end50
  %.83 = select i1 %cmp15.lcssa, i32 6, i32 7
  %.84 = select i1 %cmp15.lcssa, i32 3, i32 4
  br label %for.cond.outer.backedge

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @compress_block(%struct.ct_data* nocapture readonly %ltree, %struct.ct_data* nocapture readonly %dtree) #0 {
entry:
  %0 = load i32* @last_lit, align 4, !tbaa !1
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.end80, label %do.body.preheader

do.body.preheader:                                ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.end74, %do.body.preheader
  %lx.0 = phi i32 [ %inc3, %if.end74 ], [ 0, %do.body.preheader ]
  %dx.0 = phi i32 [ %dx.1, %if.end74 ], [ 0, %do.body.preheader ]
  %fx.0 = phi i32 [ %fx.1, %if.end74 ], [ 0, %do.body.preheader ]
  %flag.0 = phi i8 [ %shr76115, %if.end74 ], [ 0, %do.body.preheader ]
  %and = and i32 %lx.0, 7
  %cmp1 = icmp eq i32 %and, 0
  br i1 %cmp1, label %if.then2, label %if.end

if.then2:                                         ; preds = %do.body
  %inc = add i32 %fx.0, 1
  %idxprom = zext i32 %fx.0 to i64
  %arrayidx = getelementptr inbounds [4096 x i8]* @flag_buf, i64 0, i64 %idxprom
  %1 = load i8* %arrayidx, align 1, !tbaa !9
  br label %if.end

if.end:                                           ; preds = %if.then2, %do.body
  %fx.1 = phi i32 [ %inc, %if.then2 ], [ %fx.0, %do.body ]
  %flag.1 = phi i8 [ %1, %if.then2 ], [ %flag.0, %do.body ]
  %inc3 = add i32 %lx.0, 1
  %idxprom4 = zext i32 %lx.0 to i64
  %arrayidx5 = getelementptr inbounds [0 x i8]* bitcast ([32832 x i8]* @inbuf to [0 x i8]*), i64 0, i64 %idxprom4
  %2 = load i8* %arrayidx5, align 1, !tbaa !9
  %conv = zext i8 %2 to i32
  %and7 = and i8 %flag.1, 1
  %cmp8 = icmp eq i8 %and7, 0
  %idxprom11 = zext i8 %2 to i64
  br i1 %cmp8, label %if.then10, label %if.else

if.then10:                                        ; preds = %if.end
  %code13 = getelementptr inbounds %struct.ct_data* %ltree, i64 %idxprom11, i32 0, i32 0
  %3 = load i16* %code13, align 2, !tbaa !5
  %conv14 = zext i16 %3 to i32
  %len = getelementptr inbounds %struct.ct_data* %ltree, i64 %idxprom11, i32 1, i32 0
  %4 = load i16* %len, align 2, !tbaa !5
  %conv17 = zext i16 %4 to i32
  tail call void @send_bits(i32 %conv14, i32 %conv17) #2
  br label %if.end74

if.else:                                          ; preds = %if.end
  %arrayidx19 = getelementptr inbounds [256 x i8]* @length_code, i64 0, i64 %idxprom11
  %5 = load i8* %arrayidx19, align 1, !tbaa !9
  %conv20 = zext i8 %5 to i64
  %add114 = or i64 %conv20, 256
  %add21 = add nuw nsw i64 %add114, 1
  %idxprom22 = and i64 %add21, 1023
  %code25 = getelementptr inbounds %struct.ct_data* %ltree, i64 %idxprom22, i32 0, i32 0
  %6 = load i16* %code25, align 2, !tbaa !5
  %conv26 = zext i16 %6 to i32
  %len32 = getelementptr inbounds %struct.ct_data* %ltree, i64 %idxprom22, i32 1, i32 0
  %7 = load i16* %len32, align 2, !tbaa !5
  %conv33 = zext i16 %7 to i32
  tail call void @send_bits(i32 %conv26, i32 %conv33) #2
  %arrayidx35 = getelementptr inbounds [29 x i32]* @extra_lbits, i64 0, i64 %conv20
  %8 = load i32* %arrayidx35, align 4, !tbaa !1
  %cmp36 = icmp eq i32 %8, 0
  br i1 %cmp36, label %if.end41, label %if.then38

if.then38:                                        ; preds = %if.else
  %arrayidx40 = getelementptr inbounds [29 x i32]* @base_length, i64 0, i64 %conv20
  %9 = load i32* %arrayidx40, align 4, !tbaa !1
  %sub = sub nsw i32 %conv, %9
  tail call void @send_bits(i32 %sub, i32 %8) #2
  br label %if.end41

if.end41:                                         ; preds = %if.then38, %if.else
  %inc42 = add i32 %dx.0, 1
  %idxprom43 = zext i32 %dx.0 to i64
  %arrayidx44 = getelementptr inbounds [0 x i16]* bitcast ([32768 x i16]* @d_buf to [0 x i16]*), i64 0, i64 %idxprom43
  %10 = load i16* %arrayidx44, align 2, !tbaa !5
  %conv45 = zext i16 %10 to i32
  %cmp46 = icmp ult i16 %10, 256
  br i1 %cmp46, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end41
  %idxprom48 = zext i16 %10 to i64
  br label %cond.end

cond.false:                                       ; preds = %if.end41
  %shr = lshr i32 %conv45, 7
  %add51 = add nuw nsw i32 %shr, 256
  %idxprom52 = zext i32 %add51 to i64
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %idxprom48.pn = phi i64 [ %idxprom48, %cond.true ], [ %idxprom52, %cond.false ]
  %.sink.in = getelementptr inbounds [512 x i8]* @dist_code, i64 0, i64 %idxprom48.pn
  %.sink = load i8* %.sink.in, align 1
  %idxprom55 = zext i8 %.sink to i64
  %code58 = getelementptr inbounds %struct.ct_data* %dtree, i64 %idxprom55, i32 0, i32 0
  %11 = load i16* %code58, align 2, !tbaa !5
  %conv59 = zext i16 %11 to i32
  %len63 = getelementptr inbounds %struct.ct_data* %dtree, i64 %idxprom55, i32 1, i32 0
  %12 = load i16* %len63, align 2, !tbaa !5
  %conv64 = zext i16 %12 to i32
  tail call void @send_bits(i32 %conv59, i32 %conv64) #2
  %arrayidx66 = getelementptr inbounds [30 x i32]* @extra_dbits, i64 0, i64 %idxprom55
  %13 = load i32* %arrayidx66, align 4, !tbaa !1
  %cmp67 = icmp eq i32 %13, 0
  br i1 %cmp67, label %if.end74, label %if.then69

if.then69:                                        ; preds = %cond.end
  %arrayidx71 = getelementptr inbounds [30 x i32]* @base_dist, i64 0, i64 %idxprom55
  %14 = load i32* %arrayidx71, align 4, !tbaa !1
  %sub72 = sub i32 %conv45, %14
  tail call void @send_bits(i32 %sub72, i32 %13) #2
  br label %if.end74

if.end74:                                         ; preds = %if.then69, %cond.end, %if.then10
  %dx.1 = phi i32 [ %dx.0, %if.then10 ], [ %inc42, %if.then69 ], [ %inc42, %cond.end ]
  %shr76115 = lshr i8 %flag.1, 1
  %15 = load i32* @last_lit, align 4, !tbaa !1
  %cmp78 = icmp ult i32 %inc3, %15
  br i1 %cmp78, label %do.body, label %if.end80.loopexit

if.end80.loopexit:                                ; preds = %if.end74
  br label %if.end80

if.end80:                                         ; preds = %if.end80.loopexit, %entry
  %code83 = getelementptr inbounds %struct.ct_data* %ltree, i64 256, i32 0, i32 0
  %16 = load i16* %code83, align 2, !tbaa !5
  %conv84 = zext i16 %16 to i32
  %len87 = getelementptr inbounds %struct.ct_data* %ltree, i64 256, i32 1, i32 0
  %17 = load i16* %len87, align 2, !tbaa !5
  %conv88 = zext i16 %17 to i32
  tail call void @send_bits(i32 %conv84, i32 %conv88) #2
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @send_tree(%struct.ct_data* nocapture readonly %tree, i32 %max_code) #0 {
entry:
  %len = getelementptr inbounds %struct.ct_data* %tree, i64 0, i32 1, i32 0
  %0 = load i16* %len, align 2, !tbaa !5
  %conv = zext i16 %0 to i32
  %cmp = icmp eq i16 %0, 0
  %. = select i1 %cmp, i32 138, i32 7
  %.97 = select i1 %cmp, i32 3, i32 4
  br label %for.cond.outer

for.cond.outer:                                   ; preds = %for.cond.outer.backedge, %entry
  %prevlen.0.ph = phi i32 [ -1, %entry ], [ %nextlen.0.ph, %for.cond.outer.backedge ]
  %n.0.ph = phi i64 [ 0, %entry ], [ %phitmp, %for.cond.outer.backedge ]
  %nextlen.0.ph = phi i32 [ %conv, %entry ], [ %conv7.lcssa, %for.cond.outer.backedge ]
  %max_count.1.ph = phi i32 [ %., %entry ], [ %max_count.1.ph.be, %for.cond.outer.backedge ]
  %min_count.1.ph = phi i32 [ %.97, %entry ], [ %min_count.1.ph.be, %for.cond.outer.backedge ]
  br label %for.cond

for.cond:                                         ; preds = %for.body, %for.cond.outer
  %indvars.iv = phi i64 [ %n.0.ph, %for.cond.outer ], [ %indvars.iv.next, %for.body ]
  %count.0 = phi i32 [ 0, %for.cond.outer ], [ %inc, %for.body ]
  %1 = trunc i64 %indvars.iv to i32
  %cmp2 = icmp sgt i32 %1, %max_code
  br i1 %cmp2, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %len6 = getelementptr inbounds %struct.ct_data* %tree, i64 %indvars.iv.next, i32 1, i32 0
  %2 = load i16* %len6, align 2, !tbaa !5
  %conv7 = zext i16 %2 to i32
  %inc = add nsw i32 %count.0, 1
  %cmp8 = icmp slt i32 %inc, %max_count.1.ph
  %cmp10 = icmp eq i32 %nextlen.0.ph, %conv7
  %or.cond = and i1 %cmp8, %cmp10
  br i1 %or.cond, label %for.cond, label %if.else

if.else:                                          ; preds = %for.body
  %cmp10.lcssa = phi i1 [ %cmp10, %for.body ]
  %inc.lcssa = phi i32 [ %inc, %for.body ]
  %conv7.lcssa = phi i32 [ %conv7, %for.body ]
  %.lcssa = phi i16 [ %2, %for.body ]
  %indvars.iv.next.lcssa = phi i64 [ %indvars.iv.next, %for.body ]
  %count.0.lcssa105 = phi i32 [ %count.0, %for.body ]
  %cmp13 = icmp slt i32 %inc.lcssa, %min_count.1.ph
  br i1 %cmp13, label %do.body.preheader, label %if.else26

do.body.preheader:                                ; preds = %if.else
  %idxprom1696 = zext i32 %nextlen.0.ph to i64
  %code = getelementptr inbounds [39 x %struct.ct_data]* @bl_tree, i64 0, i64 %idxprom1696, i32 0, i32 0
  %len22 = getelementptr inbounds [39 x %struct.ct_data]* @bl_tree, i64 0, i64 %idxprom1696, i32 1, i32 0
  br label %do.body

do.body:                                          ; preds = %do.body, %do.body.preheader
  %count.1 = phi i32 [ %dec, %do.body ], [ %inc.lcssa, %do.body.preheader ]
  %3 = load i16* %code, align 4, !tbaa !5
  %conv18 = zext i16 %3 to i32
  %4 = load i16* %len22, align 2, !tbaa !5
  %conv23 = zext i16 %4 to i32
  tail call void @send_bits(i32 %conv18, i32 %conv23) #2
  %dec = add nsw i32 %count.1, -1
  %cmp24 = icmp eq i32 %dec, 0
  br i1 %cmp24, label %if.end61.loopexit, label %do.body

if.else26:                                        ; preds = %if.else
  %cmp27 = icmp eq i32 %nextlen.0.ph, 0
  br i1 %cmp27, label %if.else47, label %if.then29

if.then29:                                        ; preds = %if.else26
  %cmp30 = icmp eq i32 %nextlen.0.ph, %prevlen.0.ph
  br i1 %cmp30, label %if.end44, label %if.then32

if.then32:                                        ; preds = %if.then29
  %idxprom3395 = zext i32 %nextlen.0.ph to i64
  %code36 = getelementptr inbounds [39 x %struct.ct_data]* @bl_tree, i64 0, i64 %idxprom3395, i32 0, i32 0
  %5 = load i16* %code36, align 4, !tbaa !5
  %conv37 = zext i16 %5 to i32
  %len41 = getelementptr inbounds [39 x %struct.ct_data]* @bl_tree, i64 0, i64 %idxprom3395, i32 1, i32 0
  %6 = load i16* %len41, align 2, !tbaa !5
  %conv42 = zext i16 %6 to i32
  tail call void @send_bits(i32 %conv37, i32 %conv42) #2
  br label %if.end44

if.end44:                                         ; preds = %if.then32, %if.then29
  %count.2 = phi i32 [ %count.0.lcssa105, %if.then32 ], [ %inc.lcssa, %if.then29 ]
  %7 = load i32* bitcast (i16* getelementptr inbounds ([39 x %struct.ct_data]* @bl_tree, i64 0, i64 16, i32 0, i32 0) to i32*), align 16
  %conv45 = and i32 %7, 65535
  %8 = lshr i32 %7, 16
  tail call void @send_bits(i32 %conv45, i32 %8) #2
  %sub = add nsw i32 %count.2, -3
  tail call void @send_bits(i32 %sub, i32 2) #2
  br label %if.end61

if.else47:                                        ; preds = %if.else26
  %cmp48 = icmp slt i32 %inc.lcssa, 11
  br i1 %cmp48, label %if.then50, label %if.else54

if.then50:                                        ; preds = %if.else47
  %9 = load i32* bitcast (i16* getelementptr inbounds ([39 x %struct.ct_data]* @bl_tree, i64 0, i64 17, i32 0, i32 0) to i32*), align 4
  %conv51 = and i32 %9, 65535
  %10 = lshr i32 %9, 16
  tail call void @send_bits(i32 %conv51, i32 %10) #2
  %sub53 = add nsw i32 %count.0.lcssa105, -2
  tail call void @send_bits(i32 %sub53, i32 3) #2
  br label %if.end61

if.else54:                                        ; preds = %if.else47
  %11 = load i32* bitcast (i16* getelementptr inbounds ([39 x %struct.ct_data]* @bl_tree, i64 0, i64 18, i32 0, i32 0) to i32*), align 8
  %conv55 = and i32 %11, 65535
  %12 = lshr i32 %11, 16
  tail call void @send_bits(i32 %conv55, i32 %12) #2
  %sub57 = add nsw i32 %count.0.lcssa105, -10
  tail call void @send_bits(i32 %sub57, i32 7) #2
  br label %if.end61

if.end61.loopexit:                                ; preds = %do.body
  br label %if.end61

if.end61:                                         ; preds = %if.end61.loopexit, %if.else54, %if.then50, %if.end44
  %cmp62 = icmp eq i16 %.lcssa, 0
  br i1 %cmp62, label %for.cond.outer.backedge, label %if.else65

for.cond.outer.backedge:                          ; preds = %if.else65, %if.end61
  %max_count.1.ph.be = phi i32 [ %.98, %if.else65 ], [ 138, %if.end61 ]
  %min_count.1.ph.be = phi i32 [ %.99, %if.else65 ], [ 3, %if.end61 ]
  %sext = shl i64 %indvars.iv.next.lcssa, 32
  %phitmp = ashr exact i64 %sext, 32
  br label %for.cond.outer

if.else65:                                        ; preds = %if.end61
  %.98 = select i1 %cmp10.lcssa, i32 6, i32 7
  %.99 = select i1 %cmp10.lcssa, i32 3, i32 4
  br label %for.cond.outer.backedge

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @pqdownheap(%struct.ct_data* nocapture readonly %tree, i32 %k) #0 {
entry:
  %idxprom = sext i32 %k to i64
  %arrayidx = getelementptr inbounds [573 x i32]* @heap, i64 0, i64 %idxprom
  %0 = load i32* %arrayidx, align 4, !tbaa !1
  %idxprom46 = sext i32 %0 to i64
  %arrayidx77 = getelementptr inbounds [573 x i8]* @depth, i64 0, i64 %idxprom46
  %j.0123 = shl i32 %k, 1
  %1 = load i32* @heap_len, align 4, !tbaa !1
  %cmp124 = icmp sgt i32 %j.0123, %1
  br i1 %cmp124, label %while.end, label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %entry
  %freq49 = getelementptr inbounds %struct.ct_data* %tree, i64 %idxprom46, i32 0, i32 0
  %2 = load i16* %freq49, align 2, !tbaa !5
  br label %while.body

while.body:                                       ; preds = %if.end87, %while.body.lr.ph
  %j.0126 = phi i32 [ %j.0123, %while.body.lr.ph ], [ %j.0, %if.end87 ]
  %k.addr.0125 = phi i32 [ %k, %while.body.lr.ph ], [ %j.1, %if.end87 ]
  %cmp1 = icmp slt i32 %j.0126, %1
  br i1 %cmp1, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %while.body
  %add122 = or i32 %j.0126, 1
  %idxprom2 = sext i32 %add122 to i64
  %arrayidx3 = getelementptr inbounds [573 x i32]* @heap, i64 0, i64 %idxprom2
  %3 = load i32* %arrayidx3, align 4, !tbaa !1
  %idxprom4 = sext i32 %3 to i64
  %freq = getelementptr inbounds %struct.ct_data* %tree, i64 %idxprom4, i32 0, i32 0
  %4 = load i16* %freq, align 2, !tbaa !5
  %idxprom6 = sext i32 %j.0126 to i64
  %arrayidx7 = getelementptr inbounds [573 x i32]* @heap, i64 0, i64 %idxprom6
  %5 = load i32* %arrayidx7, align 8, !tbaa !1
  %idxprom8 = sext i32 %5 to i64
  %freq11 = getelementptr inbounds %struct.ct_data* %tree, i64 %idxprom8, i32 0, i32 0
  %6 = load i16* %freq11, align 2, !tbaa !5
  %cmp13 = icmp ult i16 %4, %6
  br i1 %cmp13, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %cmp30 = icmp eq i16 %4, %6
  br i1 %cmp30, label %land.lhs.true32, label %if.end

land.lhs.true32:                                  ; preds = %lor.lhs.false
  %arrayidx37 = getelementptr inbounds [573 x i8]* @depth, i64 0, i64 %idxprom4
  %7 = load i8* %arrayidx37, align 1, !tbaa !9
  %arrayidx42 = getelementptr inbounds [573 x i8]* @depth, i64 0, i64 %idxprom8
  %8 = load i8* %arrayidx42, align 1, !tbaa !9
  %cmp44 = icmp ugt i8 %7, %8
  br i1 %cmp44, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true32, %land.lhs.true
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true32, %lor.lhs.false, %while.body
  %j.1 = phi i32 [ %add122, %if.then ], [ %j.0126, %land.lhs.true32 ], [ %j.0126, %lor.lhs.false ], [ %j.0126, %while.body ]
  %idxprom51 = sext i32 %j.1 to i64
  %arrayidx52 = getelementptr inbounds [573 x i32]* @heap, i64 0, i64 %idxprom51
  %9 = load i32* %arrayidx52, align 4, !tbaa !1
  %idxprom53 = sext i32 %9 to i64
  %freq56 = getelementptr inbounds %struct.ct_data* %tree, i64 %idxprom53, i32 0, i32 0
  %10 = load i16* %freq56, align 2, !tbaa !5
  %cmp58 = icmp ult i16 %2, %10
  br i1 %cmp58, label %while.end.loopexit, label %lor.lhs.false60

lor.lhs.false60:                                  ; preds = %if.end
  %cmp73 = icmp eq i16 %2, %10
  br i1 %cmp73, label %land.lhs.true75, label %if.end87

land.lhs.true75:                                  ; preds = %lor.lhs.false60
  %11 = load i8* %arrayidx77, align 1, !tbaa !9
  %arrayidx82 = getelementptr inbounds [573 x i8]* @depth, i64 0, i64 %idxprom53
  %12 = load i8* %arrayidx82, align 1, !tbaa !9
  %cmp84 = icmp ugt i8 %11, %12
  br i1 %cmp84, label %if.end87, label %while.end.loopexit

if.end87:                                         ; preds = %land.lhs.true75, %lor.lhs.false60
  %idxprom90 = sext i32 %k.addr.0125 to i64
  %arrayidx91 = getelementptr inbounds [573 x i32]* @heap, i64 0, i64 %idxprom90
  store i32 %9, i32* %arrayidx91, align 4, !tbaa !1
  %j.0 = shl i32 %j.1, 1
  %cmp = icmp sgt i32 %j.0, %1
  br i1 %cmp, label %while.end.loopexit, label %while.body

while.end.loopexit:                               ; preds = %if.end87, %land.lhs.true75, %if.end
  %k.addr.0.lcssa.ph = phi i32 [ %k.addr.0125, %land.lhs.true75 ], [ %j.1, %if.end87 ], [ %k.addr.0125, %if.end ]
  br label %while.end

while.end:                                        ; preds = %while.end.loopexit, %entry
  %k.addr.0.lcssa = phi i32 [ %k, %entry ], [ %k.addr.0.lcssa.ph, %while.end.loopexit ]
  %idxprom93 = sext i32 %k.addr.0.lcssa to i64
  %arrayidx94 = getelementptr inbounds [573 x i32]* @heap, i64 0, i64 %idxprom93
  store i32 %0, i32* %arrayidx94, align 4, !tbaa !1
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @unlzh(i32 %in, i32 %out) #0 {
entry:
  store i32 %in, i32* @ifd, align 4, !tbaa !1
  store i32 %out, i32* @ofd, align 4, !tbaa !1
  store i32 0, i32* @subbitbuf, align 4, !tbaa !1
  store i32 0, i32* @bitcount, align 4, !tbaa !1
  store i16 0, i16* @bitbuf, align 2, !tbaa !5
  br label %while.body.i.i.i.i

while.body.i.i.i.i:                               ; preds = %cond.end.i.i.i.i, %entry
  %0 = phi i16 [ 0, %entry ], [ %.pre.i.i.i.i, %cond.end.i.i.i.i ]
  %1 = phi i32 [ 0, %entry ], [ %.cond.i.i.i.i, %cond.end.i.i.i.i ]
  %2 = phi i32 [ 0, %entry ], [ 8, %cond.end.i.i.i.i ]
  %n.addr.020.i.i.i.i = phi i32 [ 16, %entry ], [ %sub.i.i.i.i, %cond.end.i.i.i.i ]
  %sub.i.i.i.i = sub nsw i32 %n.addr.020.i.i.i.i, %2
  %shl3.i.i.i.i = shl i32 %1, %sub.i.i.i.i
  %conv4.i.i.i.i = zext i16 %0 to i32
  %or.i.i.i.i = or i32 %shl3.i.i.i.i, %conv4.i.i.i.i
  %conv5.i.i.i.i = trunc i32 %or.i.i.i.i to i16
  store i16 %conv5.i.i.i.i, i16* @bitbuf, align 2, !tbaa !5
  %3 = load i32* @inptr, align 4, !tbaa !1
  %4 = load i32* @insize, align 4, !tbaa !1
  %cmp6.i.i.i.i = icmp ult i32 %3, %4
  br i1 %cmp6.i.i.i.i, label %cond.true.i.i.i.i, label %cond.false.i.i.i.i

cond.true.i.i.i.i:                                ; preds = %while.body.i.i.i.i
  %inc.i.i.i.i = add i32 %3, 1
  store i32 %inc.i.i.i.i, i32* @inptr, align 4, !tbaa !1
  %idxprom.i.i.i.i = zext i32 %3 to i64
  %arrayidx.i.i.i.i = getelementptr inbounds [0 x i8]* bitcast ([32832 x i8]* @inbuf to [0 x i8]*), i64 0, i64 %idxprom.i.i.i.i
  %5 = load i8* %arrayidx.i.i.i.i, align 1, !tbaa !9
  %conv8.i.i.i.i = zext i8 %5 to i32
  br label %cond.end.i.i.i.i

cond.false.i.i.i.i:                               ; preds = %while.body.i.i.i.i
  %call.i.i.i.i = tail call i32 @fill_inbuf(i32 1) #2
  %.pre.i.pre.i.i.i = load i16* @bitbuf, align 2, !tbaa !5
  br label %cond.end.i.i.i.i

cond.end.i.i.i.i:                                 ; preds = %cond.false.i.i.i.i, %cond.true.i.i.i.i
  %.pre.i.i.i.i = phi i16 [ %conv5.i.i.i.i, %cond.true.i.i.i.i ], [ %.pre.i.pre.i.i.i, %cond.false.i.i.i.i ]
  %cond.i.i.i.i = phi i32 [ %conv8.i.i.i.i, %cond.true.i.i.i.i ], [ %call.i.i.i.i, %cond.false.i.i.i.i ]
  %cmp9.i.i.i.i = icmp eq i32 %cond.i.i.i.i, -1
  %.cond.i.i.i.i = select i1 %cmp9.i.i.i.i, i32 0, i32 %cond.i.i.i.i
  store i32 %.cond.i.i.i.i, i32* @subbitbuf, align 4, !tbaa !1
  store i32 8, i32* @bitcount, align 4, !tbaa !1
  %cmp.i.i.i.i = icmp sgt i32 %sub.i.i.i.i, 8
  br i1 %cmp.i.i.i.i, label %while.body.i.i.i.i, label %decode_start.exit

decode_start.exit:                                ; preds = %cond.end.i.i.i.i
  %.cond.i.i.i.i.lcssa = phi i32 [ %.cond.i.i.i.i, %cond.end.i.i.i.i ]
  %.pre.i.i.i.i.lcssa = phi i16 [ %.pre.i.i.i.i, %cond.end.i.i.i.i ]
  %sub.i.i.i.i.lcssa = phi i32 [ %sub.i.i.i.i, %cond.end.i.i.i.i ]
  %sub11.i.i.i.i = sub nsw i32 8, %sub.i.i.i.i.lcssa
  store i32 %sub11.i.i.i.i, i32* @bitcount, align 4, !tbaa !1
  %shr.i.i.i.i = lshr i32 %.cond.i.i.i.i.lcssa, %sub11.i.i.i.i
  %conv12.i.i.i.i = zext i16 %.pre.i.i.i.i.lcssa to i32
  %or13.i.i.i.i = or i32 %shr.i.i.i.i, %conv12.i.i.i.i
  %conv14.i.i.i.i = trunc i32 %or13.i.i.i.i to i16
  store i16 %conv14.i.i.i.i, i16* @bitbuf, align 2, !tbaa !5
  store i32 0, i32* @blocksize, align 4, !tbaa !1
  store i32 0, i32* @j, align 4, !tbaa !1
  store i1 false, i1* @done, align 1
  br label %while.cond.i

while.condthread-pre-split:                       ; preds = %if.then, %decode.exit
  %.b.pr = load i1* @done, align 1
  br i1 %.b.pr, label %while.end, label %while.condthread-pre-split.while.body_crit_edge

while.condthread-pre-split.while.body_crit_edge:  ; preds = %while.condthread-pre-split
  %j.promoted90.i.pre = load i32* @j, align 4, !tbaa !1
  br label %while.cond.i.backedge

while.cond.i:                                     ; preds = %while.cond.i.backedge, %decode_start.exit
  %indvars.iv.i = phi i64 [ 0, %decode_start.exit ], [ %indvars.iv.i.be, %while.cond.i.backedge ]
  %dec91.i = phi i32 [ 0, %decode_start.exit ], [ %dec91.i.be, %while.cond.i.backedge ]
  %dec.i = add nsw i32 %dec91.i, -1
  %cmp.i = icmp sgt i32 %dec91.i, 0
  br i1 %cmp.i, label %while.body.i, label %for.cond.preheader.i

for.cond.preheader.i:                             ; preds = %while.cond.i
  %6 = trunc i64 %indvars.iv.i to i32
  store i32 %dec.i, i32* @j, align 4, !tbaa !1
  br label %for.cond.i

while.body.i:                                     ; preds = %while.cond.i
  %7 = load i32* @decode.i, align 4, !tbaa !1
  %idxprom.i = zext i32 %7 to i64
  %arrayidx.i = getelementptr inbounds [0 x i8]* bitcast ([65536 x i8]* @window to [0 x i8]*), i64 0, i64 %idxprom.i
  %8 = load i8* %arrayidx.i, align 1, !tbaa !9
  %arrayidx2.i = getelementptr inbounds [0 x i8]* bitcast ([65536 x i8]* @window to [0 x i8]*), i64 0, i64 %indvars.iv.i
  store i8 %8, i8* %arrayidx2.i, align 1, !tbaa !9
  %add.i = add i32 %7, 1
  %and.i = and i32 %add.i, 8191
  store i32 %and.i, i32* @decode.i, align 4, !tbaa !1
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %9 = trunc i64 %indvars.iv.next.i to i32
  %cmp3.i = icmp eq i32 %9, 8192
  br i1 %cmp3.i, label %return.loopexit83.i, label %while.cond.i.backedge

while.cond.i.backedge:                            ; preds = %while.body.i, %while.condthread-pre-split.while.body_crit_edge
  %indvars.iv.i.be = phi i64 [ %indvars.iv.next.i, %while.body.i ], [ 0, %while.condthread-pre-split.while.body_crit_edge ]
  %dec91.i.be = phi i32 [ %dec.i, %while.body.i ], [ %j.promoted90.i.pre, %while.condthread-pre-split.while.body_crit_edge ]
  br label %while.cond.i

for.cond.loopexit.i:                              ; preds = %while.cond20.i
  %dec21.i.lcssa = phi i32 [ %dec21.i, %while.cond20.i ]
  %r.2.i.lcssa = phi i32 [ %r.2.i, %while.cond20.i ]
  store i32 %dec21.i.lcssa, i32* @j, align 4, !tbaa !1
  br label %for.cond.i.backedge

for.cond.i.backedge:                              ; preds = %if.then8.i, %for.cond.loopexit.i
  %r.1.i.be = phi i32 [ %inc11.i, %if.then8.i ], [ %r.2.i.lcssa, %for.cond.loopexit.i ]
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.cond.i.backedge, %for.cond.preheader.i
  %r.1.i = phi i32 [ %6, %for.cond.preheader.i ], [ %r.1.i.be, %for.cond.i.backedge ]
  %10 = load i32* @blocksize, align 4, !tbaa !1
  %cmp.i.i = icmp eq i32 %10, 0
  br i1 %cmp.i.i, label %if.then.i.i, label %if.end3.i.i

if.then.i.i:                                      ; preds = %for.cond.i
  %11 = load i16* @bitbuf, align 2, !tbaa !5
  %conv.i.i.i = zext i16 %11 to i32
  store i16 0, i16* @bitbuf, align 2, !tbaa !5
  %12 = load i32* @bitcount, align 4, !tbaa !1
  %cmp19.i.i.i.i = icmp slt i32 %12, 16
  %13 = load i32* @subbitbuf, align 4, !tbaa !1
  br i1 %cmp19.i.i.i.i, label %while.body.i.i.i.i11.preheader, label %getbits.exit.i.i

while.body.i.i.i.i11.preheader:                   ; preds = %if.then.i.i
  br label %while.body.i.i.i.i11

while.body.i.i.i.i11:                             ; preds = %cond.end.i.i.i.i25, %while.body.i.i.i.i11.preheader
  %14 = phi i16 [ %.pre.i.i.i.i20, %cond.end.i.i.i.i25 ], [ 0, %while.body.i.i.i.i11.preheader ]
  %15 = phi i32 [ %.cond.i.i.i.i23, %cond.end.i.i.i.i25 ], [ %13, %while.body.i.i.i.i11.preheader ]
  %16 = phi i32 [ 8, %cond.end.i.i.i.i25 ], [ %12, %while.body.i.i.i.i11.preheader ]
  %n.addr.020.i.i.i.i4 = phi i32 [ %sub.i.i.i.i5, %cond.end.i.i.i.i25 ], [ 16, %while.body.i.i.i.i11.preheader ]
  %sub.i.i.i.i5 = sub nsw i32 %n.addr.020.i.i.i.i4, %16
  %shl3.i.i.i.i6 = shl i32 %15, %sub.i.i.i.i5
  %conv4.i.i.i.i7 = zext i16 %14 to i32
  %or.i.i.i.i8 = or i32 %shl3.i.i.i.i6, %conv4.i.i.i.i7
  %conv5.i.i.i.i9 = trunc i32 %or.i.i.i.i8 to i16
  store i16 %conv5.i.i.i.i9, i16* @bitbuf, align 2, !tbaa !5
  %17 = load i32* @inptr, align 4, !tbaa !1
  %18 = load i32* @insize, align 4, !tbaa !1
  %cmp6.i.i.i.i10 = icmp ult i32 %17, %18
  br i1 %cmp6.i.i.i.i10, label %cond.true.i.i.i.i16, label %cond.false.i.i.i.i19

cond.true.i.i.i.i16:                              ; preds = %while.body.i.i.i.i11
  %inc.i.i.i.i12 = add i32 %17, 1
  store i32 %inc.i.i.i.i12, i32* @inptr, align 4, !tbaa !1
  %idxprom.i.i.i.i13 = zext i32 %17 to i64
  %arrayidx.i.i.i.i14 = getelementptr inbounds [0 x i8]* bitcast ([32832 x i8]* @inbuf to [0 x i8]*), i64 0, i64 %idxprom.i.i.i.i13
  %19 = load i8* %arrayidx.i.i.i.i14, align 1, !tbaa !9
  %conv8.i.i.i.i15 = zext i8 %19 to i32
  br label %cond.end.i.i.i.i25

cond.false.i.i.i.i19:                             ; preds = %while.body.i.i.i.i11
  %call.i.i.i.i17 = tail call i32 @fill_inbuf(i32 1) #2
  %.pre.i.pre.i.i.i18 = load i16* @bitbuf, align 2, !tbaa !5
  br label %cond.end.i.i.i.i25

cond.end.i.i.i.i25:                               ; preds = %cond.false.i.i.i.i19, %cond.true.i.i.i.i16
  %.pre.i.i.i.i20 = phi i16 [ %conv5.i.i.i.i9, %cond.true.i.i.i.i16 ], [ %.pre.i.pre.i.i.i18, %cond.false.i.i.i.i19 ]
  %cond.i.i.i.i21 = phi i32 [ %conv8.i.i.i.i15, %cond.true.i.i.i.i16 ], [ %call.i.i.i.i17, %cond.false.i.i.i.i19 ]
  %cmp9.i.i.i.i22 = icmp eq i32 %cond.i.i.i.i21, -1
  %.cond.i.i.i.i23 = select i1 %cmp9.i.i.i.i22, i32 0, i32 %cond.i.i.i.i21
  store i32 %.cond.i.i.i.i23, i32* @subbitbuf, align 4, !tbaa !1
  store i32 8, i32* @bitcount, align 4, !tbaa !1
  %cmp.i.i.i.i24 = icmp sgt i32 %sub.i.i.i.i5, 8
  br i1 %cmp.i.i.i.i24, label %while.body.i.i.i.i11, label %getbits.exit.i.i.loopexit

getbits.exit.i.i.loopexit:                        ; preds = %cond.end.i.i.i.i25
  %.cond.i.i.i.i23.lcssa = phi i32 [ %.cond.i.i.i.i23, %cond.end.i.i.i.i25 ]
  %.pre.i.i.i.i20.lcssa = phi i16 [ %.pre.i.i.i.i20, %cond.end.i.i.i.i25 ]
  %sub.i.i.i.i5.lcssa = phi i32 [ %sub.i.i.i.i5, %cond.end.i.i.i.i25 ]
  br label %getbits.exit.i.i

getbits.exit.i.i:                                 ; preds = %getbits.exit.i.i.loopexit, %if.then.i.i
  %20 = phi i16 [ 0, %if.then.i.i ], [ %.pre.i.i.i.i20.lcssa, %getbits.exit.i.i.loopexit ]
  %.lcssa18.i.i.i.i = phi i32 [ %13, %if.then.i.i ], [ %.cond.i.i.i.i23.lcssa, %getbits.exit.i.i.loopexit ]
  %.lcssa.i.i.i.i = phi i32 [ %12, %if.then.i.i ], [ 8, %getbits.exit.i.i.loopexit ]
  %n.addr.0.lcssa.i.i.i.i = phi i32 [ 16, %if.then.i.i ], [ %sub.i.i.i.i5.lcssa, %getbits.exit.i.i.loopexit ]
  %sub11.i.i.i.i26 = sub nsw i32 %.lcssa.i.i.i.i, %n.addr.0.lcssa.i.i.i.i
  store i32 %sub11.i.i.i.i26, i32* @bitcount, align 4, !tbaa !1
  %shr.i.i.i.i27 = lshr i32 %.lcssa18.i.i.i.i, %sub11.i.i.i.i26
  %conv12.i.i.i.i28 = zext i16 %20 to i32
  %or13.i.i.i.i29 = or i32 %shr.i.i.i.i27, %conv12.i.i.i.i28
  %conv14.i.i.i.i30 = trunc i32 %or13.i.i.i.i29 to i16
  store i16 %conv14.i.i.i.i30, i16* @bitbuf, align 2, !tbaa !5
  store i32 %conv.i.i.i, i32* @blocksize, align 4, !tbaa !1
  %cmp1.i.i = icmp eq i16 %11, 0
  br i1 %cmp1.i.i, label %if.then5.i, label %if.end.i.i

if.end.i.i:                                       ; preds = %getbits.exit.i.i
  tail call fastcc void @read_pt_len(i32 19, i32 5, i32 3) #2
  %21 = load i16* @bitbuf, align 2, !tbaa !5
  %conv.i.i.i.i = zext i16 %21 to i32
  %shr.i.i31.i.i = lshr i32 %conv.i.i.i.i, 7
  %shl.i.i.i.i.i = shl i16 %21, 9
  store i16 %shl.i.i.i.i.i, i16* @bitbuf, align 2, !tbaa !5
  %22 = load i32* @bitcount, align 4, !tbaa !1
  %cmp19.i.i.i.i.i = icmp slt i32 %22, 9
  %23 = load i32* @subbitbuf, align 4, !tbaa !1
  br i1 %cmp19.i.i.i.i.i, label %while.body.i.i.i.i.i.preheader, label %getbits.exit.i.i.i

while.body.i.i.i.i.i.preheader:                   ; preds = %if.end.i.i
  br label %while.body.i.i.i.i.i

while.body.i.i.i.i.i:                             ; preds = %cond.end.i.i.i.i.i, %while.body.i.i.i.i.i.preheader
  %24 = phi i16 [ %.pre.i.i.i.i.i, %cond.end.i.i.i.i.i ], [ %shl.i.i.i.i.i, %while.body.i.i.i.i.i.preheader ]
  %25 = phi i32 [ %.cond.i.i.i.i.i, %cond.end.i.i.i.i.i ], [ %23, %while.body.i.i.i.i.i.preheader ]
  %26 = phi i32 [ 8, %cond.end.i.i.i.i.i ], [ %22, %while.body.i.i.i.i.i.preheader ]
  %n.addr.020.i.i.i.i.i = phi i32 [ %sub.i.i.i.i.i, %cond.end.i.i.i.i.i ], [ 9, %while.body.i.i.i.i.i.preheader ]
  %sub.i.i.i.i.i = sub nsw i32 %n.addr.020.i.i.i.i.i, %26
  %shl3.i.i.i.i.i = shl i32 %25, %sub.i.i.i.i.i
  %conv4.i.i.i.i.i = zext i16 %24 to i32
  %or.i.i.i.i.i = or i32 %shl3.i.i.i.i.i, %conv4.i.i.i.i.i
  %conv5.i.i.i.i.i = trunc i32 %or.i.i.i.i.i to i16
  store i16 %conv5.i.i.i.i.i, i16* @bitbuf, align 2, !tbaa !5
  %27 = load i32* @inptr, align 4, !tbaa !1
  %28 = load i32* @insize, align 4, !tbaa !1
  %cmp6.i.i.i.i.i = icmp ult i32 %27, %28
  br i1 %cmp6.i.i.i.i.i, label %cond.true.i.i.i.i.i, label %cond.false.i.i.i.i.i

cond.true.i.i.i.i.i:                              ; preds = %while.body.i.i.i.i.i
  %inc.i.i.i.i.i = add i32 %27, 1
  store i32 %inc.i.i.i.i.i, i32* @inptr, align 4, !tbaa !1
  %idxprom.i.i.i.i.i = zext i32 %27 to i64
  %arrayidx.i.i.i.i.i = getelementptr inbounds [0 x i8]* bitcast ([32832 x i8]* @inbuf to [0 x i8]*), i64 0, i64 %idxprom.i.i.i.i.i
  %29 = load i8* %arrayidx.i.i.i.i.i, align 1, !tbaa !9
  %conv8.i.i.i.i.i = zext i8 %29 to i32
  br label %cond.end.i.i.i.i.i

cond.false.i.i.i.i.i:                             ; preds = %while.body.i.i.i.i.i
  %call.i.i.i.i.i = tail call i32 @fill_inbuf(i32 1) #2
  %.pre.i.pre.i.i.i.i = load i16* @bitbuf, align 2, !tbaa !5
  br label %cond.end.i.i.i.i.i

cond.end.i.i.i.i.i:                               ; preds = %cond.false.i.i.i.i.i, %cond.true.i.i.i.i.i
  %.pre.i.i.i.i.i = phi i16 [ %conv5.i.i.i.i.i, %cond.true.i.i.i.i.i ], [ %.pre.i.pre.i.i.i.i, %cond.false.i.i.i.i.i ]
  %cond.i.i.i.i.i = phi i32 [ %conv8.i.i.i.i.i, %cond.true.i.i.i.i.i ], [ %call.i.i.i.i.i, %cond.false.i.i.i.i.i ]
  %cmp9.i.i.i.i.i = icmp eq i32 %cond.i.i.i.i.i, -1
  %.cond.i.i.i.i.i = select i1 %cmp9.i.i.i.i.i, i32 0, i32 %cond.i.i.i.i.i
  store i32 %.cond.i.i.i.i.i, i32* @subbitbuf, align 4, !tbaa !1
  store i32 8, i32* @bitcount, align 4, !tbaa !1
  %cmp.i.i.i.i.i = icmp sgt i32 %sub.i.i.i.i.i, 8
  br i1 %cmp.i.i.i.i.i, label %while.body.i.i.i.i.i, label %getbits.exit.i.i.i.loopexit

getbits.exit.i.i.i.loopexit:                      ; preds = %cond.end.i.i.i.i.i
  %.cond.i.i.i.i.i.lcssa = phi i32 [ %.cond.i.i.i.i.i, %cond.end.i.i.i.i.i ]
  %.pre.i.i.i.i.i.lcssa = phi i16 [ %.pre.i.i.i.i.i, %cond.end.i.i.i.i.i ]
  %sub.i.i.i.i.i.lcssa = phi i32 [ %sub.i.i.i.i.i, %cond.end.i.i.i.i.i ]
  br label %getbits.exit.i.i.i

getbits.exit.i.i.i:                               ; preds = %getbits.exit.i.i.i.loopexit, %if.end.i.i
  %30 = phi i16 [ %shl.i.i.i.i.i, %if.end.i.i ], [ %.pre.i.i.i.i.i.lcssa, %getbits.exit.i.i.i.loopexit ]
  %31 = phi i32 [ %23, %if.end.i.i ], [ %.cond.i.i.i.i.i.lcssa, %getbits.exit.i.i.i.loopexit ]
  %.lcssa.i.i.i.i.i = phi i32 [ %22, %if.end.i.i ], [ 8, %getbits.exit.i.i.i.loopexit ]
  %n.addr.0.lcssa.i.i.i.i.i = phi i32 [ 9, %if.end.i.i ], [ %sub.i.i.i.i.i.lcssa, %getbits.exit.i.i.i.loopexit ]
  %sub11.i.i.i.i.i = sub nsw i32 %.lcssa.i.i.i.i.i, %n.addr.0.lcssa.i.i.i.i.i
  store i32 %sub11.i.i.i.i.i, i32* @bitcount, align 4, !tbaa !1
  %shr.i.i.i.i.i = lshr i32 %31, %sub11.i.i.i.i.i
  %conv12.i.i.i.i.i = zext i16 %30 to i32
  %or13.i.i.i.i.i = or i32 %shr.i.i.i.i.i, %conv12.i.i.i.i.i
  %conv14.i.i.i.i.i = trunc i32 %or13.i.i.i.i.i to i16
  store i16 %conv14.i.i.i.i.i, i16* @bitbuf, align 2, !tbaa !5
  %cmp.i.i.i = icmp eq i32 %shr.i.i31.i.i, 0
  br i1 %cmp.i.i.i, label %if.then.i.i.i, label %while.body.i.i.i.preheader

while.body.i.i.i.preheader:                       ; preds = %getbits.exit.i.i.i
  br label %while.body.i.i.i

if.then.i.i.i:                                    ; preds = %getbits.exit.i.i.i
  %conv.i99.i.i.i = and i32 %or13.i.i.i.i.i, 65535
  %shr.i100.i.i.i = lshr i32 %conv.i99.i.i.i, 7
  %shl.i.i101.i.i.i = shl nuw nsw i32 %conv.i99.i.i.i, 9
  %conv1.i.i102.i.i.i = trunc i32 %shl.i.i101.i.i.i to i16
  store i16 %conv1.i.i102.i.i.i, i16* @bitbuf, align 2, !tbaa !5
  %cmp19.i.i103.i.i.i = icmp slt i32 %sub11.i.i.i.i.i, 9
  br i1 %cmp19.i.i103.i.i.i, label %while.body.i.i111.i.i.i.preheader, label %getbits.exit134.i.i.i

while.body.i.i111.i.i.i.preheader:                ; preds = %if.then.i.i.i
  br label %while.body.i.i111.i.i.i

while.body.i.i111.i.i.i:                          ; preds = %cond.end.i.i125.i.i.i, %while.body.i.i111.i.i.i.preheader
  %32 = phi i16 [ %.pre.i.i120.i.i.i, %cond.end.i.i125.i.i.i ], [ %conv1.i.i102.i.i.i, %while.body.i.i111.i.i.i.preheader ]
  %33 = phi i32 [ %.cond.i.i123.i.i.i, %cond.end.i.i125.i.i.i ], [ %31, %while.body.i.i111.i.i.i.preheader ]
  %34 = phi i32 [ 8, %cond.end.i.i125.i.i.i ], [ %sub11.i.i.i.i.i, %while.body.i.i111.i.i.i.preheader ]
  %n.addr.020.i.i104.i.i.i = phi i32 [ %sub.i.i105.i.i.i, %cond.end.i.i125.i.i.i ], [ 9, %while.body.i.i111.i.i.i.preheader ]
  %sub.i.i105.i.i.i = sub nsw i32 %n.addr.020.i.i104.i.i.i, %34
  %shl3.i.i106.i.i.i = shl i32 %33, %sub.i.i105.i.i.i
  %conv4.i.i107.i.i.i = zext i16 %32 to i32
  %or.i.i108.i.i.i = or i32 %shl3.i.i106.i.i.i, %conv4.i.i107.i.i.i
  %conv5.i.i109.i.i.i = trunc i32 %or.i.i108.i.i.i to i16
  store i16 %conv5.i.i109.i.i.i, i16* @bitbuf, align 2, !tbaa !5
  %35 = load i32* @inptr, align 4, !tbaa !1
  %36 = load i32* @insize, align 4, !tbaa !1
  %cmp6.i.i110.i.i.i = icmp ult i32 %35, %36
  br i1 %cmp6.i.i110.i.i.i, label %cond.true.i.i116.i.i.i, label %cond.false.i.i119.i.i.i

cond.true.i.i116.i.i.i:                           ; preds = %while.body.i.i111.i.i.i
  %inc.i.i112.i.i.i = add i32 %35, 1
  store i32 %inc.i.i112.i.i.i, i32* @inptr, align 4, !tbaa !1
  %idxprom.i.i113.i.i.i = zext i32 %35 to i64
  %arrayidx.i.i114.i.i.i = getelementptr inbounds [0 x i8]* bitcast ([32832 x i8]* @inbuf to [0 x i8]*), i64 0, i64 %idxprom.i.i113.i.i.i
  %37 = load i8* %arrayidx.i.i114.i.i.i, align 1, !tbaa !9
  %conv8.i.i115.i.i.i = zext i8 %37 to i32
  br label %cond.end.i.i125.i.i.i

cond.false.i.i119.i.i.i:                          ; preds = %while.body.i.i111.i.i.i
  %call.i.i117.i.i.i = tail call i32 @fill_inbuf(i32 1) #2
  %.pre.i.pre.i118.i.i.i = load i16* @bitbuf, align 2, !tbaa !5
  br label %cond.end.i.i125.i.i.i

cond.end.i.i125.i.i.i:                            ; preds = %cond.false.i.i119.i.i.i, %cond.true.i.i116.i.i.i
  %.pre.i.i120.i.i.i = phi i16 [ %conv5.i.i109.i.i.i, %cond.true.i.i116.i.i.i ], [ %.pre.i.pre.i118.i.i.i, %cond.false.i.i119.i.i.i ]
  %cond.i.i121.i.i.i = phi i32 [ %conv8.i.i115.i.i.i, %cond.true.i.i116.i.i.i ], [ %call.i.i117.i.i.i, %cond.false.i.i119.i.i.i ]
  %cmp9.i.i122.i.i.i = icmp eq i32 %cond.i.i121.i.i.i, -1
  %.cond.i.i123.i.i.i = select i1 %cmp9.i.i122.i.i.i, i32 0, i32 %cond.i.i121.i.i.i
  store i32 %.cond.i.i123.i.i.i, i32* @subbitbuf, align 4, !tbaa !1
  store i32 8, i32* @bitcount, align 4, !tbaa !1
  %cmp.i.i124.i.i.i = icmp sgt i32 %sub.i.i105.i.i.i, 8
  br i1 %cmp.i.i124.i.i.i, label %while.body.i.i111.i.i.i, label %getbits.exit134.i.i.i.loopexit

getbits.exit134.i.i.i.loopexit:                   ; preds = %cond.end.i.i125.i.i.i
  %.cond.i.i123.i.i.i.lcssa = phi i32 [ %.cond.i.i123.i.i.i, %cond.end.i.i125.i.i.i ]
  %.pre.i.i120.i.i.i.lcssa = phi i16 [ %.pre.i.i120.i.i.i, %cond.end.i.i125.i.i.i ]
  %sub.i.i105.i.i.i.lcssa = phi i32 [ %sub.i.i105.i.i.i, %cond.end.i.i125.i.i.i ]
  br label %getbits.exit134.i.i.i

getbits.exit134.i.i.i:                            ; preds = %getbits.exit134.i.i.i.loopexit, %if.then.i.i.i
  %38 = phi i16 [ %conv1.i.i102.i.i.i, %if.then.i.i.i ], [ %.pre.i.i120.i.i.i.lcssa, %getbits.exit134.i.i.i.loopexit ]
  %.lcssa18.i.i126.i.i.i = phi i32 [ %31, %if.then.i.i.i ], [ %.cond.i.i123.i.i.i.lcssa, %getbits.exit134.i.i.i.loopexit ]
  %.lcssa.i.i127.i.i.i = phi i32 [ %sub11.i.i.i.i.i, %if.then.i.i.i ], [ 8, %getbits.exit134.i.i.i.loopexit ]
  %n.addr.0.lcssa.i.i128.i.i.i = phi i32 [ 9, %if.then.i.i.i ], [ %sub.i.i105.i.i.i.lcssa, %getbits.exit134.i.i.i.loopexit ]
  %sub11.i.i129.i.i.i = sub nsw i32 %.lcssa.i.i127.i.i.i, %n.addr.0.lcssa.i.i128.i.i.i
  store i32 %sub11.i.i129.i.i.i, i32* @bitcount, align 4, !tbaa !1
  %shr.i.i130.i.i.i = lshr i32 %.lcssa18.i.i126.i.i.i, %sub11.i.i129.i.i.i
  %conv12.i.i131.i.i.i = zext i16 %38 to i32
  %or13.i.i132.i.i.i = or i32 %shr.i.i130.i.i.i, %conv12.i.i131.i.i.i
  %conv14.i.i133.i.i.i = trunc i32 %or13.i.i132.i.i.i to i16
  store i16 %conv14.i.i133.i.i.i, i16* @bitbuf, align 2, !tbaa !5
  tail call void @llvm.memset.p0i8.i64(i8* getelementptr inbounds ([18432 x i8]* @outbuf, i64 0, i64 0), i8 0, i64 510, i32 1, i1 false) #2
  %conv.i32.i.i = trunc i32 %shr.i100.i.i.i to i16
  %broadcast.splatinsert49 = insertelement <8 x i16> undef, i16 %conv.i32.i.i, i32 0
  %broadcast.splat50 = shufflevector <8 x i16> %broadcast.splatinsert49, <8 x i16> undef, <8 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %getbits.exit134.i.i.i
  %index = phi i64 [ 0, %getbits.exit134.i.i.i ], [ %index.next.1, %vector.body ]
  %39 = getelementptr inbounds [0 x i16]* bitcast ([32768 x i16]* @d_buf to [0 x i16]*), i64 0, i64 %index
  %40 = bitcast i16* %39 to <8 x i16>*
  store <8 x i16> %broadcast.splat50, <8 x i16>* %40, align 2, !tbaa !5
  %.sum51 = or i64 %index, 8
  %41 = getelementptr [0 x i16]* bitcast ([32768 x i16]* @d_buf to [0 x i16]*), i64 0, i64 %.sum51
  %42 = bitcast i16* %41 to <8 x i16>*
  store <8 x i16> %broadcast.splat50, <8 x i16>* %42, align 2, !tbaa !5
  %index.next = add i64 %index, 16
  %43 = getelementptr inbounds [0 x i16]* bitcast ([32768 x i16]* @d_buf to [0 x i16]*), i64 0, i64 %index.next
  %44 = bitcast i16* %43 to <8 x i16>*
  store <8 x i16> %broadcast.splat50, <8 x i16>* %44, align 2, !tbaa !5
  %.sum51.1 = or i64 %index.next, 8
  %45 = getelementptr [0 x i16]* bitcast ([32768 x i16]* @d_buf to [0 x i16]*), i64 0, i64 %.sum51.1
  %46 = bitcast i16* %45 to <8 x i16>*
  store <8 x i16> %broadcast.splat50, <8 x i16>* %46, align 2, !tbaa !5
  %index.next.1 = add i64 %index.next, 16
  %47 = icmp eq i64 %index.next.1, 4096
  br i1 %47, label %read_c_len.exit.i.i.loopexit, label %vector.body, !llvm.loop !53

while.cond66.preheader.i.i.i:                     ; preds = %while.cond.backedge.i.i.i
  %i.2.be.i.i.i.lcssa = phi i32 [ %i.2.be.i.i.i, %while.cond.backedge.i.i.i ]
  %cmp67211.i.i.i = icmp slt i32 %i.2.be.i.i.i.lcssa, 510
  br i1 %cmp67211.i.i.i, label %while.body69.lr.ph.i.i.i, label %while.end73.i.i.i

while.body69.lr.ph.i.i.i:                         ; preds = %while.cond66.preheader.i.i.i
  %48 = sext i32 %i.2.be.i.i.i.lcssa to i64
  %scevgep.i.i.i = getelementptr [0 x i8]* bitcast ([18432 x i8]* @outbuf to [0 x i8]*), i64 0, i64 %48
  %49 = sub i32 509, %i.2.be.i.i.i.lcssa
  %50 = zext i32 %49 to i64
  %51 = add nuw nsw i64 %50, 1
  tail call void @llvm.memset.p0i8.i64(i8* %scevgep.i.i.i, i8 0, i64 %51, i32 1, i1 false) #2
  br label %while.end73.i.i.i

while.body.i.i.i:                                 ; preds = %while.cond.backedge.i.i.i, %while.body.i.i.i.preheader
  %52 = phi i32 [ %92, %while.cond.backedge.i.i.i ], [ %31, %while.body.i.i.i.preheader ]
  %53 = phi i32 [ %93, %while.cond.backedge.i.i.i ], [ %sub11.i.i.i.i.i, %while.body.i.i.i.preheader ]
  %54 = phi i16 [ %94, %while.cond.backedge.i.i.i ], [ %conv14.i.i.i.i.i, %while.body.i.i.i.preheader ]
  %i.2216.i.i.i = phi i32 [ %i.2.be.i.i.i, %while.cond.backedge.i.i.i ], [ 0, %while.body.i.i.i.preheader ]
  %conv13.i.i.i = zext i16 %54 to i64
  %shr95.i.i.i = lshr i64 %conv13.i.i.i, 8
  %arrayidx15.i.i.i = getelementptr inbounds [256 x i16]* @pt_table, i64 0, i64 %shr95.i.i.i
  %55 = load i16* %arrayidx15.i.i.i, align 2, !tbaa !5
  %conv16.i.i.i = zext i16 %55 to i32
  %cmp17.i.i.i = icmp ugt i16 %55, 18
  %conv20.i.i.i = zext i16 %54 to i32
  br i1 %cmp17.i.i.i, label %do.body.i.i.i.preheader, label %if.end32.i.i.i

do.body.i.i.i.preheader:                          ; preds = %while.body.i.i.i
  br label %do.body.i.i.i

do.body.i.i.i:                                    ; preds = %do.body.i.i.i, %do.body.i.i.i.preheader
  %c.0.i.i.i = phi i32 [ %c.1.i.i.i, %do.body.i.i.i ], [ %conv16.i.i.i, %do.body.i.i.i.preheader ]
  %mask.0.i.i.i = phi i32 [ %shr29.i.i.i, %do.body.i.i.i ], [ 128, %do.body.i.i.i.preheader ]
  %and.i.i.i = and i32 %mask.0.i.i.i, %conv20.i.i.i
  %tobool.i.i.i = icmp eq i32 %and.i.i.i, 0
  %idxprom2297.i.i.i = zext i32 %c.0.i.i.i to i64
  %.sum.i.i.i = add nuw nsw i64 %idxprom2297.i.i.i, 32768
  %.sum.pn.i.i.i = select i1 %tobool.i.i.i, i64 %idxprom2297.i.i.i, i64 %.sum.i.i.i
  %c.1.in.in.i.i.i = getelementptr inbounds [0 x i16]* bitcast ([65536 x i16]* @prev to [0 x i16]*), i64 0, i64 %.sum.pn.i.i.i
  %c.1.in.i.i.i = load i16* %c.1.in.in.i.i.i, align 2
  %c.1.i.i.i = zext i16 %c.1.in.i.i.i to i32
  %shr29.i.i.i = lshr i32 %mask.0.i.i.i, 1
  %cmp30.i.i.i = icmp ugt i16 %c.1.in.i.i.i, 18
  br i1 %cmp30.i.i.i, label %do.body.i.i.i, label %if.end32.i.i.i.loopexit

if.end32.i.i.i.loopexit:                          ; preds = %do.body.i.i.i
  %c.1.i.i.i.lcssa = phi i32 [ %c.1.i.i.i, %do.body.i.i.i ]
  br label %if.end32.i.i.i

if.end32.i.i.i:                                   ; preds = %if.end32.i.i.i.loopexit, %while.body.i.i.i
  %c.2.i.i.i = phi i32 [ %conv16.i.i.i, %while.body.i.i.i ], [ %c.1.i.i.i.lcssa, %if.end32.i.i.i.loopexit ]
  %idxprom3398.i.i.i = zext i32 %c.2.i.i.i to i64
  %arrayidx34.i.i.i = getelementptr inbounds [19 x i8]* @pt_len, i64 0, i64 %idxprom3398.i.i.i
  %56 = load i8* %arrayidx34.i.i.i, align 1, !tbaa !9
  %conv35.i.i.i = zext i8 %56 to i32
  %shl.i.i33.i.i = shl i32 %conv20.i.i.i, %conv35.i.i.i
  %conv1.i.i34.i.i = trunc i32 %shl.i.i33.i.i to i16
  store i16 %conv1.i.i34.i.i, i16* @bitbuf, align 2, !tbaa !5
  %cmp19.i.i35.i.i = icmp slt i32 %53, %conv35.i.i.i
  br i1 %cmp19.i.i35.i.i, label %while.body.i.i43.i.i.preheader, label %fillbuf.exit.i.i.i

while.body.i.i43.i.i.preheader:                   ; preds = %if.end32.i.i.i
  br label %while.body.i.i43.i.i

while.body.i.i43.i.i:                             ; preds = %cond.end.i.i57.i.i, %while.body.i.i43.i.i.preheader
  %57 = phi i16 [ %.pre.i.i52.i.i, %cond.end.i.i57.i.i ], [ %conv1.i.i34.i.i, %while.body.i.i43.i.i.preheader ]
  %58 = phi i32 [ %.cond.i.i55.i.i, %cond.end.i.i57.i.i ], [ %52, %while.body.i.i43.i.i.preheader ]
  %59 = phi i32 [ 8, %cond.end.i.i57.i.i ], [ %53, %while.body.i.i43.i.i.preheader ]
  %n.addr.020.i.i36.i.i = phi i32 [ %sub.i.i37.i.i, %cond.end.i.i57.i.i ], [ %conv35.i.i.i, %while.body.i.i43.i.i.preheader ]
  %sub.i.i37.i.i = sub nsw i32 %n.addr.020.i.i36.i.i, %59
  %shl3.i.i38.i.i = shl i32 %58, %sub.i.i37.i.i
  %conv4.i.i39.i.i = zext i16 %57 to i32
  %or.i.i40.i.i = or i32 %shl3.i.i38.i.i, %conv4.i.i39.i.i
  %conv5.i.i41.i.i = trunc i32 %or.i.i40.i.i to i16
  store i16 %conv5.i.i41.i.i, i16* @bitbuf, align 2, !tbaa !5
  %60 = load i32* @inptr, align 4, !tbaa !1
  %61 = load i32* @insize, align 4, !tbaa !1
  %cmp6.i.i42.i.i = icmp ult i32 %60, %61
  br i1 %cmp6.i.i42.i.i, label %cond.true.i.i48.i.i, label %cond.false.i.i51.i.i

cond.true.i.i48.i.i:                              ; preds = %while.body.i.i43.i.i
  %inc.i.i44.i.i = add i32 %60, 1
  store i32 %inc.i.i44.i.i, i32* @inptr, align 4, !tbaa !1
  %idxprom.i.i45.i.i = zext i32 %60 to i64
  %arrayidx.i.i46.i.i = getelementptr inbounds [0 x i8]* bitcast ([32832 x i8]* @inbuf to [0 x i8]*), i64 0, i64 %idxprom.i.i45.i.i
  %62 = load i8* %arrayidx.i.i46.i.i, align 1, !tbaa !9
  %conv8.i.i47.i.i = zext i8 %62 to i32
  br label %cond.end.i.i57.i.i

cond.false.i.i51.i.i:                             ; preds = %while.body.i.i43.i.i
  %call.i.i49.i.i = tail call i32 @fill_inbuf(i32 1) #2
  %.pre.i.pre.i50.i.i = load i16* @bitbuf, align 2, !tbaa !5
  br label %cond.end.i.i57.i.i

cond.end.i.i57.i.i:                               ; preds = %cond.false.i.i51.i.i, %cond.true.i.i48.i.i
  %.pre.i.i52.i.i = phi i16 [ %conv5.i.i41.i.i, %cond.true.i.i48.i.i ], [ %.pre.i.pre.i50.i.i, %cond.false.i.i51.i.i ]
  %cond.i.i53.i.i = phi i32 [ %conv8.i.i47.i.i, %cond.true.i.i48.i.i ], [ %call.i.i49.i.i, %cond.false.i.i51.i.i ]
  %cmp9.i.i54.i.i = icmp eq i32 %cond.i.i53.i.i, -1
  %.cond.i.i55.i.i = select i1 %cmp9.i.i54.i.i, i32 0, i32 %cond.i.i53.i.i
  store i32 %.cond.i.i55.i.i, i32* @subbitbuf, align 4, !tbaa !1
  store i32 8, i32* @bitcount, align 4, !tbaa !1
  %cmp.i.i56.i.i = icmp sgt i32 %sub.i.i37.i.i, 8
  br i1 %cmp.i.i56.i.i, label %while.body.i.i43.i.i, label %fillbuf.exit.i.i.i.loopexit

fillbuf.exit.i.i.i.loopexit:                      ; preds = %cond.end.i.i57.i.i
  %.cond.i.i55.i.i.lcssa = phi i32 [ %.cond.i.i55.i.i, %cond.end.i.i57.i.i ]
  %.pre.i.i52.i.i.lcssa = phi i16 [ %.pre.i.i52.i.i, %cond.end.i.i57.i.i ]
  %sub.i.i37.i.i.lcssa = phi i32 [ %sub.i.i37.i.i, %cond.end.i.i57.i.i ]
  br label %fillbuf.exit.i.i.i

fillbuf.exit.i.i.i:                               ; preds = %fillbuf.exit.i.i.i.loopexit, %if.end32.i.i.i
  %63 = phi i32 [ %52, %if.end32.i.i.i ], [ %.cond.i.i55.i.i.lcssa, %fillbuf.exit.i.i.i.loopexit ]
  %64 = phi i16 [ %conv1.i.i34.i.i, %if.end32.i.i.i ], [ %.pre.i.i52.i.i.lcssa, %fillbuf.exit.i.i.i.loopexit ]
  %.lcssa.i.i58.i.i = phi i32 [ %53, %if.end32.i.i.i ], [ 8, %fillbuf.exit.i.i.i.loopexit ]
  %n.addr.0.lcssa.i.i59.i.i = phi i32 [ %conv35.i.i.i, %if.end32.i.i.i ], [ %sub.i.i37.i.i.lcssa, %fillbuf.exit.i.i.i.loopexit ]
  %sub11.i.i60.i.i = sub nsw i32 %.lcssa.i.i58.i.i, %n.addr.0.lcssa.i.i59.i.i
  store i32 %sub11.i.i60.i.i, i32* @bitcount, align 4, !tbaa !1
  %shr.i136.i.i.i = lshr i32 %63, %sub11.i.i60.i.i
  %conv12.i.i61.i.i = zext i16 %64 to i32
  %or13.i.i62.i.i = or i32 %shr.i136.i.i.i, %conv12.i.i61.i.i
  %conv14.i.i63.i.i = trunc i32 %or13.i.i62.i.i to i16
  store i16 %conv14.i.i63.i.i, i16* @bitbuf, align 2, !tbaa !5
  %cmp36.i.i.i = icmp ult i32 %c.2.i.i.i, 3
  br i1 %cmp36.i.i.i, label %if.then38.i.i.i, label %if.else59.i.i.i

if.then38.i.i.i:                                  ; preds = %fillbuf.exit.i.i.i
  switch i32 %c.2.i.i.i, label %if.else47.i.i.i [
    i32 0, label %while.cond52.preheader.i.i.i
    i32 1, label %if.then45.i.i.i
  ]

if.then45.i.i.i:                                  ; preds = %if.then38.i.i.i
  %conv.i137.i.i.i = and i32 %or13.i.i62.i.i, 65535
  %shr.i138.i.i.i = lshr i32 %conv.i137.i.i.i, 12
  %shl.i.i139.i.i.i = shl nuw nsw i32 %conv.i137.i.i.i, 4
  %conv1.i.i140.i.i.i = trunc i32 %shl.i.i139.i.i.i to i16
  store i16 %conv1.i.i140.i.i.i, i16* @bitbuf, align 2, !tbaa !5
  %cmp19.i.i141.i.i.i = icmp slt i32 %sub11.i.i60.i.i, 4
  br i1 %cmp19.i.i141.i.i.i, label %while.body.i.i149.i.i.i.preheader, label %getbits.exit172.i.i.i

while.body.i.i149.i.i.i.preheader:                ; preds = %if.then45.i.i.i
  br label %while.body.i.i149.i.i.i

while.body.i.i149.i.i.i:                          ; preds = %cond.end.i.i163.i.i.i, %while.body.i.i149.i.i.i.preheader
  %65 = phi i16 [ %.pre.i.i158.i.i.i, %cond.end.i.i163.i.i.i ], [ %conv1.i.i140.i.i.i, %while.body.i.i149.i.i.i.preheader ]
  %66 = phi i32 [ %.cond.i.i161.i.i.i, %cond.end.i.i163.i.i.i ], [ %63, %while.body.i.i149.i.i.i.preheader ]
  %67 = phi i32 [ 8, %cond.end.i.i163.i.i.i ], [ %sub11.i.i60.i.i, %while.body.i.i149.i.i.i.preheader ]
  %n.addr.020.i.i142.i.i.i = phi i32 [ %sub.i.i143.i.i.i, %cond.end.i.i163.i.i.i ], [ 4, %while.body.i.i149.i.i.i.preheader ]
  %sub.i.i143.i.i.i = sub nsw i32 %n.addr.020.i.i142.i.i.i, %67
  %shl3.i.i144.i.i.i = shl i32 %66, %sub.i.i143.i.i.i
  %conv4.i.i145.i.i.i = zext i16 %65 to i32
  %or.i.i146.i.i.i = or i32 %shl3.i.i144.i.i.i, %conv4.i.i145.i.i.i
  %conv5.i.i147.i.i.i = trunc i32 %or.i.i146.i.i.i to i16
  store i16 %conv5.i.i147.i.i.i, i16* @bitbuf, align 2, !tbaa !5
  %68 = load i32* @inptr, align 4, !tbaa !1
  %69 = load i32* @insize, align 4, !tbaa !1
  %cmp6.i.i148.i.i.i = icmp ult i32 %68, %69
  br i1 %cmp6.i.i148.i.i.i, label %cond.true.i.i154.i.i.i, label %cond.false.i.i157.i.i.i

cond.true.i.i154.i.i.i:                           ; preds = %while.body.i.i149.i.i.i
  %inc.i.i150.i.i.i = add i32 %68, 1
  store i32 %inc.i.i150.i.i.i, i32* @inptr, align 4, !tbaa !1
  %idxprom.i.i151.i.i.i = zext i32 %68 to i64
  %arrayidx.i.i152.i.i.i = getelementptr inbounds [0 x i8]* bitcast ([32832 x i8]* @inbuf to [0 x i8]*), i64 0, i64 %idxprom.i.i151.i.i.i
  %70 = load i8* %arrayidx.i.i152.i.i.i, align 1, !tbaa !9
  %conv8.i.i153.i.i.i = zext i8 %70 to i32
  br label %cond.end.i.i163.i.i.i

cond.false.i.i157.i.i.i:                          ; preds = %while.body.i.i149.i.i.i
  %call.i.i155.i.i.i = tail call i32 @fill_inbuf(i32 1) #2
  %.pre.i.pre.i156.i.i.i = load i16* @bitbuf, align 2, !tbaa !5
  br label %cond.end.i.i163.i.i.i

cond.end.i.i163.i.i.i:                            ; preds = %cond.false.i.i157.i.i.i, %cond.true.i.i154.i.i.i
  %.pre.i.i158.i.i.i = phi i16 [ %conv5.i.i147.i.i.i, %cond.true.i.i154.i.i.i ], [ %.pre.i.pre.i156.i.i.i, %cond.false.i.i157.i.i.i ]
  %cond.i.i159.i.i.i = phi i32 [ %conv8.i.i153.i.i.i, %cond.true.i.i154.i.i.i ], [ %call.i.i155.i.i.i, %cond.false.i.i157.i.i.i ]
  %cmp9.i.i160.i.i.i = icmp eq i32 %cond.i.i159.i.i.i, -1
  %.cond.i.i161.i.i.i = select i1 %cmp9.i.i160.i.i.i, i32 0, i32 %cond.i.i159.i.i.i
  store i32 %.cond.i.i161.i.i.i, i32* @subbitbuf, align 4, !tbaa !1
  store i32 8, i32* @bitcount, align 4, !tbaa !1
  %cmp.i.i162.i.i.i = icmp sgt i32 %sub.i.i143.i.i.i, 8
  br i1 %cmp.i.i162.i.i.i, label %while.body.i.i149.i.i.i, label %getbits.exit172.i.i.i.loopexit

getbits.exit172.i.i.i.loopexit:                   ; preds = %cond.end.i.i163.i.i.i
  %.cond.i.i161.i.i.i.lcssa = phi i32 [ %.cond.i.i161.i.i.i, %cond.end.i.i163.i.i.i ]
  %.pre.i.i158.i.i.i.lcssa = phi i16 [ %.pre.i.i158.i.i.i, %cond.end.i.i163.i.i.i ]
  %sub.i.i143.i.i.i.lcssa = phi i32 [ %sub.i.i143.i.i.i, %cond.end.i.i163.i.i.i ]
  br label %getbits.exit172.i.i.i

getbits.exit172.i.i.i:                            ; preds = %getbits.exit172.i.i.i.loopexit, %if.then45.i.i.i
  %71 = phi i32 [ %63, %if.then45.i.i.i ], [ %.cond.i.i161.i.i.i.lcssa, %getbits.exit172.i.i.i.loopexit ]
  %72 = phi i16 [ %conv1.i.i140.i.i.i, %if.then45.i.i.i ], [ %.pre.i.i158.i.i.i.lcssa, %getbits.exit172.i.i.i.loopexit ]
  %.lcssa.i.i165.i.i.i = phi i32 [ %sub11.i.i60.i.i, %if.then45.i.i.i ], [ 8, %getbits.exit172.i.i.i.loopexit ]
  %n.addr.0.lcssa.i.i166.i.i.i = phi i32 [ 4, %if.then45.i.i.i ], [ %sub.i.i143.i.i.i.lcssa, %getbits.exit172.i.i.i.loopexit ]
  %sub11.i.i167.i.i.i = sub nsw i32 %.lcssa.i.i165.i.i.i, %n.addr.0.lcssa.i.i166.i.i.i
  store i32 %sub11.i.i167.i.i.i, i32* @bitcount, align 4, !tbaa !1
  %shr.i.i168.i.i.i = lshr i32 %71, %sub11.i.i167.i.i.i
  %conv12.i.i169.i.i.i = zext i16 %72 to i32
  %or13.i.i170.i.i.i = or i32 %shr.i.i168.i.i.i, %conv12.i.i169.i.i.i
  %conv14.i.i171.i.i.i = trunc i32 %or13.i.i170.i.i.i to i16
  store i16 %conv14.i.i171.i.i.i, i16* @bitbuf, align 2, !tbaa !5
  %add.i.i.i = add nuw nsw i32 %shr.i138.i.i.i, 3
  br label %while.cond52.preheader.i.i.i

if.else47.i.i.i:                                  ; preds = %if.then38.i.i.i
  %conv.i173.i.i.i = and i32 %or13.i.i62.i.i, 65535
  %shr.i174.i.i.i = lshr i32 %conv.i173.i.i.i, 7
  %shl.i.i175.i.i.i = shl nuw nsw i32 %conv.i173.i.i.i, 9
  %conv1.i.i176.i.i.i = trunc i32 %shl.i.i175.i.i.i to i16
  store i16 %conv1.i.i176.i.i.i, i16* @bitbuf, align 2, !tbaa !5
  %cmp19.i.i177.i.i.i = icmp slt i32 %sub11.i.i60.i.i, 9
  br i1 %cmp19.i.i177.i.i.i, label %while.body.i.i185.i.i.i.preheader, label %getbits.exit208.i.i.i

while.body.i.i185.i.i.i.preheader:                ; preds = %if.else47.i.i.i
  br label %while.body.i.i185.i.i.i

while.body.i.i185.i.i.i:                          ; preds = %cond.end.i.i199.i.i.i, %while.body.i.i185.i.i.i.preheader
  %73 = phi i16 [ %.pre.i.i194.i.i.i, %cond.end.i.i199.i.i.i ], [ %conv1.i.i176.i.i.i, %while.body.i.i185.i.i.i.preheader ]
  %74 = phi i32 [ %.cond.i.i197.i.i.i, %cond.end.i.i199.i.i.i ], [ %63, %while.body.i.i185.i.i.i.preheader ]
  %75 = phi i32 [ 8, %cond.end.i.i199.i.i.i ], [ %sub11.i.i60.i.i, %while.body.i.i185.i.i.i.preheader ]
  %n.addr.020.i.i178.i.i.i = phi i32 [ %sub.i.i179.i.i.i, %cond.end.i.i199.i.i.i ], [ 9, %while.body.i.i185.i.i.i.preheader ]
  %sub.i.i179.i.i.i = sub nsw i32 %n.addr.020.i.i178.i.i.i, %75
  %shl3.i.i180.i.i.i = shl i32 %74, %sub.i.i179.i.i.i
  %conv4.i.i181.i.i.i = zext i16 %73 to i32
  %or.i.i182.i.i.i = or i32 %shl3.i.i180.i.i.i, %conv4.i.i181.i.i.i
  %conv5.i.i183.i.i.i = trunc i32 %or.i.i182.i.i.i to i16
  store i16 %conv5.i.i183.i.i.i, i16* @bitbuf, align 2, !tbaa !5
  %76 = load i32* @inptr, align 4, !tbaa !1
  %77 = load i32* @insize, align 4, !tbaa !1
  %cmp6.i.i184.i.i.i = icmp ult i32 %76, %77
  br i1 %cmp6.i.i184.i.i.i, label %cond.true.i.i190.i.i.i, label %cond.false.i.i193.i.i.i

cond.true.i.i190.i.i.i:                           ; preds = %while.body.i.i185.i.i.i
  %inc.i.i186.i.i.i = add i32 %76, 1
  store i32 %inc.i.i186.i.i.i, i32* @inptr, align 4, !tbaa !1
  %idxprom.i.i187.i.i.i = zext i32 %76 to i64
  %arrayidx.i.i188.i.i.i = getelementptr inbounds [0 x i8]* bitcast ([32832 x i8]* @inbuf to [0 x i8]*), i64 0, i64 %idxprom.i.i187.i.i.i
  %78 = load i8* %arrayidx.i.i188.i.i.i, align 1, !tbaa !9
  %conv8.i.i189.i.i.i = zext i8 %78 to i32
  br label %cond.end.i.i199.i.i.i

cond.false.i.i193.i.i.i:                          ; preds = %while.body.i.i185.i.i.i
  %call.i.i191.i.i.i = tail call i32 @fill_inbuf(i32 1) #2
  %.pre.i.pre.i192.i.i.i = load i16* @bitbuf, align 2, !tbaa !5
  br label %cond.end.i.i199.i.i.i

cond.end.i.i199.i.i.i:                            ; preds = %cond.false.i.i193.i.i.i, %cond.true.i.i190.i.i.i
  %.pre.i.i194.i.i.i = phi i16 [ %conv5.i.i183.i.i.i, %cond.true.i.i190.i.i.i ], [ %.pre.i.pre.i192.i.i.i, %cond.false.i.i193.i.i.i ]
  %cond.i.i195.i.i.i = phi i32 [ %conv8.i.i189.i.i.i, %cond.true.i.i190.i.i.i ], [ %call.i.i191.i.i.i, %cond.false.i.i193.i.i.i ]
  %cmp9.i.i196.i.i.i = icmp eq i32 %cond.i.i195.i.i.i, -1
  %.cond.i.i197.i.i.i = select i1 %cmp9.i.i196.i.i.i, i32 0, i32 %cond.i.i195.i.i.i
  store i32 %.cond.i.i197.i.i.i, i32* @subbitbuf, align 4, !tbaa !1
  store i32 8, i32* @bitcount, align 4, !tbaa !1
  %cmp.i.i198.i.i.i = icmp sgt i32 %sub.i.i179.i.i.i, 8
  br i1 %cmp.i.i198.i.i.i, label %while.body.i.i185.i.i.i, label %getbits.exit208.i.i.i.loopexit

getbits.exit208.i.i.i.loopexit:                   ; preds = %cond.end.i.i199.i.i.i
  %.cond.i.i197.i.i.i.lcssa = phi i32 [ %.cond.i.i197.i.i.i, %cond.end.i.i199.i.i.i ]
  %.pre.i.i194.i.i.i.lcssa = phi i16 [ %.pre.i.i194.i.i.i, %cond.end.i.i199.i.i.i ]
  %sub.i.i179.i.i.i.lcssa = phi i32 [ %sub.i.i179.i.i.i, %cond.end.i.i199.i.i.i ]
  br label %getbits.exit208.i.i.i

getbits.exit208.i.i.i:                            ; preds = %getbits.exit208.i.i.i.loopexit, %if.else47.i.i.i
  %79 = phi i32 [ %63, %if.else47.i.i.i ], [ %.cond.i.i197.i.i.i.lcssa, %getbits.exit208.i.i.i.loopexit ]
  %80 = phi i16 [ %conv1.i.i176.i.i.i, %if.else47.i.i.i ], [ %.pre.i.i194.i.i.i.lcssa, %getbits.exit208.i.i.i.loopexit ]
  %.lcssa.i.i201.i.i.i = phi i32 [ %sub11.i.i60.i.i, %if.else47.i.i.i ], [ 8, %getbits.exit208.i.i.i.loopexit ]
  %n.addr.0.lcssa.i.i202.i.i.i = phi i32 [ 9, %if.else47.i.i.i ], [ %sub.i.i179.i.i.i.lcssa, %getbits.exit208.i.i.i.loopexit ]
  %sub11.i.i203.i.i.i = sub nsw i32 %.lcssa.i.i201.i.i.i, %n.addr.0.lcssa.i.i202.i.i.i
  store i32 %sub11.i.i203.i.i.i, i32* @bitcount, align 4, !tbaa !1
  %shr.i.i204.i.i.i = lshr i32 %79, %sub11.i.i203.i.i.i
  %conv12.i.i205.i.i.i = zext i16 %80 to i32
  %or13.i.i206.i.i.i = or i32 %shr.i.i204.i.i.i, %conv12.i.i205.i.i.i
  %conv14.i.i207.i.i.i = trunc i32 %or13.i.i206.i.i.i to i16
  store i16 %conv14.i.i207.i.i.i, i16* @bitbuf, align 2, !tbaa !5
  %add49.i.i.i = add nuw nsw i32 %shr.i174.i.i.i, 20
  br label %while.cond52.preheader.i.i.i

while.cond52.preheader.i.i.i:                     ; preds = %getbits.exit208.i.i.i, %getbits.exit172.i.i.i, %if.then38.i.i.i
  %81 = phi i32 [ %63, %if.then38.i.i.i ], [ %79, %getbits.exit208.i.i.i ], [ %71, %getbits.exit172.i.i.i ]
  %82 = phi i32 [ %sub11.i.i60.i.i, %if.then38.i.i.i ], [ %sub11.i.i203.i.i.i, %getbits.exit208.i.i.i ], [ %sub11.i.i167.i.i.i, %getbits.exit172.i.i.i ]
  %83 = phi i16 [ %conv14.i.i63.i.i, %if.then38.i.i.i ], [ %conv14.i.i207.i.i.i, %getbits.exit208.i.i.i ], [ %conv14.i.i171.i.i.i, %getbits.exit172.i.i.i ]
  %c.3.ph.i.i.i = phi i32 [ 1, %if.then38.i.i.i ], [ %add49.i.i.i, %getbits.exit208.i.i.i ], [ %add.i.i.i, %getbits.exit172.i.i.i ]
  %84 = sext i32 %i.2216.i.i.i to i64
  %85 = sub i32 0, %c.3.ph.i.i.i
  %86 = icmp sgt i32 %85, -1
  %smax.i.i.i = select i1 %86, i32 %85, i32 -1
  %87 = add nsw i32 %smax.i.i.i, %c.3.ph.i.i.i
  %88 = zext i32 %87 to i64
  %scevgep224.i.i.i = getelementptr [0 x i8]* bitcast ([18432 x i8]* @outbuf to [0 x i8]*), i64 0, i64 %84
  %89 = add nuw nsw i64 %88, 1
  tail call void @llvm.memset.p0i8.i64(i8* %scevgep224.i.i.i, i8 0, i64 %89, i32 1, i1 false) #2
  %90 = add i32 %i.2216.i.i.i, 1
  %91 = add i32 %90, %87
  br label %while.cond.backedge.i.i.i

if.else59.i.i.i:                                  ; preds = %fillbuf.exit.i.i.i
  %sub.i.i.i = add nuw nsw i32 %c.2.i.i.i, 254
  %conv60.i.i.i = trunc i32 %sub.i.i.i to i8
  %inc61.i.i.i = add nsw i32 %i.2216.i.i.i, 1
  %idxprom62.i.i.i = sext i32 %i.2216.i.i.i to i64
  %arrayidx63.i.i.i = getelementptr inbounds [0 x i8]* bitcast ([18432 x i8]* @outbuf to [0 x i8]*), i64 0, i64 %idxprom62.i.i.i
  store i8 %conv60.i.i.i, i8* %arrayidx63.i.i.i, align 1, !tbaa !9
  br label %while.cond.backedge.i.i.i

while.cond.backedge.i.i.i:                        ; preds = %if.else59.i.i.i, %while.cond52.preheader.i.i.i
  %92 = phi i32 [ %63, %if.else59.i.i.i ], [ %81, %while.cond52.preheader.i.i.i ]
  %93 = phi i32 [ %sub11.i.i60.i.i, %if.else59.i.i.i ], [ %82, %while.cond52.preheader.i.i.i ]
  %94 = phi i16 [ %conv14.i.i63.i.i, %if.else59.i.i.i ], [ %83, %while.cond52.preheader.i.i.i ]
  %i.2.be.i.i.i = phi i32 [ %inc61.i.i.i, %if.else59.i.i.i ], [ %91, %while.cond52.preheader.i.i.i ]
  %cmp11.i.i.i = icmp slt i32 %i.2.be.i.i.i, %shr.i.i31.i.i
  br i1 %cmp11.i.i.i, label %while.body.i.i.i, label %while.cond66.preheader.i.i.i

while.end73.i.i.i:                                ; preds = %while.body69.lr.ph.i.i.i, %while.cond66.preheader.i.i.i
  tail call fastcc void @make_table(i32 510, i8* getelementptr inbounds ([18432 x i8]* @outbuf, i64 0, i64 0), i32 12, i16* getelementptr inbounds ([32768 x i16]* @d_buf, i64 0, i64 0)) #2
  br label %read_c_len.exit.i.i

read_c_len.exit.i.i.loopexit:                     ; preds = %vector.body
  br label %read_c_len.exit.i.i

read_c_len.exit.i.i:                              ; preds = %read_c_len.exit.i.i.loopexit, %while.end73.i.i.i
  tail call fastcc void @read_pt_len(i32 14, i32 4, i32 -1) #2
  %.pre.i.i = load i32* @blocksize, align 4, !tbaa !1
  br label %if.end3.i.i

if.end3.i.i:                                      ; preds = %read_c_len.exit.i.i, %for.cond.i
  %95 = phi i32 [ %.pre.i.i, %read_c_len.exit.i.i ], [ %10, %for.cond.i ]
  %dec.i.i = add i32 %95, -1
  store i32 %dec.i.i, i32* @blocksize, align 4, !tbaa !1
  %96 = load i16* @bitbuf, align 2, !tbaa !5
  %conv.i.i = zext i16 %96 to i64
  %shr29.i.i = lshr i64 %conv.i.i, 4
  %arrayidx.i.i = getelementptr inbounds [0 x i16]* bitcast ([32768 x i16]* @d_buf to [0 x i16]*), i64 0, i64 %shr29.i.i
  %97 = load i16* %arrayidx.i.i, align 2, !tbaa !5
  %conv4.i.i = zext i16 %97 to i32
  %cmp5.i.i = icmp ugt i16 %97, 509
  %conv8.i.i = zext i16 %96 to i32
  br i1 %cmp5.i.i, label %do.body.i.i.preheader, label %if.end20.i.i

do.body.i.i.preheader:                            ; preds = %if.end3.i.i
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %do.body.i.i, %do.body.i.i.preheader
  %j.0.i.i = phi i32 [ %j.1.i.i, %do.body.i.i ], [ %conv4.i.i, %do.body.i.i.preheader ]
  %mask.0.i.i = phi i32 [ %shr17.i.i, %do.body.i.i ], [ 8, %do.body.i.i.preheader ]
  %and.i.i = and i32 %mask.0.i.i, %conv8.i.i
  %tobool.i.i = icmp eq i32 %and.i.i, 0
  %idxprom10.i.i = zext i32 %j.0.i.i to i64
  %.sum.i.i = add nuw nsw i64 %idxprom10.i.i, 32768
  %.sum.pn.i.i = select i1 %tobool.i.i, i64 %idxprom10.i.i, i64 %.sum.i.i
  %j.1.in.in.i.i = getelementptr inbounds [0 x i16]* bitcast ([65536 x i16]* @prev to [0 x i16]*), i64 0, i64 %.sum.pn.i.i
  %j.1.in.i.i = load i16* %j.1.in.in.i.i, align 2
  %j.1.i.i = zext i16 %j.1.in.i.i to i32
  %shr17.i.i = lshr i32 %mask.0.i.i, 1
  %cmp18.i.i = icmp ugt i16 %j.1.in.i.i, 509
  br i1 %cmp18.i.i, label %do.body.i.i, label %if.end20.i.i.loopexit

if.end20.i.i.loopexit:                            ; preds = %do.body.i.i
  %j.1.i.i.lcssa = phi i32 [ %j.1.i.i, %do.body.i.i ]
  br label %if.end20.i.i

if.end20.i.i:                                     ; preds = %if.end20.i.i.loopexit, %if.end3.i.i
  %j.2.i.i = phi i32 [ %conv4.i.i, %if.end3.i.i ], [ %j.1.i.i.lcssa, %if.end20.i.i.loopexit ]
  %idxprom21.i.i = zext i32 %j.2.i.i to i64
  %arrayidx22.i.i = getelementptr inbounds [0 x i8]* bitcast ([18432 x i8]* @outbuf to [0 x i8]*), i64 0, i64 %idxprom21.i.i
  %98 = load i8* %arrayidx22.i.i, align 1, !tbaa !9
  %conv23.i.i = zext i8 %98 to i32
  %shl.i.i.i = shl i32 %conv8.i.i, %conv23.i.i
  %conv1.i.i.i = trunc i32 %shl.i.i.i to i16
  store i16 %conv1.i.i.i, i16* @bitbuf, align 2, !tbaa !5
  %99 = load i32* @bitcount, align 4, !tbaa !1
  %cmp19.i.i.i = icmp slt i32 %99, %conv23.i.i
  %100 = load i32* @subbitbuf, align 4, !tbaa !1
  br i1 %cmp19.i.i.i, label %while.body.i66.i.i.preheader, label %decode_c.exit.i

while.body.i66.i.i.preheader:                     ; preds = %if.end20.i.i
  br label %while.body.i66.i.i

while.body.i66.i.i:                               ; preds = %cond.end.i.i.i, %while.body.i66.i.i.preheader
  %101 = phi i16 [ %.pre.i.i.i, %cond.end.i.i.i ], [ %conv1.i.i.i, %while.body.i66.i.i.preheader ]
  %102 = phi i32 [ %.cond.i.i.i, %cond.end.i.i.i ], [ %100, %while.body.i66.i.i.preheader ]
  %103 = phi i32 [ 8, %cond.end.i.i.i ], [ %99, %while.body.i66.i.i.preheader ]
  %n.addr.020.i.i.i = phi i32 [ %sub.i65.i.i, %cond.end.i.i.i ], [ %conv23.i.i, %while.body.i66.i.i.preheader ]
  %sub.i65.i.i = sub nsw i32 %n.addr.020.i.i.i, %103
  %shl3.i.i.i = shl i32 %102, %sub.i65.i.i
  %conv4.i.i.i = zext i16 %101 to i32
  %or.i.i.i = or i32 %shl3.i.i.i, %conv4.i.i.i
  %conv5.i.i.i = trunc i32 %or.i.i.i to i16
  store i16 %conv5.i.i.i, i16* @bitbuf, align 2, !tbaa !5
  %104 = load i32* @inptr, align 4, !tbaa !1
  %105 = load i32* @insize, align 4, !tbaa !1
  %cmp6.i.i.i = icmp ult i32 %104, %105
  br i1 %cmp6.i.i.i, label %cond.true.i.i.i, label %cond.false.i.i.i

cond.true.i.i.i:                                  ; preds = %while.body.i66.i.i
  %inc.i.i.i = add i32 %104, 1
  store i32 %inc.i.i.i, i32* @inptr, align 4, !tbaa !1
  %idxprom.i.i.i = zext i32 %104 to i64
  %arrayidx.i.i.i = getelementptr inbounds [0 x i8]* bitcast ([32832 x i8]* @inbuf to [0 x i8]*), i64 0, i64 %idxprom.i.i.i
  %106 = load i8* %arrayidx.i.i.i, align 1, !tbaa !9
  %conv8.i.i.i = zext i8 %106 to i32
  br label %cond.end.i.i.i

cond.false.i.i.i:                                 ; preds = %while.body.i66.i.i
  %call.i.i.i = tail call i32 @fill_inbuf(i32 1) #2
  %.pre.i.pre.i.i = load i16* @bitbuf, align 2, !tbaa !5
  br label %cond.end.i.i.i

cond.end.i.i.i:                                   ; preds = %cond.false.i.i.i, %cond.true.i.i.i
  %.pre.i.i.i = phi i16 [ %conv5.i.i.i, %cond.true.i.i.i ], [ %.pre.i.pre.i.i, %cond.false.i.i.i ]
  %cond.i.i.i = phi i32 [ %conv8.i.i.i, %cond.true.i.i.i ], [ %call.i.i.i, %cond.false.i.i.i ]
  %cmp9.i.i.i = icmp eq i32 %cond.i.i.i, -1
  %.cond.i.i.i = select i1 %cmp9.i.i.i, i32 0, i32 %cond.i.i.i
  store i32 %.cond.i.i.i, i32* @subbitbuf, align 4, !tbaa !1
  store i32 8, i32* @bitcount, align 4, !tbaa !1
  %cmp.i67.i.i = icmp sgt i32 %sub.i65.i.i, 8
  br i1 %cmp.i67.i.i, label %while.body.i66.i.i, label %decode_c.exit.i.loopexit

decode_c.exit.i.loopexit:                         ; preds = %cond.end.i.i.i
  %.cond.i.i.i.lcssa = phi i32 [ %.cond.i.i.i, %cond.end.i.i.i ]
  %.pre.i.i.i.lcssa = phi i16 [ %.pre.i.i.i, %cond.end.i.i.i ]
  %sub.i65.i.i.lcssa = phi i32 [ %sub.i65.i.i, %cond.end.i.i.i ]
  br label %decode_c.exit.i

decode_c.exit.i:                                  ; preds = %decode_c.exit.i.loopexit, %if.end20.i.i
  %107 = phi i16 [ %conv1.i.i.i, %if.end20.i.i ], [ %.pre.i.i.i.lcssa, %decode_c.exit.i.loopexit ]
  %108 = phi i32 [ %100, %if.end20.i.i ], [ %.cond.i.i.i.lcssa, %decode_c.exit.i.loopexit ]
  %.lcssa.i.i.i = phi i32 [ %99, %if.end20.i.i ], [ 8, %decode_c.exit.i.loopexit ]
  %n.addr.0.lcssa.i.i.i = phi i32 [ %conv23.i.i, %if.end20.i.i ], [ %sub.i65.i.i.lcssa, %decode_c.exit.i.loopexit ]
  %sub11.i.i.i = sub nsw i32 %.lcssa.i.i.i, %n.addr.0.lcssa.i.i.i
  store i32 %sub11.i.i.i, i32* @bitcount, align 4, !tbaa !1
  %shr.i.i.i = lshr i32 %108, %sub11.i.i.i
  %conv12.i.i.i = zext i16 %107 to i32
  %or13.i.i.i = or i32 %shr.i.i.i, %conv12.i.i.i
  %conv14.i.i.i = trunc i32 %or13.i.i.i to i16
  store i16 %conv14.i.i.i, i16* @bitbuf, align 2, !tbaa !5
  %cmp4.i = icmp eq i32 %j.2.i.i, 510
  br i1 %cmp4.i, label %if.then5.i, label %if.end6.i

if.then5.i:                                       ; preds = %decode_c.exit.i, %getbits.exit.i.i
  %r.1.i.lcssa = phi i32 [ %r.1.i, %decode_c.exit.i ], [ %r.1.i, %getbits.exit.i.i ]
  store i1 true, i1* @done, align 1
  br label %decode.exit

if.end6.i:                                        ; preds = %decode_c.exit.i
  %cmp7.i = icmp ult i32 %j.2.i.i, 256
  br i1 %cmp7.i, label %if.then8.i, label %if.else.i

if.then8.i:                                       ; preds = %if.end6.i
  %conv.i = trunc i32 %j.2.i.i to i8
  %idxprom9.i = zext i32 %r.1.i to i64
  %arrayidx10.i = getelementptr inbounds [0 x i8]* bitcast ([65536 x i8]* @window to [0 x i8]*), i64 0, i64 %idxprom9.i
  store i8 %conv.i, i8* %arrayidx10.i, align 1, !tbaa !9
  %inc11.i = add i32 %r.1.i, 1
  %cmp12.i = icmp eq i32 %inc11.i, 8192
  br i1 %cmp12.i, label %decode.exit.loopexit, label %for.cond.i.backedge

if.else.i:                                        ; preds = %if.end6.i
  %sub.i = add nsw i32 %j.2.i.i, -253
  store i32 %sub.i, i32* @j, align 4, !tbaa !1
  %conv14.i.i.mask.i = and i32 %or13.i.i.i, 65280
  %conv.i1.i = zext i32 %conv14.i.i.mask.i to i64
  %shr31.i.i = lshr exact i64 %conv.i1.i, 8
  %arrayidx.i2.i = getelementptr inbounds [256 x i16]* @pt_table, i64 0, i64 %shr31.i.i
  %109 = load i16* %arrayidx.i2.i, align 2, !tbaa !5
  %conv1.i.i = zext i16 %109 to i32
  %cmp.i3.i = icmp ugt i16 %109, 13
  %conv3.i.i = and i32 %or13.i.i.i, 65535
  br i1 %cmp.i3.i, label %do.body.i13.i.preheader, label %if.end14.i.i

do.body.i13.i.preheader:                          ; preds = %if.else.i
  br label %do.body.i13.i

do.body.i13.i:                                    ; preds = %do.body.i13.i, %do.body.i13.i.preheader
  %j.0.i4.i = phi i32 [ %j.1.i12.i, %do.body.i13.i ], [ %conv1.i.i, %do.body.i13.i.preheader ]
  %mask.0.i5.i = phi i32 [ %shr11.i.i, %do.body.i13.i ], [ 128, %do.body.i13.i.preheader ]
  %and.i6.i = and i32 %mask.0.i5.i, %conv3.i.i
  %tobool.i7.i = icmp eq i32 %and.i6.i, 0
  %idxprom5.i.i = zext i32 %j.0.i4.i to i64
  %.sum.i8.i = add nuw nsw i64 %idxprom5.i.i, 32768
  %.sum.pn.i9.i = select i1 %tobool.i7.i, i64 %idxprom5.i.i, i64 %.sum.i8.i
  %j.1.in.in.i10.i = getelementptr inbounds [0 x i16]* bitcast ([65536 x i16]* @prev to [0 x i16]*), i64 0, i64 %.sum.pn.i9.i
  %j.1.in.i11.i = load i16* %j.1.in.in.i10.i, align 2
  %j.1.i12.i = zext i16 %j.1.in.i11.i to i32
  %shr11.i.i = lshr i32 %mask.0.i5.i, 1
  %cmp12.i.i = icmp ugt i16 %j.1.in.i11.i, 13
  br i1 %cmp12.i.i, label %do.body.i13.i, label %if.end14.i.i.loopexit

if.end14.i.i.loopexit:                            ; preds = %do.body.i13.i
  %j.1.i12.i.lcssa = phi i32 [ %j.1.i12.i, %do.body.i13.i ]
  br label %if.end14.i.i

if.end14.i.i:                                     ; preds = %if.end14.i.i.loopexit, %if.else.i
  %j.2.i14.i = phi i32 [ %conv1.i.i, %if.else.i ], [ %j.1.i12.i.lcssa, %if.end14.i.i.loopexit ]
  %idxprom15.i.i = zext i32 %j.2.i14.i to i64
  %arrayidx16.i.i = getelementptr inbounds [19 x i8]* @pt_len, i64 0, i64 %idxprom15.i.i
  %110 = load i8* %arrayidx16.i.i, align 1, !tbaa !9
  %conv17.i.i = zext i8 %110 to i32
  %shl.i.i15.i = shl i32 %conv3.i.i, %conv17.i.i
  %conv1.i.i16.i = trunc i32 %shl.i.i15.i to i16
  store i16 %conv1.i.i16.i, i16* @bitbuf, align 2, !tbaa !5
  %cmp19.i.i17.i = icmp slt i32 %sub11.i.i.i, %conv17.i.i
  br i1 %cmp19.i.i17.i, label %while.body.i.i25.i.preheader, label %fillbuf.exit.i48.i

while.body.i.i25.i.preheader:                     ; preds = %if.end14.i.i
  br label %while.body.i.i25.i

while.body.i.i25.i:                               ; preds = %cond.end.i.i39.i, %while.body.i.i25.i.preheader
  %111 = phi i16 [ %.pre.i.i34.i, %cond.end.i.i39.i ], [ %conv1.i.i16.i, %while.body.i.i25.i.preheader ]
  %112 = phi i32 [ %.cond.i.i37.i, %cond.end.i.i39.i ], [ %108, %while.body.i.i25.i.preheader ]
  %113 = phi i32 [ 8, %cond.end.i.i39.i ], [ %sub11.i.i.i, %while.body.i.i25.i.preheader ]
  %n.addr.020.i.i18.i = phi i32 [ %sub.i.i19.i, %cond.end.i.i39.i ], [ %conv17.i.i, %while.body.i.i25.i.preheader ]
  %sub.i.i19.i = sub nsw i32 %n.addr.020.i.i18.i, %113
  %shl3.i.i20.i = shl i32 %112, %sub.i.i19.i
  %conv4.i.i21.i = zext i16 %111 to i32
  %or.i.i22.i = or i32 %shl3.i.i20.i, %conv4.i.i21.i
  %conv5.i.i23.i = trunc i32 %or.i.i22.i to i16
  store i16 %conv5.i.i23.i, i16* @bitbuf, align 2, !tbaa !5
  %114 = load i32* @inptr, align 4, !tbaa !1
  %115 = load i32* @insize, align 4, !tbaa !1
  %cmp6.i.i24.i = icmp ult i32 %114, %115
  br i1 %cmp6.i.i24.i, label %cond.true.i.i30.i, label %cond.false.i.i33.i

cond.true.i.i30.i:                                ; preds = %while.body.i.i25.i
  %inc.i.i26.i = add i32 %114, 1
  store i32 %inc.i.i26.i, i32* @inptr, align 4, !tbaa !1
  %idxprom.i.i27.i = zext i32 %114 to i64
  %arrayidx.i.i28.i = getelementptr inbounds [0 x i8]* bitcast ([32832 x i8]* @inbuf to [0 x i8]*), i64 0, i64 %idxprom.i.i27.i
  %116 = load i8* %arrayidx.i.i28.i, align 1, !tbaa !9
  %conv8.i.i29.i = zext i8 %116 to i32
  br label %cond.end.i.i39.i

cond.false.i.i33.i:                               ; preds = %while.body.i.i25.i
  %call.i.i31.i = tail call i32 @fill_inbuf(i32 1) #2
  %.pre.i.pre.i32.i = load i16* @bitbuf, align 2, !tbaa !5
  br label %cond.end.i.i39.i

cond.end.i.i39.i:                                 ; preds = %cond.false.i.i33.i, %cond.true.i.i30.i
  %.pre.i.i34.i = phi i16 [ %conv5.i.i23.i, %cond.true.i.i30.i ], [ %.pre.i.pre.i32.i, %cond.false.i.i33.i ]
  %cond.i.i35.i = phi i32 [ %conv8.i.i29.i, %cond.true.i.i30.i ], [ %call.i.i31.i, %cond.false.i.i33.i ]
  %cmp9.i.i36.i = icmp eq i32 %cond.i.i35.i, -1
  %.cond.i.i37.i = select i1 %cmp9.i.i36.i, i32 0, i32 %cond.i.i35.i
  store i32 %.cond.i.i37.i, i32* @subbitbuf, align 4, !tbaa !1
  store i32 8, i32* @bitcount, align 4, !tbaa !1
  %cmp.i.i38.i = icmp sgt i32 %sub.i.i19.i, 8
  br i1 %cmp.i.i38.i, label %while.body.i.i25.i, label %fillbuf.exit.i48.i.loopexit

fillbuf.exit.i48.i.loopexit:                      ; preds = %cond.end.i.i39.i
  %.cond.i.i37.i.lcssa = phi i32 [ %.cond.i.i37.i, %cond.end.i.i39.i ]
  %.pre.i.i34.i.lcssa = phi i16 [ %.pre.i.i34.i, %cond.end.i.i39.i ]
  %sub.i.i19.i.lcssa = phi i32 [ %sub.i.i19.i, %cond.end.i.i39.i ]
  br label %fillbuf.exit.i48.i

fillbuf.exit.i48.i:                               ; preds = %fillbuf.exit.i48.i.loopexit, %if.end14.i.i
  %117 = phi i16 [ %conv1.i.i16.i, %if.end14.i.i ], [ %.pre.i.i34.i.lcssa, %fillbuf.exit.i48.i.loopexit ]
  %118 = phi i32 [ %108, %if.end14.i.i ], [ %.cond.i.i37.i.lcssa, %fillbuf.exit.i48.i.loopexit ]
  %.lcssa.i.i40.i = phi i32 [ %sub11.i.i.i, %if.end14.i.i ], [ 8, %fillbuf.exit.i48.i.loopexit ]
  %n.addr.0.lcssa.i.i41.i = phi i32 [ %conv17.i.i, %if.end14.i.i ], [ %sub.i.i19.i.lcssa, %fillbuf.exit.i48.i.loopexit ]
  %sub11.i.i42.i = sub nsw i32 %.lcssa.i.i40.i, %n.addr.0.lcssa.i.i41.i
  store i32 %sub11.i.i42.i, i32* @bitcount, align 4, !tbaa !1
  %shr.i.i43.i = lshr i32 %118, %sub11.i.i42.i
  %conv12.i.i44.i = zext i16 %117 to i32
  %or13.i.i45.i = or i32 %shr.i.i43.i, %conv12.i.i44.i
  %conv14.i.i46.i = trunc i32 %or13.i.i45.i to i16
  store i16 %conv14.i.i46.i, i16* @bitbuf, align 2, !tbaa !5
  %cmp18.i47.i = icmp eq i32 %j.2.i14.i, 0
  br i1 %cmp18.i47.i, label %decode_p.exit.i, label %if.then20.i.i

if.then20.i.i:                                    ; preds = %fillbuf.exit.i48.i
  %sub.i.i = add nsw i32 %j.2.i14.i, -1
  %shl.i.i = shl i32 1, %sub.i.i
  %conv.i33.i.i = and i32 %or13.i.i45.i, 65535
  %sub.i34.i.i = sub i32 17, %j.2.i14.i
  %shr.i35.i.i = lshr i32 %conv.i33.i.i, %sub.i34.i.i
  %shl.i.i.i.i = shl i32 %conv.i33.i.i, %sub.i.i
  %conv1.i.i.i.i = trunc i32 %shl.i.i.i.i to i16
  store i16 %conv1.i.i.i.i, i16* @bitbuf, align 2, !tbaa !5
  %cmp19.i.i.i49.i = icmp slt i32 %sub11.i.i42.i, %sub.i.i
  br i1 %cmp19.i.i.i49.i, label %while.body.i.i.i57.i.preheader, label %getbits.exit.i80.i

while.body.i.i.i57.i.preheader:                   ; preds = %if.then20.i.i
  br label %while.body.i.i.i57.i

while.body.i.i.i57.i:                             ; preds = %cond.end.i.i.i71.i, %while.body.i.i.i57.i.preheader
  %119 = phi i16 [ %.pre.i.i.i66.i, %cond.end.i.i.i71.i ], [ %conv1.i.i.i.i, %while.body.i.i.i57.i.preheader ]
  %120 = phi i32 [ %.cond.i.i.i69.i, %cond.end.i.i.i71.i ], [ %118, %while.body.i.i.i57.i.preheader ]
  %121 = phi i32 [ 8, %cond.end.i.i.i71.i ], [ %sub11.i.i42.i, %while.body.i.i.i57.i.preheader ]
  %n.addr.020.i.i.i50.i = phi i32 [ %sub.i.i.i51.i, %cond.end.i.i.i71.i ], [ %sub.i.i, %while.body.i.i.i57.i.preheader ]
  %sub.i.i.i51.i = sub nsw i32 %n.addr.020.i.i.i50.i, %121
  %shl3.i.i.i52.i = shl i32 %120, %sub.i.i.i51.i
  %conv4.i.i.i53.i = zext i16 %119 to i32
  %or.i.i.i54.i = or i32 %shl3.i.i.i52.i, %conv4.i.i.i53.i
  %conv5.i.i.i55.i = trunc i32 %or.i.i.i54.i to i16
  store i16 %conv5.i.i.i55.i, i16* @bitbuf, align 2, !tbaa !5
  %122 = load i32* @inptr, align 4, !tbaa !1
  %123 = load i32* @insize, align 4, !tbaa !1
  %cmp6.i.i.i56.i = icmp ult i32 %122, %123
  br i1 %cmp6.i.i.i56.i, label %cond.true.i.i.i62.i, label %cond.false.i.i.i65.i

cond.true.i.i.i62.i:                              ; preds = %while.body.i.i.i57.i
  %inc.i.i.i58.i = add i32 %122, 1
  store i32 %inc.i.i.i58.i, i32* @inptr, align 4, !tbaa !1
  %idxprom.i.i.i59.i = zext i32 %122 to i64
  %arrayidx.i.i.i60.i = getelementptr inbounds [0 x i8]* bitcast ([32832 x i8]* @inbuf to [0 x i8]*), i64 0, i64 %idxprom.i.i.i59.i
  %124 = load i8* %arrayidx.i.i.i60.i, align 1, !tbaa !9
  %conv8.i.i.i61.i = zext i8 %124 to i32
  br label %cond.end.i.i.i71.i

cond.false.i.i.i65.i:                             ; preds = %while.body.i.i.i57.i
  %call.i.i.i63.i = tail call i32 @fill_inbuf(i32 1) #2
  %.pre.i.pre.i.i64.i = load i16* @bitbuf, align 2, !tbaa !5
  br label %cond.end.i.i.i71.i

cond.end.i.i.i71.i:                               ; preds = %cond.false.i.i.i65.i, %cond.true.i.i.i62.i
  %.pre.i.i.i66.i = phi i16 [ %conv5.i.i.i55.i, %cond.true.i.i.i62.i ], [ %.pre.i.pre.i.i64.i, %cond.false.i.i.i65.i ]
  %cond.i.i.i67.i = phi i32 [ %conv8.i.i.i61.i, %cond.true.i.i.i62.i ], [ %call.i.i.i63.i, %cond.false.i.i.i65.i ]
  %cmp9.i.i.i68.i = icmp eq i32 %cond.i.i.i67.i, -1
  %.cond.i.i.i69.i = select i1 %cmp9.i.i.i68.i, i32 0, i32 %cond.i.i.i67.i
  store i32 %.cond.i.i.i69.i, i32* @subbitbuf, align 4, !tbaa !1
  store i32 8, i32* @bitcount, align 4, !tbaa !1
  %cmp.i.i.i70.i = icmp sgt i32 %sub.i.i.i51.i, 8
  br i1 %cmp.i.i.i70.i, label %while.body.i.i.i57.i, label %getbits.exit.i80.i.loopexit

getbits.exit.i80.i.loopexit:                      ; preds = %cond.end.i.i.i71.i
  %.cond.i.i.i69.i.lcssa = phi i32 [ %.cond.i.i.i69.i, %cond.end.i.i.i71.i ]
  %.pre.i.i.i66.i.lcssa = phi i16 [ %.pre.i.i.i66.i, %cond.end.i.i.i71.i ]
  %sub.i.i.i51.i.lcssa = phi i32 [ %sub.i.i.i51.i, %cond.end.i.i.i71.i ]
  br label %getbits.exit.i80.i

getbits.exit.i80.i:                               ; preds = %getbits.exit.i80.i.loopexit, %if.then20.i.i
  %125 = phi i16 [ %conv1.i.i.i.i, %if.then20.i.i ], [ %.pre.i.i.i66.i.lcssa, %getbits.exit.i80.i.loopexit ]
  %.lcssa18.i.i.i72.i = phi i32 [ %118, %if.then20.i.i ], [ %.cond.i.i.i69.i.lcssa, %getbits.exit.i80.i.loopexit ]
  %.lcssa.i.i.i73.i = phi i32 [ %sub11.i.i42.i, %if.then20.i.i ], [ 8, %getbits.exit.i80.i.loopexit ]
  %n.addr.0.lcssa.i.i.i74.i = phi i32 [ %sub.i.i, %if.then20.i.i ], [ %sub.i.i.i51.i.lcssa, %getbits.exit.i80.i.loopexit ]
  %sub11.i.i.i75.i = sub nsw i32 %.lcssa.i.i.i73.i, %n.addr.0.lcssa.i.i.i74.i
  store i32 %sub11.i.i.i75.i, i32* @bitcount, align 4, !tbaa !1
  %shr.i.i.i76.i = lshr i32 %.lcssa18.i.i.i72.i, %sub11.i.i.i75.i
  %conv12.i.i.i77.i = zext i16 %125 to i32
  %or13.i.i.i78.i = or i32 %shr.i.i.i76.i, %conv12.i.i.i77.i
  %conv14.i.i.i79.i = trunc i32 %or13.i.i.i78.i to i16
  store i16 %conv14.i.i.i79.i, i16* @bitbuf, align 2, !tbaa !5
  %add.i.i = add i32 %shr.i35.i.i, %shl.i.i
  br label %decode_p.exit.i

decode_p.exit.i:                                  ; preds = %getbits.exit.i80.i, %fillbuf.exit.i48.i
  %j.3.i.i = phi i32 [ %add.i.i, %getbits.exit.i80.i ], [ 0, %fillbuf.exit.i48.i ]
  %sub17.i = add i32 %r.1.i, 8191
  %sub18.i = sub i32 %sub17.i, %j.3.i.i
  %and19.i = and i32 %sub18.i, 8191
  store i32 %and19.i, i32* @decode.i, align 4, !tbaa !1
  %j.promoted.i = load i32* @j, align 4, !tbaa !1
  br label %while.cond20.i

while.cond20.i:                                   ; preds = %while.body24.i, %decode_p.exit.i
  %126 = phi i32 [ %and19.i, %decode_p.exit.i ], [ %and30.i, %while.body24.i ]
  %dec2188.i = phi i32 [ %j.promoted.i, %decode_p.exit.i ], [ %dec21.i, %while.body24.i ]
  %r.2.i = phi i32 [ %r.1.i, %decode_p.exit.i ], [ %inc31.i, %while.body24.i ]
  %dec21.i = add nsw i32 %dec2188.i, -1
  %cmp22.i = icmp sgt i32 %dec2188.i, 0
  br i1 %cmp22.i, label %while.body24.i, label %for.cond.loopexit.i

while.body24.i:                                   ; preds = %while.cond20.i
  %idxprom25.i = zext i32 %126 to i64
  %arrayidx26.i = getelementptr inbounds [0 x i8]* bitcast ([65536 x i8]* @window to [0 x i8]*), i64 0, i64 %idxprom25.i
  %127 = load i8* %arrayidx26.i, align 1, !tbaa !9
  %idxprom27.i = zext i32 %r.2.i to i64
  %arrayidx28.i = getelementptr inbounds [0 x i8]* bitcast ([65536 x i8]* @window to [0 x i8]*), i64 0, i64 %idxprom27.i
  store i8 %127, i8* %arrayidx28.i, align 1, !tbaa !9
  %add29.i = add nuw nsw i32 %126, 1
  %and30.i = and i32 %add29.i, 8191
  store i32 %and30.i, i32* @decode.i, align 4, !tbaa !1
  %inc31.i = add i32 %r.2.i, 1
  %cmp32.i = icmp eq i32 %inc31.i, 8192
  br i1 %cmp32.i, label %return.loopexit.i, label %while.cond20.i

return.loopexit.i:                                ; preds = %while.body24.i
  %dec21.i.lcssa53 = phi i32 [ %dec21.i, %while.body24.i ]
  store i32 %dec21.i.lcssa53, i32* @j, align 4, !tbaa !1
  br label %decode.exit

return.loopexit83.i:                              ; preds = %while.body.i
  store i32 %dec.i, i32* @j, align 4, !tbaa !1
  br label %decode.exit

decode.exit.loopexit:                             ; preds = %if.then8.i
  br label %decode.exit

decode.exit:                                      ; preds = %decode.exit.loopexit, %return.loopexit83.i, %return.loopexit.i, %if.then5.i
  %retval.0.i = phi i32 [ %r.1.i.lcssa, %if.then5.i ], [ 8192, %return.loopexit.i ], [ 8192, %return.loopexit83.i ], [ 8192, %decode.exit.loopexit ]
  %128 = load i32* @test, align 4, !tbaa !1
  %tobool1 = icmp eq i32 %128, 0
  %cmp = icmp ne i32 %retval.0.i, 0
  %or.cond = and i1 %tobool1, %cmp
  br i1 %or.cond, label %if.then, label %while.condthread-pre-split

if.then:                                          ; preds = %decode.exit
  tail call void @write_buf(i32 %out, i8* getelementptr inbounds ([65536 x i8]* @window, i64 0, i64 0), i32 %retval.0.i) #2
  br label %while.condthread-pre-split

while.end:                                        ; preds = %while.condthread-pre-split
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal fastcc void @read_pt_len(i32 %nn, i32 %nbit, i32 %i_special) #0 {
entry:
  %0 = load i16* @bitbuf, align 2, !tbaa !5
  %conv.i = zext i16 %0 to i32
  %sub.i = sub i32 16, %nbit
  %shr.i = lshr i32 %conv.i, %sub.i
  %shl.i.i = shl i32 %conv.i, %nbit
  %conv1.i.i = trunc i32 %shl.i.i to i16
  store i16 %conv1.i.i, i16* @bitbuf, align 2, !tbaa !5
  %1 = load i32* @bitcount, align 4, !tbaa !1
  %cmp19.i.i = icmp slt i32 %1, %nbit
  %2 = load i32* @subbitbuf, align 4, !tbaa !1
  br i1 %cmp19.i.i, label %while.body.i.i.preheader, label %getbits.exit

while.body.i.i.preheader:                         ; preds = %entry
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %cond.end.i.i, %while.body.i.i.preheader
  %3 = phi i16 [ %.pre.i.i, %cond.end.i.i ], [ %conv1.i.i, %while.body.i.i.preheader ]
  %4 = phi i32 [ %.cond.i.i, %cond.end.i.i ], [ %2, %while.body.i.i.preheader ]
  %5 = phi i32 [ 8, %cond.end.i.i ], [ %1, %while.body.i.i.preheader ]
  %n.addr.020.i.i = phi i32 [ %sub.i.i, %cond.end.i.i ], [ %nbit, %while.body.i.i.preheader ]
  %sub.i.i = sub nsw i32 %n.addr.020.i.i, %5
  %shl3.i.i = shl i32 %4, %sub.i.i
  %conv4.i.i = zext i16 %3 to i32
  %or.i.i = or i32 %shl3.i.i, %conv4.i.i
  %conv5.i.i = trunc i32 %or.i.i to i16
  store i16 %conv5.i.i, i16* @bitbuf, align 2, !tbaa !5
  %6 = load i32* @inptr, align 4, !tbaa !1
  %7 = load i32* @insize, align 4, !tbaa !1
  %cmp6.i.i = icmp ult i32 %6, %7
  br i1 %cmp6.i.i, label %cond.true.i.i, label %cond.false.i.i

cond.true.i.i:                                    ; preds = %while.body.i.i
  %inc.i.i = add i32 %6, 1
  store i32 %inc.i.i, i32* @inptr, align 4, !tbaa !1
  %idxprom.i.i = zext i32 %6 to i64
  %arrayidx.i.i = getelementptr inbounds [0 x i8]* bitcast ([32832 x i8]* @inbuf to [0 x i8]*), i64 0, i64 %idxprom.i.i
  %8 = load i8* %arrayidx.i.i, align 1, !tbaa !9
  %conv8.i.i = zext i8 %8 to i32
  br label %cond.end.i.i

cond.false.i.i:                                   ; preds = %while.body.i.i
  %call.i.i = tail call i32 @fill_inbuf(i32 1) #2
  %.pre.i.pre.i = load i16* @bitbuf, align 2, !tbaa !5
  br label %cond.end.i.i

cond.end.i.i:                                     ; preds = %cond.false.i.i, %cond.true.i.i
  %.pre.i.i = phi i16 [ %conv5.i.i, %cond.true.i.i ], [ %.pre.i.pre.i, %cond.false.i.i ]
  %cond.i.i = phi i32 [ %conv8.i.i, %cond.true.i.i ], [ %call.i.i, %cond.false.i.i ]
  %cmp9.i.i = icmp eq i32 %cond.i.i, -1
  %.cond.i.i = select i1 %cmp9.i.i, i32 0, i32 %cond.i.i
  store i32 %.cond.i.i, i32* @subbitbuf, align 4, !tbaa !1
  store i32 8, i32* @bitcount, align 4, !tbaa !1
  %cmp.i.i = icmp sgt i32 %sub.i.i, 8
  br i1 %cmp.i.i, label %while.body.i.i, label %getbits.exit.loopexit

getbits.exit.loopexit:                            ; preds = %cond.end.i.i
  %.cond.i.i.lcssa = phi i32 [ %.cond.i.i, %cond.end.i.i ]
  %.pre.i.i.lcssa = phi i16 [ %.pre.i.i, %cond.end.i.i ]
  %sub.i.i.lcssa = phi i32 [ %sub.i.i, %cond.end.i.i ]
  br label %getbits.exit

getbits.exit:                                     ; preds = %getbits.exit.loopexit, %entry
  %9 = phi i16 [ %conv1.i.i, %entry ], [ %.pre.i.i.lcssa, %getbits.exit.loopexit ]
  %10 = phi i32 [ %2, %entry ], [ %.cond.i.i.lcssa, %getbits.exit.loopexit ]
  %.lcssa.i.i = phi i32 [ %1, %entry ], [ 8, %getbits.exit.loopexit ]
  %n.addr.0.lcssa.i.i = phi i32 [ %nbit, %entry ], [ %sub.i.i.lcssa, %getbits.exit.loopexit ]
  %sub11.i.i = sub nsw i32 %.lcssa.i.i, %n.addr.0.lcssa.i.i
  store i32 %sub11.i.i, i32* @bitcount, align 4, !tbaa !1
  %shr.i.i = lshr i32 %10, %sub11.i.i
  %conv12.i.i = zext i16 %9 to i32
  %or13.i.i = or i32 %shr.i.i, %conv12.i.i
  %conv14.i.i = trunc i32 %or13.i.i to i16
  store i16 %conv14.i.i, i16* @bitbuf, align 2, !tbaa !5
  %cmp = icmp eq i32 %shr.i, 0
  br i1 %cmp, label %if.then, label %while.cond.preheader

while.cond.preheader:                             ; preds = %getbits.exit
  %cmp11164 = icmp sgt i32 %shr.i, 0
  br i1 %cmp11164, label %while.body.preheader, label %while.cond42.preheader

while.body.preheader:                             ; preds = %while.cond.preheader
  br label %while.body

if.then:                                          ; preds = %getbits.exit
  %conv.i74 = and i32 %or13.i.i, 65535
  %shr.i76 = lshr i32 %conv.i74, %sub.i
  %shl.i.i77 = shl i32 %conv.i74, %nbit
  %conv1.i.i78 = trunc i32 %shl.i.i77 to i16
  store i16 %conv1.i.i78, i16* @bitbuf, align 2, !tbaa !5
  %cmp19.i.i79 = icmp slt i32 %sub11.i.i, %nbit
  br i1 %cmp19.i.i79, label %while.body.i.i87.preheader, label %getbits.exit110

while.body.i.i87.preheader:                       ; preds = %if.then
  br label %while.body.i.i87

while.body.i.i87:                                 ; preds = %cond.end.i.i101, %while.body.i.i87.preheader
  %11 = phi i16 [ %.pre.i.i96, %cond.end.i.i101 ], [ %conv1.i.i78, %while.body.i.i87.preheader ]
  %12 = phi i32 [ %.cond.i.i99, %cond.end.i.i101 ], [ %10, %while.body.i.i87.preheader ]
  %13 = phi i32 [ 8, %cond.end.i.i101 ], [ %sub11.i.i, %while.body.i.i87.preheader ]
  %n.addr.020.i.i80 = phi i32 [ %sub.i.i81, %cond.end.i.i101 ], [ %nbit, %while.body.i.i87.preheader ]
  %sub.i.i81 = sub nsw i32 %n.addr.020.i.i80, %13
  %shl3.i.i82 = shl i32 %12, %sub.i.i81
  %conv4.i.i83 = zext i16 %11 to i32
  %or.i.i84 = or i32 %shl3.i.i82, %conv4.i.i83
  %conv5.i.i85 = trunc i32 %or.i.i84 to i16
  store i16 %conv5.i.i85, i16* @bitbuf, align 2, !tbaa !5
  %14 = load i32* @inptr, align 4, !tbaa !1
  %15 = load i32* @insize, align 4, !tbaa !1
  %cmp6.i.i86 = icmp ult i32 %14, %15
  br i1 %cmp6.i.i86, label %cond.true.i.i92, label %cond.false.i.i95

cond.true.i.i92:                                  ; preds = %while.body.i.i87
  %inc.i.i88 = add i32 %14, 1
  store i32 %inc.i.i88, i32* @inptr, align 4, !tbaa !1
  %idxprom.i.i89 = zext i32 %14 to i64
  %arrayidx.i.i90 = getelementptr inbounds [0 x i8]* bitcast ([32832 x i8]* @inbuf to [0 x i8]*), i64 0, i64 %idxprom.i.i89
  %16 = load i8* %arrayidx.i.i90, align 1, !tbaa !9
  %conv8.i.i91 = zext i8 %16 to i32
  br label %cond.end.i.i101

cond.false.i.i95:                                 ; preds = %while.body.i.i87
  %call.i.i93 = tail call i32 @fill_inbuf(i32 1) #2
  %.pre.i.pre.i94 = load i16* @bitbuf, align 2, !tbaa !5
  br label %cond.end.i.i101

cond.end.i.i101:                                  ; preds = %cond.false.i.i95, %cond.true.i.i92
  %.pre.i.i96 = phi i16 [ %conv5.i.i85, %cond.true.i.i92 ], [ %.pre.i.pre.i94, %cond.false.i.i95 ]
  %cond.i.i97 = phi i32 [ %conv8.i.i91, %cond.true.i.i92 ], [ %call.i.i93, %cond.false.i.i95 ]
  %cmp9.i.i98 = icmp eq i32 %cond.i.i97, -1
  %.cond.i.i99 = select i1 %cmp9.i.i98, i32 0, i32 %cond.i.i97
  store i32 %.cond.i.i99, i32* @subbitbuf, align 4, !tbaa !1
  store i32 8, i32* @bitcount, align 4, !tbaa !1
  %cmp.i.i100 = icmp sgt i32 %sub.i.i81, 8
  br i1 %cmp.i.i100, label %while.body.i.i87, label %getbits.exit110.loopexit

getbits.exit110.loopexit:                         ; preds = %cond.end.i.i101
  %.cond.i.i99.lcssa = phi i32 [ %.cond.i.i99, %cond.end.i.i101 ]
  %.pre.i.i96.lcssa = phi i16 [ %.pre.i.i96, %cond.end.i.i101 ]
  %sub.i.i81.lcssa = phi i32 [ %sub.i.i81, %cond.end.i.i101 ]
  br label %getbits.exit110

getbits.exit110:                                  ; preds = %getbits.exit110.loopexit, %if.then
  %17 = phi i16 [ %conv1.i.i78, %if.then ], [ %.pre.i.i96.lcssa, %getbits.exit110.loopexit ]
  %.lcssa18.i.i102 = phi i32 [ %10, %if.then ], [ %.cond.i.i99.lcssa, %getbits.exit110.loopexit ]
  %.lcssa.i.i103 = phi i32 [ %sub11.i.i, %if.then ], [ 8, %getbits.exit110.loopexit ]
  %n.addr.0.lcssa.i.i104 = phi i32 [ %nbit, %if.then ], [ %sub.i.i81.lcssa, %getbits.exit110.loopexit ]
  %sub11.i.i105 = sub nsw i32 %.lcssa.i.i103, %n.addr.0.lcssa.i.i104
  store i32 %sub11.i.i105, i32* @bitcount, align 4, !tbaa !1
  %shr.i.i106 = lshr i32 %.lcssa18.i.i102, %sub11.i.i105
  %conv12.i.i107 = zext i16 %17 to i32
  %or13.i.i108 = or i32 %shr.i.i106, %conv12.i.i107
  %conv14.i.i109 = trunc i32 %or13.i.i108 to i16
  store i16 %conv14.i.i109, i16* @bitbuf, align 2, !tbaa !5
  %cmp2151 = icmp sgt i32 %nn, 0
  br i1 %cmp2151, label %for.body.lr.ph, label %for.cond3.preheader

for.body.lr.ph:                                   ; preds = %getbits.exit110
  %18 = add i32 %nn, -1
  %19 = zext i32 %18 to i64
  %20 = add nuw nsw i64 %19, 1
  call void @llvm.memset.p0i8.i64(i8* getelementptr inbounds ([19 x i8]* @pt_len, i64 0, i64 0), i8 0, i64 %20, i32 16, i1 false)
  br label %for.cond3.preheader

for.cond3.preheader:                              ; preds = %for.body.lr.ph, %getbits.exit110
  %conv = trunc i32 %shr.i76 to i16
  %broadcast.splatinsert179 = insertelement <8 x i16> undef, i16 %conv, i32 0
  %broadcast.splat180 = shufflevector <8 x i16> %broadcast.splatinsert179, <8 x i16> undef, <8 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %for.cond3.preheader
  store <8 x i16> %broadcast.splat180, <8 x i16>* bitcast ([256 x i16]* @pt_table to <8 x i16>*), align 16, !tbaa !5
  store <8 x i16> %broadcast.splat180, <8 x i16>* bitcast (i16* getelementptr inbounds ([256 x i16]* @pt_table, i64 0, i64 8) to <8 x i16>*), align 16, !tbaa !5
  store <8 x i16> %broadcast.splat180, <8 x i16>* bitcast (i16* getelementptr inbounds ([256 x i16]* @pt_table, i64 0, i64 16) to <8 x i16>*), align 16, !tbaa !5
  store <8 x i16> %broadcast.splat180, <8 x i16>* bitcast (i16* getelementptr inbounds ([256 x i16]* @pt_table, i64 0, i64 24) to <8 x i16>*), align 16, !tbaa !5
  store <8 x i16> %broadcast.splat180, <8 x i16>* bitcast (i16* getelementptr inbounds ([256 x i16]* @pt_table, i64 0, i64 32) to <8 x i16>*), align 16, !tbaa !5
  store <8 x i16> %broadcast.splat180, <8 x i16>* bitcast (i16* getelementptr inbounds ([256 x i16]* @pt_table, i64 0, i64 40) to <8 x i16>*), align 16, !tbaa !5
  store <8 x i16> %broadcast.splat180, <8 x i16>* bitcast (i16* getelementptr inbounds ([256 x i16]* @pt_table, i64 0, i64 48) to <8 x i16>*), align 16, !tbaa !5
  store <8 x i16> %broadcast.splat180, <8 x i16>* bitcast (i16* getelementptr inbounds ([256 x i16]* @pt_table, i64 0, i64 56) to <8 x i16>*), align 16, !tbaa !5
  store <8 x i16> %broadcast.splat180, <8 x i16>* bitcast (i16* getelementptr inbounds ([256 x i16]* @pt_table, i64 0, i64 64) to <8 x i16>*), align 16, !tbaa !5
  store <8 x i16> %broadcast.splat180, <8 x i16>* bitcast (i16* getelementptr inbounds ([256 x i16]* @pt_table, i64 0, i64 72) to <8 x i16>*), align 16, !tbaa !5
  store <8 x i16> %broadcast.splat180, <8 x i16>* bitcast (i16* getelementptr inbounds ([256 x i16]* @pt_table, i64 0, i64 80) to <8 x i16>*), align 16, !tbaa !5
  store <8 x i16> %broadcast.splat180, <8 x i16>* bitcast (i16* getelementptr inbounds ([256 x i16]* @pt_table, i64 0, i64 88) to <8 x i16>*), align 16, !tbaa !5
  store <8 x i16> %broadcast.splat180, <8 x i16>* bitcast (i16* getelementptr inbounds ([256 x i16]* @pt_table, i64 0, i64 96) to <8 x i16>*), align 16, !tbaa !5
  store <8 x i16> %broadcast.splat180, <8 x i16>* bitcast (i16* getelementptr inbounds ([256 x i16]* @pt_table, i64 0, i64 104) to <8 x i16>*), align 16, !tbaa !5
  store <8 x i16> %broadcast.splat180, <8 x i16>* bitcast (i16* getelementptr inbounds ([256 x i16]* @pt_table, i64 0, i64 112) to <8 x i16>*), align 16, !tbaa !5
  store <8 x i16> %broadcast.splat180, <8 x i16>* bitcast (i16* getelementptr inbounds ([256 x i16]* @pt_table, i64 0, i64 120) to <8 x i16>*), align 16, !tbaa !5
  store <8 x i16> %broadcast.splat180, <8 x i16>* bitcast (i16* getelementptr inbounds ([256 x i16]* @pt_table, i64 0, i64 128) to <8 x i16>*), align 16, !tbaa !5
  store <8 x i16> %broadcast.splat180, <8 x i16>* bitcast (i16* getelementptr inbounds ([256 x i16]* @pt_table, i64 0, i64 136) to <8 x i16>*), align 16, !tbaa !5
  store <8 x i16> %broadcast.splat180, <8 x i16>* bitcast (i16* getelementptr inbounds ([256 x i16]* @pt_table, i64 0, i64 144) to <8 x i16>*), align 16, !tbaa !5
  store <8 x i16> %broadcast.splat180, <8 x i16>* bitcast (i16* getelementptr inbounds ([256 x i16]* @pt_table, i64 0, i64 152) to <8 x i16>*), align 16, !tbaa !5
  store <8 x i16> %broadcast.splat180, <8 x i16>* bitcast (i16* getelementptr inbounds ([256 x i16]* @pt_table, i64 0, i64 160) to <8 x i16>*), align 16, !tbaa !5
  store <8 x i16> %broadcast.splat180, <8 x i16>* bitcast (i16* getelementptr inbounds ([256 x i16]* @pt_table, i64 0, i64 168) to <8 x i16>*), align 16, !tbaa !5
  store <8 x i16> %broadcast.splat180, <8 x i16>* bitcast (i16* getelementptr inbounds ([256 x i16]* @pt_table, i64 0, i64 176) to <8 x i16>*), align 16, !tbaa !5
  store <8 x i16> %broadcast.splat180, <8 x i16>* bitcast (i16* getelementptr inbounds ([256 x i16]* @pt_table, i64 0, i64 184) to <8 x i16>*), align 16, !tbaa !5
  store <8 x i16> %broadcast.splat180, <8 x i16>* bitcast (i16* getelementptr inbounds ([256 x i16]* @pt_table, i64 0, i64 192) to <8 x i16>*), align 16, !tbaa !5
  store <8 x i16> %broadcast.splat180, <8 x i16>* bitcast (i16* getelementptr inbounds ([256 x i16]* @pt_table, i64 0, i64 200) to <8 x i16>*), align 16, !tbaa !5
  store <8 x i16> %broadcast.splat180, <8 x i16>* bitcast (i16* getelementptr inbounds ([256 x i16]* @pt_table, i64 0, i64 208) to <8 x i16>*), align 16, !tbaa !5
  store <8 x i16> %broadcast.splat180, <8 x i16>* bitcast (i16* getelementptr inbounds ([256 x i16]* @pt_table, i64 0, i64 216) to <8 x i16>*), align 16, !tbaa !5
  store <8 x i16> %broadcast.splat180, <8 x i16>* bitcast (i16* getelementptr inbounds ([256 x i16]* @pt_table, i64 0, i64 224) to <8 x i16>*), align 16, !tbaa !5
  store <8 x i16> %broadcast.splat180, <8 x i16>* bitcast (i16* getelementptr inbounds ([256 x i16]* @pt_table, i64 0, i64 232) to <8 x i16>*), align 16, !tbaa !5
  store <8 x i16> %broadcast.splat180, <8 x i16>* bitcast (i16* getelementptr inbounds ([256 x i16]* @pt_table, i64 0, i64 240) to <8 x i16>*), align 16, !tbaa !5
  store <8 x i16> %broadcast.splat180, <8 x i16>* bitcast (i16* getelementptr inbounds ([256 x i16]* @pt_table, i64 0, i64 248) to <8 x i16>*), align 16, !tbaa !5
  br label %if.end50

while.cond42.preheader.loopexit:                  ; preds = %while.cond.backedge
  %i.2.be.lcssa = phi i32 [ %i.2.be, %while.cond.backedge ]
  br label %while.cond42.preheader

while.cond42.preheader:                           ; preds = %while.cond42.preheader.loopexit, %while.cond.preheader
  %i.2.lcssa = phi i32 [ 0, %while.cond.preheader ], [ %i.2.be.lcssa, %while.cond42.preheader.loopexit ]
  %cmp43153 = icmp slt i32 %i.2.lcssa, %nn
  br i1 %cmp43153, label %while.body45.lr.ph, label %while.end49

while.body45.lr.ph:                               ; preds = %while.cond42.preheader
  %21 = sext i32 %i.2.lcssa to i64
  %scevgep = getelementptr [19 x i8]* @pt_len, i64 0, i64 %21
  %22 = add i32 %nn, -1
  %23 = sub i32 %22, %i.2.lcssa
  %24 = zext i32 %23 to i64
  %25 = add nuw nsw i64 %24, 1
  call void @llvm.memset.p0i8.i64(i8* %scevgep, i8 0, i64 %25, i32 1, i1 false)
  br label %while.end49

while.body:                                       ; preds = %while.cond.backedge, %while.body.preheader
  %26 = phi i32 [ %37, %while.cond.backedge ], [ %10, %while.body.preheader ]
  %27 = phi i32 [ %38, %while.cond.backedge ], [ %sub11.i.i, %while.body.preheader ]
  %28 = phi i16 [ %39, %while.cond.backedge ], [ %conv14.i.i, %while.body.preheader ]
  %i.2165 = phi i32 [ %i.2.be, %while.cond.backedge ], [ 0, %while.body.preheader ]
  %conv13 = zext i16 %28 to i32
  %shr73 = lshr i32 %conv13, 13
  %cmp14 = icmp eq i32 %shr73, 7
  br i1 %cmp14, label %while.cond17.preheader, label %if.end

while.cond17.preheader:                           ; preds = %while.body
  %and156 = and i16 %28, 4096
  %tobool157 = icmp eq i16 %and156, 0
  br i1 %tobool157, label %if.end, label %while.body19.preheader

while.body19.preheader:                           ; preds = %while.cond17.preheader
  br label %while.body19

while.body19:                                     ; preds = %while.body19, %while.body19.preheader
  %mask.0159 = phi i32 [ %shr20, %while.body19 ], [ 4096, %while.body19.preheader ]
  %c.0158 = phi i32 [ %inc21, %while.body19 ], [ 7, %while.body19.preheader ]
  %shr20 = lshr i32 %mask.0159, 1
  %inc21 = add nsw i32 %c.0158, 1
  %and = and i32 %conv13, %shr20
  %tobool = icmp eq i32 %and, 0
  br i1 %tobool, label %if.end.loopexit, label %while.body19

if.end.loopexit:                                  ; preds = %while.body19
  %inc21.lcssa = phi i32 [ %inc21, %while.body19 ]
  br label %if.end

if.end:                                           ; preds = %if.end.loopexit, %while.cond17.preheader, %while.body
  %c.1 = phi i32 [ %shr73, %while.body ], [ 7, %while.cond17.preheader ], [ %inc21.lcssa, %if.end.loopexit ]
  %cmp22 = icmp slt i32 %c.1, 7
  %sub = add nsw i32 %c.1, -3
  %.sub = select i1 %cmp22, i32 3, i32 %sub
  %shl.i = shl i32 %conv13, %.sub
  %conv1.i = trunc i32 %shl.i to i16
  store i16 %conv1.i, i16* @bitbuf, align 2, !tbaa !5
  %cmp19.i = icmp slt i32 %27, %.sub
  br i1 %cmp19.i, label %while.body.i.preheader, label %fillbuf.exit

while.body.i.preheader:                           ; preds = %if.end
  br label %while.body.i

while.body.i:                                     ; preds = %cond.end.i, %while.body.i.preheader
  %29 = phi i16 [ %.pre.i, %cond.end.i ], [ %conv1.i, %while.body.i.preheader ]
  %30 = phi i32 [ %.cond.i, %cond.end.i ], [ %26, %while.body.i.preheader ]
  %31 = phi i32 [ 8, %cond.end.i ], [ %27, %while.body.i.preheader ]
  %n.addr.020.i = phi i32 [ %sub.i112, %cond.end.i ], [ %.sub, %while.body.i.preheader ]
  %sub.i112 = sub nsw i32 %n.addr.020.i, %31
  %shl3.i = shl i32 %30, %sub.i112
  %conv4.i = zext i16 %29 to i32
  %or.i = or i32 %shl3.i, %conv4.i
  %conv5.i = trunc i32 %or.i to i16
  store i16 %conv5.i, i16* @bitbuf, align 2, !tbaa !5
  %32 = load i32* @inptr, align 4, !tbaa !1
  %33 = load i32* @insize, align 4, !tbaa !1
  %cmp6.i = icmp ult i32 %32, %33
  br i1 %cmp6.i, label %cond.true.i, label %cond.false.i

cond.true.i:                                      ; preds = %while.body.i
  %inc.i = add i32 %32, 1
  store i32 %inc.i, i32* @inptr, align 4, !tbaa !1
  %idxprom.i = zext i32 %32 to i64
  %arrayidx.i = getelementptr inbounds [0 x i8]* bitcast ([32832 x i8]* @inbuf to [0 x i8]*), i64 0, i64 %idxprom.i
  %34 = load i8* %arrayidx.i, align 1, !tbaa !9
  %conv8.i = zext i8 %34 to i32
  br label %cond.end.i

cond.false.i:                                     ; preds = %while.body.i
  %call.i = tail call i32 @fill_inbuf(i32 1) #2
  %.pre.i.pre = load i16* @bitbuf, align 2, !tbaa !5
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.i, %cond.true.i
  %.pre.i = phi i16 [ %conv5.i, %cond.true.i ], [ %.pre.i.pre, %cond.false.i ]
  %cond.i = phi i32 [ %conv8.i, %cond.true.i ], [ %call.i, %cond.false.i ]
  %cmp9.i = icmp eq i32 %cond.i, -1
  %.cond.i = select i1 %cmp9.i, i32 0, i32 %cond.i
  store i32 %.cond.i, i32* @subbitbuf, align 4, !tbaa !1
  store i32 8, i32* @bitcount, align 4, !tbaa !1
  %cmp.i = icmp sgt i32 %sub.i112, 8
  br i1 %cmp.i, label %while.body.i, label %fillbuf.exit.loopexit

fillbuf.exit.loopexit:                            ; preds = %cond.end.i
  %.cond.i.lcssa = phi i32 [ %.cond.i, %cond.end.i ]
  %.pre.i.lcssa = phi i16 [ %.pre.i, %cond.end.i ]
  %sub.i112.lcssa = phi i32 [ %sub.i112, %cond.end.i ]
  br label %fillbuf.exit

fillbuf.exit:                                     ; preds = %fillbuf.exit.loopexit, %if.end
  %35 = phi i32 [ %26, %if.end ], [ %.cond.i.lcssa, %fillbuf.exit.loopexit ]
  %36 = phi i16 [ %conv1.i, %if.end ], [ %.pre.i.lcssa, %fillbuf.exit.loopexit ]
  %.lcssa.i = phi i32 [ %27, %if.end ], [ 8, %fillbuf.exit.loopexit ]
  %n.addr.0.lcssa.i = phi i32 [ %.sub, %if.end ], [ %sub.i112.lcssa, %fillbuf.exit.loopexit ]
  %sub11.i = sub nsw i32 %.lcssa.i, %n.addr.0.lcssa.i
  store i32 %sub11.i, i32* @bitcount, align 4, !tbaa !1
  %shr.i113 = lshr i32 %35, %sub11.i
  %conv12.i = zext i16 %36 to i32
  %or13.i = or i32 %shr.i113, %conv12.i
  %conv14.i = trunc i32 %or13.i to i16
  store i16 %conv14.i, i16* @bitbuf, align 2, !tbaa !5
  %conv24 = trunc i32 %c.1 to i8
  %inc25 = add i32 %i.2165, 1
  %idxprom26 = sext i32 %i.2165 to i64
  %arrayidx27 = getelementptr inbounds [19 x i8]* @pt_len, i64 0, i64 %idxprom26
  store i8 %conv24, i8* %arrayidx27, align 1, !tbaa !9
  %cmp28 = icmp eq i32 %inc25, %i_special
  br i1 %cmp28, label %if.then30, label %while.cond.backedge

while.cond.backedge:                              ; preds = %while.body35.lr.ph, %getbits.exit149, %fillbuf.exit
  %37 = phi i32 [ %35, %fillbuf.exit ], [ %46, %getbits.exit149 ], [ %46, %while.body35.lr.ph ]
  %38 = phi i32 [ %sub11.i, %fillbuf.exit ], [ %sub11.i.i144, %getbits.exit149 ], [ %sub11.i.i144, %while.body35.lr.ph ]
  %39 = phi i16 [ %conv14.i, %fillbuf.exit ], [ %conv14.i.i148, %getbits.exit149 ], [ %conv14.i.i148, %while.body35.lr.ph ]
  %i.2.be = phi i32 [ %inc25, %fillbuf.exit ], [ %i_special, %getbits.exit149 ], [ %56, %while.body35.lr.ph ]
  %cmp11 = icmp slt i32 %i.2.be, %shr.i
  br i1 %cmp11, label %while.body, label %while.cond42.preheader.loopexit

if.then30:                                        ; preds = %fillbuf.exit
  %conv.i114 = lshr i32 %or13.i, 14
  %shr.i115 = and i32 %conv.i114, 3
  %shl.i.i116 = shl i16 %conv14.i, 2
  store i16 %shl.i.i116, i16* @bitbuf, align 2, !tbaa !5
  %cmp19.i.i118 = icmp slt i32 %sub11.i, 2
  br i1 %cmp19.i.i118, label %while.body.i.i126.preheader, label %getbits.exit149

while.body.i.i126.preheader:                      ; preds = %if.then30
  br label %while.body.i.i126

while.body.i.i126:                                ; preds = %cond.end.i.i140, %while.body.i.i126.preheader
  %40 = phi i16 [ %.pre.i.i135, %cond.end.i.i140 ], [ %shl.i.i116, %while.body.i.i126.preheader ]
  %41 = phi i32 [ %.cond.i.i138, %cond.end.i.i140 ], [ %35, %while.body.i.i126.preheader ]
  %42 = phi i32 [ 8, %cond.end.i.i140 ], [ %sub11.i, %while.body.i.i126.preheader ]
  %n.addr.020.i.i119 = phi i32 [ %sub.i.i120, %cond.end.i.i140 ], [ 2, %while.body.i.i126.preheader ]
  %sub.i.i120 = sub nsw i32 %n.addr.020.i.i119, %42
  %shl3.i.i121 = shl i32 %41, %sub.i.i120
  %conv4.i.i122 = zext i16 %40 to i32
  %or.i.i123 = or i32 %shl3.i.i121, %conv4.i.i122
  %conv5.i.i124 = trunc i32 %or.i.i123 to i16
  store i16 %conv5.i.i124, i16* @bitbuf, align 2, !tbaa !5
  %43 = load i32* @inptr, align 4, !tbaa !1
  %44 = load i32* @insize, align 4, !tbaa !1
  %cmp6.i.i125 = icmp ult i32 %43, %44
  br i1 %cmp6.i.i125, label %cond.true.i.i131, label %cond.false.i.i134

cond.true.i.i131:                                 ; preds = %while.body.i.i126
  %inc.i.i127 = add i32 %43, 1
  store i32 %inc.i.i127, i32* @inptr, align 4, !tbaa !1
  %idxprom.i.i128 = zext i32 %43 to i64
  %arrayidx.i.i129 = getelementptr inbounds [0 x i8]* bitcast ([32832 x i8]* @inbuf to [0 x i8]*), i64 0, i64 %idxprom.i.i128
  %45 = load i8* %arrayidx.i.i129, align 1, !tbaa !9
  %conv8.i.i130 = zext i8 %45 to i32
  br label %cond.end.i.i140

cond.false.i.i134:                                ; preds = %while.body.i.i126
  %call.i.i132 = tail call i32 @fill_inbuf(i32 1) #2
  %.pre.i.pre.i133 = load i16* @bitbuf, align 2, !tbaa !5
  br label %cond.end.i.i140

cond.end.i.i140:                                  ; preds = %cond.false.i.i134, %cond.true.i.i131
  %.pre.i.i135 = phi i16 [ %conv5.i.i124, %cond.true.i.i131 ], [ %.pre.i.pre.i133, %cond.false.i.i134 ]
  %cond.i.i136 = phi i32 [ %conv8.i.i130, %cond.true.i.i131 ], [ %call.i.i132, %cond.false.i.i134 ]
  %cmp9.i.i137 = icmp eq i32 %cond.i.i136, -1
  %.cond.i.i138 = select i1 %cmp9.i.i137, i32 0, i32 %cond.i.i136
  store i32 %.cond.i.i138, i32* @subbitbuf, align 4, !tbaa !1
  store i32 8, i32* @bitcount, align 4, !tbaa !1
  %cmp.i.i139 = icmp sgt i32 %sub.i.i120, 8
  br i1 %cmp.i.i139, label %while.body.i.i126, label %getbits.exit149.loopexit

getbits.exit149.loopexit:                         ; preds = %cond.end.i.i140
  %.cond.i.i138.lcssa = phi i32 [ %.cond.i.i138, %cond.end.i.i140 ]
  %.pre.i.i135.lcssa = phi i16 [ %.pre.i.i135, %cond.end.i.i140 ]
  %sub.i.i120.lcssa = phi i32 [ %sub.i.i120, %cond.end.i.i140 ]
  br label %getbits.exit149

getbits.exit149:                                  ; preds = %getbits.exit149.loopexit, %if.then30
  %46 = phi i32 [ %35, %if.then30 ], [ %.cond.i.i138.lcssa, %getbits.exit149.loopexit ]
  %47 = phi i16 [ %shl.i.i116, %if.then30 ], [ %.pre.i.i135.lcssa, %getbits.exit149.loopexit ]
  %.lcssa.i.i142 = phi i32 [ %sub11.i, %if.then30 ], [ 8, %getbits.exit149.loopexit ]
  %n.addr.0.lcssa.i.i143 = phi i32 [ 2, %if.then30 ], [ %sub.i.i120.lcssa, %getbits.exit149.loopexit ]
  %sub11.i.i144 = sub nsw i32 %.lcssa.i.i142, %n.addr.0.lcssa.i.i143
  store i32 %sub11.i.i144, i32* @bitcount, align 4, !tbaa !1
  %shr.i.i145 = lshr i32 %46, %sub11.i.i144
  %conv12.i.i146 = zext i16 %47 to i32
  %or13.i.i147 = or i32 %shr.i.i145, %conv12.i.i146
  %conv14.i.i148 = trunc i32 %or13.i.i147 to i16
  store i16 %conv14.i.i148, i16* @bitbuf, align 2, !tbaa !5
  %cmp33160 = icmp eq i32 %shr.i115, 0
  br i1 %cmp33160, label %while.cond.backedge, label %while.body35.lr.ph

while.body35.lr.ph:                               ; preds = %getbits.exit149
  %48 = sext i32 %i_special to i64
  %49 = add i32 %i.2165, 2
  %50 = sub i32 0, %shr.i115
  %51 = icmp sgt i32 %50, -1
  %smax = select i1 %51, i32 %50, i32 -1
  %52 = add i32 %49, %smax
  %scevgep175 = getelementptr [19 x i8]* @pt_len, i64 0, i64 %48
  %53 = add nsw i32 %smax, %shr.i115
  %54 = zext i32 %53 to i64
  %55 = add nuw nsw i64 %54, 1
  call void @llvm.memset.p0i8.i64(i8* %scevgep175, i8 0, i64 %55, i32 1, i1 false)
  %56 = add i32 %52, %shr.i115
  br label %while.cond.backedge

while.end49:                                      ; preds = %while.body45.lr.ph, %while.cond42.preheader
  tail call fastcc void @make_table(i32 %nn, i8* getelementptr inbounds ([19 x i8]* @pt_len, i64 0, i64 0), i32 8, i16* getelementptr inbounds ([256 x i16]* @pt_table, i64 0, i64 0))
  br label %if.end50

if.end50:                                         ; preds = %while.end49, %vector.body
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @make_table(i32 %nchar, i8* nocapture readonly %bitlen, i32 %tablebits, i16* nocapture %table) #0 {
entry:
  %count = alloca [17 x i16], align 16
  %weight = alloca [17 x i16], align 16
  %start = alloca [18 x i16], align 16
  %0 = bitcast [17 x i16]* %count to i8*
  call void @llvm.lifetime.start(i64 34, i8* %0) #2
  %1 = bitcast [17 x i16]* %weight to i8*
  call void @llvm.lifetime.start(i64 34, i8* %1) #2
  %2 = bitcast [18 x i16]* %start to i8*
  call void @llvm.lifetime.start(i64 36, i8* %2) #2
  %scevgep = getelementptr [17 x i16]* %count, i64 0, i64 1
  %scevgep252 = bitcast i16* %scevgep to i8*
  call void @llvm.memset.p0i8.i64(i8* %scevgep252, i8 0, i64 32, i32 2, i1 false)
  %cmp2233 = icmp eq i32 %nchar, 0
  br i1 %cmp2233, label %for.end11, label %for.body3.preheader

for.body3.preheader:                              ; preds = %entry
  %xtraiter378 = and i32 %nchar, 1
  %lcmp.mod379 = icmp ne i32 %xtraiter378, 0
  %lcmp.overflow380 = icmp eq i32 %nchar, 0
  %lcmp.or381 = or i1 %lcmp.overflow380, %lcmp.mod379
  br i1 %lcmp.or381, label %for.body3.unr, label %for.body3.preheader.split

for.body3.unr:                                    ; preds = %for.body3.preheader
  %arrayidx5.unr = getelementptr inbounds i8* %bitlen, i64 0
  %3 = load i8* %arrayidx5.unr, align 1, !tbaa !9
  %idxprom6.unr = zext i8 %3 to i64
  %arrayidx7.unr = getelementptr inbounds [17 x i16]* %count, i64 0, i64 %idxprom6.unr
  %4 = load i16* %arrayidx7.unr, align 2, !tbaa !5
  %inc8.unr = add i16 %4, 1
  store i16 %inc8.unr, i16* %arrayidx7.unr, align 2, !tbaa !5
  %indvars.iv.next246.unr = add nuw nsw i64 0, 1
  %lftr.wideiv247.unr = trunc i64 %indvars.iv.next246.unr to i32
  %exitcond248.unr = icmp eq i32 %lftr.wideiv247.unr, %nchar
  br label %for.body3.preheader.split

for.body3.preheader.split:                        ; preds = %for.body3.unr, %for.body3.preheader
  %indvars.iv245.unr = phi i64 [ 0, %for.body3.preheader ], [ %indvars.iv.next246.unr, %for.body3.unr ]
  %5 = icmp ult i32 %nchar, 2
  br i1 %5, label %for.end11.loopexit, label %for.body3.preheader.split.split

for.body3.preheader.split.split:                  ; preds = %for.body3.preheader.split
  br label %for.body3

for.body3:                                        ; preds = %for.body3, %for.body3.preheader.split.split
  %indvars.iv245 = phi i64 [ %indvars.iv245.unr, %for.body3.preheader.split.split ], [ %indvars.iv.next246.1, %for.body3 ]
  %arrayidx5 = getelementptr inbounds i8* %bitlen, i64 %indvars.iv245
  %6 = load i8* %arrayidx5, align 1, !tbaa !9
  %idxprom6 = zext i8 %6 to i64
  %arrayidx7 = getelementptr inbounds [17 x i16]* %count, i64 0, i64 %idxprom6
  %7 = load i16* %arrayidx7, align 2, !tbaa !5
  %inc8 = add i16 %7, 1
  store i16 %inc8, i16* %arrayidx7, align 2, !tbaa !5
  %indvars.iv.next246 = add nuw nsw i64 %indvars.iv245, 1
  %lftr.wideiv247 = trunc i64 %indvars.iv.next246 to i32
  %arrayidx5.1 = getelementptr inbounds i8* %bitlen, i64 %indvars.iv.next246
  %8 = load i8* %arrayidx5.1, align 1, !tbaa !9
  %idxprom6.1 = zext i8 %8 to i64
  %arrayidx7.1 = getelementptr inbounds [17 x i16]* %count, i64 0, i64 %idxprom6.1
  %9 = load i16* %arrayidx7.1, align 2, !tbaa !5
  %inc8.1 = add i16 %9, 1
  store i16 %inc8.1, i16* %arrayidx7.1, align 2, !tbaa !5
  %indvars.iv.next246.1 = add nuw nsw i64 %indvars.iv.next246, 1
  %lftr.wideiv247.1 = trunc i64 %indvars.iv.next246.1 to i32
  %exitcond248.1 = icmp eq i32 %lftr.wideiv247.1, %nchar
  br i1 %exitcond248.1, label %for.end11.loopexit.unr-lcssa, label %for.body3

for.end11.loopexit.unr-lcssa:                     ; preds = %for.body3
  br label %for.end11.loopexit

for.end11.loopexit:                               ; preds = %for.end11.loopexit.unr-lcssa, %for.body3.preheader.split
  br label %for.end11

for.end11:                                        ; preds = %for.end11.loopexit, %entry
  %arrayidx12 = getelementptr inbounds [18 x i16]* %start, i64 0, i64 1
  store i16 0, i16* %arrayidx12, align 2, !tbaa !5
  br label %for.body15

for.body15:                                       ; preds = %for.body15, %for.end11
  %10 = phi i32 [ 0, %for.end11 ], [ %add.1, %for.body15 ]
  %indvars.iv241 = phi i64 [ 1, %for.end11 ], [ %indvars.iv.next242.1, %for.body15 ]
  %conv = and i32 %10, 65535
  %arrayidx19 = getelementptr inbounds [17 x i16]* %count, i64 0, i64 %indvars.iv241
  %11 = load i16* %arrayidx19, align 2, !tbaa !5
  %conv20 = zext i16 %11 to i32
  %12 = sub i64 16, %indvars.iv241
  %13 = trunc i64 %12 to i32
  %shl = shl i32 %conv20, %13
  %add = add nsw i32 %shl, %conv
  %conv21 = trunc i32 %add to i16
  %indvars.iv.next242 = add nuw nsw i64 %indvars.iv241, 1
  %arrayidx24 = getelementptr inbounds [18 x i16]* %start, i64 0, i64 %indvars.iv.next242
  store i16 %conv21, i16* %arrayidx24, align 2, !tbaa !5
  %conv.1 = and i32 %add, 65535
  %arrayidx19.1 = getelementptr inbounds [17 x i16]* %count, i64 0, i64 %indvars.iv.next242
  %14 = load i16* %arrayidx19.1, align 2, !tbaa !5
  %conv20.1 = zext i16 %14 to i32
  %15 = sub i64 16, %indvars.iv.next242
  %16 = trunc i64 %15 to i32
  %shl.1 = shl i32 %conv20.1, %16
  %add.1 = add nsw i32 %shl.1, %conv.1
  %conv21.1 = trunc i32 %add.1 to i16
  %indvars.iv.next242.1 = add nuw nsw i64 %indvars.iv.next242, 1
  %arrayidx24.1 = getelementptr inbounds [18 x i16]* %start, i64 0, i64 %indvars.iv.next242.1
  store i16 %conv21.1, i16* %arrayidx24.1, align 2, !tbaa !5
  %exitcond244.1 = icmp eq i64 %indvars.iv.next242.1, 17
  br i1 %exitcond244.1, label %for.end27, label %for.body15

for.end27:                                        ; preds = %for.body15
  %arrayidx28 = getelementptr inbounds [18 x i16]* %start, i64 0, i64 17
  %17 = load i16* %arrayidx28, align 2, !tbaa !5
  %cmp30 = icmp eq i16 %17, 0
  br i1 %cmp30, label %if.end, label %if.then

if.then:                                          ; preds = %for.end27
  tail call void @error(i8* getelementptr inbounds ([11 x i8]* @.str65, i64 0, i64 0)) #2
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end27
  %sub32 = sub nsw i32 16, %tablebits
  %cmp34229 = icmp eq i32 %tablebits, 0
  br i1 %cmp34229, label %while.body.lr.ph, label %for.body36.preheader

for.body36.preheader:                             ; preds = %if.end
  br label %for.body36

while.cond.preheader:                             ; preds = %for.body36
  %inc47.lcssa = phi i32 [ %inc47, %for.body36 ]
  %cmp49227 = icmp ult i32 %inc47.lcssa, 17
  br i1 %cmp49227, label %while.body.lr.ph, label %while.end

while.body.lr.ph:                                 ; preds = %while.cond.preheader, %if.end
  %i.3.lcssa254 = phi i32 [ %inc47.lcssa, %while.cond.preheader ], [ 1, %if.end ]
  %18 = zext i32 %i.3.lcssa254 to i64
  %19 = sub i32 16, %i.3.lcssa254
  %20 = zext i32 %19 to i64
  %21 = add nuw nsw i64 %20, 1
  %end.idx = add nuw nsw i64 %21, %18
  %n.vec = and i64 %21, 9223372036854775800
  %end.idx.rnd.down = add nuw i64 %n.vec, %18
  %cmp.zero = icmp eq i64 %n.vec, 0
  br i1 %cmp.zero, label %middle.block, label %vector.body.preheader

vector.body.preheader:                            ; preds = %while.body.lr.ph
  %22 = sub i32 16, %i.3.lcssa254
  %23 = zext i32 %22 to i64
  %24 = add i64 %23, 1
  %25 = lshr i64 %24, 3
  %26 = mul i64 %25, 8
  %27 = add i64 %26, -8
  %28 = lshr i64 %27, 3
  %29 = add i64 %28, 1
  %xtraiter374 = and i64 %29, 1
  %lcmp.mod375 = icmp ne i64 %xtraiter374, 0
  %lcmp.overflow376 = icmp eq i64 %29, 0
  %lcmp.or377 = or i1 %lcmp.overflow376, %lcmp.mod375
  br i1 %lcmp.or377, label %vector.body.unr, label %vector.body.preheader.split

vector.body.unr:                                  ; preds = %vector.body.preheader
  %30 = trunc i64 %18 to i32
  %broadcast.splatinsert256.unr = insertelement <4 x i32> undef, i32 %30, i32 0
  %broadcast.splat257.unr = shufflevector <4 x i32> %broadcast.splatinsert256.unr, <4 x i32> undef, <4 x i32> zeroinitializer
  %31 = sub <4 x i32> <i32 16, i32 15, i32 14, i32 13>, %broadcast.splat257.unr
  %32 = sub <4 x i32> <i32 12, i32 11, i32 10, i32 9>, %broadcast.splat257.unr
  %33 = shl <4 x i32> <i32 1, i32 1, i32 1, i32 1>, %31
  %34 = shl <4 x i32> <i32 1, i32 1, i32 1, i32 1>, %32
  %35 = trunc <4 x i32> %33 to <4 x i16>
  %36 = trunc <4 x i32> %34 to <4 x i16>
  %37 = getelementptr inbounds [17 x i16]* %weight, i64 0, i64 %18
  %38 = bitcast i16* %37 to <4 x i16>*
  store <4 x i16> %35, <4 x i16>* %38, align 2, !tbaa !5
  %.sum302.unr = add i64 %18, 4
  %39 = getelementptr [17 x i16]* %weight, i64 0, i64 %.sum302.unr
  %40 = bitcast i16* %39 to <4 x i16>*
  store <4 x i16> %36, <4 x i16>* %40, align 2, !tbaa !5
  %index.next.unr = add i64 %18, 8
  %41 = icmp eq i64 %index.next.unr, %end.idx.rnd.down
  br label %vector.body.preheader.split

vector.body.preheader.split:                      ; preds = %vector.body.unr, %vector.body.preheader
  %index.unr = phi i64 [ %18, %vector.body.preheader ], [ %index.next.unr, %vector.body.unr ]
  %42 = icmp ult i64 %29, 2
  br i1 %42, label %middle.block.loopexit, label %vector.body.preheader.split.split

vector.body.preheader.split.split:                ; preds = %vector.body.preheader.split
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.body.preheader.split.split
  %index = phi i64 [ %index.unr, %vector.body.preheader.split.split ], [ %index.next.1, %vector.body ]
  %43 = trunc i64 %index to i32
  %broadcast.splatinsert256 = insertelement <4 x i32> undef, i32 %43, i32 0
  %broadcast.splat257 = shufflevector <4 x i32> %broadcast.splatinsert256, <4 x i32> undef, <4 x i32> zeroinitializer
  %44 = sub <4 x i32> <i32 16, i32 15, i32 14, i32 13>, %broadcast.splat257
  %45 = sub <4 x i32> <i32 12, i32 11, i32 10, i32 9>, %broadcast.splat257
  %46 = shl <4 x i32> <i32 1, i32 1, i32 1, i32 1>, %44
  %47 = shl <4 x i32> <i32 1, i32 1, i32 1, i32 1>, %45
  %48 = trunc <4 x i32> %46 to <4 x i16>
  %49 = trunc <4 x i32> %47 to <4 x i16>
  %50 = getelementptr inbounds [17 x i16]* %weight, i64 0, i64 %index
  %51 = bitcast i16* %50 to <4 x i16>*
  store <4 x i16> %48, <4 x i16>* %51, align 2, !tbaa !5
  %.sum302 = add i64 %index, 4
  %52 = getelementptr [17 x i16]* %weight, i64 0, i64 %.sum302
  %53 = bitcast i16* %52 to <4 x i16>*
  store <4 x i16> %49, <4 x i16>* %53, align 2, !tbaa !5
  %index.next = add i64 %index, 8
  %54 = trunc i64 %index.next to i32
  %broadcast.splatinsert256.1 = insertelement <4 x i32> undef, i32 %54, i32 0
  %broadcast.splat257.1 = shufflevector <4 x i32> %broadcast.splatinsert256.1, <4 x i32> undef, <4 x i32> zeroinitializer
  %55 = sub <4 x i32> <i32 16, i32 15, i32 14, i32 13>, %broadcast.splat257.1
  %56 = sub <4 x i32> <i32 12, i32 11, i32 10, i32 9>, %broadcast.splat257.1
  %57 = shl <4 x i32> <i32 1, i32 1, i32 1, i32 1>, %55
  %58 = shl <4 x i32> <i32 1, i32 1, i32 1, i32 1>, %56
  %59 = trunc <4 x i32> %57 to <4 x i16>
  %60 = trunc <4 x i32> %58 to <4 x i16>
  %61 = getelementptr inbounds [17 x i16]* %weight, i64 0, i64 %index.next
  %62 = bitcast i16* %61 to <4 x i16>*
  store <4 x i16> %59, <4 x i16>* %62, align 2, !tbaa !5
  %.sum302.1 = add i64 %index.next, 4
  %63 = getelementptr [17 x i16]* %weight, i64 0, i64 %.sum302.1
  %64 = bitcast i16* %63 to <4 x i16>*
  store <4 x i16> %60, <4 x i16>* %64, align 2, !tbaa !5
  %index.next.1 = add i64 %index.next, 8
  %65 = icmp eq i64 %index.next.1, %end.idx.rnd.down
  br i1 %65, label %middle.block.loopexit.unr-lcssa, label %vector.body, !llvm.loop !54

middle.block.loopexit.unr-lcssa:                  ; preds = %vector.body
  br label %middle.block.loopexit

middle.block.loopexit:                            ; preds = %middle.block.loopexit.unr-lcssa, %vector.body.preheader.split
  br label %middle.block

middle.block:                                     ; preds = %middle.block.loopexit, %while.body.lr.ph
  %resume.val = phi i64 [ %18, %while.body.lr.ph ], [ %end.idx.rnd.down, %middle.block.loopexit ]
  %cmp.n = icmp eq i64 %end.idx, %resume.val
  br i1 %cmp.n, label %while.end, label %while.body.preheader

while.body.preheader:                             ; preds = %middle.block
  %66 = add i64 %resume.val, 1
  %67 = trunc i64 %66 to i32
  %68 = sub i32 18, %67
  %xtraiter348 = and i32 %68, 3
  %lcmp.mod349 = icmp ne i32 %xtraiter348, 0
  %lcmp.overflow350 = icmp eq i32 %68, 0
  %lcmp.or351 = or i1 %lcmp.overflow350, %lcmp.mod349
  br i1 %lcmp.or351, label %unr.cmp371, label %while.body.preheader.split

unr.cmp371:                                       ; preds = %while.body.preheader
  %un.tmp372 = icmp eq i32 %xtraiter348, 1
  br i1 %un.tmp372, label %while.body.unr362, label %unr.cmp360

unr.cmp360:                                       ; preds = %unr.cmp371
  %un.tmp361 = icmp eq i32 %xtraiter348, 2
  br i1 %un.tmp361, label %while.body.unr352, label %while.body.unr

while.body.unr:                                   ; preds = %unr.cmp360
  %69 = trunc i64 %resume.val to i32
  %sub51.unr = sub i32 16, %69
  %shl52.unr = shl i32 1, %sub51.unr
  %conv53.unr = trunc i32 %shl52.unr to i16
  %arrayidx55.unr = getelementptr inbounds [17 x i16]* %weight, i64 0, i64 %resume.val
  store i16 %conv53.unr, i16* %arrayidx55.unr, align 2, !tbaa !5
  %indvars.iv.next237.unr = add nuw nsw i64 %resume.val, 1
  %lftr.wideiv239.unr = trunc i64 %indvars.iv.next237.unr to i32
  %exitcond240.unr = icmp eq i32 %lftr.wideiv239.unr, 17
  br label %while.body.unr352

while.body.unr352:                                ; preds = %while.body.unr, %unr.cmp360
  %indvars.iv236.unr = phi i64 [ %indvars.iv.next237.unr, %while.body.unr ], [ %resume.val, %unr.cmp360 ]
  %70 = trunc i64 %indvars.iv236.unr to i32
  %sub51.unr353 = sub i32 16, %70
  %shl52.unr354 = shl i32 1, %sub51.unr353
  %conv53.unr355 = trunc i32 %shl52.unr354 to i16
  %arrayidx55.unr356 = getelementptr inbounds [17 x i16]* %weight, i64 0, i64 %indvars.iv236.unr
  store i16 %conv53.unr355, i16* %arrayidx55.unr356, align 2, !tbaa !5
  %indvars.iv.next237.unr357 = add nuw nsw i64 %indvars.iv236.unr, 1
  %lftr.wideiv239.unr358 = trunc i64 %indvars.iv.next237.unr357 to i32
  %exitcond240.unr359 = icmp eq i32 %lftr.wideiv239.unr358, 17
  br label %while.body.unr362

while.body.unr362:                                ; preds = %while.body.unr352, %unr.cmp371
  %indvars.iv236.unr363 = phi i64 [ %indvars.iv.next237.unr357, %while.body.unr352 ], [ %resume.val, %unr.cmp371 ]
  %71 = trunc i64 %indvars.iv236.unr363 to i32
  %sub51.unr364 = sub i32 16, %71
  %shl52.unr365 = shl i32 1, %sub51.unr364
  %conv53.unr366 = trunc i32 %shl52.unr365 to i16
  %arrayidx55.unr367 = getelementptr inbounds [17 x i16]* %weight, i64 0, i64 %indvars.iv236.unr363
  store i16 %conv53.unr366, i16* %arrayidx55.unr367, align 2, !tbaa !5
  %indvars.iv.next237.unr368 = add nuw nsw i64 %indvars.iv236.unr363, 1
  %lftr.wideiv239.unr369 = trunc i64 %indvars.iv.next237.unr368 to i32
  %exitcond240.unr370 = icmp eq i32 %lftr.wideiv239.unr369, 17
  br label %while.body.preheader.split

while.body.preheader.split:                       ; preds = %while.body.unr362, %while.body.preheader
  %indvars.iv236.unr373 = phi i64 [ %resume.val, %while.body.preheader ], [ %indvars.iv.next237.unr368, %while.body.unr362 ]
  %72 = icmp ult i32 %68, 4
  br i1 %72, label %while.end.loopexit, label %while.body.preheader.split.split

while.body.preheader.split.split:                 ; preds = %while.body.preheader.split
  br label %while.body

for.body36:                                       ; preds = %for.body36, %for.body36.preheader
  %i.3230 = phi i32 [ %inc47, %for.body36 ], [ 1, %for.body36.preheader ]
  %idxprom37 = zext i32 %i.3230 to i64
  %arrayidx38 = getelementptr inbounds [18 x i16]* %start, i64 0, i64 %idxprom37
  %73 = load i16* %arrayidx38, align 2, !tbaa !5
  %conv39 = zext i16 %73 to i32
  %shr = lshr i32 %conv39, %sub32
  %conv40 = trunc i32 %shr to i16
  store i16 %conv40, i16* %arrayidx38, align 2, !tbaa !5
  %sub41 = sub i32 %tablebits, %i.3230
  %shl42 = shl i32 1, %sub41
  %conv43 = trunc i32 %shl42 to i16
  %arrayidx45 = getelementptr inbounds [17 x i16]* %weight, i64 0, i64 %idxprom37
  store i16 %conv43, i16* %arrayidx45, align 2, !tbaa !5
  %inc47 = add i32 %i.3230, 1
  %cmp34 = icmp ugt i32 %inc47, %tablebits
  br i1 %cmp34, label %while.cond.preheader, label %for.body36

while.body:                                       ; preds = %while.body, %while.body.preheader.split.split
  %indvars.iv236 = phi i64 [ %indvars.iv236.unr373, %while.body.preheader.split.split ], [ %indvars.iv.next237.3, %while.body ]
  %74 = trunc i64 %indvars.iv236 to i32
  %sub51 = sub i32 16, %74
  %shl52 = shl i32 1, %sub51
  %conv53 = trunc i32 %shl52 to i16
  %arrayidx55 = getelementptr inbounds [17 x i16]* %weight, i64 0, i64 %indvars.iv236
  store i16 %conv53, i16* %arrayidx55, align 2, !tbaa !5
  %indvars.iv.next237 = add nuw nsw i64 %indvars.iv236, 1
  %lftr.wideiv239 = trunc i64 %indvars.iv.next237 to i32
  %75 = trunc i64 %indvars.iv.next237 to i32
  %sub51.1 = sub i32 16, %75
  %shl52.1 = shl i32 1, %sub51.1
  %conv53.1 = trunc i32 %shl52.1 to i16
  %arrayidx55.1 = getelementptr inbounds [17 x i16]* %weight, i64 0, i64 %indvars.iv.next237
  store i16 %conv53.1, i16* %arrayidx55.1, align 2, !tbaa !5
  %indvars.iv.next237.1 = add nuw nsw i64 %indvars.iv.next237, 1
  %lftr.wideiv239.1 = trunc i64 %indvars.iv.next237.1 to i32
  %76 = trunc i64 %indvars.iv.next237.1 to i32
  %sub51.2 = sub i32 16, %76
  %shl52.2 = shl i32 1, %sub51.2
  %conv53.2 = trunc i32 %shl52.2 to i16
  %arrayidx55.2 = getelementptr inbounds [17 x i16]* %weight, i64 0, i64 %indvars.iv.next237.1
  store i16 %conv53.2, i16* %arrayidx55.2, align 2, !tbaa !5
  %indvars.iv.next237.2 = add nuw nsw i64 %indvars.iv.next237.1, 1
  %lftr.wideiv239.2 = trunc i64 %indvars.iv.next237.2 to i32
  %77 = trunc i64 %indvars.iv.next237.2 to i32
  %sub51.3 = sub i32 16, %77
  %shl52.3 = shl i32 1, %sub51.3
  %conv53.3 = trunc i32 %shl52.3 to i16
  %arrayidx55.3 = getelementptr inbounds [17 x i16]* %weight, i64 0, i64 %indvars.iv.next237.2
  store i16 %conv53.3, i16* %arrayidx55.3, align 2, !tbaa !5
  %indvars.iv.next237.3 = add nuw nsw i64 %indvars.iv.next237.2, 1
  %lftr.wideiv239.3 = trunc i64 %indvars.iv.next237.3 to i32
  %exitcond240.3 = icmp eq i32 %lftr.wideiv239.3, 17
  br i1 %exitcond240.3, label %while.end.loopexit.unr-lcssa, label %while.body, !llvm.loop !55

while.end.loopexit.unr-lcssa:                     ; preds = %while.body
  br label %while.end.loopexit

while.end.loopexit:                               ; preds = %while.end.loopexit.unr-lcssa, %while.body.preheader.split
  br label %while.end

while.end:                                        ; preds = %while.end.loopexit, %middle.block, %while.cond.preheader
  %add57 = add nsw i32 %tablebits, 1
  %idxprom58 = sext i32 %add57 to i64
  %arrayidx59 = getelementptr inbounds [18 x i16]* %start, i64 0, i64 %idxprom58
  %78 = load i16* %arrayidx59, align 2, !tbaa !5
  %conv60 = zext i16 %78 to i32
  %shr61 = lshr i32 %conv60, %sub32
  %cmp62 = icmp eq i32 %shr61, 0
  br i1 %cmp62, label %if.end74, label %if.then64

if.then64:                                        ; preds = %while.end
  %shl65 = shl i32 1, %tablebits
  %cmp67225 = icmp eq i32 %shl65, %shr61
  br i1 %cmp67225, label %if.end74, label %while.body69.preheader

while.body69.preheader:                           ; preds = %if.then64
  %79 = add i32 %shl65, -1
  %80 = sub i32 %79, %shr61
  %backedge.overflow260 = icmp eq i32 %80, -1
  br i1 %backedge.overflow260, label %while.body69.preheader303, label %overflow.checked272

overflow.checked272:                              ; preds = %while.body69.preheader
  %81 = sub i32 %shl65, %shr61
  %n.vec269 = and i32 %81, -2
  %end.idx.rnd.down270 = add i32 %n.vec269, %shr61
  %cmp.zero271 = icmp eq i32 %n.vec269, 0
  br i1 %cmp.zero271, label %middle.block264, label %vector.body263.preheader

vector.body263.preheader:                         ; preds = %overflow.checked272
  %82 = sub i32 %shl65, %shr61
  %83 = lshr i32 %82, 1
  %84 = mul i32 %83, 2
  %85 = add i32 %84, -2
  %86 = lshr i32 %85, 1
  %87 = add i32 %86, 1
  %xtraiter344 = and i32 %87, 1
  %lcmp.mod345 = icmp ne i32 %xtraiter344, 0
  %lcmp.overflow346 = icmp eq i32 %87, 0
  %lcmp.or347 = or i1 %lcmp.overflow346, %lcmp.mod345
  br i1 %lcmp.or347, label %vector.body263.unr, label %vector.body263.preheader.split

vector.body263.unr:                               ; preds = %vector.body263.preheader
  %induction280.unr = add i32 %shr61, 1
  %88 = zext i32 %shr61 to i64
  %89 = zext i32 %induction280.unr to i64
  %90 = getelementptr inbounds i16* %table, i64 %88
  %91 = getelementptr inbounds i16* %table, i64 %89
  store i16 0, i16* %90, align 2, !tbaa !5
  store i16 0, i16* %91, align 2, !tbaa !5
  %index.next278.unr = add i32 %shr61, 2
  %92 = icmp eq i32 %index.next278.unr, %end.idx.rnd.down270
  br label %vector.body263.preheader.split

vector.body263.preheader.split:                   ; preds = %vector.body263.unr, %vector.body263.preheader
  %index266.unr = phi i32 [ %shr61, %vector.body263.preheader ], [ %index.next278.unr, %vector.body263.unr ]
  %93 = icmp ult i32 %87, 2
  br i1 %93, label %middle.block264.loopexit, label %vector.body263.preheader.split.split

vector.body263.preheader.split.split:             ; preds = %vector.body263.preheader.split
  br label %vector.body263

vector.body263:                                   ; preds = %vector.body263, %vector.body263.preheader.split.split
  %index266 = phi i32 [ %index266.unr, %vector.body263.preheader.split.split ], [ %index.next278.1, %vector.body263 ]
  %induction280 = add i32 %index266, 1
  %94 = zext i32 %index266 to i64
  %95 = zext i32 %induction280 to i64
  %96 = getelementptr inbounds i16* %table, i64 %94
  %97 = getelementptr inbounds i16* %table, i64 %95
  store i16 0, i16* %96, align 2, !tbaa !5
  store i16 0, i16* %97, align 2, !tbaa !5
  %index.next278 = add i32 %index266, 2
  %induction280.1 = add i32 %index.next278, 1
  %98 = zext i32 %index.next278 to i64
  %99 = zext i32 %induction280.1 to i64
  %100 = getelementptr inbounds i16* %table, i64 %98
  %101 = getelementptr inbounds i16* %table, i64 %99
  store i16 0, i16* %100, align 2, !tbaa !5
  store i16 0, i16* %101, align 2, !tbaa !5
  %index.next278.1 = add i32 %index.next278, 2
  %102 = icmp eq i32 %index.next278.1, %end.idx.rnd.down270
  br i1 %102, label %middle.block264.loopexit.unr-lcssa, label %vector.body263, !llvm.loop !56

middle.block264.loopexit.unr-lcssa:               ; preds = %vector.body263
  br label %middle.block264.loopexit

middle.block264.loopexit:                         ; preds = %middle.block264.loopexit.unr-lcssa, %vector.body263.preheader.split
  br label %middle.block264

middle.block264:                                  ; preds = %middle.block264.loopexit, %overflow.checked272
  %resume.val273 = phi i32 [ %shr61, %overflow.checked272 ], [ %end.idx.rnd.down270, %middle.block264.loopexit ]
  %cmp.n277 = icmp eq i32 %shl65, %resume.val273
  br i1 %cmp.n277, label %if.end74, label %while.body69.preheader303

while.body69.preheader303:                        ; preds = %middle.block264, %while.body69.preheader
  %i.5226.ph = phi i32 [ %shr61, %while.body69.preheader ], [ %resume.val273, %middle.block264 ]
  %103 = sub i32 %shl65, %i.5226.ph
  %xtraiter324 = and i32 %103, 3
  %lcmp.mod325 = icmp ne i32 %xtraiter324, 0
  %lcmp.overflow326 = icmp eq i32 %103, 0
  %lcmp.or327 = or i1 %lcmp.overflow326, %lcmp.mod325
  br i1 %lcmp.or327, label %unr.cmp341, label %while.body69.preheader303.split

unr.cmp341:                                       ; preds = %while.body69.preheader303
  %un.tmp342 = icmp eq i32 %xtraiter324, 1
  br i1 %un.tmp342, label %while.body69.unr335, label %unr.cmp333

unr.cmp333:                                       ; preds = %unr.cmp341
  %un.tmp334 = icmp eq i32 %xtraiter324, 2
  br i1 %un.tmp334, label %while.body69.unr328, label %while.body69.unr

while.body69.unr:                                 ; preds = %unr.cmp333
  %inc70.unr = add i32 %i.5226.ph, 1
  %idxprom71.unr = zext i32 %i.5226.ph to i64
  %arrayidx72.unr = getelementptr inbounds i16* %table, i64 %idxprom71.unr
  store i16 0, i16* %arrayidx72.unr, align 2, !tbaa !5
  %cmp67.unr = icmp eq i32 %inc70.unr, %shl65
  br label %while.body69.unr328

while.body69.unr328:                              ; preds = %while.body69.unr, %unr.cmp333
  %i.5226.unr = phi i32 [ %inc70.unr, %while.body69.unr ], [ %i.5226.ph, %unr.cmp333 ]
  %inc70.unr329 = add i32 %i.5226.unr, 1
  %idxprom71.unr330 = zext i32 %i.5226.unr to i64
  %arrayidx72.unr331 = getelementptr inbounds i16* %table, i64 %idxprom71.unr330
  store i16 0, i16* %arrayidx72.unr331, align 2, !tbaa !5
  %cmp67.unr332 = icmp eq i32 %inc70.unr329, %shl65
  br label %while.body69.unr335

while.body69.unr335:                              ; preds = %while.body69.unr328, %unr.cmp341
  %i.5226.unr336 = phi i32 [ %inc70.unr329, %while.body69.unr328 ], [ %i.5226.ph, %unr.cmp341 ]
  %inc70.unr337 = add i32 %i.5226.unr336, 1
  %idxprom71.unr338 = zext i32 %i.5226.unr336 to i64
  %arrayidx72.unr339 = getelementptr inbounds i16* %table, i64 %idxprom71.unr338
  store i16 0, i16* %arrayidx72.unr339, align 2, !tbaa !5
  %cmp67.unr340 = icmp eq i32 %inc70.unr337, %shl65
  br label %while.body69.preheader303.split

while.body69.preheader303.split:                  ; preds = %while.body69.unr335, %while.body69.preheader303
  %i.5226.unr343 = phi i32 [ %i.5226.ph, %while.body69.preheader303 ], [ %inc70.unr337, %while.body69.unr335 ]
  %104 = icmp ult i32 %103, 4
  br i1 %104, label %if.end74.loopexit, label %while.body69.preheader303.split.split

while.body69.preheader303.split.split:            ; preds = %while.body69.preheader303.split
  br label %while.body69

while.body69:                                     ; preds = %while.body69, %while.body69.preheader303.split.split
  %i.5226 = phi i32 [ %i.5226.unr343, %while.body69.preheader303.split.split ], [ %inc70.3, %while.body69 ]
  %inc70 = add i32 %i.5226, 1
  %idxprom71 = zext i32 %i.5226 to i64
  %arrayidx72 = getelementptr inbounds i16* %table, i64 %idxprom71
  store i16 0, i16* %arrayidx72, align 2, !tbaa !5
  %inc70.1 = add i32 %inc70, 1
  %idxprom71.1 = zext i32 %inc70 to i64
  %arrayidx72.1 = getelementptr inbounds i16* %table, i64 %idxprom71.1
  store i16 0, i16* %arrayidx72.1, align 2, !tbaa !5
  %inc70.2 = add i32 %inc70.1, 1
  %idxprom71.2 = zext i32 %inc70.1 to i64
  %arrayidx72.2 = getelementptr inbounds i16* %table, i64 %idxprom71.2
  store i16 0, i16* %arrayidx72.2, align 2, !tbaa !5
  %inc70.3 = add i32 %inc70.2, 1
  %idxprom71.3 = zext i32 %inc70.2 to i64
  %arrayidx72.3 = getelementptr inbounds i16* %table, i64 %idxprom71.3
  store i16 0, i16* %arrayidx72.3, align 2, !tbaa !5
  %cmp67.3 = icmp eq i32 %inc70.3, %shl65
  br i1 %cmp67.3, label %if.end74.loopexit.unr-lcssa, label %while.body69, !llvm.loop !57

if.end74.loopexit.unr-lcssa:                      ; preds = %while.body69
  br label %if.end74.loopexit

if.end74.loopexit:                                ; preds = %if.end74.loopexit.unr-lcssa, %while.body69.preheader303.split
  br label %if.end74

if.end74:                                         ; preds = %if.end74.loopexit, %middle.block264, %if.then64, %while.end
  %sub75 = sub nsw i32 15, %tablebits
  %shl76 = shl i32 1, %sub75
  br i1 %cmp2233, label %for.end150, label %for.body80.preheader

for.body80.preheader:                             ; preds = %if.end74
  br label %for.body80

for.body80:                                       ; preds = %for.inc148, %for.body80.preheader
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc148 ], [ 0, %for.body80.preheader ]
  %avail.0224 = phi i32 [ %avail.4, %for.inc148 ], [ %nchar, %for.body80.preheader ]
  %arrayidx82 = getelementptr inbounds i8* %bitlen, i64 %indvars.iv
  %105 = load i8* %arrayidx82, align 1, !tbaa !9
  %conv83 = zext i8 %105 to i32
  %cmp84 = icmp eq i8 %105, 0
  br i1 %cmp84, label %for.inc148, label %if.end87

if.end87:                                         ; preds = %for.body80
  %idxprom88 = zext i8 %105 to i64
  %arrayidx89 = getelementptr inbounds [18 x i16]* %start, i64 0, i64 %idxprom88
  %106 = load i16* %arrayidx89, align 2, !tbaa !5
  %conv90 = zext i16 %106 to i32
  %arrayidx92 = getelementptr inbounds [17 x i16]* %weight, i64 0, i64 %idxprom88
  %107 = load i16* %arrayidx92, align 2, !tbaa !5
  %conv93 = zext i16 %107 to i32
  %add94 = add nuw nsw i32 %conv93, %conv90
  %cmp95 = icmp ugt i32 %conv83, %tablebits
  br i1 %cmp95, label %if.else, label %for.cond101.preheader

for.cond101.preheader:                            ; preds = %if.end87
  %cmp102212 = icmp eq i16 %107, 0
  br i1 %cmp102212, label %if.end144, label %for.body104.lr.ph

for.body104.lr.ph:                                ; preds = %for.cond101.preheader
  %conv105 = trunc i64 %indvars.iv to i16
  %108 = zext i16 %107 to i32
  %109 = zext i16 %106 to i32
  %110 = add nuw nsw i32 %108, %109
  %111 = add nuw nsw i32 %109, 1
  %112 = icmp ugt i32 %110, %111
  %umax = select i1 %112, i32 %110, i32 %111
  %113 = add nsw i32 %umax, -1
  %114 = sub i32 %113, %109
  %backedge.overflow281 = icmp eq i32 %114, -1
  br i1 %backedge.overflow281, label %for.body104.preheader, label %overflow.checked293

overflow.checked293:                              ; preds = %for.body104.lr.ph
  %115 = sub i32 %umax, %109
  %end.idx288 = add nsw i32 %115, %conv90
  %n.vec290 = and i32 %115, -2
  %end.idx.rnd.down291 = add nsw i32 %n.vec290, %conv90
  %cmp.zero292 = icmp eq i32 %n.vec290, 0
  br i1 %cmp.zero292, label %middle.block285, label %vector.body284.preheader

vector.body284.preheader:                         ; preds = %overflow.checked293
  %116 = zext i16 %107 to i32
  %117 = zext i16 %106 to i32
  %118 = add i32 %116, %117
  %119 = add i32 %117, 1
  %120 = icmp ugt i32 %118, %119
  %umax304 = select i1 %120, i32 %118, i32 %119
  %121 = sub i32 %umax304, %117
  %122 = lshr i32 %121, 1
  %123 = mul i32 %122, 2
  %124 = add i32 %123, -2
  %125 = lshr i32 %124, 1
  %126 = add i32 %125, 1
  %xtraiter = and i32 %126, 1
  %lcmp.mod = icmp ne i32 %xtraiter, 0
  %lcmp.overflow = icmp eq i32 %126, 0
  %lcmp.or = or i1 %lcmp.overflow, %lcmp.mod
  br i1 %lcmp.or, label %vector.body284.unr, label %vector.body284.preheader.split

vector.body284.unr:                               ; preds = %vector.body284.preheader
  %induction301.unr = add i32 %conv90, 1
  %127 = zext i32 %conv90 to i64
  %128 = zext i32 %induction301.unr to i64
  %129 = getelementptr inbounds i16* %table, i64 %127
  %130 = getelementptr inbounds i16* %table, i64 %128
  store i16 %conv105, i16* %129, align 2, !tbaa !5
  store i16 %conv105, i16* %130, align 2, !tbaa !5
  %index.next299.unr = add i32 %conv90, 2
  %131 = icmp eq i32 %index.next299.unr, %end.idx.rnd.down291
  br label %vector.body284.preheader.split

vector.body284.preheader.split:                   ; preds = %vector.body284.unr, %vector.body284.preheader
  %index287.unr = phi i32 [ %conv90, %vector.body284.preheader ], [ %index.next299.unr, %vector.body284.unr ]
  %132 = icmp ult i32 %126, 2
  br i1 %132, label %middle.block285.loopexit, label %vector.body284.preheader.split.split

vector.body284.preheader.split.split:             ; preds = %vector.body284.preheader.split
  br label %vector.body284

vector.body284:                                   ; preds = %vector.body284, %vector.body284.preheader.split.split
  %index287 = phi i32 [ %index287.unr, %vector.body284.preheader.split.split ], [ %index.next299.1, %vector.body284 ]
  %induction301 = add i32 %index287, 1
  %133 = zext i32 %index287 to i64
  %134 = zext i32 %induction301 to i64
  %135 = getelementptr inbounds i16* %table, i64 %133
  %136 = getelementptr inbounds i16* %table, i64 %134
  store i16 %conv105, i16* %135, align 2, !tbaa !5
  store i16 %conv105, i16* %136, align 2, !tbaa !5
  %index.next299 = add i32 %index287, 2
  %induction301.1 = add i32 %index.next299, 1
  %137 = zext i32 %index.next299 to i64
  %138 = zext i32 %induction301.1 to i64
  %139 = getelementptr inbounds i16* %table, i64 %137
  %140 = getelementptr inbounds i16* %table, i64 %138
  store i16 %conv105, i16* %139, align 2, !tbaa !5
  store i16 %conv105, i16* %140, align 2, !tbaa !5
  %index.next299.1 = add i32 %index.next299, 2
  %141 = icmp eq i32 %index.next299.1, %end.idx.rnd.down291
  br i1 %141, label %middle.block285.loopexit.unr-lcssa, label %vector.body284, !llvm.loop !58

middle.block285.loopexit.unr-lcssa:               ; preds = %vector.body284
  br label %middle.block285.loopexit

middle.block285.loopexit:                         ; preds = %middle.block285.loopexit.unr-lcssa, %vector.body284.preheader.split
  br label %middle.block285

middle.block285:                                  ; preds = %middle.block285.loopexit, %overflow.checked293
  %resume.val294 = phi i32 [ %conv90, %overflow.checked293 ], [ %end.idx.rnd.down291, %middle.block285.loopexit ]
  %cmp.n298 = icmp eq i32 %end.idx288, %resume.val294
  br i1 %cmp.n298, label %if.end144, label %for.body104.preheader

for.body104.preheader:                            ; preds = %middle.block285, %for.body104.lr.ph
  %i.6213.ph = phi i32 [ %conv90, %for.body104.lr.ph ], [ %resume.val294, %middle.block285 ]
  %142 = zext i16 %107 to i32
  %143 = zext i16 %106 to i32
  %144 = add i32 %142, %143
  %145 = add i32 %i.6213.ph, 1
  %146 = icmp ugt i32 %144, %145
  %umax305 = select i1 %146, i32 %144, i32 %145
  %147 = sub i32 %umax305, %i.6213.ph
  %xtraiter306 = and i32 %147, 3
  %lcmp.mod307 = icmp ne i32 %xtraiter306, 0
  %lcmp.overflow308 = icmp eq i32 %147, 0
  %lcmp.or309 = or i1 %lcmp.overflow308, %lcmp.mod307
  br i1 %lcmp.or309, label %unr.cmp321, label %for.body104.preheader.split

unr.cmp321:                                       ; preds = %for.body104.preheader
  %un.tmp322 = icmp eq i32 %xtraiter306, 1
  br i1 %un.tmp322, label %for.body104.unr315, label %unr.cmp

unr.cmp:                                          ; preds = %unr.cmp321
  %un.tmp = icmp eq i32 %xtraiter306, 2
  br i1 %un.tmp, label %for.body104.unr310, label %for.body104.unr

for.body104.unr:                                  ; preds = %unr.cmp
  %idxprom106.unr = zext i32 %i.6213.ph to i64
  %arrayidx107.unr = getelementptr inbounds i16* %table, i64 %idxprom106.unr
  store i16 %conv105, i16* %arrayidx107.unr, align 2, !tbaa !5
  %inc109.unr = add i32 %i.6213.ph, 1
  %cmp102.unr = icmp ult i32 %inc109.unr, %add94
  br label %for.body104.unr310

for.body104.unr310:                               ; preds = %for.body104.unr, %unr.cmp
  %i.6213.unr = phi i32 [ %inc109.unr, %for.body104.unr ], [ %i.6213.ph, %unr.cmp ]
  %idxprom106.unr311 = zext i32 %i.6213.unr to i64
  %arrayidx107.unr312 = getelementptr inbounds i16* %table, i64 %idxprom106.unr311
  store i16 %conv105, i16* %arrayidx107.unr312, align 2, !tbaa !5
  %inc109.unr313 = add i32 %i.6213.unr, 1
  %cmp102.unr314 = icmp ult i32 %inc109.unr313, %add94
  br label %for.body104.unr315

for.body104.unr315:                               ; preds = %for.body104.unr310, %unr.cmp321
  %i.6213.unr316 = phi i32 [ %inc109.unr313, %for.body104.unr310 ], [ %i.6213.ph, %unr.cmp321 ]
  %idxprom106.unr317 = zext i32 %i.6213.unr316 to i64
  %arrayidx107.unr318 = getelementptr inbounds i16* %table, i64 %idxprom106.unr317
  store i16 %conv105, i16* %arrayidx107.unr318, align 2, !tbaa !5
  %inc109.unr319 = add i32 %i.6213.unr316, 1
  %cmp102.unr320 = icmp ult i32 %inc109.unr319, %add94
  br label %for.body104.preheader.split

for.body104.preheader.split:                      ; preds = %for.body104.unr315, %for.body104.preheader
  %i.6213.unr323 = phi i32 [ %i.6213.ph, %for.body104.preheader ], [ %inc109.unr319, %for.body104.unr315 ]
  %148 = icmp ult i32 %147, 4
  br i1 %148, label %if.end144.loopexit, label %for.body104.preheader.split.split

for.body104.preheader.split.split:                ; preds = %for.body104.preheader.split
  br label %for.body104

for.body104:                                      ; preds = %for.body104, %for.body104.preheader.split.split
  %i.6213 = phi i32 [ %i.6213.unr323, %for.body104.preheader.split.split ], [ %inc109.3, %for.body104 ]
  %idxprom106 = zext i32 %i.6213 to i64
  %arrayidx107 = getelementptr inbounds i16* %table, i64 %idxprom106
  store i16 %conv105, i16* %arrayidx107, align 2, !tbaa !5
  %inc109 = add i32 %i.6213, 1
  %idxprom106.1 = zext i32 %inc109 to i64
  %arrayidx107.1 = getelementptr inbounds i16* %table, i64 %idxprom106.1
  store i16 %conv105, i16* %arrayidx107.1, align 2, !tbaa !5
  %inc109.1 = add i32 %inc109, 1
  %idxprom106.2 = zext i32 %inc109.1 to i64
  %arrayidx107.2 = getelementptr inbounds i16* %table, i64 %idxprom106.2
  store i16 %conv105, i16* %arrayidx107.2, align 2, !tbaa !5
  %inc109.2 = add i32 %inc109.1, 1
  %idxprom106.3 = zext i32 %inc109.2 to i64
  %arrayidx107.3 = getelementptr inbounds i16* %table, i64 %idxprom106.3
  store i16 %conv105, i16* %arrayidx107.3, align 2, !tbaa !5
  %inc109.3 = add i32 %inc109.2, 1
  %cmp102.3 = icmp ult i32 %inc109.3, %add94
  br i1 %cmp102.3, label %for.body104, label %if.end144.loopexit.unr-lcssa, !llvm.loop !59

if.else:                                          ; preds = %if.end87
  %shr114 = lshr i32 %conv90, %sub32
  %idxprom115 = zext i32 %shr114 to i64
  %arrayidx116 = getelementptr inbounds i16* %table, i64 %idxprom115
  %cmp119214 = icmp eq i32 %conv83, %tablebits
  br i1 %cmp119214, label %while.end142, label %while.body121.lr.ph

while.body121.lr.ph:                              ; preds = %if.else
  %sub117 = sub i32 %conv83, %tablebits
  br label %while.body121

while.body121:                                    ; preds = %if.end132, %while.body121.lr.ph
  %p.0218 = phi i16* [ %arrayidx116, %while.body121.lr.ph ], [ %p.1, %if.end132 ]
  %i.7217 = phi i32 [ %sub117, %while.body121.lr.ph ], [ %dec, %if.end132 ]
  %avail.1216 = phi i32 [ %avail.0224, %while.body121.lr.ph ], [ %avail.2, %if.end132 ]
  %k.0215 = phi i32 [ %conv90, %while.body121.lr.ph ], [ %shl141, %if.end132 ]
  %149 = load i16* %p.0218, align 2, !tbaa !5
  %cmp123 = icmp eq i16 %149, 0
  br i1 %cmp123, label %if.then125, label %if.end132

if.then125:                                       ; preds = %while.body121
  %idxprom126 = zext i32 %avail.1216 to i64
  %arrayidx127 = getelementptr inbounds [0 x i16]* bitcast ([65536 x i16]* @prev to [0 x i16]*), i64 0, i64 %idxprom126
  store i16 0, i16* %arrayidx127, align 2, !tbaa !5
  %.sum211 = add nuw nsw i64 %idxprom126, 32768
  %arrayidx129 = getelementptr inbounds [0 x i16]* bitcast ([65536 x i16]* @prev to [0 x i16]*), i64 0, i64 %.sum211
  store i16 0, i16* %arrayidx129, align 2, !tbaa !5
  %inc130 = add i32 %avail.1216, 1
  %conv131 = trunc i32 %avail.1216 to i16
  store i16 %conv131, i16* %p.0218, align 2, !tbaa !5
  br label %if.end132

if.end132:                                        ; preds = %if.then125, %while.body121
  %150 = phi i16 [ %conv131, %if.then125 ], [ %149, %while.body121 ]
  %avail.2 = phi i32 [ %inc130, %if.then125 ], [ %avail.1216, %while.body121 ]
  %and133 = and i32 %k.0215, %shl76
  %tobool = icmp eq i32 %and133, 0
  %idxprom135 = zext i16 %150 to i64
  %.sum = add nuw nsw i64 %idxprom135, 32768
  %.sum.pn = select i1 %tobool, i64 %idxprom135, i64 %.sum
  %p.1 = getelementptr inbounds [0 x i16]* bitcast ([65536 x i16]* @prev to [0 x i16]*), i64 0, i64 %.sum.pn
  %shl141 = shl i32 %k.0215, 1
  %dec = add i32 %i.7217, -1
  %cmp119 = icmp eq i32 %dec, 0
  br i1 %cmp119, label %while.end142.loopexit, label %while.body121

while.end142.loopexit:                            ; preds = %if.end132
  %p.1.lcssa = phi i16* [ %p.1, %if.end132 ]
  %avail.2.lcssa = phi i32 [ %avail.2, %if.end132 ]
  br label %while.end142

while.end142:                                     ; preds = %while.end142.loopexit, %if.else
  %p.0.lcssa = phi i16* [ %arrayidx116, %if.else ], [ %p.1.lcssa, %while.end142.loopexit ]
  %avail.1.lcssa = phi i32 [ %avail.0224, %if.else ], [ %avail.2.lcssa, %while.end142.loopexit ]
  %conv143 = trunc i64 %indvars.iv to i16
  store i16 %conv143, i16* %p.0.lcssa, align 2, !tbaa !5
  br label %if.end144

if.end144.loopexit.unr-lcssa:                     ; preds = %for.body104
  br label %if.end144.loopexit

if.end144.loopexit:                               ; preds = %if.end144.loopexit.unr-lcssa, %for.body104.preheader.split
  br label %if.end144

if.end144:                                        ; preds = %if.end144.loopexit, %while.end142, %middle.block285, %for.cond101.preheader
  %avail.3 = phi i32 [ %avail.1.lcssa, %while.end142 ], [ %avail.0224, %for.cond101.preheader ], [ %avail.0224, %middle.block285 ], [ %avail.0224, %if.end144.loopexit ]
  %conv145 = trunc i32 %add94 to i16
  store i16 %conv145, i16* %arrayidx89, align 2, !tbaa !5
  br label %for.inc148

for.inc148:                                       ; preds = %if.end144, %for.body80
  %avail.4 = phi i32 [ %avail.0224, %for.body80 ], [ %avail.3, %if.end144 ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %nchar
  br i1 %exitcond, label %for.end150.loopexit, label %for.body80

for.end150.loopexit:                              ; preds = %for.inc148
  br label %for.end150

for.end150:                                       ; preds = %for.end150.loopexit, %if.end74
  call void @llvm.lifetime.end(i64 36, i8* %2) #2
  call void @llvm.lifetime.end(i64 34, i8* %1) #2
  call void @llvm.lifetime.end(i64 34, i8* %0) #2
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @unlzw(i32 %in, i32 %out) #0 {
entry:
  %0 = load i32* @inptr, align 4, !tbaa !1
  %1 = load i32* @insize, align 4, !tbaa !1
  %cmp = icmp ult i32 %0, %1
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %inc = add i32 %0, 1
  store i32 %inc, i32* @inptr, align 4, !tbaa !1
  %idxprom = zext i32 %0 to i64
  %arrayidx = getelementptr inbounds [0 x i8]* bitcast ([32832 x i8]* @inbuf to [0 x i8]*), i64 0, i64 %idxprom
  %2 = load i8* %arrayidx, align 1, !tbaa !9
  %conv = zext i8 %2 to i32
  br label %cond.end

cond.false:                                       ; preds = %entry
  %call = tail call i32 @fill_inbuf(i32 0) #2
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %call, %cond.false ]
  store i32 %cond, i32* @maxbits, align 4, !tbaa !1
  %and = and i32 %cond, 128
  store i32 %and, i32* @block_mode, align 4, !tbaa !1
  %and1 = and i32 %cond, 96
  %cmp2 = icmp eq i32 %and1, 0
  br i1 %cmp2, label %if.end11, label %if.then

if.then:                                          ; preds = %cond.end
  %3 = load i32* @quiet, align 4, !tbaa !1
  %tobool = icmp eq i32 %3, 0
  br i1 %tobool, label %if.then4, label %if.end

if.then4:                                         ; preds = %if.then
  %4 = load %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %5 = load i8** @progname, align 8, !tbaa !7
  %call6 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([38 x i8]* @.str72, i64 0, i64 0), i8* %5, i8* getelementptr inbounds ([1024 x i8]* @ifname, i64 0, i64 0), i32 %and1) #11
  br label %if.end

if.end:                                           ; preds = %if.then4, %if.then
  %6 = load i32* @exit_code, align 4, !tbaa !1
  %cmp7 = icmp eq i32 %6, 0
  br i1 %cmp7, label %if.then9, label %if.end11

if.then9:                                         ; preds = %if.end
  store i32 2, i32* @exit_code, align 4, !tbaa !1
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %if.end, %cond.end
  %7 = load i32* @maxbits, align 4, !tbaa !1
  %and12 = and i32 %7, 31
  store i32 %and12, i32* @maxbits, align 4, !tbaa !1
  %sh_prom = zext i32 %and12 to i64
  %shl = shl i64 1, %sh_prom
  %cmp13 = icmp ugt i32 %and12, 16
  br i1 %cmp13, label %if.then15, label %if.end17

if.then15:                                        ; preds = %if.end11
  %8 = load %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %9 = load i8** @progname, align 8, !tbaa !7
  %call16 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %8, i8* getelementptr inbounds ([59 x i8]* @.str173, i64 0, i64 0), i8* %9, i8* getelementptr inbounds ([1024 x i8]* @ifname, i64 0, i64 0), i32 %and12, i32 16) #11
  store i32 1, i32* @exit_code, align 4, !tbaa !1
  br label %return

if.end17:                                         ; preds = %if.end11
  %10 = load i32* @insize, align 4, !tbaa !1
  %11 = load i32* @inptr, align 4, !tbaa !1
  %shl19 = shl i32 %11, 3
  %12 = load i32* @block_mode, align 4, !tbaa !1
  %tobool21 = icmp ne i32 %12, 0
  tail call void @llvm.memset.p0i8.i64(i8* bitcast ([65536 x i16]* @prev to i8*), i8 0, i64 256, i32 2, i1 false)
  br label %vector.body

vector.body:                                      ; preds = %if.end17
  store <16 x i8> <i8 -16, i8 -15, i8 -14, i8 -13, i8 -12, i8 -11, i8 -10, i8 -9, i8 -8, i8 -7, i8 -6, i8 -5, i8 -4, i8 -3, i8 -2, i8 -1>, <16 x i8>* bitcast (i8* getelementptr inbounds ([65536 x i8]* @window, i64 0, i64 240) to <16 x i8>*), align 1, !tbaa !9
  store <16 x i8> <i8 -32, i8 -31, i8 -30, i8 -29, i8 -28, i8 -27, i8 -26, i8 -25, i8 -24, i8 -23, i8 -22, i8 -21, i8 -20, i8 -19, i8 -18, i8 -17>, <16 x i8>* bitcast (i8* getelementptr inbounds ([65536 x i8]* @window, i64 0, i64 224) to <16 x i8>*), align 1, !tbaa !9
  store <16 x i8> <i8 -48, i8 -47, i8 -46, i8 -45, i8 -44, i8 -43, i8 -42, i8 -41, i8 -40, i8 -39, i8 -38, i8 -37, i8 -36, i8 -35, i8 -34, i8 -33>, <16 x i8>* bitcast (i8* getelementptr inbounds ([65536 x i8]* @window, i64 0, i64 208) to <16 x i8>*), align 1, !tbaa !9
  store <16 x i8> <i8 -64, i8 -63, i8 -62, i8 -61, i8 -60, i8 -59, i8 -58, i8 -57, i8 -56, i8 -55, i8 -54, i8 -53, i8 -52, i8 -51, i8 -50, i8 -49>, <16 x i8>* bitcast (i8* getelementptr inbounds ([65536 x i8]* @window, i64 0, i64 192) to <16 x i8>*), align 1, !tbaa !9
  store <16 x i8> <i8 -80, i8 -79, i8 -78, i8 -77, i8 -76, i8 -75, i8 -74, i8 -73, i8 -72, i8 -71, i8 -70, i8 -69, i8 -68, i8 -67, i8 -66, i8 -65>, <16 x i8>* bitcast (i8* getelementptr inbounds ([65536 x i8]* @window, i64 0, i64 176) to <16 x i8>*), align 1, !tbaa !9
  store <16 x i8> <i8 -96, i8 -95, i8 -94, i8 -93, i8 -92, i8 -91, i8 -90, i8 -89, i8 -88, i8 -87, i8 -86, i8 -85, i8 -84, i8 -83, i8 -82, i8 -81>, <16 x i8>* bitcast (i8* getelementptr inbounds ([65536 x i8]* @window, i64 0, i64 160) to <16 x i8>*), align 1, !tbaa !9
  store <16 x i8> <i8 -112, i8 -111, i8 -110, i8 -109, i8 -108, i8 -107, i8 -106, i8 -105, i8 -104, i8 -103, i8 -102, i8 -101, i8 -100, i8 -99, i8 -98, i8 -97>, <16 x i8>* bitcast (i8* getelementptr inbounds ([65536 x i8]* @window, i64 0, i64 144) to <16 x i8>*), align 1, !tbaa !9
  store <16 x i8> <i8 -128, i8 -127, i8 -126, i8 -125, i8 -124, i8 -123, i8 -122, i8 -121, i8 -120, i8 -119, i8 -118, i8 -117, i8 -116, i8 -115, i8 -114, i8 -113>, <16 x i8>* bitcast (i8* getelementptr inbounds ([65536 x i8]* @window, i64 0, i64 128) to <16 x i8>*), align 1, !tbaa !9
  store <16 x i8> <i8 112, i8 113, i8 114, i8 115, i8 116, i8 117, i8 118, i8 119, i8 120, i8 121, i8 122, i8 123, i8 124, i8 125, i8 126, i8 127>, <16 x i8>* bitcast (i8* getelementptr inbounds ([65536 x i8]* @window, i64 0, i64 112) to <16 x i8>*), align 1, !tbaa !9
  store <16 x i8> <i8 96, i8 97, i8 98, i8 99, i8 100, i8 101, i8 102, i8 103, i8 104, i8 105, i8 106, i8 107, i8 108, i8 109, i8 110, i8 111>, <16 x i8>* bitcast (i8* getelementptr inbounds ([65536 x i8]* @window, i64 0, i64 96) to <16 x i8>*), align 1, !tbaa !9
  store <16 x i8> <i8 80, i8 81, i8 82, i8 83, i8 84, i8 85, i8 86, i8 87, i8 88, i8 89, i8 90, i8 91, i8 92, i8 93, i8 94, i8 95>, <16 x i8>* bitcast (i8* getelementptr inbounds ([65536 x i8]* @window, i64 0, i64 80) to <16 x i8>*), align 1, !tbaa !9
  store <16 x i8> <i8 64, i8 65, i8 66, i8 67, i8 68, i8 69, i8 70, i8 71, i8 72, i8 73, i8 74, i8 75, i8 76, i8 77, i8 78, i8 79>, <16 x i8>* bitcast (i8* getelementptr inbounds ([65536 x i8]* @window, i64 0, i64 64) to <16 x i8>*), align 1, !tbaa !9
  store <16 x i8> <i8 48, i8 49, i8 50, i8 51, i8 52, i8 53, i8 54, i8 55, i8 56, i8 57, i8 58, i8 59, i8 60, i8 61, i8 62, i8 63>, <16 x i8>* bitcast (i8* getelementptr inbounds ([65536 x i8]* @window, i64 0, i64 48) to <16 x i8>*), align 1, !tbaa !9
  store <16 x i8> <i8 32, i8 33, i8 34, i8 35, i8 36, i8 37, i8 38, i8 39, i8 40, i8 41, i8 42, i8 43, i8 44, i8 45, i8 46, i8 47>, <16 x i8>* bitcast (i8* getelementptr inbounds ([65536 x i8]* @window, i64 0, i64 32) to <16 x i8>*), align 1, !tbaa !9
  store <16 x i8> <i8 16, i8 17, i8 18, i8 19, i8 20, i8 21, i8 22, i8 23, i8 24, i8 25, i8 26, i8 27, i8 28, i8 29, i8 30, i8 31>, <16 x i8>* bitcast (i8* getelementptr inbounds ([65536 x i8]* @window, i64 0, i64 16) to <16 x i8>*), align 1, !tbaa !9
  store <16 x i8> <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15>, <16 x i8>* bitcast ([65536 x i8]* @window to <16 x i8>*), align 1, !tbaa !9
  %conv20 = zext i32 %shl19 to i64
  %conv23 = select i1 %tobool21, i64 257, i64 256
  br label %resetbuf.outer

resetbuf:                                         ; preds = %do.cond230, %resetbuf.outer
  %oldcode.0 = phi i64 [ %oldcode.1.lcssa, %do.cond230 ], [ %oldcode.0.ph, %resetbuf.outer ]
  %posbits.0 = phi i64 [ %posbits.1.lcssa, %do.cond230 ], [ %posbits.0.ph, %resetbuf.outer ]
  %outpos.0 = phi i32 [ %outpos.1.lcssa, %do.cond230 ], [ %outpos.0.ph, %resetbuf.outer ]
  %free_ent.0 = phi i64 [ %free_ent.1.ph.lcssa347, %do.cond230 ], [ %free_ent.0.ph, %resetbuf.outer ]
  %finchar.0 = phi i32 [ %finchar.1.lcssa, %do.cond230 ], [ %finchar.0.ph, %resetbuf.outer ]
  %rsize.0 = phi i32 [ %rsize.1, %do.cond230 ], [ %rsize.0.ph, %resetbuf.outer ]
  %13 = load i32* @insize, align 4, !tbaa !1
  %shr326 = lshr i64 %posbits.0, 3
  %conv28 = trunc i64 %shr326 to i32
  %sub29 = sub i32 %13, %conv28
  %cmp31351 = icmp sgt i32 %sub29, 0
  br i1 %cmp31351, label %for.body33.lr.ph, label %for.end40

for.body33.lr.ph:                                 ; preds = %resetbuf
  %sext412 = shl i64 %shr326, 32
  %14 = ashr exact i64 %sext412, 32
  %15 = add i32 %13, -1
  %16 = lshr i64 %posbits.0, 3
  %17 = trunc i64 %16 to i32
  %18 = sub i32 %15, %17
  %19 = zext i32 %18 to i64
  %20 = add nuw nsw i64 %19, 1
  %end.idx = add nuw nsw i64 %19, 1
  %n.vec = and i64 %20, 8589934560
  %cmp.zero = icmp eq i64 %n.vec, 0
  %21 = add i32 %13, -1
  %22 = lshr i64 %posbits.0, 3
  %23 = trunc i64 %22 to i32
  %24 = sub i32 %21, %23
  %25 = zext i32 %24 to i64
  %sext467 = shl i64 %22, 32
  %26 = ashr exact i64 %sext467, 32
  br i1 %cmp.zero, label %middle.block446, label %vector.memcheck

vector.memcheck:                                  ; preds = %for.body33.lr.ph
  %27 = add nsw i64 %26, %25
  %scevgep451 = getelementptr [0 x i8]* bitcast ([32832 x i8]* @inbuf to [0 x i8]*), i64 0, i64 %27
  %bound0 = icmp uge i8* %scevgep451, getelementptr inbounds ([32832 x i8]* @inbuf, i64 0, i64 0)
  %scevgep450 = getelementptr [0 x i8]* bitcast ([32832 x i8]* @inbuf to [0 x i8]*), i64 0, i64 %26
  %scevgep = getelementptr [0 x i8]* bitcast ([32832 x i8]* @inbuf to [0 x i8]*), i64 0, i64 %25
  %bound1 = icmp ule i8* %scevgep450, %scevgep
  %memcheck.conflict = and i1 %bound0, %bound1
  br i1 %memcheck.conflict, label %middle.block446, label %vector.body445.preheader

vector.body445.preheader:                         ; preds = %vector.memcheck
  %28 = add i32 %13, -1
  %29 = lshr i64 %posbits.0, 3
  %30 = trunc i64 %29 to i32
  %31 = sub i32 %28, %30
  %32 = zext i32 %31 to i64
  %33 = add i64 %32, 1
  %34 = lshr i64 %33, 5
  %35 = mul i64 %34, 32
  %36 = add i64 %35, -32
  %37 = lshr i64 %36, 5
  %38 = add i64 %37, 1
  %xtraiter = and i64 %38, 1
  %lcmp.mod = icmp ne i64 %xtraiter, 0
  %lcmp.overflow = icmp eq i64 %38, 0
  %lcmp.or = or i1 %lcmp.overflow, %lcmp.mod
  br i1 %lcmp.or, label %vector.body445.unr, label %vector.body445.preheader.split

vector.body445.unr:                               ; preds = %vector.body445.preheader
  %39 = add i64 0, %14
  %40 = getelementptr inbounds [0 x i8]* bitcast ([32832 x i8]* @inbuf to [0 x i8]*), i64 0, i64 %39
  %41 = bitcast i8* %40 to <16 x i8>*
  %wide.load.unr = load <16 x i8>* %41, align 1, !tbaa !9
  %.sum468.unr = add i64 %39, 16
  %42 = getelementptr [0 x i8]* bitcast ([32832 x i8]* @inbuf to [0 x i8]*), i64 0, i64 %.sum468.unr
  %43 = bitcast i8* %42 to <16 x i8>*
  %wide.load462.unr = load <16 x i8>* %43, align 1, !tbaa !9
  %44 = getelementptr inbounds [0 x i8]* bitcast ([32832 x i8]* @inbuf to [0 x i8]*), i64 0, i64 0
  %45 = bitcast i8* %44 to <16 x i8>*
  store <16 x i8> %wide.load.unr, <16 x i8>* %45, align 1, !tbaa !9
  %.sum469470.unr = or i64 0, 16
  %46 = getelementptr [0 x i8]* bitcast ([32832 x i8]* @inbuf to [0 x i8]*), i64 0, i64 %.sum469470.unr
  %47 = bitcast i8* %46 to <16 x i8>*
  store <16 x i8> %wide.load462.unr, <16 x i8>* %47, align 1, !tbaa !9
  %index.next455.unr = add i64 0, 32
  %48 = icmp eq i64 %index.next455.unr, %n.vec
  br label %vector.body445.preheader.split

vector.body445.preheader.split:                   ; preds = %vector.body445.unr, %vector.body445.preheader
  %index448.unr = phi i64 [ 0, %vector.body445.preheader ], [ %index.next455.unr, %vector.body445.unr ]
  %49 = icmp ult i64 %38, 2
  br i1 %49, label %middle.block446.loopexit, label %vector.body445.preheader.split.split

vector.body445.preheader.split.split:             ; preds = %vector.body445.preheader.split
  br label %vector.body445

vector.body445:                                   ; preds = %vector.body445, %vector.body445.preheader.split.split
  %index448 = phi i64 [ %index448.unr, %vector.body445.preheader.split.split ], [ %index.next455.1, %vector.body445 ]
  %50 = add i64 %index448, %14
  %51 = getelementptr inbounds [0 x i8]* bitcast ([32832 x i8]* @inbuf to [0 x i8]*), i64 0, i64 %50
  %52 = bitcast i8* %51 to <16 x i8>*
  %wide.load = load <16 x i8>* %52, align 1, !tbaa !9
  %.sum468 = add i64 %50, 16
  %53 = getelementptr [0 x i8]* bitcast ([32832 x i8]* @inbuf to [0 x i8]*), i64 0, i64 %.sum468
  %54 = bitcast i8* %53 to <16 x i8>*
  %wide.load462 = load <16 x i8>* %54, align 1, !tbaa !9
  %55 = getelementptr inbounds [0 x i8]* bitcast ([32832 x i8]* @inbuf to [0 x i8]*), i64 0, i64 %index448
  %56 = bitcast i8* %55 to <16 x i8>*
  store <16 x i8> %wide.load, <16 x i8>* %56, align 1, !tbaa !9
  %.sum469470 = or i64 %index448, 16
  %57 = getelementptr [0 x i8]* bitcast ([32832 x i8]* @inbuf to [0 x i8]*), i64 0, i64 %.sum469470
  %58 = bitcast i8* %57 to <16 x i8>*
  store <16 x i8> %wide.load462, <16 x i8>* %58, align 1, !tbaa !9
  %index.next455 = add i64 %index448, 32
  %59 = add i64 %index.next455, %14
  %60 = getelementptr inbounds [0 x i8]* bitcast ([32832 x i8]* @inbuf to [0 x i8]*), i64 0, i64 %59
  %61 = bitcast i8* %60 to <16 x i8>*
  %wide.load.1 = load <16 x i8>* %61, align 1, !tbaa !9
  %.sum468.1 = add i64 %59, 16
  %62 = getelementptr [0 x i8]* bitcast ([32832 x i8]* @inbuf to [0 x i8]*), i64 0, i64 %.sum468.1
  %63 = bitcast i8* %62 to <16 x i8>*
  %wide.load462.1 = load <16 x i8>* %63, align 1, !tbaa !9
  %64 = getelementptr inbounds [0 x i8]* bitcast ([32832 x i8]* @inbuf to [0 x i8]*), i64 0, i64 %index.next455
  %65 = bitcast i8* %64 to <16 x i8>*
  store <16 x i8> %wide.load.1, <16 x i8>* %65, align 1, !tbaa !9
  %.sum469470.1 = or i64 %index.next455, 16
  %66 = getelementptr [0 x i8]* bitcast ([32832 x i8]* @inbuf to [0 x i8]*), i64 0, i64 %.sum469470.1
  %67 = bitcast i8* %66 to <16 x i8>*
  store <16 x i8> %wide.load462.1, <16 x i8>* %67, align 1, !tbaa !9
  %index.next455.1 = add i64 %index.next455, 32
  %68 = icmp eq i64 %index.next455.1, %n.vec
  br i1 %68, label %middle.block446.loopexit.unr-lcssa, label %vector.body445, !llvm.loop !60

middle.block446.loopexit.unr-lcssa:               ; preds = %vector.body445
  br label %middle.block446.loopexit

middle.block446.loopexit:                         ; preds = %middle.block446.loopexit.unr-lcssa, %vector.body445.preheader.split
  br label %middle.block446

middle.block446:                                  ; preds = %middle.block446.loopexit, %vector.memcheck, %for.body33.lr.ph
  %resume.val452 = phi i64 [ 0, %for.body33.lr.ph ], [ 0, %vector.memcheck ], [ %n.vec, %middle.block446.loopexit ]
  %cmp.n454 = icmp eq i64 %end.idx, %resume.val452
  br i1 %cmp.n454, label %for.end40, label %for.body33.preheader

for.body33.preheader:                             ; preds = %middle.block446
  %69 = add i32 %13, 1
  %70 = lshr i64 %posbits.0, 3
  %71 = trunc i64 %70 to i32
  %72 = sub i32 %69, %71
  %73 = add i64 %resume.val452, 1
  %74 = trunc i64 %73 to i32
  %75 = sub i32 %72, %74
  %xtraiter498 = and i32 %75, 1
  %lcmp.mod499 = icmp ne i32 %xtraiter498, 0
  %lcmp.overflow500 = icmp eq i32 %75, 0
  %lcmp.or501 = or i1 %lcmp.overflow500, %lcmp.mod499
  br i1 %lcmp.or501, label %for.body33.unr, label %for.body33.preheader.split

for.body33.unr:                                   ; preds = %for.body33.preheader
  %76 = add nsw i64 %resume.val452, %14
  %arrayidx35.unr = getelementptr inbounds [0 x i8]* bitcast ([32832 x i8]* @inbuf to [0 x i8]*), i64 0, i64 %76
  %77 = load i8* %arrayidx35.unr, align 1, !tbaa !9
  %arrayidx37.unr = getelementptr inbounds [0 x i8]* bitcast ([32832 x i8]* @inbuf to [0 x i8]*), i64 0, i64 %resume.val452
  store i8 %77, i8* %arrayidx37.unr, align 1, !tbaa !9
  %indvars.iv.next.unr = add nuw nsw i64 %resume.val452, 1
  %lftr.wideiv.unr = trunc i64 %indvars.iv.next.unr to i32
  %exitcond.unr = icmp eq i32 %lftr.wideiv.unr, %sub29
  br label %for.body33.preheader.split

for.body33.preheader.split:                       ; preds = %for.body33.unr, %for.body33.preheader
  %indvars.iv.unr = phi i64 [ %resume.val452, %for.body33.preheader ], [ %indvars.iv.next.unr, %for.body33.unr ]
  %78 = icmp ult i32 %75, 2
  br i1 %78, label %for.end40.loopexit, label %for.body33.preheader.split.split

for.body33.preheader.split.split:                 ; preds = %for.body33.preheader.split
  br label %for.body33

for.body33:                                       ; preds = %for.body33, %for.body33.preheader.split.split
  %indvars.iv = phi i64 [ %indvars.iv.unr, %for.body33.preheader.split.split ], [ %indvars.iv.next.1, %for.body33 ]
  %79 = add nsw i64 %indvars.iv, %14
  %arrayidx35 = getelementptr inbounds [0 x i8]* bitcast ([32832 x i8]* @inbuf to [0 x i8]*), i64 0, i64 %79
  %80 = load i8* %arrayidx35, align 1, !tbaa !9
  %arrayidx37 = getelementptr inbounds [0 x i8]* bitcast ([32832 x i8]* @inbuf to [0 x i8]*), i64 0, i64 %indvars.iv
  store i8 %80, i8* %arrayidx37, align 1, !tbaa !9
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %81 = add nsw i64 %indvars.iv.next, %14
  %arrayidx35.1 = getelementptr inbounds [0 x i8]* bitcast ([32832 x i8]* @inbuf to [0 x i8]*), i64 0, i64 %81
  %82 = load i8* %arrayidx35.1, align 1, !tbaa !9
  %arrayidx37.1 = getelementptr inbounds [0 x i8]* bitcast ([32832 x i8]* @inbuf to [0 x i8]*), i64 0, i64 %indvars.iv.next
  store i8 %82, i8* %arrayidx37.1, align 1, !tbaa !9
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv.next, 1
  %lftr.wideiv.1 = trunc i64 %indvars.iv.next.1 to i32
  %exitcond.1 = icmp eq i32 %lftr.wideiv.1, %sub29
  br i1 %exitcond.1, label %for.end40.loopexit.unr-lcssa, label %for.body33, !llvm.loop !61

for.end40.loopexit.unr-lcssa:                     ; preds = %for.body33
  br label %for.end40.loopexit

for.end40.loopexit:                               ; preds = %for.end40.loopexit.unr-lcssa, %for.body33.preheader.split
  br label %for.end40

for.end40:                                        ; preds = %for.end40.loopexit, %middle.block446, %resetbuf
  store i32 %sub29, i32* @insize, align 4, !tbaa !1
  %cmp41 = icmp ult i32 %sub29, 64
  br i1 %cmp41, label %if.then43, label %if.end53

if.then43:                                        ; preds = %for.end40
  %idx.ext = zext i32 %sub29 to i64
  %add.ptr = getelementptr inbounds [0 x i8]* bitcast ([32832 x i8]* @inbuf to [0 x i8]*), i64 0, i64 %idx.ext
  %call44 = tail call i64 @read(i32 %in, i8* %add.ptr, i64 32768) #2
  %conv45 = trunc i64 %call44 to i32
  %cmp46 = icmp eq i32 %conv45, -1
  br i1 %cmp46, label %if.then48, label %if.end49

if.then48:                                        ; preds = %if.then43
  tail call void @read_error() #2
  br label %if.end49

if.end49:                                         ; preds = %if.then48, %if.then43
  %83 = load i32* @insize, align 4, !tbaa !1
  %add50 = add i32 %83, %conv45
  store i32 %add50, i32* @insize, align 4, !tbaa !1
  %sext328 = shl i64 %call44, 32
  %conv51 = ashr exact i64 %sext328, 32
  %84 = load i64* @bytes_in, align 8, !tbaa !15
  %add52 = add i64 %84, %conv51
  store i64 %add52, i64* @bytes_in, align 8, !tbaa !15
  br label %if.end53

if.end53:                                         ; preds = %if.end49, %for.end40
  %85 = phi i32 [ %add50, %if.end49 ], [ %sub29, %for.end40 ]
  %rsize.1 = phi i32 [ %conv45, %if.end49 ], [ %rsize.0, %for.end40 ]
  %cmp54 = icmp ne i32 %rsize.1, 0
  %conv57 = zext i32 %85 to i64
  br i1 %cmp54, label %cond.true56, label %cond.false61

cond.true56:                                      ; preds = %if.end53
  %rem = urem i32 %85, %n_bits.0.ph
  %conv58 = zext i32 %rem to i64
  %sub59 = sub nsw i64 %conv57, %conv58
  %shl60 = shl nsw i64 %sub59, 3
  br label %cond.end67

cond.false61:                                     ; preds = %if.end53
  %shl63 = shl nuw nsw i64 %conv57, 3
  %sub66 = sub nsw i64 %shl63, %conv65
  br label %cond.end67

cond.end67:                                       ; preds = %cond.false61, %cond.true56
  %cond68 = phi i64 [ %shl60, %cond.true56 ], [ %sub66, %cond.false61 ]
  %cmp69358373 = icmp sgt i64 %cond68, 0
  br i1 %cmp69358373, label %while.body.lr.ph.preheader, label %do.cond230

while.body.lr.ph.preheader:                       ; preds = %cond.end67
  br label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %if.then222, %while.body.lr.ph.preheader
  %finchar.1.ph378 = phi i32 [ %conv174.lcssa, %if.then222 ], [ %finchar.0, %while.body.lr.ph.preheader ]
  %free_ent.1.ph377 = phi i64 [ %add227, %if.then222 ], [ %free_ent.0, %while.body.lr.ph.preheader ]
  %outpos.1.ph376 = phi i32 [ %outpos.5.lcssa, %if.then222 ], [ %outpos.0, %while.body.lr.ph.preheader ]
  %posbits.1.ph375 = phi i64 [ %add113.lcssa490, %if.then222 ], [ 0, %while.body.lr.ph.preheader ]
  %oldcode.1.ph374 = phi i64 [ %and111.lcssa488, %if.then222 ], [ %oldcode.0, %while.body.lr.ph.preheader ]
  %cmp71 = icmp sgt i64 %free_ent.1.ph377, %maxcode.0.ph
  %cmp220 = icmp slt i64 %free_ent.1.ph377, %shl
  br label %while.body

while.body:                                       ; preds = %while.cond.backedge, %while.body.lr.ph
  %finchar.1362 = phi i32 [ %finchar.1.ph378, %while.body.lr.ph ], [ %finchar.1.be, %while.cond.backedge ]
  %outpos.1361 = phi i32 [ %outpos.1.ph376, %while.body.lr.ph ], [ %outpos.1.be, %while.cond.backedge ]
  %posbits.1360 = phi i64 [ %posbits.1.ph375, %while.body.lr.ph ], [ %add113, %while.cond.backedge ]
  %oldcode.1359 = phi i64 [ %oldcode.1.ph374, %while.body.lr.ph ], [ %and111, %while.cond.backedge ]
  br i1 %cmp71, label %if.then73, label %if.end96

if.then73:                                        ; preds = %while.body
  %rsize.1.lcssa = phi i32 [ %rsize.1, %while.body ]
  %free_ent.1.ph377.lcssa = phi i64 [ %free_ent.1.ph377, %while.body ]
  %oldcode.1359.lcssa = phi i64 [ %oldcode.1359, %while.body ]
  %posbits.1360.lcssa = phi i64 [ %posbits.1360, %while.body ]
  %outpos.1361.lcssa = phi i32 [ %outpos.1361, %while.body ]
  %finchar.1362.lcssa = phi i32 [ %finchar.1362, %while.body ]
  %sub74 = add nsw i64 %posbits.1360.lcssa, -1
  %shl75 = shl i32 %n_bits.0.ph, 3
  %conv76 = sext i32 %shl75 to i64
  %add80 = add i64 %sub74, %conv76
  %rem83 = srem i64 %add80, %conv76
  %add85 = sub i64 %add80, %rem83
  %inc86 = add nsw i32 %n_bits.0.ph, 1
  %86 = load i32* @maxbits, align 4, !tbaa !1
  %cmp87 = icmp eq i32 %inc86, %86
  br i1 %cmp87, label %if.end93, label %if.else

if.else:                                          ; preds = %if.then73
  %sh_prom90 = zext i32 %inc86 to i64
  %shl91 = shl i64 1, %sh_prom90
  %sub92 = add nsw i64 %shl91, -1
  br label %if.end93

if.end93:                                         ; preds = %if.else, %if.then73
  %maxcode.1 = phi i64 [ %sub92, %if.else ], [ %shl, %if.then73 ]
  %shl94 = shl i32 1, %inc86
  %sub95 = add nsw i32 %shl94, -1
  %phitmp = zext i32 %sub95 to i64
  br label %resetbuf.outer.backedge

resetbuf.outer.backedge:                          ; preds = %if.then130, %if.end93
  %rsize.1497 = phi i32 [ %rsize.1.lcssa, %if.end93 ], [ %rsize.1.lcssa495, %if.then130 ]
  %oldcode.1359487 = phi i64 [ %oldcode.1359.lcssa, %if.end93 ], [ %oldcode.1359.lcssa484, %if.then130 ]
  %outpos.1361480 = phi i32 [ %outpos.1361.lcssa, %if.end93 ], [ %outpos.1361.lcssa477, %if.then130 ]
  %finchar.1362476 = phi i32 [ %finchar.1362.lcssa, %if.end93 ], [ %finchar.1362.lcssa473, %if.then130 ]
  %posbits.0.ph.be = phi i64 [ %add85, %if.end93 ], [ %add142, %if.then130 ]
  %bitmask.0.ph.be = phi i64 [ %phitmp, %if.end93 ], [ 511, %if.then130 ]
  %free_ent.0.ph.be = phi i64 [ %free_ent.1.ph377.lcssa, %if.end93 ], [ 256, %if.then130 ]
  %maxcode.0.ph.be = phi i64 [ %maxcode.1, %if.end93 ], [ 511, %if.then130 ]
  %n_bits.0.ph.be = phi i32 [ %inc86, %if.end93 ], [ 9, %if.then130 ]
  br label %resetbuf.outer

resetbuf.outer:                                   ; preds = %resetbuf.outer.backedge, %vector.body
  %oldcode.0.ph = phi i64 [ -1, %vector.body ], [ %oldcode.1359487, %resetbuf.outer.backedge ]
  %posbits.0.ph = phi i64 [ %conv20, %vector.body ], [ %posbits.0.ph.be, %resetbuf.outer.backedge ]
  %outpos.0.ph = phi i32 [ 0, %vector.body ], [ %outpos.1361480, %resetbuf.outer.backedge ]
  %bitmask.0.ph = phi i64 [ 511, %vector.body ], [ %bitmask.0.ph.be, %resetbuf.outer.backedge ]
  %free_ent.0.ph = phi i64 [ %conv23, %vector.body ], [ %free_ent.0.ph.be, %resetbuf.outer.backedge ]
  %maxcode.0.ph = phi i64 [ 511, %vector.body ], [ %maxcode.0.ph.be, %resetbuf.outer.backedge ]
  %finchar.0.ph = phi i32 [ 0, %vector.body ], [ %finchar.1362476, %resetbuf.outer.backedge ]
  %n_bits.0.ph = phi i32 [ 9, %vector.body ], [ %n_bits.0.ph.be, %resetbuf.outer.backedge ]
  %rsize.0.ph = phi i32 [ %10, %vector.body ], [ %rsize.1497, %resetbuf.outer.backedge ]
  %conv112 = sext i32 %n_bits.0.ph to i64
  %sub64 = add nsw i32 %n_bits.0.ph, -1
  %conv65 = sext i32 %sub64 to i64
  br label %resetbuf

if.end96:                                         ; preds = %while.body
  %shr97 = ashr i64 %posbits.1360, 3
  %arrayidx98 = getelementptr inbounds [0 x i8]* bitcast ([32832 x i8]* @inbuf to [0 x i8]*), i64 0, i64 %shr97
  %87 = load i8* %arrayidx98, align 1, !tbaa !9
  %conv100 = zext i8 %87 to i64
  %arrayidx98.sum = add nsw i64 %shr97, 1
  %arrayidx101 = getelementptr inbounds [0 x i8]* bitcast ([32832 x i8]* @inbuf to [0 x i8]*), i64 0, i64 %arrayidx98.sum
  %88 = load i8* %arrayidx101, align 1, !tbaa !9
  %conv102 = zext i8 %88 to i64
  %shl103 = shl nuw nsw i64 %conv102, 8
  %or = or i64 %shl103, %conv100
  %arrayidx98.sum327 = add nsw i64 %shr97, 2
  %arrayidx104 = getelementptr inbounds [0 x i8]* bitcast ([32832 x i8]* @inbuf to [0 x i8]*), i64 0, i64 %arrayidx98.sum327
  %89 = load i8* %arrayidx104, align 1, !tbaa !9
  %conv105 = zext i8 %89 to i64
  %shl106 = shl nuw nsw i64 %conv105, 16
  %or107 = or i64 %or, %shl106
  %and108 = and i64 %posbits.1360, 7
  %shr109 = lshr i64 %or107, %and108
  %and111 = and i64 %shr109, %bitmask.0.ph
  %add113 = add nsw i64 %posbits.1360, %conv112
  %cmp114 = icmp eq i64 %oldcode.1359, -1
  br i1 %cmp114, label %if.then116, label %if.end126

if.then116:                                       ; preds = %if.end96
  %cmp117 = icmp ugt i64 %and111, 255
  br i1 %cmp117, label %if.then119, label %if.end120

if.then119:                                       ; preds = %if.then116
  tail call void @error(i8* getelementptr inbounds ([15 x i8]* @.str274, i64 0, i64 0)) #2
  br label %if.end120

if.end120:                                        ; preds = %if.then119, %if.then116
  %conv121 = trunc i64 %and111 to i32
  %conv122 = trunc i64 %and111 to i8
  %inc123 = add nsw i32 %outpos.1361, 1
  %idxprom124 = sext i32 %outpos.1361 to i64
  %arrayidx125 = getelementptr inbounds [0 x i8]* bitcast ([18432 x i8]* @outbuf to [0 x i8]*), i64 0, i64 %idxprom124
  store i8 %conv122, i8* %arrayidx125, align 1, !tbaa !9
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.end219, %if.end120
  %outpos.1.be = phi i32 [ %inc123, %if.end120 ], [ %outpos.5, %if.end219 ]
  %finchar.1.be = phi i32 [ %conv121, %if.end120 ], [ %conv174, %if.end219 ]
  %cmp69 = icmp sgt i64 %cond68, %add113
  br i1 %cmp69, label %while.body, label %do.cond230.loopexit

if.end126:                                        ; preds = %if.end96
  %cmp127 = icmp eq i64 %and111, 256
  %90 = load i32* @block_mode, align 4
  %tobool129 = icmp ne i32 %90, 0
  %or.cond = and i1 %cmp127, %tobool129
  br i1 %or.cond, label %if.then130, label %if.end145

if.then130:                                       ; preds = %if.end126
  %rsize.1.lcssa495 = phi i32 [ %rsize.1, %if.end126 ]
  %add113.lcssa = phi i64 [ %add113, %if.end126 ]
  %oldcode.1359.lcssa484 = phi i64 [ %oldcode.1359, %if.end126 ]
  %outpos.1361.lcssa477 = phi i32 [ %outpos.1361, %if.end126 ]
  %finchar.1362.lcssa473 = phi i32 [ %finchar.1362, %if.end126 ]
  tail call void @llvm.memset.p0i8.i64(i8* bitcast ([65536 x i16]* @prev to i8*), i8 0, i64 256, i32 2, i1 false)
  %sub131 = add nsw i64 %add113.lcssa, -1
  %shl132 = shl i32 %n_bits.0.ph, 3
  %conv133 = sext i32 %shl132 to i64
  %add137 = add i64 %sub131, %conv133
  %rem140 = srem i64 %add137, %conv133
  %add142 = sub i64 %add137, %rem140
  br label %resetbuf.outer.backedge

if.end145:                                        ; preds = %if.end126
  %cmp146 = icmp slt i64 %and111, %free_ent.1.ph377
  br i1 %cmp146, label %while.cond165.preheader, label %if.then148

if.then148:                                       ; preds = %if.end145
  %cmp149 = icmp sgt i64 %and111, %free_ent.1.ph377
  br i1 %cmp149, label %if.then151, label %if.end162

if.then151:                                       ; preds = %if.then148
  %91 = load i32* @test, align 4, !tbaa !1
  %tobool152 = icmp eq i32 %91, 0
  %cmp154 = icmp sgt i32 %outpos.1361, 0
  %or.cond242 = and i1 %tobool152, %cmp154
  br i1 %or.cond242, label %if.then156, label %if.end159

if.then156:                                       ; preds = %if.then151
  tail call void @write_buf(i32 %out, i8* getelementptr inbounds ([18432 x i8]* @outbuf, i64 0, i64 0), i32 %outpos.1361) #2
  %conv157 = sext i32 %outpos.1361 to i64
  %92 = load i64* @bytes_out, align 8, !tbaa !15
  %add158 = add i64 %92, %conv157
  store i64 %add158, i64* @bytes_out, align 8, !tbaa !15
  br label %if.end159

if.end159:                                        ; preds = %if.then156, %if.then151
  %93 = load i32* @to_stdout, align 4, !tbaa !1
  %tobool160 = icmp ne i32 %93, 0
  %cond161 = select i1 %tobool160, i8* getelementptr inbounds ([15 x i8]* @.str274, i64 0, i64 0), i8* getelementptr inbounds ([46 x i8]* @.str375, i64 0, i64 0)
  tail call void @error(i8* %cond161) #2
  br label %if.end162

if.end162:                                        ; preds = %if.end159, %if.then148
  %conv163 = trunc i32 %finchar.1362 to i8
  store i8 %conv163, i8* getelementptr (i8* bitcast (i16* getelementptr inbounds ([32768 x i16]* @d_buf, i64 0, i64 32767) to i8*), i64 -1), align 1, !tbaa !9
  br label %while.cond165.preheader

while.cond165.preheader:                          ; preds = %if.end162, %if.end145
  %code.1.ph = phi i64 [ %and111, %if.end145 ], [ %oldcode.1359, %if.end162 ]
  %stackp.0.ph = phi i8* [ bitcast (i16* getelementptr inbounds ([32768 x i16]* @d_buf, i64 0, i64 32767) to i8*), %if.end145 ], [ getelementptr (i8* bitcast (i16* getelementptr inbounds ([32768 x i16]* @d_buf, i64 0, i64 32767) to i8*), i64 -1), %if.end162 ]
  %cmp166353 = icmp ugt i64 %code.1.ph, 255
  %arrayidx169354 = getelementptr inbounds [0 x i8]* bitcast ([65536 x i8]* @window to [0 x i8]*), i64 0, i64 %code.1.ph
  %94 = load i8* %arrayidx169354, align 1, !tbaa !9
  br i1 %cmp166353, label %while.body168.preheader, label %while.end

while.body168.preheader:                          ; preds = %while.cond165.preheader
  br label %while.body168

while.body168:                                    ; preds = %while.body168, %while.body168.preheader
  %95 = phi i8 [ %97, %while.body168 ], [ %94, %while.body168.preheader ]
  %stackp.0356 = phi i8* [ %incdec.ptr170, %while.body168 ], [ %stackp.0.ph, %while.body168.preheader ]
  %code.1355 = phi i64 [ %conv172, %while.body168 ], [ %code.1.ph, %while.body168.preheader ]
  %incdec.ptr170 = getelementptr inbounds i8* %stackp.0356, i64 -1
  store i8 %95, i8* %incdec.ptr170, align 1, !tbaa !9
  %arrayidx171 = getelementptr inbounds [0 x i16]* bitcast ([65536 x i16]* @prev to [0 x i16]*), i64 0, i64 %code.1355
  %96 = load i16* %arrayidx171, align 2, !tbaa !5
  %conv172 = zext i16 %96 to i64
  %cmp166 = icmp ugt i16 %96, 255
  %arrayidx169 = getelementptr inbounds [0 x i8]* bitcast ([65536 x i8]* @window to [0 x i8]*), i64 0, i64 %conv172
  %97 = load i8* %arrayidx169, align 1, !tbaa !9
  br i1 %cmp166, label %while.body168, label %while.end.loopexit

while.end.loopexit:                               ; preds = %while.body168
  %.lcssa472 = phi i8 [ %97, %while.body168 ]
  %incdec.ptr170.lcssa = phi i8* [ %incdec.ptr170, %while.body168 ]
  br label %while.end

while.end:                                        ; preds = %while.end.loopexit, %while.cond165.preheader
  %.lcssa = phi i8 [ %94, %while.cond165.preheader ], [ %.lcssa472, %while.end.loopexit ]
  %stackp.0.lcssa = phi i8* [ %stackp.0.ph, %while.cond165.preheader ], [ %incdec.ptr170.lcssa, %while.end.loopexit ]
  %conv174 = zext i8 %.lcssa to i32
  %incdec.ptr176 = getelementptr inbounds i8* %stackp.0.lcssa, i64 -1
  store i8 %.lcssa, i8* %incdec.ptr176, align 1, !tbaa !9
  %sub.ptr.rhs.cast = ptrtoint i8* %incdec.ptr176 to i64
  %sub.ptr.sub = sub i64 ptrtoint (i16* getelementptr inbounds ([32768 x i16]* @d_buf, i64 0, i64 32767) to i64), %sub.ptr.rhs.cast
  %conv178 = trunc i64 %sub.ptr.sub to i32
  %add179 = add nsw i32 %conv178, %outpos.1361
  %cmp180 = icmp sgt i32 %add179, 16383
  br i1 %cmp180, label %do.body183.preheader, label %if.else214

do.body183.preheader:                             ; preds = %while.end
  br label %do.body183

do.body183:                                       ; preds = %if.end206, %do.body183.preheader
  %outpos.2 = phi i32 [ %outpos.4, %if.end206 ], [ %outpos.1361, %do.body183.preheader ]
  %stackp.1 = phi i8* [ %add.ptr208, %if.end206 ], [ %incdec.ptr176, %do.body183.preheader ]
  %i177.0 = phi i32 [ %conv211, %if.end206 ], [ %conv178, %do.body183.preheader ]
  %sub184 = sub nsw i32 16384, %outpos.2
  %cmp185 = icmp sgt i32 %i177.0, %sub184
  %sub184.i177.0 = select i1 %cmp185, i32 %sub184, i32 %i177.0
  %cmp190 = icmp sgt i32 %sub184.i177.0, 0
  br i1 %cmp190, label %if.then192, label %if.end197

if.then192:                                       ; preds = %do.body183
  %idx.ext193 = sext i32 %outpos.2 to i64
  %add.ptr194 = getelementptr inbounds [0 x i8]* bitcast ([18432 x i8]* @outbuf to [0 x i8]*), i64 0, i64 %idx.ext193
  %conv195 = sext i32 %sub184.i177.0 to i64
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %add.ptr194, i8* %stackp.1, i64 %conv195, i32 1, i1 false)
  %add196 = add nsw i32 %sub184.i177.0, %outpos.2
  br label %if.end197

if.end197:                                        ; preds = %if.then192, %do.body183
  %outpos.3 = phi i32 [ %add196, %if.then192 ], [ %outpos.2, %do.body183 ]
  %cmp198 = icmp sgt i32 %outpos.3, 16383
  br i1 %cmp198, label %if.then200, label %if.end206

if.then200:                                       ; preds = %if.end197
  %98 = load i32* @test, align 4, !tbaa !1
  %tobool201 = icmp eq i32 %98, 0
  br i1 %tobool201, label %if.then202, label %if.end206

if.then202:                                       ; preds = %if.then200
  tail call void @write_buf(i32 %out, i8* getelementptr inbounds ([18432 x i8]* @outbuf, i64 0, i64 0), i32 %outpos.3) #2
  %conv203 = sext i32 %outpos.3 to i64
  %99 = load i64* @bytes_out, align 8, !tbaa !15
  %add204 = add i64 %99, %conv203
  store i64 %add204, i64* @bytes_out, align 8, !tbaa !15
  br label %if.end206

if.end206:                                        ; preds = %if.then202, %if.then200, %if.end197
  %outpos.4 = phi i32 [ %outpos.3, %if.end197 ], [ 0, %if.then200 ], [ 0, %if.then202 ]
  %idx.ext207 = sext i32 %sub184.i177.0 to i64
  %add.ptr208 = getelementptr inbounds i8* %stackp.1, i64 %idx.ext207
  %sub.ptr.rhs.cast209 = ptrtoint i8* %add.ptr208 to i64
  %sub.ptr.sub210 = sub i64 ptrtoint (i16* getelementptr inbounds ([32768 x i16]* @d_buf, i64 0, i64 32767) to i64), %sub.ptr.rhs.cast209
  %conv211 = trunc i64 %sub.ptr.sub210 to i32
  %cmp212 = icmp sgt i32 %conv211, 0
  br i1 %cmp212, label %do.body183, label %if.end219.loopexit

if.else214:                                       ; preds = %while.end
  %idx.ext215 = sext i32 %outpos.1361 to i64
  %add.ptr216 = getelementptr inbounds [0 x i8]* bitcast ([18432 x i8]* @outbuf to [0 x i8]*), i64 0, i64 %idx.ext215
  %sext = shl i64 %sub.ptr.sub, 32
  %conv217 = ashr exact i64 %sext, 32
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %add.ptr216, i8* %incdec.ptr176, i64 %conv217, i32 1, i1 false)
  br label %if.end219

if.end219.loopexit:                               ; preds = %if.end206
  %outpos.4.lcssa = phi i32 [ %outpos.4, %if.end206 ]
  br label %if.end219

if.end219:                                        ; preds = %if.end219.loopexit, %if.else214
  %outpos.5 = phi i32 [ %add179, %if.else214 ], [ %outpos.4.lcssa, %if.end219.loopexit ]
  br i1 %cmp220, label %if.then222, label %while.cond.backedge

if.then222:                                       ; preds = %if.end219
  %outpos.5.lcssa = phi i32 [ %outpos.5, %if.end219 ]
  %conv174.lcssa = phi i32 [ %conv174, %if.end219 ]
  %.lcssa.lcssa = phi i8 [ %.lcssa, %if.end219 ]
  %add113.lcssa490 = phi i64 [ %add113, %if.end219 ]
  %and111.lcssa488 = phi i64 [ %and111, %if.end219 ]
  %oldcode.1359.lcssa485 = phi i64 [ %oldcode.1359, %if.end219 ]
  %conv223 = trunc i64 %oldcode.1359.lcssa485 to i16
  %arrayidx224 = getelementptr inbounds [0 x i16]* bitcast ([65536 x i16]* @prev to [0 x i16]*), i64 0, i64 %free_ent.1.ph377
  store i16 %conv223, i16* %arrayidx224, align 2, !tbaa !5
  %arrayidx226 = getelementptr inbounds [0 x i8]* bitcast ([65536 x i8]* @window to [0 x i8]*), i64 0, i64 %free_ent.1.ph377
  store i8 %.lcssa.lcssa, i8* %arrayidx226, align 1, !tbaa !9
  %add227 = add nsw i64 %free_ent.1.ph377, 1
  %cmp69358 = icmp sgt i64 %cond68, %add113.lcssa490
  br i1 %cmp69358, label %while.body.lr.ph, label %do.cond230.loopexit471

do.cond230.loopexit:                              ; preds = %while.cond.backedge
  %free_ent.1.ph377.lcssa494 = phi i64 [ %free_ent.1.ph377, %while.cond.backedge ]
  %finchar.1.be.lcssa = phi i32 [ %finchar.1.be, %while.cond.backedge ]
  %outpos.1.be.lcssa = phi i32 [ %outpos.1.be, %while.cond.backedge ]
  %add113.lcssa491 = phi i64 [ %add113, %while.cond.backedge ]
  %and111.lcssa489 = phi i64 [ %and111, %while.cond.backedge ]
  br label %do.cond230

do.cond230.loopexit471:                           ; preds = %if.then222
  %add227.lcssa = phi i64 [ %add227, %if.then222 ]
  %and111.lcssa488.lcssa = phi i64 [ %and111.lcssa488, %if.then222 ]
  %add113.lcssa490.lcssa = phi i64 [ %add113.lcssa490, %if.then222 ]
  %conv174.lcssa.lcssa = phi i32 [ %conv174.lcssa, %if.then222 ]
  %outpos.5.lcssa.lcssa = phi i32 [ %outpos.5.lcssa, %if.then222 ]
  br label %do.cond230

do.cond230:                                       ; preds = %do.cond230.loopexit471, %do.cond230.loopexit, %cond.end67
  %free_ent.1.ph.lcssa347 = phi i64 [ %free_ent.0, %cond.end67 ], [ %free_ent.1.ph377.lcssa494, %do.cond230.loopexit ], [ %add227.lcssa, %do.cond230.loopexit471 ]
  %finchar.1.lcssa = phi i32 [ %finchar.0, %cond.end67 ], [ %finchar.1.be.lcssa, %do.cond230.loopexit ], [ %conv174.lcssa.lcssa, %do.cond230.loopexit471 ]
  %outpos.1.lcssa = phi i32 [ %outpos.0, %cond.end67 ], [ %outpos.1.be.lcssa, %do.cond230.loopexit ], [ %outpos.5.lcssa.lcssa, %do.cond230.loopexit471 ]
  %posbits.1.lcssa = phi i64 [ 0, %cond.end67 ], [ %add113.lcssa491, %do.cond230.loopexit ], [ %add113.lcssa490.lcssa, %do.cond230.loopexit471 ]
  %oldcode.1.lcssa = phi i64 [ %oldcode.0, %cond.end67 ], [ %and111.lcssa489, %do.cond230.loopexit ], [ %and111.lcssa488.lcssa, %do.cond230.loopexit471 ]
  br i1 %cmp54, label %resetbuf, label %do.end233

do.end233:                                        ; preds = %do.cond230
  %outpos.1.lcssa.lcssa = phi i32 [ %outpos.1.lcssa, %do.cond230 ]
  %100 = load i32* @test, align 4, !tbaa !1
  %tobool234 = icmp eq i32 %100, 0
  %cmp236 = icmp sgt i32 %outpos.1.lcssa.lcssa, 0
  %or.cond243 = and i1 %tobool234, %cmp236
  br i1 %or.cond243, label %if.then238, label %return

if.then238:                                       ; preds = %do.end233
  tail call void @write_buf(i32 %out, i8* getelementptr inbounds ([18432 x i8]* @outbuf, i64 0, i64 0), i32 %outpos.1.lcssa.lcssa) #2
  %conv239 = sext i32 %outpos.1.lcssa.lcssa to i64
  %101 = load i64* @bytes_out, align 8, !tbaa !15
  %add240 = add i64 %101, %conv239
  store i64 %add240, i64* @bytes_out, align 8, !tbaa !15
  br label %return

return:                                           ; preds = %if.then238, %do.end233, %if.then15
  %retval.0 = phi i32 [ 1, %if.then15 ], [ 0, %do.end233 ], [ 0, %if.then238 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind uwtable
define i32 @unpack(i32 %in, i32 %out) #0 {
entry:
  store i32 %in, i32* @ifd, align 4, !tbaa !1
  store i32 %out, i32* @ofd, align 4, !tbaa !1
  store i64 0, i64* @orig_len, align 8, !tbaa !15
  %0 = load i32* @inptr, align 4, !tbaa !1
  %1 = load i32* @insize, align 4, !tbaa !1
  %cmp1.i = icmp ult i32 %0, %1
  br i1 %cmp1.i, label %cond.true.i, label %cond.false.i

cond.true.i:                                      ; preds = %entry
  %inc.i = add i32 %0, 1
  store i32 %inc.i, i32* @inptr, align 4, !tbaa !1
  %idxprom.i = zext i32 %0 to i64
  %arrayidx.i = getelementptr inbounds [0 x i8]* bitcast ([32832 x i8]* @inbuf to [0 x i8]*), i64 0, i64 %idxprom.i
  %2 = load i8* %arrayidx.i, align 1, !tbaa !9
  %conv.i = zext i8 %2 to i32
  br label %cond.end.i

cond.false.i:                                     ; preds = %entry
  %call.i = tail call i32 @fill_inbuf(i32 0) #2
  %.pre.i = load i32* @inptr, align 4, !tbaa !1
  %.pre111.i = load i32* @insize, align 4, !tbaa !1
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.i, %cond.true.i
  %3 = phi i32 [ %1, %cond.true.i ], [ %.pre111.i, %cond.false.i ]
  %4 = phi i32 [ %inc.i, %cond.true.i ], [ %.pre.i, %cond.false.i ]
  %cond.i = phi i32 [ %conv.i, %cond.true.i ], [ %call.i, %cond.false.i ]
  %conv2.i = sext i32 %cond.i to i64
  store i64 %conv2.i, i64* @orig_len, align 8, !tbaa !15
  %shl.1.i = shl nsw i64 %conv2.i, 8
  %cmp1.1.i = icmp ult i32 %4, %3
  br i1 %cmp1.1.i, label %cond.true.1.i, label %cond.false.1.i

cond.true6.i:                                     ; preds = %cond.end.3.i
  %inc7.i = add i32 %35, 1
  store i32 %inc7.i, i32* @inptr, align 4, !tbaa !1
  %idxprom8.i = zext i32 %35 to i64
  %arrayidx9.i = getelementptr inbounds [0 x i8]* bitcast ([32832 x i8]* @inbuf to [0 x i8]*), i64 0, i64 %idxprom8.i
  %5 = load i8* %arrayidx9.i, align 1, !tbaa !9
  %conv10.i = zext i8 %5 to i32
  br label %cond.end13.i

cond.false11.i:                                   ; preds = %cond.end.3.i
  %call12.i = tail call i32 @fill_inbuf(i32 0) #2
  br label %cond.end13.i

cond.end13.i:                                     ; preds = %cond.false11.i, %cond.true6.i
  %cond14.i = phi i32 [ %conv10.i, %cond.true6.i ], [ %call12.i, %cond.false11.i ]
  store i32 %cond14.i, i32* @max_len, align 4, !tbaa !1
  %cmp15.i = icmp sgt i32 %cond14.i, 25
  br i1 %cmp15.i, label %if.then.i, label %for.cond17.preheader.i

if.then.i:                                        ; preds = %cond.end13.i
  tail call void @error(i8* getelementptr inbounds ([50 x i8]* @.str199, i64 0, i64 0)) #2
  %.pre118.i = load i32* @max_len, align 4, !tbaa !1
  br label %for.cond17.preheader.i

for.cond17.preheader.i:                           ; preds = %if.then.i, %cond.end13.i
  %6 = phi i32 [ %.pre118.i, %if.then.i ], [ %cond14.i, %cond.end13.i ]
  %cmp18101.i = icmp slt i32 %6, 1
  br i1 %cmp18101.i, label %if.end42.thread.i, label %for.body20.i.preheader

for.body20.i.preheader:                           ; preds = %for.cond17.preheader.i
  br label %for.body20.i

if.end42.thread.i:                                ; preds = %for.cond17.preheader.i
  %idxprom43123.i = sext i32 %6 to i64
  %arrayidx44124.i = getelementptr inbounds [26 x i32]* @leaves, i64 0, i64 %idxprom43123.i
  %7 = load i32* %arrayidx44124.i, align 4, !tbaa !1
  %inc45125.i = add nsw i32 %7, 1
  store i32 %inc45125.i, i32* %arrayidx44124.i, align 4, !tbaa !1
  br label %read_tree.exit

for.body20.i:                                     ; preds = %cond.end30.i, %for.body20.i.preheader
  %8 = phi i32 [ %12, %cond.end30.i ], [ %6, %for.body20.i.preheader ]
  %indvars.iv109.i = phi i64 [ %indvars.iv.next110.i, %cond.end30.i ], [ 1, %for.body20.i.preheader ]
  %n.1103.i = phi i32 [ %add.i, %cond.end30.i ], [ 0, %for.body20.i.preheader ]
  %9 = load i32* @inptr, align 4, !tbaa !1
  %10 = load i32* @insize, align 4, !tbaa !1
  %cmp21.i = icmp ult i32 %9, %10
  br i1 %cmp21.i, label %cond.true23.i, label %cond.false28.i

cond.true23.i:                                    ; preds = %for.body20.i
  %inc24.i = add i32 %9, 1
  store i32 %inc24.i, i32* @inptr, align 4, !tbaa !1
  %idxprom25.i = zext i32 %9 to i64
  %arrayidx26.i = getelementptr inbounds [0 x i8]* bitcast ([32832 x i8]* @inbuf to [0 x i8]*), i64 0, i64 %idxprom25.i
  %11 = load i8* %arrayidx26.i, align 1, !tbaa !9
  %conv27.i = zext i8 %11 to i32
  br label %cond.end30.i

cond.false28.i:                                   ; preds = %for.body20.i
  %call29.i = tail call i32 @fill_inbuf(i32 0) #2
  %.pre122.i = load i32* @max_len, align 4, !tbaa !1
  br label %cond.end30.i

cond.end30.i:                                     ; preds = %cond.false28.i, %cond.true23.i
  %12 = phi i32 [ %8, %cond.true23.i ], [ %.pre122.i, %cond.false28.i ]
  %cond31.i = phi i32 [ %conv27.i, %cond.true23.i ], [ %call29.i, %cond.false28.i ]
  %arrayidx33.i = getelementptr inbounds [26 x i32]* @leaves, i64 0, i64 %indvars.iv109.i
  store i32 %cond31.i, i32* %arrayidx33.i, align 4, !tbaa !1
  %add.i = add nsw i32 %cond31.i, %n.1103.i
  %indvars.iv.next110.i = add nuw nsw i64 %indvars.iv109.i, 1
  %13 = trunc i64 %indvars.iv109.i to i32
  %cmp18.i = icmp slt i32 %13, %12
  br i1 %cmp18.i, label %for.body20.i, label %for.end38.i

for.end38.i:                                      ; preds = %cond.end30.i
  %add.i.lcssa = phi i32 [ %add.i, %cond.end30.i ]
  %.lcssa346 = phi i32 [ %12, %cond.end30.i ]
  %phitmp.i = icmp sgt i32 %add.i.lcssa, 256
  br i1 %phitmp.i, label %if.then41.i, label %if.end42.i

if.then41.i:                                      ; preds = %for.end38.i
  tail call void @error(i8* getelementptr inbounds ([32 x i8]* @.str2100, i64 0, i64 0)) #2
  %.pre119.i = load i32* @max_len, align 4, !tbaa !1
  br label %if.end42.i

if.end42.i:                                       ; preds = %if.then41.i, %for.end38.i
  %14 = phi i32 [ %.pre119.i, %if.then41.i ], [ %.lcssa346, %for.end38.i ]
  %idxprom43.i = sext i32 %14 to i64
  %arrayidx44.i = getelementptr inbounds [26 x i32]* @leaves, i64 0, i64 %idxprom43.i
  %15 = load i32* %arrayidx44.i, align 4, !tbaa !1
  %inc45.i = add nsw i32 %15, 1
  store i32 %inc45.i, i32* %arrayidx44.i, align 4, !tbaa !1
  %cmp4797.i = icmp slt i32 %14, 1
  br i1 %cmp4797.i, label %read_tree.exit, label %for.body49.i.preheader

for.body49.i.preheader:                           ; preds = %if.end42.i
  br label %for.body49.i

for.body49.i:                                     ; preds = %for.inc75.i, %for.body49.i.preheader
  %16 = phi i32 [ %24, %for.inc75.i ], [ %14, %for.body49.i.preheader ]
  %17 = phi i32 [ %25, %for.inc75.i ], [ %14, %for.body49.i.preheader ]
  %indvars.iv107.i = phi i64 [ %indvars.iv.next108.i, %for.inc75.i ], [ 1, %for.body49.i.preheader ]
  %base.099.i = phi i32 [ %base.1.lcssa.i, %for.inc75.i ], [ 0, %for.body49.i.preheader ]
  %arrayidx51.i = getelementptr inbounds [26 x i32]* @lit_base, i64 0, i64 %indvars.iv107.i
  store i32 %base.099.i, i32* %arrayidx51.i, align 4, !tbaa !1
  %arrayidx53.i = getelementptr inbounds [26 x i32]* @leaves, i64 0, i64 %indvars.iv107.i
  %18 = load i32* %arrayidx53.i, align 4, !tbaa !1
  %cmp5594.i = icmp sgt i32 %18, 0
  br i1 %cmp5594.i, label %for.body57.lr.ph.i, label %for.inc75.i

for.body57.lr.ph.i:                               ; preds = %for.body49.i
  %19 = sext i32 %base.099.i to i64
  br label %for.body57.i

for.body57.i:                                     ; preds = %cond.end67.i, %for.body57.lr.ph.i
  %indvars.iv.i = phi i64 [ %19, %for.body57.lr.ph.i ], [ %indvars.iv.next.i, %cond.end67.i ]
  %n.296.i = phi i32 [ %18, %for.body57.lr.ph.i ], [ %dec.i, %cond.end67.i ]
  %20 = load i32* @inptr, align 4, !tbaa !1
  %21 = load i32* @insize, align 4, !tbaa !1
  %cmp58.i = icmp ult i32 %20, %21
  br i1 %cmp58.i, label %cond.true60.i, label %cond.false65.i

cond.true60.i:                                    ; preds = %for.body57.i
  %inc61.i = add i32 %20, 1
  store i32 %inc61.i, i32* @inptr, align 4, !tbaa !1
  %idxprom62.i = zext i32 %20 to i64
  %arrayidx63.i = getelementptr inbounds [0 x i8]* bitcast ([32832 x i8]* @inbuf to [0 x i8]*), i64 0, i64 %idxprom62.i
  %22 = load i8* %arrayidx63.i, align 1, !tbaa !9
  %conv64.i = zext i8 %22 to i32
  br label %cond.end67.i

cond.false65.i:                                   ; preds = %for.body57.i
  %call66.i = tail call i32 @fill_inbuf(i32 0) #2
  br label %cond.end67.i

cond.end67.i:                                     ; preds = %cond.false65.i, %cond.true60.i
  %cond68.i = phi i32 [ %conv64.i, %cond.true60.i ], [ %call66.i, %cond.false65.i ]
  %conv69.i = trunc i32 %cond68.i to i8
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1
  %arrayidx72.i = getelementptr inbounds [256 x i8]* @literal, i64 0, i64 %indvars.iv.i
  store i8 %conv69.i, i8* %arrayidx72.i, align 1, !tbaa !9
  %dec.i = add nsw i32 %n.296.i, -1
  %cmp55.i = icmp sgt i32 %dec.i, 0
  br i1 %cmp55.i, label %for.body57.i, label %for.cond54.for.inc75_crit_edge.i

for.cond54.for.inc75_crit_edge.i:                 ; preds = %cond.end67.i
  %23 = add i32 %18, %base.099.i
  %.pre121.i = load i32* @max_len, align 4, !tbaa !1
  br label %for.inc75.i

for.inc75.i:                                      ; preds = %for.cond54.for.inc75_crit_edge.i, %for.body49.i
  %24 = phi i32 [ %.pre121.i, %for.cond54.for.inc75_crit_edge.i ], [ %16, %for.body49.i ]
  %25 = phi i32 [ %.pre121.i, %for.cond54.for.inc75_crit_edge.i ], [ %17, %for.body49.i ]
  %base.1.lcssa.i = phi i32 [ %23, %for.cond54.for.inc75_crit_edge.i ], [ %base.099.i, %for.body49.i ]
  %indvars.iv.next108.i = add nuw nsw i64 %indvars.iv107.i, 1
  %26 = trunc i64 %indvars.iv107.i to i32
  %cmp47.i = icmp slt i32 %26, %25
  br i1 %cmp47.i, label %for.body49.i, label %for.cond46.for.end77_crit_edge.i

for.cond46.for.end77_crit_edge.i:                 ; preds = %for.inc75.i
  %.lcssa345 = phi i32 [ %25, %for.inc75.i ]
  %.lcssa344 = phi i32 [ %24, %for.inc75.i ]
  %idxprom78.phi.trans.insert.i = sext i32 %.lcssa345 to i64
  %arrayidx79.phi.trans.insert.i = getelementptr inbounds [26 x i32]* @leaves, i64 0, i64 %idxprom78.phi.trans.insert.i
  %.pre120.i = load i32* %arrayidx79.phi.trans.insert.i, align 4, !tbaa !1
  br label %read_tree.exit

cond.false.1.i:                                   ; preds = %cond.end.i
  %call.1.i = tail call i32 @fill_inbuf(i32 0) #2
  %.pre112.i = load i32* @inptr, align 4, !tbaa !1
  %.pre113.i = load i32* @insize, align 4, !tbaa !1
  br label %cond.end.1.i

cond.true.1.i:                                    ; preds = %cond.end.i
  %inc.1.i = add i32 %4, 1
  store i32 %inc.1.i, i32* @inptr, align 4, !tbaa !1
  %idxprom.1.i = zext i32 %4 to i64
  %arrayidx.1.i = getelementptr inbounds [0 x i8]* bitcast ([32832 x i8]* @inbuf to [0 x i8]*), i64 0, i64 %idxprom.1.i
  %27 = load i8* %arrayidx.1.i, align 1, !tbaa !9
  %conv.1.i = zext i8 %27 to i32
  br label %cond.end.1.i

cond.end.1.i:                                     ; preds = %cond.true.1.i, %cond.false.1.i
  %28 = phi i32 [ %3, %cond.true.1.i ], [ %.pre113.i, %cond.false.1.i ]
  %29 = phi i32 [ %inc.1.i, %cond.true.1.i ], [ %.pre112.i, %cond.false.1.i ]
  %cond.1.i = phi i32 [ %conv.1.i, %cond.true.1.i ], [ %call.1.i, %cond.false.1.i ]
  %conv2.1.i = sext i32 %cond.1.i to i64
  %or.1.i = or i64 %conv2.1.i, %shl.1.i
  store i64 %or.1.i, i64* @orig_len, align 8, !tbaa !15
  %shl.2.i = shl nsw i64 %or.1.i, 8
  %cmp1.2.i = icmp ult i32 %29, %28
  br i1 %cmp1.2.i, label %cond.true.2.i, label %cond.false.2.i

cond.false.2.i:                                   ; preds = %cond.end.1.i
  %call.2.i = tail call i32 @fill_inbuf(i32 0) #2
  %.pre114.i = load i32* @inptr, align 4, !tbaa !1
  %.pre115.i = load i32* @insize, align 4, !tbaa !1
  br label %cond.end.2.i

cond.true.2.i:                                    ; preds = %cond.end.1.i
  %inc.2.i = add i32 %29, 1
  store i32 %inc.2.i, i32* @inptr, align 4, !tbaa !1
  %idxprom.2.i = zext i32 %29 to i64
  %arrayidx.2.i = getelementptr inbounds [0 x i8]* bitcast ([32832 x i8]* @inbuf to [0 x i8]*), i64 0, i64 %idxprom.2.i
  %30 = load i8* %arrayidx.2.i, align 1, !tbaa !9
  %conv.2.i = zext i8 %30 to i32
  br label %cond.end.2.i

cond.end.2.i:                                     ; preds = %cond.true.2.i, %cond.false.2.i
  %31 = phi i32 [ %28, %cond.true.2.i ], [ %.pre115.i, %cond.false.2.i ]
  %32 = phi i32 [ %inc.2.i, %cond.true.2.i ], [ %.pre114.i, %cond.false.2.i ]
  %cond.2.i = phi i32 [ %conv.2.i, %cond.true.2.i ], [ %call.2.i, %cond.false.2.i ]
  %conv2.2.i = sext i32 %cond.2.i to i64
  %or.2.i = or i64 %conv2.2.i, %shl.2.i
  store i64 %or.2.i, i64* @orig_len, align 8, !tbaa !15
  %shl.3.i = shl nsw i64 %or.2.i, 8
  %cmp1.3.i = icmp ult i32 %32, %31
  br i1 %cmp1.3.i, label %cond.true.3.i, label %cond.false.3.i

cond.false.3.i:                                   ; preds = %cond.end.2.i
  %call.3.i = tail call i32 @fill_inbuf(i32 0) #2
  %.pre116.i = load i32* @inptr, align 4, !tbaa !1
  %.pre117.i = load i32* @insize, align 4, !tbaa !1
  br label %cond.end.3.i

cond.true.3.i:                                    ; preds = %cond.end.2.i
  %inc.3.i = add i32 %32, 1
  store i32 %inc.3.i, i32* @inptr, align 4, !tbaa !1
  %idxprom.3.i = zext i32 %32 to i64
  %arrayidx.3.i = getelementptr inbounds [0 x i8]* bitcast ([32832 x i8]* @inbuf to [0 x i8]*), i64 0, i64 %idxprom.3.i
  %33 = load i8* %arrayidx.3.i, align 1, !tbaa !9
  %conv.3.i = zext i8 %33 to i32
  br label %cond.end.3.i

cond.end.3.i:                                     ; preds = %cond.true.3.i, %cond.false.3.i
  %34 = phi i32 [ %31, %cond.true.3.i ], [ %.pre117.i, %cond.false.3.i ]
  %35 = phi i32 [ %inc.3.i, %cond.true.3.i ], [ %.pre116.i, %cond.false.3.i ]
  %cond.3.i = phi i32 [ %conv.3.i, %cond.true.3.i ], [ %call.3.i, %cond.false.3.i ]
  %conv2.3.i = sext i32 %cond.3.i to i64
  %or.3.i = or i64 %conv2.3.i, %shl.3.i
  store i64 %or.3.i, i64* @orig_len, align 8, !tbaa !15
  %cmp4.i = icmp ult i32 %35, %34
  br i1 %cmp4.i, label %cond.true6.i, label %cond.false11.i

read_tree.exit:                                   ; preds = %for.cond46.for.end77_crit_edge.i, %if.end42.i, %if.end42.thread.i
  %36 = phi i32 [ %.lcssa344, %for.cond46.for.end77_crit_edge.i ], [ %14, %if.end42.i ], [ %6, %if.end42.thread.i ]
  %37 = phi i32 [ %.pre120.i, %for.cond46.for.end77_crit_edge.i ], [ %inc45.i, %if.end42.i ], [ %inc45125.i, %if.end42.thread.i ]
  %.lcssa.i = phi i32 [ %.lcssa345, %for.cond46.for.end77_crit_edge.i ], [ %14, %if.end42.i ], [ %6, %if.end42.thread.i ]
  %idxprom78.i = sext i32 %.lcssa.i to i64
  %arrayidx79.i = getelementptr inbounds [26 x i32]* @leaves, i64 0, i64 %idxprom78.i
  %inc80.i = add nsw i32 %37, 1
  store i32 %inc80.i, i32* %arrayidx79.i, align 4, !tbaa !1
  %cmp46.i = icmp sgt i32 %36, 0
  br i1 %cmp46.i, label %for.body.lr.ph.i, label %for.end.i

for.body.lr.ph.i:                                 ; preds = %read_tree.exit
  %38 = sext i32 %36 to i64
  %xtraiter369 = and i32 %36, 1
  %lcmp.mod370 = icmp ne i32 %xtraiter369, 0
  %lcmp.overflow371 = icmp eq i32 %36, 0
  %lcmp.or372 = or i1 %lcmp.overflow371, %lcmp.mod370
  br i1 %lcmp.or372, label %for.body.i.unr, label %for.body.lr.ph.i.split

for.body.i.unr:                                   ; preds = %for.body.lr.ph.i
  %shr.i.unr = ashr i32 0, 1
  %arrayidx.i88.unr = getelementptr inbounds [26 x i32]* @parents, i64 0, i64 %38
  store i32 %shr.i.unr, i32* %arrayidx.i88.unr, align 4, !tbaa !1
  %arrayidx2.i.unr = getelementptr inbounds [26 x i32]* @lit_base, i64 0, i64 %38
  %39 = load i32* %arrayidx2.i.unr, align 4, !tbaa !1
  %sub.i.unr = sub nsw i32 %39, %shr.i.unr
  store i32 %sub.i.unr, i32* %arrayidx2.i.unr, align 4, !tbaa !1
  %arrayidx4.i.unr = getelementptr inbounds [26 x i32]* @leaves, i64 0, i64 %38
  %40 = load i32* %arrayidx4.i.unr, align 4, !tbaa !1
  %add.i89.unr = add nsw i32 %40, %shr.i.unr
  %indvars.iv.next51.i.unr = add nsw i64 %38, -1
  %41 = trunc i64 %indvars.iv.next51.i.unr to i32
  %cmp.i.unr = icmp sgt i32 %41, 0
  br label %for.body.lr.ph.i.split

for.body.lr.ph.i.split:                           ; preds = %for.body.i.unr, %for.body.lr.ph.i
  %indvars.iv50.i.unr = phi i64 [ %38, %for.body.lr.ph.i ], [ %indvars.iv.next51.i.unr, %for.body.i.unr ]
  %nodes.047.i.unr = phi i32 [ 0, %for.body.lr.ph.i ], [ %add.i89.unr, %for.body.i.unr ]
  %42 = icmp ult i32 %36, 2
  br i1 %42, label %for.end.i.loopexit, label %for.body.lr.ph.i.split.split

for.body.lr.ph.i.split.split:                     ; preds = %for.body.lr.ph.i.split
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i, %for.body.lr.ph.i.split.split
  %indvars.iv50.i = phi i64 [ %indvars.iv50.i.unr, %for.body.lr.ph.i.split.split ], [ %indvars.iv.next51.i.1, %for.body.i ]
  %nodes.047.i = phi i32 [ %nodes.047.i.unr, %for.body.lr.ph.i.split.split ], [ %add.i89.1, %for.body.i ]
  %shr.i = ashr i32 %nodes.047.i, 1
  %arrayidx.i88 = getelementptr inbounds [26 x i32]* @parents, i64 0, i64 %indvars.iv50.i
  store i32 %shr.i, i32* %arrayidx.i88, align 4, !tbaa !1
  %arrayidx2.i = getelementptr inbounds [26 x i32]* @lit_base, i64 0, i64 %indvars.iv50.i
  %43 = load i32* %arrayidx2.i, align 4, !tbaa !1
  %sub.i = sub nsw i32 %43, %shr.i
  store i32 %sub.i, i32* %arrayidx2.i, align 4, !tbaa !1
  %arrayidx4.i = getelementptr inbounds [26 x i32]* @leaves, i64 0, i64 %indvars.iv50.i
  %44 = load i32* %arrayidx4.i, align 4, !tbaa !1
  %add.i89 = add nsw i32 %44, %shr.i
  %indvars.iv.next51.i = add nsw i64 %indvars.iv50.i, -1
  %45 = trunc i64 %indvars.iv.next51.i to i32
  %shr.i.1 = ashr i32 %add.i89, 1
  %arrayidx.i88.1 = getelementptr inbounds [26 x i32]* @parents, i64 0, i64 %indvars.iv.next51.i
  store i32 %shr.i.1, i32* %arrayidx.i88.1, align 4, !tbaa !1
  %arrayidx2.i.1 = getelementptr inbounds [26 x i32]* @lit_base, i64 0, i64 %indvars.iv.next51.i
  %46 = load i32* %arrayidx2.i.1, align 4, !tbaa !1
  %sub.i.1 = sub nsw i32 %46, %shr.i.1
  store i32 %sub.i.1, i32* %arrayidx2.i.1, align 4, !tbaa !1
  %arrayidx4.i.1 = getelementptr inbounds [26 x i32]* @leaves, i64 0, i64 %indvars.iv.next51.i
  %47 = load i32* %arrayidx4.i.1, align 4, !tbaa !1
  %add.i89.1 = add nsw i32 %47, %shr.i.1
  %indvars.iv.next51.i.1 = add nsw i64 %indvars.iv.next51.i, -1
  %48 = trunc i64 %indvars.iv.next51.i.1 to i32
  %cmp.i.1 = icmp sgt i32 %48, 0
  br i1 %cmp.i.1, label %for.body.i, label %for.end.i.loopexit.unr-lcssa

for.end.i.loopexit.unr-lcssa:                     ; preds = %for.body.i
  br label %for.end.i.loopexit

for.end.i.loopexit:                               ; preds = %for.end.i.loopexit.unr-lcssa, %for.body.lr.ph.i.split
  br label %for.end.i

for.end.i:                                        ; preds = %for.end.i.loopexit, %read_tree.exit
  %cmp5.i = icmp sgt i32 %36, 12
  %cond.i90 = select i1 %cmp5.i, i32 12, i32 %36
  store i32 %cond.i90, i32* @peek_bits, align 4, !tbaa !1
  %shl.i = shl i32 1, %cond.i90
  %idxprom6.i = sext i32 %shl.i to i64
  %arrayidx7.i = getelementptr inbounds [0 x i8]* bitcast ([18432 x i8]* @outbuf to [0 x i8]*), i64 0, i64 %idxprom6.i
  %cmp942.i = icmp slt i32 %cond.i90, 1
  br i1 %cmp942.i, label %while.cond18.preheader.i, label %for.body10.i.preheader

for.body10.i.preheader:                           ; preds = %for.end.i
  br label %for.body10.i

while.cond18.preheader.i.loopexit:                ; preds = %for.inc16.i
  %prefixp.1.lcssa.i.lcssa = phi i8* [ %prefixp.1.lcssa.i, %for.inc16.i ]
  %.lcssa343 = phi i32 [ %101, %for.inc16.i ]
  br label %while.cond18.preheader.i

while.cond18.preheader.i:                         ; preds = %while.cond18.preheader.i.loopexit, %for.end.i
  %49 = phi i32 [ %cond.i90, %for.end.i ], [ %.lcssa343, %while.cond18.preheader.i.loopexit ]
  %prefixp.0.lcssa.i = phi i8* [ %arrayidx7.i, %for.end.i ], [ %prefixp.1.lcssa.i.lcssa, %while.cond18.preheader.i.loopexit ]
  %cmp1937.i = icmp ugt i8* %prefixp.0.lcssa.i, getelementptr inbounds ([18432 x i8]* @outbuf, i64 0, i64 0)
  br i1 %cmp1937.i, label %while.body21.i.preheader, label %build_tree.exit

while.body21.i.preheader:                         ; preds = %while.cond18.preheader.i
  %scevgep = getelementptr i8* %prefixp.0.lcssa.i, i64 sub (i64 -1, i64 ptrtoint ([18432 x i8]* @outbuf to i64))
  %backedge.overflow217 = icmp eq i8* %scevgep, inttoptr (i64 -1 to i8*)
  br i1 %backedge.overflow217, label %while.body21.i.preheader340, label %overflow.checked230

while.body21.i.preheader340:                      ; preds = %middle.block222, %while.body21.i.preheader
  %prefixp.238.i.ph = phi i8* [ %prefixp.0.lcssa.i, %while.body21.i.preheader ], [ %resume.val231, %middle.block222 ]
  br label %while.body21.i

overflow.checked230:                              ; preds = %while.body21.i.preheader
  %scevgep219 = getelementptr i8* %prefixp.0.lcssa.i, i64 sub (i64 0, i64 ptrtoint ([18432 x i8]* @outbuf to i64))
  %ptrcnt.to.int = ptrtoint i8* %scevgep219 to i64
  %n.vec227 = and i64 %ptrcnt.to.int, -32
  %cmp.zero229 = icmp eq i64 %n.vec227, 0
  %rev.ind.end233 = sub i64 0, %n.vec227
  %rev.ptr.ind.end234 = getelementptr i8* %prefixp.0.lcssa.i, i64 %rev.ind.end233
  br i1 %cmp.zero229, label %middle.block222, label %vector.body221.preheader

vector.body221.preheader:                         ; preds = %overflow.checked230
  %50 = lshr i64 %ptrcnt.to.int, 5
  %51 = mul i64 %50, 32
  %52 = add i64 %51, -32
  %53 = lshr i64 %52, 5
  %54 = add i64 %53, 1
  %xtraiter = and i64 %54, 1
  %lcmp.mod = icmp ne i64 %xtraiter, 0
  %lcmp.overflow = icmp eq i64 %54, 0
  %lcmp.or = or i1 %lcmp.overflow, %lcmp.mod
  br i1 %lcmp.or, label %vector.body221.unr, label %vector.body221.preheader.split

vector.body221.unr:                               ; preds = %vector.body221.preheader
  %.sum337.unr = sub i64 -16, 0
  %55 = getelementptr i8* %prefixp.0.lcssa.i, i64 %.sum337.unr
  %56 = bitcast i8* %55 to <16 x i8>*
  store <16 x i8> zeroinitializer, <16 x i8>* %56, align 1, !tbaa !9
  %.sum338.unr = sub i64 -17, 0
  %.sum339.unr = add i64 %.sum338.unr, -15
  %57 = getelementptr i8* %prefixp.0.lcssa.i, i64 %.sum339.unr
  %58 = bitcast i8* %57 to <16 x i8>*
  store <16 x i8> zeroinitializer, <16 x i8>* %58, align 1, !tbaa !9
  %index.next237.unr = add i64 0, 32
  %59 = icmp eq i64 %index.next237.unr, %n.vec227
  br label %vector.body221.preheader.split

vector.body221.preheader.split:                   ; preds = %vector.body221.unr, %vector.body221.preheader
  %index224.unr = phi i64 [ 0, %vector.body221.preheader ], [ %index.next237.unr, %vector.body221.unr ]
  %60 = icmp ult i64 %54, 2
  br i1 %60, label %middle.block222.loopexit, label %vector.body221.preheader.split.split

vector.body221.preheader.split.split:             ; preds = %vector.body221.preheader.split
  br label %vector.body221

vector.body221:                                   ; preds = %vector.body221, %vector.body221.preheader.split.split
  %index224 = phi i64 [ %index224.unr, %vector.body221.preheader.split.split ], [ %index.next237.1, %vector.body221 ]
  %.sum337 = sub i64 -16, %index224
  %61 = getelementptr i8* %prefixp.0.lcssa.i, i64 %.sum337
  %62 = bitcast i8* %61 to <16 x i8>*
  store <16 x i8> zeroinitializer, <16 x i8>* %62, align 1, !tbaa !9
  %.sum338 = sub i64 -17, %index224
  %.sum339 = add i64 %.sum338, -15
  %63 = getelementptr i8* %prefixp.0.lcssa.i, i64 %.sum339
  %64 = bitcast i8* %63 to <16 x i8>*
  store <16 x i8> zeroinitializer, <16 x i8>* %64, align 1, !tbaa !9
  %index.next237 = add i64 %index224, 32
  %.sum337.1 = sub i64 -16, %index.next237
  %65 = getelementptr i8* %prefixp.0.lcssa.i, i64 %.sum337.1
  %66 = bitcast i8* %65 to <16 x i8>*
  store <16 x i8> zeroinitializer, <16 x i8>* %66, align 1, !tbaa !9
  %.sum338.1 = sub i64 -17, %index.next237
  %.sum339.1 = add i64 %.sum338.1, -15
  %67 = getelementptr i8* %prefixp.0.lcssa.i, i64 %.sum339.1
  %68 = bitcast i8* %67 to <16 x i8>*
  store <16 x i8> zeroinitializer, <16 x i8>* %68, align 1, !tbaa !9
  %index.next237.1 = add i64 %index.next237, 32
  %69 = icmp eq i64 %index.next237.1, %n.vec227
  br i1 %69, label %middle.block222.loopexit.unr-lcssa, label %vector.body221, !llvm.loop !62

middle.block222.loopexit.unr-lcssa:               ; preds = %vector.body221
  br label %middle.block222.loopexit

middle.block222.loopexit:                         ; preds = %middle.block222.loopexit.unr-lcssa, %vector.body221.preheader.split
  br label %middle.block222

middle.block222:                                  ; preds = %middle.block222.loopexit, %overflow.checked230
  %resume.val231 = phi i8* [ %prefixp.0.lcssa.i, %overflow.checked230 ], [ %rev.ptr.ind.end234, %middle.block222.loopexit ]
  %new.indc.resume.val235 = phi i64 [ 0, %overflow.checked230 ], [ %n.vec227, %middle.block222.loopexit ]
  %cmp.n236 = icmp eq i64 %ptrcnt.to.int, %new.indc.resume.val235
  br i1 %cmp.n236, label %build_tree.exit.loopexit, label %while.body21.i.preheader340

for.body10.i:                                     ; preds = %for.inc16.i, %for.body10.i.preheader
  %indvars.iv.i91 = phi i64 [ %indvars.iv.next.i94, %for.inc16.i ], [ 1, %for.body10.i.preheader ]
  %70 = phi i32 [ %101, %for.inc16.i ], [ %cond.i90, %for.body10.i.preheader ]
  %prefixp.044.i = phi i8* [ %prefixp.1.lcssa.i, %for.inc16.i ], [ %arrayidx7.i, %for.body10.i.preheader ]
  %arrayidx12.i = getelementptr inbounds [26 x i32]* @leaves, i64 0, i64 %indvars.iv.i91
  %71 = load i32* %arrayidx12.i, align 4, !tbaa !1
  %72 = trunc i64 %indvars.iv.i91 to i32
  %sub13.i = sub nsw i32 %70, %72
  %shl14.i = shl i32 %71, %sub13.i
  %tobool39.i = icmp eq i32 %shl14.i, 0
  br i1 %tobool39.i, label %for.inc16.i, label %while.body.lr.ph.i

while.body.lr.ph.i:                               ; preds = %for.body10.i
  %conv.i92 = trunc i64 %indvars.iv.i91 to i8
  %73 = add i32 %shl14.i, -1
  %74 = zext i32 %73 to i64
  %75 = add nuw nsw i64 %74, 1
  %end.idx = add nuw nsw i64 %74, 1
  %n.vec = and i64 %75, 8589934560
  %cmp.zero = icmp eq i64 %n.vec, 0
  %cast.crd = trunc i64 %n.vec to i32
  %rev.ind.end = sub i32 %shl14.i, %cast.crd
  %rev.ind.end118 = sub i64 0, %n.vec
  %rev.ptr.ind.end = getelementptr i8* %prefixp.044.i, i64 %rev.ind.end118
  br i1 %cmp.zero, label %middle.block, label %vector.ph

vector.ph:                                        ; preds = %while.body.lr.ph.i
  %broadcast.splatinsert214 = insertelement <16 x i8> undef, i8 %conv.i92, i32 0
  %76 = add i32 %shl14.i, -1
  %77 = zext i32 %76 to i64
  %78 = add i64 %77, 1
  %79 = lshr i64 %78, 5
  %80 = mul i64 %79, 32
  %81 = add i64 %80, -32
  %82 = lshr i64 %81, 5
  %83 = add i64 %82, 1
  %xtraiter347 = and i64 %83, 1
  %lcmp.mod348 = icmp ne i64 %xtraiter347, 0
  %lcmp.overflow349 = icmp eq i64 %83, 0
  %lcmp.or350 = or i1 %lcmp.overflow349, %lcmp.mod348
  br i1 %lcmp.or350, label %vector.body.unr, label %vector.ph.split

vector.body.unr:                                  ; preds = %vector.ph
  %reverse.unr = shufflevector <16 x i8> %broadcast.splatinsert214, <16 x i8> undef, <16 x i32> zeroinitializer
  %.sum.unr = sub i64 -16, 0
  %84 = getelementptr i8* %prefixp.044.i, i64 %.sum.unr
  %85 = bitcast i8* %84 to <16 x i8>*
  store <16 x i8> %reverse.unr, <16 x i8>* %85, align 1, !tbaa !9
  %.sum335.unr = sub i64 -17, 0
  %.sum336.unr = add i64 %.sum335.unr, -15
  %86 = getelementptr i8* %prefixp.044.i, i64 %.sum336.unr
  %87 = bitcast i8* %86 to <16 x i8>*
  store <16 x i8> %reverse.unr, <16 x i8>* %87, align 1, !tbaa !9
  %index.next.unr = add i64 0, 32
  %88 = icmp eq i64 %index.next.unr, %n.vec
  br label %vector.ph.split

vector.ph.split:                                  ; preds = %vector.body.unr, %vector.ph
  %index.unr = phi i64 [ 0, %vector.ph ], [ %index.next.unr, %vector.body.unr ]
  %89 = icmp ult i64 %83, 2
  br i1 %89, label %middle.block.loopexit, label %vector.ph.split.split

vector.ph.split.split:                            ; preds = %vector.ph.split
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph.split.split
  %index = phi i64 [ %index.unr, %vector.ph.split.split ], [ %index.next.1, %vector.body ]
  %reverse = shufflevector <16 x i8> %broadcast.splatinsert214, <16 x i8> undef, <16 x i32> zeroinitializer
  %.sum = sub i64 -16, %index
  %90 = getelementptr i8* %prefixp.044.i, i64 %.sum
  %91 = bitcast i8* %90 to <16 x i8>*
  store <16 x i8> %reverse, <16 x i8>* %91, align 1, !tbaa !9
  %.sum335 = sub i64 -17, %index
  %.sum336 = add i64 %.sum335, -15
  %92 = getelementptr i8* %prefixp.044.i, i64 %.sum336
  %93 = bitcast i8* %92 to <16 x i8>*
  store <16 x i8> %reverse, <16 x i8>* %93, align 1, !tbaa !9
  %index.next = add i64 %index, 32
  %reverse.1 = shufflevector <16 x i8> %broadcast.splatinsert214, <16 x i8> undef, <16 x i32> zeroinitializer
  %.sum.1 = sub i64 -16, %index.next
  %94 = getelementptr i8* %prefixp.044.i, i64 %.sum.1
  %95 = bitcast i8* %94 to <16 x i8>*
  store <16 x i8> %reverse.1, <16 x i8>* %95, align 1, !tbaa !9
  %.sum335.1 = sub i64 -17, %index.next
  %.sum336.1 = add i64 %.sum335.1, -15
  %96 = getelementptr i8* %prefixp.044.i, i64 %.sum336.1
  %97 = bitcast i8* %96 to <16 x i8>*
  store <16 x i8> %reverse.1, <16 x i8>* %97, align 1, !tbaa !9
  %index.next.1 = add i64 %index.next, 32
  %98 = icmp eq i64 %index.next.1, %n.vec
  br i1 %98, label %middle.block.loopexit.unr-lcssa, label %vector.body, !llvm.loop !63

middle.block.loopexit.unr-lcssa:                  ; preds = %vector.body
  br label %middle.block.loopexit

middle.block.loopexit:                            ; preds = %middle.block.loopexit.unr-lcssa, %vector.ph.split
  br label %middle.block

middle.block:                                     ; preds = %middle.block.loopexit, %while.body.lr.ph.i
  %resume.val = phi i32 [ %shl14.i, %while.body.lr.ph.i ], [ %rev.ind.end, %middle.block.loopexit ]
  %resume.val116 = phi i8* [ %prefixp.044.i, %while.body.lr.ph.i ], [ %rev.ptr.ind.end, %middle.block.loopexit ]
  %new.indc.resume.val = phi i64 [ 0, %while.body.lr.ph.i ], [ %n.vec, %middle.block.loopexit ]
  %cmp.n = icmp eq i64 %end.idx, %new.indc.resume.val
  br i1 %cmp.n, label %while.cond.for.inc16_crit_edge.i, label %while.body.i.preheader

while.body.i.preheader:                           ; preds = %middle.block
  %xtraiter351 = and i32 %resume.val, 3
  %lcmp.mod352 = icmp ne i32 %xtraiter351, 0
  %lcmp.overflow353 = icmp eq i32 %resume.val, 0
  %lcmp.or354 = or i1 %lcmp.overflow353, %lcmp.mod352
  br i1 %lcmp.or354, label %unr.cmp365, label %while.body.i.preheader.split

unr.cmp365:                                       ; preds = %while.body.i.preheader
  %un.tmp366 = icmp eq i32 %xtraiter351, 1
  br i1 %un.tmp366, label %while.body.i.unr359, label %unr.cmp

unr.cmp:                                          ; preds = %unr.cmp365
  %un.tmp = icmp eq i32 %xtraiter351, 2
  br i1 %un.tmp, label %while.body.i.unr355, label %while.body.i.unr

while.body.i.unr:                                 ; preds = %unr.cmp
  %dec15.i.unr = add nsw i32 %resume.val, -1
  %incdec.ptr.i.unr = getelementptr inbounds i8* %resume.val116, i64 -1
  store i8 %conv.i92, i8* %incdec.ptr.i.unr, align 1, !tbaa !9
  %tobool.i.unr = icmp eq i32 %dec15.i.unr, 0
  br label %while.body.i.unr355

while.body.i.unr355:                              ; preds = %while.body.i.unr, %unr.cmp
  %prefixes.041.i.unr = phi i32 [ %dec15.i.unr, %while.body.i.unr ], [ %resume.val, %unr.cmp ]
  %prefixp.140.i.unr = phi i8* [ %incdec.ptr.i.unr, %while.body.i.unr ], [ %resume.val116, %unr.cmp ]
  %dec15.i.unr356 = add nsw i32 %prefixes.041.i.unr, -1
  %incdec.ptr.i.unr357 = getelementptr inbounds i8* %prefixp.140.i.unr, i64 -1
  store i8 %conv.i92, i8* %incdec.ptr.i.unr357, align 1, !tbaa !9
  %tobool.i.unr358 = icmp eq i32 %dec15.i.unr356, 0
  br label %while.body.i.unr359

while.body.i.unr359:                              ; preds = %while.body.i.unr355, %unr.cmp365
  %prefixes.041.i.unr360 = phi i32 [ %dec15.i.unr356, %while.body.i.unr355 ], [ %resume.val, %unr.cmp365 ]
  %prefixp.140.i.unr361 = phi i8* [ %incdec.ptr.i.unr357, %while.body.i.unr355 ], [ %resume.val116, %unr.cmp365 ]
  %dec15.i.unr362 = add nsw i32 %prefixes.041.i.unr360, -1
  %incdec.ptr.i.unr363 = getelementptr inbounds i8* %prefixp.140.i.unr361, i64 -1
  store i8 %conv.i92, i8* %incdec.ptr.i.unr363, align 1, !tbaa !9
  %tobool.i.unr364 = icmp eq i32 %dec15.i.unr362, 0
  br label %while.body.i.preheader.split

while.body.i.preheader.split:                     ; preds = %while.body.i.unr359, %while.body.i.preheader
  %prefixes.041.i.unr367 = phi i32 [ %resume.val, %while.body.i.preheader ], [ %dec15.i.unr362, %while.body.i.unr359 ]
  %prefixp.140.i.unr368 = phi i8* [ %resume.val116, %while.body.i.preheader ], [ %incdec.ptr.i.unr363, %while.body.i.unr359 ]
  %99 = icmp ult i32 %resume.val, 4
  br i1 %99, label %while.cond.for.inc16_crit_edge.i.loopexit, label %while.body.i.preheader.split.split

while.body.i.preheader.split.split:               ; preds = %while.body.i.preheader.split
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i, %while.body.i.preheader.split.split
  %prefixes.041.i = phi i32 [ %prefixes.041.i.unr367, %while.body.i.preheader.split.split ], [ %dec15.i.3, %while.body.i ]
  %prefixp.140.i = phi i8* [ %prefixp.140.i.unr368, %while.body.i.preheader.split.split ], [ %incdec.ptr.i.3, %while.body.i ]
  %dec15.i = add nsw i32 %prefixes.041.i, -1
  %incdec.ptr.i = getelementptr inbounds i8* %prefixp.140.i, i64 -1
  store i8 %conv.i92, i8* %incdec.ptr.i, align 1, !tbaa !9
  %dec15.i.1 = add nsw i32 %dec15.i, -1
  %incdec.ptr.i.1 = getelementptr inbounds i8* %incdec.ptr.i, i64 -1
  store i8 %conv.i92, i8* %incdec.ptr.i.1, align 1, !tbaa !9
  %dec15.i.2 = add nsw i32 %dec15.i.1, -1
  %incdec.ptr.i.2 = getelementptr inbounds i8* %incdec.ptr.i.1, i64 -1
  store i8 %conv.i92, i8* %incdec.ptr.i.2, align 1, !tbaa !9
  %dec15.i.3 = add nsw i32 %dec15.i.2, -1
  %incdec.ptr.i.3 = getelementptr inbounds i8* %incdec.ptr.i.2, i64 -1
  store i8 %conv.i92, i8* %incdec.ptr.i.3, align 1, !tbaa !9
  %tobool.i.3 = icmp eq i32 %dec15.i.3, 0
  br i1 %tobool.i.3, label %while.cond.for.inc16_crit_edge.i.loopexit.unr-lcssa, label %while.body.i, !llvm.loop !64

while.cond.for.inc16_crit_edge.i.loopexit.unr-lcssa: ; preds = %while.body.i
  br label %while.cond.for.inc16_crit_edge.i.loopexit

while.cond.for.inc16_crit_edge.i.loopexit:        ; preds = %while.cond.for.inc16_crit_edge.i.loopexit.unr-lcssa, %while.body.i.preheader.split
  br label %while.cond.for.inc16_crit_edge.i

while.cond.for.inc16_crit_edge.i:                 ; preds = %while.cond.for.inc16_crit_edge.i.loopexit, %middle.block
  %100 = zext i32 %73 to i64
  %scevgep.sum.i = xor i64 %100, -1
  %scevgep49.i = getelementptr i8* %prefixp.044.i, i64 %scevgep.sum.i
  %.pre.i93 = load i32* @peek_bits, align 4, !tbaa !1
  br label %for.inc16.i

for.inc16.i:                                      ; preds = %while.cond.for.inc16_crit_edge.i, %for.body10.i
  %101 = phi i32 [ %.pre.i93, %while.cond.for.inc16_crit_edge.i ], [ %70, %for.body10.i ]
  %prefixp.1.lcssa.i = phi i8* [ %scevgep49.i, %while.cond.for.inc16_crit_edge.i ], [ %prefixp.044.i, %for.body10.i ]
  %indvars.iv.next.i94 = add nuw nsw i64 %indvars.iv.i91, 1
  %102 = trunc i64 %indvars.iv.next.i94 to i32
  %cmp9.i = icmp slt i32 %101, %102
  br i1 %cmp9.i, label %while.cond18.preheader.i.loopexit, label %for.body10.i

while.body21.i:                                   ; preds = %while.body21.i, %while.body21.i.preheader340
  %prefixp.238.i = phi i8* [ %incdec.ptr22.i, %while.body21.i ], [ %prefixp.238.i.ph, %while.body21.i.preheader340 ]
  %incdec.ptr22.i = getelementptr inbounds i8* %prefixp.238.i, i64 -1
  store i8 0, i8* %incdec.ptr22.i, align 1, !tbaa !9
  %cmp19.i = icmp ugt i8* %incdec.ptr22.i, getelementptr inbounds ([18432 x i8]* @outbuf, i64 0, i64 0)
  br i1 %cmp19.i, label %while.body21.i, label %build_tree.exit.loopexit.loopexit, !llvm.loop !65

build_tree.exit.loopexit.loopexit:                ; preds = %while.body21.i
  br label %build_tree.exit.loopexit

build_tree.exit.loopexit:                         ; preds = %build_tree.exit.loopexit.loopexit, %middle.block222
  %.pre = load i32* @peek_bits, align 4, !tbaa !1
  br label %build_tree.exit

build_tree.exit:                                  ; preds = %build_tree.exit.loopexit, %while.cond18.preheader.i
  %103 = phi i32 [ %.pre, %build_tree.exit.loopexit ], [ %49, %while.cond18.preheader.i ]
  store i32 0, i32* @valid, align 4, !tbaa !1
  store i64 0, i64* @bitbuf78, align 8, !tbaa !15
  %shl = shl i32 1, %103
  %sub = add nsw i32 %shl, -1
  %104 = load i32* @max_len, align 4, !tbaa !1
  %idxprom = sext i32 %104 to i64
  %arrayidx = getelementptr inbounds [26 x i32]* @leaves, i64 0, i64 %idxprom
  %105 = load i32* %arrayidx, align 4, !tbaa !1
  %sub1 = add nsw i32 %105, -1
  %conv8 = zext i32 %sub to i64
  br label %while.cond

while.cond:                                       ; preds = %while.cond.backedge, %build_tree.exit
  %106 = phi i64 [ %.pre103, %while.cond.backedge ], [ 0, %build_tree.exit ]
  %107 = phi i32 [ %.pre102, %while.cond.backedge ], [ %103, %build_tree.exit ]
  %108 = phi i32 [ %storemerge, %while.cond.backedge ], [ 0, %build_tree.exit ]
  %cmp = icmp slt i32 %108, %107
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %shl2 = shl i64 %106, 8
  %109 = load i32* @inptr, align 4, !tbaa !1
  %110 = load i32* @insize, align 4, !tbaa !1
  %cmp3 = icmp ult i32 %109, %110
  br i1 %cmp3, label %cond.true, label %cond.false

cond.true:                                        ; preds = %while.body
  %inc = add i32 %109, 1
  store i32 %inc, i32* @inptr, align 4, !tbaa !1
  %idxprom4 = zext i32 %109 to i64
  %arrayidx5 = getelementptr inbounds [0 x i8]* bitcast ([32832 x i8]* @inbuf to [0 x i8]*), i64 0, i64 %idxprom4
  %111 = load i8* %arrayidx5, align 1, !tbaa !9
  %conv = zext i8 %111 to i32
  br label %cond.end

cond.false:                                       ; preds = %while.body
  %call = tail call i32 @fill_inbuf(i32 0) #2
  %.pre104 = load i32* @valid, align 4, !tbaa !1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %112 = phi i32 [ %108, %cond.true ], [ %.pre104, %cond.false ]
  %cond = phi i32 [ %conv, %cond.true ], [ %call, %cond.false ]
  %conv6 = sext i32 %cond to i64
  %or = or i64 %conv6, %shl2
  store i64 %or, i64* @bitbuf78, align 8, !tbaa !15
  %add = add nsw i32 %112, 8
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.end67, %cond.end
  %.pre103 = phi i64 [ %.pre103.pre, %if.end67 ], [ %or, %cond.end ]
  %storemerge = phi i32 [ %sub68, %if.end67 ], [ %add, %cond.end ]
  store i32 %storemerge, i32* @valid, align 4, !tbaa !1
  %.pre102 = load i32* @peek_bits, align 4, !tbaa !1
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %sub7 = sub nsw i32 %108, %107
  %sh_prom = zext i32 %sub7 to i64
  %shr = lshr i64 %106, %sh_prom
  %and = and i64 %shr, %conv8
  %arrayidx11 = getelementptr inbounds [0 x i8]* bitcast ([18432 x i8]* @outbuf to [0 x i8]*), i64 0, i64 %and
  %113 = load i8* %arrayidx11, align 1, !tbaa !9
  %conv12 = zext i8 %113 to i32
  %cmp13 = icmp eq i8 %113, 0
  br i1 %cmp13, label %do.body.preheader, label %if.then

do.body.preheader:                                ; preds = %while.end
  %114 = sext i32 %107 to i64
  br label %do.body

if.then:                                          ; preds = %while.end
  %conv9 = trunc i64 %and to i32
  %sub15 = sub nsw i32 %107, %conv12
  %shr16 = lshr i32 %conv9, %sub15
  br label %if.end

do.body:                                          ; preds = %while.end40, %do.body.preheader
  %115 = phi i64 [ %106, %do.body.preheader ], [ %124, %while.end40 ]
  %116 = phi i32 [ %108, %do.body.preheader ], [ %125, %while.end40 ]
  %indvars.iv = phi i64 [ %114, %do.body.preheader ], [ %indvars.iv.next, %while.end40 ]
  %mask.0 = phi i64 [ %conv8, %do.body.preheader ], [ %add2087, %while.end40 ]
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %shl19 = shl i64 %mask.0, 1
  %add2087 = or i64 %shl19, 1
  %117 = trunc i64 %indvars.iv.next to i32
  %cmp2298 = icmp slt i32 %116, %117
  br i1 %cmp2298, label %while.body24.preheader, label %while.end40

while.body24.preheader:                           ; preds = %do.body
  br label %while.body24

while.body24:                                     ; preds = %cond.end35, %while.body24.preheader
  %118 = phi i32 [ %add39, %cond.end35 ], [ %116, %while.body24.preheader ]
  %119 = phi i64 [ %or38, %cond.end35 ], [ %115, %while.body24.preheader ]
  %shl25 = shl i64 %119, 8
  %120 = load i32* @inptr, align 4, !tbaa !1
  %121 = load i32* @insize, align 4, !tbaa !1
  %cmp26 = icmp ult i32 %120, %121
  br i1 %cmp26, label %cond.true28, label %cond.false33

cond.true28:                                      ; preds = %while.body24
  %inc29 = add i32 %120, 1
  store i32 %inc29, i32* @inptr, align 4, !tbaa !1
  %idxprom30 = zext i32 %120 to i64
  %arrayidx31 = getelementptr inbounds [0 x i8]* bitcast ([32832 x i8]* @inbuf to [0 x i8]*), i64 0, i64 %idxprom30
  %122 = load i8* %arrayidx31, align 1, !tbaa !9
  %conv32 = zext i8 %122 to i32
  br label %cond.end35

cond.false33:                                     ; preds = %while.body24
  %call34 = tail call i32 @fill_inbuf(i32 0) #2
  %.pre106 = load i32* @valid, align 4, !tbaa !1
  br label %cond.end35

cond.end35:                                       ; preds = %cond.false33, %cond.true28
  %123 = phi i32 [ %118, %cond.true28 ], [ %.pre106, %cond.false33 ]
  %cond36 = phi i32 [ %conv32, %cond.true28 ], [ %call34, %cond.false33 ]
  %conv37 = sext i32 %cond36 to i64
  %or38 = or i64 %conv37, %shl25
  store i64 %or38, i64* @bitbuf78, align 8, !tbaa !15
  %add39 = add nsw i32 %123, 8
  store i32 %add39, i32* @valid, align 4, !tbaa !1
  %cmp22 = icmp slt i32 %add39, %117
  br i1 %cmp22, label %while.body24, label %while.end40.loopexit

while.end40.loopexit:                             ; preds = %cond.end35
  %add39.lcssa = phi i32 [ %add39, %cond.end35 ]
  %or38.lcssa = phi i64 [ %or38, %cond.end35 ]
  br label %while.end40

while.end40:                                      ; preds = %while.end40.loopexit, %do.body
  %124 = phi i64 [ %115, %do.body ], [ %or38.lcssa, %while.end40.loopexit ]
  %125 = phi i32 [ %116, %do.body ], [ %add39.lcssa, %while.end40.loopexit ]
  %sub41 = sub nsw i32 %125, %117
  %sh_prom42 = zext i32 %sub41 to i64
  %shr43 = lshr i64 %124, %sh_prom42
  %and44 = and i64 %shr43, %add2087
  %conv45 = trunc i64 %and44 to i32
  %arrayidx47 = getelementptr inbounds [26 x i32]* @parents, i64 0, i64 %indvars.iv.next
  %126 = load i32* %arrayidx47, align 4, !tbaa !1
  %cmp48 = icmp ult i32 %conv45, %126
  br i1 %cmp48, label %do.body, label %if.end.loopexit

if.end.loopexit:                                  ; preds = %while.end40
  %conv45.lcssa = phi i32 [ %conv45, %while.end40 ]
  %.lcssa342 = phi i32 [ %125, %while.end40 ]
  %.lcssa341 = phi i64 [ %124, %while.end40 ]
  %.lcssa = phi i32 [ %117, %while.end40 ]
  br label %if.end

if.end:                                           ; preds = %if.end.loopexit, %if.then
  %.pre103.pre108 = phi i64 [ %106, %if.then ], [ %.lcssa341, %if.end.loopexit ]
  %127 = phi i32 [ %108, %if.then ], [ %.lcssa342, %if.end.loopexit ]
  %peek.0 = phi i32 [ %shr16, %if.then ], [ %conv45.lcssa, %if.end.loopexit ]
  %len.1 = phi i32 [ %conv12, %if.then ], [ %.lcssa, %if.end.loopexit ]
  %cmp50 = icmp eq i32 %peek.0, %sub1
  %128 = load i32* @max_len, align 4
  %cmp52 = icmp eq i32 %len.1, %128
  %or.cond = and i1 %cmp50, %cmp52
  br i1 %or.cond, label %for.end, label %if.end55

if.end55:                                         ; preds = %if.end
  %idxprom56 = sext i32 %len.1 to i64
  %arrayidx57 = getelementptr inbounds [26 x i32]* @lit_base, i64 0, i64 %idxprom56
  %129 = load i32* %arrayidx57, align 4, !tbaa !1
  %add58 = add i32 %129, %peek.0
  %idxprom59 = zext i32 %add58 to i64
  %arrayidx60 = getelementptr inbounds [256 x i8]* @literal, i64 0, i64 %idxprom59
  %130 = load i8* %arrayidx60, align 1, !tbaa !9
  %131 = load i32* @outcnt, align 4, !tbaa !1
  %inc61 = add i32 %131, 1
  store i32 %inc61, i32* @outcnt, align 4, !tbaa !1
  %idxprom62 = zext i32 %131 to i64
  %arrayidx63 = getelementptr inbounds [0 x i8]* bitcast ([65536 x i8]* @window to [0 x i8]*), i64 0, i64 %idxprom62
  store i8 %130, i8* %arrayidx63, align 1, !tbaa !9
  %cmp64 = icmp eq i32 %inc61, 32768
  br i1 %cmp64, label %if.then66, label %if.end67

if.then66:                                        ; preds = %if.end55
  tail call void @flush_window() #2
  %.pre107 = load i32* @valid, align 4, !tbaa !1
  %.pre103.pre.pre = load i64* @bitbuf78, align 8, !tbaa !15
  br label %if.end67

if.end67:                                         ; preds = %if.then66, %if.end55
  %.pre103.pre = phi i64 [ %.pre103.pre.pre, %if.then66 ], [ %.pre103.pre108, %if.end55 ]
  %132 = phi i32 [ %.pre107, %if.then66 ], [ %127, %if.end55 ]
  %sub68 = sub nsw i32 %132, %len.1
  br label %while.cond.backedge

for.end:                                          ; preds = %if.end
  tail call void @flush_window() #2
  %133 = load i64* @orig_len, align 8, !tbaa !15
  %134 = load i64* @bytes_out, align 8, !tbaa !15
  %cmp69 = icmp eq i64 %133, %134
  br i1 %cmp69, label %if.end72, label %if.then71

if.then71:                                        ; preds = %for.end
  tail call void @error(i8* getelementptr inbounds ([38 x i8]* @.str98, i64 0, i64 0)) #2
  br label %if.end72

if.end72:                                         ; preds = %if.then71, %for.end
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @check_zipfile(i32 %in) #0 {
entry:
  %0 = load i32* @inptr, align 4, !tbaa !1
  %idx.ext = zext i32 %0 to i64
  store i32 %in, i32* @ifd, align 4, !tbaa !1
  %add.ptr.sum = add nuw nsw i64 %idx.ext, 26
  %add.ptr1 = getelementptr inbounds [0 x i8]* bitcast ([32832 x i8]* @inbuf to [0 x i8]*), i64 0, i64 %add.ptr.sum
  %1 = load i8* %add.ptr1, align 1, !tbaa !9
  %conv2 = zext i8 %1 to i32
  %add.ptr1.sum = add nuw nsw i64 %idx.ext, 27
  %arrayidx4 = getelementptr inbounds [0 x i8]* bitcast ([32832 x i8]* @inbuf to [0 x i8]*), i64 0, i64 %add.ptr1.sum
  %2 = load i8* %arrayidx4, align 1, !tbaa !9
  %conv6 = zext i8 %2 to i32
  %shl = shl nuw nsw i32 %conv6, 8
  %or = or i32 %shl, %conv2
  %add = add nuw nsw i32 %or, 30
  %add.ptr.sum75 = add nuw nsw i64 %idx.ext, 28
  %add.ptr7 = getelementptr inbounds [0 x i8]* bitcast ([32832 x i8]* @inbuf to [0 x i8]*), i64 0, i64 %add.ptr.sum75
  %3 = load i8* %add.ptr7, align 1, !tbaa !9
  %conv10 = zext i8 %3 to i32
  %add.ptr7.sum = add nuw nsw i64 %idx.ext, 29
  %arrayidx12 = getelementptr inbounds [0 x i8]* bitcast ([32832 x i8]* @inbuf to [0 x i8]*), i64 0, i64 %add.ptr7.sum
  %4 = load i8* %arrayidx12, align 1, !tbaa !9
  %conv14 = zext i8 %4 to i32
  %shl15 = shl nuw nsw i32 %conv14, 8
  %or16 = or i32 %shl15, %conv10
  %add17 = add i32 %add, %0
  %add18 = add i32 %add17, %or16
  store i32 %add18, i32* @inptr, align 4, !tbaa !1
  %5 = load i32* @insize, align 4, !tbaa !1
  %cmp = icmp ugt i32 %add18, %5
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %add.ptr = getelementptr inbounds [0 x i8]* bitcast ([32832 x i8]* @inbuf to [0 x i8]*), i64 0, i64 %idx.ext
  %6 = load i8* %add.ptr, align 1, !tbaa !9
  %conv22 = zext i8 %6 to i64
  %add.ptr.sum76 = add nuw nsw i64 %idx.ext, 1
  %arrayidx23 = getelementptr inbounds [0 x i8]* bitcast ([32832 x i8]* @inbuf to [0 x i8]*), i64 0, i64 %add.ptr.sum76
  %7 = load i8* %arrayidx23, align 1, !tbaa !9
  %conv25 = zext i8 %7 to i64
  %shl26 = shl nuw nsw i64 %conv25, 8
  %or27 = or i64 %shl26, %conv22
  %add.ptr.sum78 = add nuw nsw i64 %idx.ext, 2
  %add.ptr29 = getelementptr inbounds [0 x i8]* bitcast ([32832 x i8]* @inbuf to [0 x i8]*), i64 0, i64 %add.ptr.sum78
  %8 = load i8* %add.ptr29, align 1, !tbaa !9
  %conv32 = zext i8 %8 to i64
  %add.ptr29.sum = add nuw nsw i64 %idx.ext, 3
  %arrayidx34 = getelementptr inbounds [0 x i8]* bitcast ([32832 x i8]* @inbuf to [0 x i8]*), i64 0, i64 %add.ptr29.sum
  %9 = load i8* %arrayidx34, align 1, !tbaa !9
  %conv36 = zext i8 %9 to i64
  %shl37 = shl nuw nsw i64 %conv36, 8
  %or38 = or i64 %shl37, %conv32
  %shl40 = shl nuw nsw i64 %or38, 16
  %or41 = or i64 %or27, %shl40
  %cmp42 = icmp eq i64 %or41, 67324752
  br i1 %cmp42, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  %10 = load %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %11 = load i8** @progname, align 8, !tbaa !7
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %10, i8* getelementptr inbounds ([31 x i8]* @.str149, i64 0, i64 0), i8* %11, i8* getelementptr inbounds ([1024 x i8]* @ifname, i64 0, i64 0)) #11
  store i32 1, i32* @exit_code, align 4, !tbaa !1
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %add.ptr.sum80 = add nuw nsw i64 %idx.ext, 8
  %arrayidx44 = getelementptr inbounds [0 x i8]* bitcast ([32832 x i8]* @inbuf to [0 x i8]*), i64 0, i64 %add.ptr.sum80
  %12 = load i8* %arrayidx44, align 1, !tbaa !9
  %conv45 = zext i8 %12 to i32
  store i32 %conv45, i32* @method, align 4, !tbaa !1
  switch i8 %12, label %if.then50 [
    i8 8, label %if.end52
    i8 0, label %if.end52
  ]

if.then50:                                        ; preds = %if.end
  %13 = load %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %14 = load i8** @progname, align 8, !tbaa !7
  %call51 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %13, i8* getelementptr inbounds ([58 x i8]* @.str1150, i64 0, i64 0), i8* %14, i8* getelementptr inbounds ([1024 x i8]* @ifname, i64 0, i64 0)) #11
  store i32 1, i32* @exit_code, align 4, !tbaa !1
  br label %return

if.end52:                                         ; preds = %if.end, %if.end
  %add.ptr.sum81 = add nuw nsw i64 %idx.ext, 6
  %arrayidx53 = getelementptr inbounds [0 x i8]* bitcast ([32832 x i8]* @inbuf to [0 x i8]*), i64 0, i64 %add.ptr.sum81
  %15 = load i8* %arrayidx53, align 1, !tbaa !9
  %conv54 = zext i8 %15 to i32
  %and = and i32 %conv54, 1
  store i32 %and, i32* @decrypt, align 4, !tbaa !1
  %cmp55 = icmp eq i32 %and, 0
  br i1 %cmp55, label %if.end59, label %if.then57

if.then57:                                        ; preds = %if.end52
  %16 = load %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %17 = load i8** @progname, align 8, !tbaa !7
  %call58 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %16, i8* getelementptr inbounds ([38 x i8]* @.str2151, i64 0, i64 0), i8* %17, i8* getelementptr inbounds ([1024 x i8]* @ifname, i64 0, i64 0)) #11
  store i32 1, i32* @exit_code, align 4, !tbaa !1
  br label %return

if.end59:                                         ; preds = %if.end52
  %and62 = lshr i8 %15, 3
  %and62.lobit = and i8 %and62, 1
  %conv64 = zext i8 %and62.lobit to i32
  store i32 %conv64, i32* @ext_header, align 4, !tbaa !1
  store i32 1, i32* @pkzip, align 4, !tbaa !1
  br label %return

return:                                           ; preds = %if.end59, %if.then57, %if.then50, %if.then
  %retval.0 = phi i32 [ 1, %if.then ], [ 1, %if.then50 ], [ 1, %if.then57 ], [ 0, %if.end59 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind uwtable
define i32 @unzip(i32 %in, i32 %out) #0 {
entry:
  %buf = alloca [16 x i8], align 16
  store i32 %in, i32* @ifd, align 4, !tbaa !1
  store i32 %out, i32* @ofd, align 4, !tbaa !1
  %call = tail call i64 @updcrc(i8* null, i32 0) #2
  %0 = load i32* @pkzip, align 4, !tbaa !1
  %tobool = icmp eq i32 %0, 0
  %1 = load i32* @ext_header, align 4
  %tobool1 = icmp ne i32 %1, 0
  %or.cond = or i1 %tobool, %tobool1
  br i1 %or.cond, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %2 = load i8* getelementptr inbounds ([32832 x i8]* @inbuf, i64 0, i64 14), align 1, !tbaa !9
  %conv2 = zext i8 %2 to i64
  %3 = load i8* getelementptr inbounds ([32832 x i8]* @inbuf, i64 0, i64 15), align 1, !tbaa !9
  %conv4 = zext i8 %3 to i64
  %shl = shl nuw nsw i64 %conv4, 8
  %or = or i64 %shl, %conv2
  %4 = load i8* getelementptr inbounds ([32832 x i8]* @inbuf, i64 0, i64 16), align 1, !tbaa !9
  %conv7 = zext i8 %4 to i64
  %5 = load i8* getelementptr inbounds ([32832 x i8]* @inbuf, i64 0, i64 17), align 1, !tbaa !9
  %conv9 = zext i8 %5 to i64
  %shl10 = shl nuw nsw i64 %conv9, 8
  %or11 = or i64 %shl10, %conv7
  %shl13 = shl nuw nsw i64 %or11, 16
  %or14 = or i64 %or, %shl13
  %6 = load i8* getelementptr inbounds ([32832 x i8]* @inbuf, i64 0, i64 22), align 1, !tbaa !9
  %conv16 = zext i8 %6 to i64
  %7 = load i8* getelementptr inbounds ([32832 x i8]* @inbuf, i64 0, i64 23), align 1, !tbaa !9
  %conv18 = zext i8 %7 to i64
  %shl19 = shl nuw nsw i64 %conv18, 8
  %or20 = or i64 %shl19, %conv16
  %8 = load i8* getelementptr inbounds ([32832 x i8]* @inbuf, i64 0, i64 24), align 1, !tbaa !9
  %conv23 = zext i8 %8 to i64
  %9 = load i8* getelementptr inbounds ([32832 x i8]* @inbuf, i64 0, i64 25), align 1, !tbaa !9
  %conv25 = zext i8 %9 to i64
  %shl26 = shl nuw nsw i64 %conv25, 8
  %or27 = or i64 %shl26, %conv23
  %shl29 = shl nuw nsw i64 %or27, 16
  %or30 = or i64 %or20, %shl29
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %orig_len.0 = phi i64 [ 0, %entry ], [ %or30, %if.then ]
  %orig_crc.0 = phi i64 [ 0, %entry ], [ %or14, %if.then ]
  %10 = load i32* @method, align 4, !tbaa !1
  %cmp = icmp eq i32 %10, 8
  br i1 %cmp, label %if.then32, label %if.else42

if.then32:                                        ; preds = %if.end
  %call33 = tail call i32 @inflate() #2
  switch i32 %call33, label %if.then39 [
    i32 3, label %if.then36
    i32 0, label %if.end120
  ]

if.then36:                                        ; preds = %if.then32
  tail call void @error(i8* getelementptr inbounds ([14 x i8]* @.str3152, i64 0, i64 0)) #2
  br label %if.end120

if.then39:                                        ; preds = %if.then32
  tail call void @error(i8* getelementptr inbounds ([41 x i8]* @.str4153, i64 0, i64 0)) #2
  br label %if.end120

if.else42:                                        ; preds = %if.end
  %tobool43 = icmp ne i32 %0, 0
  %cmp45 = icmp eq i32 %10, 0
  %or.cond338 = and i1 %tobool43, %cmp45
  br i1 %or.cond338, label %if.then47, label %if.else118

if.then47:                                        ; preds = %if.else42
  %11 = load i8* getelementptr inbounds ([32832 x i8]* @inbuf, i64 0, i64 22), align 1, !tbaa !9
  %conv50 = zext i8 %11 to i64
  %12 = load i8* getelementptr inbounds ([32832 x i8]* @inbuf, i64 0, i64 23), align 1, !tbaa !9
  %conv52 = zext i8 %12 to i64
  %shl53 = shl nuw nsw i64 %conv52, 8
  %or54 = or i64 %shl53, %conv50
  %13 = load i8* getelementptr inbounds ([32832 x i8]* @inbuf, i64 0, i64 24), align 1, !tbaa !9
  %conv57 = zext i8 %13 to i64
  %14 = load i8* getelementptr inbounds ([32832 x i8]* @inbuf, i64 0, i64 25), align 1, !tbaa !9
  %conv59 = zext i8 %14 to i64
  %shl60 = shl nuw nsw i64 %conv59, 8
  %or61 = or i64 %shl60, %conv57
  %shl63 = shl nuw nsw i64 %or61, 16
  %or64 = or i64 %or54, %shl63
  %15 = load i8* getelementptr inbounds ([32832 x i8]* @inbuf, i64 0, i64 18), align 1, !tbaa !9
  %conv66 = zext i8 %15 to i64
  %16 = load i8* getelementptr inbounds ([32832 x i8]* @inbuf, i64 0, i64 19), align 1, !tbaa !9
  %conv68 = zext i8 %16 to i64
  %shl69 = shl nuw nsw i64 %conv68, 8
  %or70 = or i64 %shl69, %conv66
  %17 = load i8* getelementptr inbounds ([32832 x i8]* @inbuf, i64 0, i64 20), align 1, !tbaa !9
  %conv73 = zext i8 %17 to i64
  %18 = load i8* getelementptr inbounds ([32832 x i8]* @inbuf, i64 0, i64 21), align 1, !tbaa !9
  %conv75 = zext i8 %18 to i64
  %shl76 = shl nuw nsw i64 %conv75, 8
  %or77 = or i64 %shl76, %conv73
  %shl79 = shl nuw nsw i64 %or77, 16
  %or80 = or i64 %or70, %shl79
  %19 = load i32* @decrypt, align 4, !tbaa !1
  %tobool81 = icmp ne i32 %19, 0
  %conv82 = select i1 %tobool81, i64 12, i64 0
  %sub = sub i64 %or80, %conv82
  %cmp83 = icmp eq i64 %or64, %sub
  br i1 %cmp83, label %while.cond.preheader, label %if.then85

if.then85:                                        ; preds = %if.then47
  %20 = load %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %call102 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %20, i8* getelementptr inbounds ([18 x i8]* @.str5154, i64 0, i64 0), i64 %or64, i64 %or80) #11
  tail call void @error(i8* getelementptr inbounds ([41 x i8]* @.str6155, i64 0, i64 0)) #2
  br label %while.cond.preheader

while.cond.preheader:                             ; preds = %if.then85, %if.then47
  %tobool104369 = icmp eq i64 %or64, 0
  br i1 %tobool104369, label %while.end, label %while.body.preheader

while.body.preheader:                             ; preds = %while.cond.preheader
  br label %while.body

while.body:                                       ; preds = %while.cond.backedge, %while.body.preheader
  %dec370.in = phi i64 [ %dec370, %while.cond.backedge ], [ %or64, %while.body.preheader ]
  %dec370 = add i64 %dec370.in, -1
  %21 = load i32* @inptr, align 4, !tbaa !1
  %22 = load i32* @insize, align 4, !tbaa !1
  %cmp105 = icmp ult i32 %21, %22
  br i1 %cmp105, label %cond.true, label %cond.false

cond.true:                                        ; preds = %while.body
  %inc = add i32 %21, 1
  store i32 %inc, i32* @inptr, align 4, !tbaa !1
  %idxprom = zext i32 %21 to i64
  %arrayidx = getelementptr inbounds [0 x i8]* bitcast ([32832 x i8]* @inbuf to [0 x i8]*), i64 0, i64 %idxprom
  %23 = load i8* %arrayidx, align 1, !tbaa !9
  %conv107 = zext i8 %23 to i32
  br label %cond.end

cond.false:                                       ; preds = %while.body
  %call108 = tail call i32 @fill_inbuf(i32 0) #2
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond109 = phi i32 [ %conv107, %cond.true ], [ %call108, %cond.false ]
  %conv110 = trunc i32 %cond109 to i8
  %24 = load i32* @outcnt, align 4, !tbaa !1
  %inc111 = add i32 %24, 1
  store i32 %inc111, i32* @outcnt, align 4, !tbaa !1
  %idxprom112 = zext i32 %24 to i64
  %arrayidx113 = getelementptr inbounds [0 x i8]* bitcast ([65536 x i8]* @window to [0 x i8]*), i64 0, i64 %idxprom112
  store i8 %conv110, i8* %arrayidx113, align 1, !tbaa !9
  %cmp114 = icmp eq i32 %inc111, 32768
  br i1 %cmp114, label %if.then116, label %while.cond.backedge

if.then116:                                       ; preds = %cond.end
  tail call void @flush_window() #2
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.then116, %cond.end
  %tobool104 = icmp eq i64 %dec370, 0
  br i1 %tobool104, label %while.end.loopexit, label %while.body

while.end.loopexit:                               ; preds = %while.cond.backedge
  br label %while.end

while.end:                                        ; preds = %while.end.loopexit, %while.cond.preheader
  tail call void @flush_window() #2
  br label %if.end120

if.else118:                                       ; preds = %if.else42
  tail call void @error(i8* getelementptr inbounds ([31 x i8]* @.str7156, i64 0, i64 0)) #2
  br label %if.end120

if.end120:                                        ; preds = %if.else118, %while.end, %if.then39, %if.then36, %if.then32
  %25 = load i32* @pkzip, align 4, !tbaa !1
  %tobool121 = icmp eq i32 %25, 0
  br i1 %tobool121, label %for.body.preheader, label %if.else192

for.body.preheader:                               ; preds = %if.end120
  br label %for.body

for.body:                                         ; preds = %cond.end134, %for.body.preheader
  %indvars.iv = phi i64 [ %indvars.iv.next, %cond.end134 ], [ 0, %for.body.preheader ]
  %26 = load i32* @inptr, align 4, !tbaa !1
  %27 = load i32* @insize, align 4, !tbaa !1
  %cmp125 = icmp ult i32 %26, %27
  br i1 %cmp125, label %cond.true127, label %cond.false132

cond.true127:                                     ; preds = %for.body
  %inc128 = add i32 %26, 1
  store i32 %inc128, i32* @inptr, align 4, !tbaa !1
  %idxprom129 = zext i32 %26 to i64
  %arrayidx130 = getelementptr inbounds [0 x i8]* bitcast ([32832 x i8]* @inbuf to [0 x i8]*), i64 0, i64 %idxprom129
  %28 = load i8* %arrayidx130, align 1, !tbaa !9
  %conv131 = zext i8 %28 to i32
  br label %cond.end134

cond.false132:                                    ; preds = %for.body
  %call133 = tail call i32 @fill_inbuf(i32 0) #2
  br label %cond.end134

cond.end134:                                      ; preds = %cond.false132, %cond.true127
  %cond135 = phi i32 [ %conv131, %cond.true127 ], [ %call133, %cond.false132 ]
  %conv136 = trunc i32 %cond135 to i8
  %arrayidx138 = getelementptr inbounds [16 x i8]* %buf, i64 0, i64 %indvars.iv
  store i8 %conv136, i8* %arrayidx138, align 1, !tbaa !9
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 8
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %cond.end134
  %29 = bitcast [16 x i8]* %buf to i32*
  %30 = load i32* %29, align 16
  %31 = bitcast [16 x i8]* %buf to i64*
  %32 = load i64* %31, align 16
  %or147 = and i64 %32, 65535
  %conv151 = and i64 %32, 16711680
  %33 = lshr i32 %30, 24
  %34 = zext i32 %33 to i64
  %shl157 = shl nuw nsw i64 %34, 24
  %or158 = or i64 %shl157, %conv151
  %or161 = or i64 %or147, %or158
  %35 = lshr i64 %32, 32
  %conv166 = and i64 %35, 255
  %36 = lshr i64 %32, 32
  %shl172 = and i64 %36, 65280
  %or173 = or i64 %shl172, %conv166
  %37 = lshr i64 %32, 48
  %conv180 = and i64 %37, 255
  %38 = lshr i64 %32, 56
  %shl187 = shl nuw nsw i64 %38, 8
  %or188 = or i64 %shl187, %conv180
  %shl190 = shl nuw nsw i64 %or188, 16
  %or191 = or i64 %or173, %shl190
  br label %if.end277

if.else192:                                       ; preds = %if.end120
  %39 = load i32* @ext_header, align 4, !tbaa !1
  %tobool193 = icmp eq i32 %39, 0
  br i1 %tobool193, label %if.end277, label %for.body198.preheader

for.body198.preheader:                            ; preds = %if.else192
  br label %for.body198

for.body198:                                      ; preds = %cond.end208, %for.body198.preheader
  %indvars.iv371 = phi i64 [ %indvars.iv.next372, %cond.end208 ], [ 0, %for.body198.preheader ]
  %40 = load i32* @inptr, align 4, !tbaa !1
  %41 = load i32* @insize, align 4, !tbaa !1
  %cmp199 = icmp ult i32 %40, %41
  br i1 %cmp199, label %cond.true201, label %cond.false206

cond.true201:                                     ; preds = %for.body198
  %inc202 = add i32 %40, 1
  store i32 %inc202, i32* @inptr, align 4, !tbaa !1
  %idxprom203 = zext i32 %40 to i64
  %arrayidx204 = getelementptr inbounds [0 x i8]* bitcast ([32832 x i8]* @inbuf to [0 x i8]*), i64 0, i64 %idxprom203
  %42 = load i8* %arrayidx204, align 1, !tbaa !9
  %conv205 = zext i8 %42 to i32
  br label %cond.end208

cond.false206:                                    ; preds = %for.body198
  %call207 = tail call i32 @fill_inbuf(i32 0) #2
  br label %cond.end208

cond.end208:                                      ; preds = %cond.false206, %cond.true201
  %cond209 = phi i32 [ %conv205, %cond.true201 ], [ %call207, %cond.false206 ]
  %conv210 = trunc i32 %cond209 to i8
  %arrayidx212 = getelementptr inbounds [16 x i8]* %buf, i64 0, i64 %indvars.iv371
  store i8 %conv210, i8* %arrayidx212, align 1, !tbaa !9
  %indvars.iv.next372 = add nuw nsw i64 %indvars.iv371, 1
  %exitcond373 = icmp eq i64 %indvars.iv.next372, 16
  br i1 %exitcond373, label %for.end215, label %for.body198

for.end215:                                       ; preds = %cond.end208
  %add.ptr217 = getelementptr inbounds [16 x i8]* %buf, i64 0, i64 4
  %43 = bitcast i8* %add.ptr217 to i32*
  %44 = load i32* %43, align 4
  %45 = zext i32 %44 to i64
  %46 = zext i32 %44 to i64
  %conv220 = and i64 %46, 255
  %47 = and i64 %45, 65280
  %or227 = or i64 %47, %conv220
  %48 = lshr i32 %44, 16
  %49 = zext i32 %48 to i64
  %conv234 = and i64 %49, 255
  %50 = lshr i32 %44, 24
  %51 = zext i32 %50 to i64
  %shl241 = shl nuw nsw i64 %51, 8
  %or242 = or i64 %shl241, %conv234
  %shl244 = shl nuw nsw i64 %or242, 16
  %or245 = or i64 %or227, %shl244
  %add.ptr247 = getelementptr inbounds [16 x i8]* %buf, i64 0, i64 12
  %52 = bitcast i8* %add.ptr247 to i32*
  %53 = load i32* %52, align 4
  %54 = zext i32 %53 to i64
  %55 = zext i32 %53 to i64
  %conv250 = and i64 %55, 255
  %56 = and i64 %54, 65280
  %or257 = or i64 %56, %conv250
  %57 = lshr i32 %53, 16
  %58 = zext i32 %57 to i64
  %conv264 = and i64 %58, 255
  %59 = lshr i32 %53, 24
  %60 = zext i32 %59 to i64
  %shl271 = shl nuw nsw i64 %60, 8
  %or272 = or i64 %shl271, %conv264
  %shl274 = shl nuw nsw i64 %or272, 16
  %or275 = or i64 %or257, %shl274
  br label %if.end277

if.end277:                                        ; preds = %for.end215, %if.else192, %for.end
  %orig_len.1 = phi i64 [ %or275, %for.end215 ], [ %orig_len.0, %if.else192 ], [ %or191, %for.end ]
  %orig_crc.1 = phi i64 [ %or245, %for.end215 ], [ %orig_crc.0, %if.else192 ], [ %or161, %for.end ]
  %call278 = tail call i64 @updcrc(i8* getelementptr inbounds ([18432 x i8]* @outbuf, i64 0, i64 0), i32 0) #2
  %cmp279 = icmp eq i64 %orig_crc.1, %call278
  br i1 %cmp279, label %if.end282, label %if.then281

if.then281:                                       ; preds = %if.end277
  tail call void @error(i8* getelementptr inbounds ([35 x i8]* @.str8157, i64 0, i64 0)) #2
  br label %if.end282

if.end282:                                        ; preds = %if.then281, %if.end277
  %61 = load i64* @bytes_out, align 8, !tbaa !15
  %cmp283 = icmp eq i64 %orig_len.1, %61
  br i1 %cmp283, label %if.end286, label %if.then285

if.then285:                                       ; preds = %if.end282
  tail call void @error(i8* getelementptr inbounds ([38 x i8]* @.str9158, i64 0, i64 0)) #2
  br label %if.end286

if.end286:                                        ; preds = %if.then285, %if.end282
  %62 = load i32* @pkzip, align 4, !tbaa !1
  %tobool287 = icmp eq i32 %62, 0
  br i1 %tobool287, label %return, label %land.lhs.true288

land.lhs.true288:                                 ; preds = %if.end286
  %63 = load i32* @inptr, align 4, !tbaa !1
  %add = add i32 %63, 4
  %64 = load i32* @insize, align 4, !tbaa !1
  %cmp289 = icmp ult i32 %add, %64
  br i1 %cmp289, label %land.lhs.true291, label %return

land.lhs.true291:                                 ; preds = %land.lhs.true288
  %idx.ext = zext i32 %63 to i64
  %add.ptr292 = getelementptr inbounds [0 x i8]* bitcast ([32832 x i8]* @inbuf to [0 x i8]*), i64 0, i64 %idx.ext
  %65 = load i8* %add.ptr292, align 1, !tbaa !9
  %conv295 = zext i8 %65 to i64
  %add.ptr292.sum = add nuw nsw i64 %idx.ext, 1
  %arrayidx298 = getelementptr inbounds [0 x i8]* bitcast ([32832 x i8]* @inbuf to [0 x i8]*), i64 0, i64 %add.ptr292.sum
  %66 = load i8* %arrayidx298, align 1, !tbaa !9
  %conv300 = zext i8 %66 to i64
  %shl301 = shl nuw nsw i64 %conv300, 8
  %or302 = or i64 %shl301, %conv295
  %add.ptr292.sum356 = add nuw nsw i64 %idx.ext, 2
  %add.ptr306 = getelementptr inbounds [0 x i8]* bitcast ([32832 x i8]* @inbuf to [0 x i8]*), i64 0, i64 %add.ptr292.sum356
  %67 = load i8* %add.ptr306, align 1, !tbaa !9
  %conv309 = zext i8 %67 to i64
  %add.ptr306.sum = add nuw nsw i64 %idx.ext, 3
  %arrayidx313 = getelementptr inbounds [0 x i8]* bitcast ([32832 x i8]* @inbuf to [0 x i8]*), i64 0, i64 %add.ptr306.sum
  %68 = load i8* %arrayidx313, align 1, !tbaa !9
  %conv315 = zext i8 %68 to i64
  %shl316 = shl nuw nsw i64 %conv315, 8
  %or317 = or i64 %shl316, %conv309
  %shl319 = shl nuw nsw i64 %or317, 16
  %or320 = or i64 %or302, %shl319
  %cmp321 = icmp eq i64 %or320, 67324752
  br i1 %cmp321, label %if.then323, label %return

if.then323:                                       ; preds = %land.lhs.true291
  %69 = load i32* @to_stdout, align 4, !tbaa !1
  %tobool324 = icmp eq i32 %69, 0
  br i1 %tobool324, label %if.else334, label %if.then325

if.then325:                                       ; preds = %if.then323
  %70 = load i32* @quiet, align 4, !tbaa !1
  %tobool326 = icmp eq i32 %70, 0
  br i1 %tobool326, label %if.then327, label %if.end329

if.then327:                                       ; preds = %if.then325
  %71 = load %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %72 = load i8** @progname, align 8, !tbaa !7
  %call328 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %71, i8* getelementptr inbounds ([46 x i8]* @.str10159, i64 0, i64 0), i8* %72, i8* getelementptr inbounds ([1024 x i8]* @ifname, i64 0, i64 0)) #11
  br label %if.end329

if.end329:                                        ; preds = %if.then327, %if.then325
  %73 = load i32* @exit_code, align 4, !tbaa !1
  %cmp330 = icmp eq i32 %73, 0
  br i1 %cmp330, label %if.then332, label %return

if.then332:                                       ; preds = %if.end329
  store i32 2, i32* @exit_code, align 4, !tbaa !1
  br label %return

if.else334:                                       ; preds = %if.then323
  %74 = load %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %75 = load i8** @progname, align 8, !tbaa !7
  %call335 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %74, i8* getelementptr inbounds ([45 x i8]* @.str11160, i64 0, i64 0), i8* %75, i8* getelementptr inbounds ([1024 x i8]* @ifname, i64 0, i64 0)) #11
  store i32 1, i32* @exit_code, align 4, !tbaa !1
  br label %return

return:                                           ; preds = %if.else334, %if.then332, %if.end329, %land.lhs.true291, %land.lhs.true288, %if.end286
  %retval.0 = phi i32 [ 1, %if.else334 ], [ 0, %if.end286 ], [ 0, %if.then332 ], [ 0, %if.end329 ], [ 0, %land.lhs.true291 ], [ 0, %land.lhs.true288 ]
  store i32 0, i32* @pkzip, align 4, !tbaa !1
  store i32 0, i32* @ext_header, align 4, !tbaa !1
  ret i32 %retval.0
}

; Function Attrs: nounwind uwtable
define i32 @copy(i32 %in, i32 %out) #0 {
entry:
  %call = tail call i32* @__errno_location() #13
  store i32 0, i32* %call, align 4, !tbaa !1
  %.pr = load i32* @insize, align 4, !tbaa !1
  %.off9 = add i32 %.pr, 1
  %.cmp10 = icmp ugt i32 %.off9, 1
  br i1 %.cmp10, label %while.body.preheader, label %while.end

while.body.preheader:                             ; preds = %entry
  br label %while.body

while.body:                                       ; preds = %while.body, %while.body.preheader
  %0 = phi i32 [ %conv3, %while.body ], [ %.pr, %while.body.preheader ]
  tail call void @write_buf(i32 %out, i8* getelementptr inbounds ([32832 x i8]* @inbuf, i64 0, i64 0), i32 %0)
  %1 = load i32* @insize, align 4, !tbaa !1
  %conv = zext i32 %1 to i64
  %2 = load i64* @bytes_out, align 8, !tbaa !15
  %add = add nsw i64 %2, %conv
  store i64 %add, i64* @bytes_out, align 8, !tbaa !15
  %call2 = tail call i64 @read(i32 %in, i8* getelementptr inbounds ([32832 x i8]* @inbuf, i64 0, i64 0), i64 32768) #2
  %conv3 = trunc i64 %call2 to i32
  store i32 %conv3, i32* @insize, align 4, !tbaa !1
  %.off = add i32 %conv3, 1
  %.cmp = icmp ugt i32 %.off, 1
  br i1 %.cmp, label %while.body, label %while.end.loopexit

while.end.loopexit:                               ; preds = %while.body
  %conv3.lcssa = phi i32 [ %conv3, %while.body ]
  br label %while.end

while.end:                                        ; preds = %while.end.loopexit, %entry
  %.lcssa = phi i32 [ %.pr, %entry ], [ %conv3.lcssa, %while.end.loopexit ]
  %cmp4 = icmp eq i32 %.lcssa, -1
  br i1 %cmp4, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %while.end
  %3 = load i32* %call, align 4, !tbaa !1
  %cmp7 = icmp eq i32 %3, 0
  br i1 %cmp7, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %4 = load %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %5 = load i8** @progname, align 8, !tbaa !7
  %call.i = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([6 x i8]* @.str5169, i64 0, i64 0), i8* %5) #11
  %6 = load i32* %call, align 4, !tbaa !1
  %cmp.i = icmp eq i32 %6, 0
  br i1 %cmp.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.then
  tail call void @perror(i8* getelementptr inbounds ([1024 x i8]* @ifname, i64 0, i64 0)) #11
  br label %read_error.exit

if.else.i:                                        ; preds = %if.then
  %7 = load %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %call2.i = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([28 x i8]* @.str6170, i64 0, i64 0), i8* getelementptr inbounds ([1024 x i8]* @ifname, i64 0, i64 0)) #11
  br label %read_error.exit

read_error.exit:                                  ; preds = %if.else.i, %if.then.i
  tail call void @abort_gzip() #2
  br label %if.end

if.end:                                           ; preds = %read_error.exit, %land.lhs.true, %while.end
  %8 = load i64* @bytes_out, align 8, !tbaa !15
  store i64 %8, i64* @bytes_in, align 8, !tbaa !15
  ret i32 0
}

; Function Attrs: nounwind uwtable
define void @write_buf(i32 %fd, i8* nocapture readonly %buf, i32 %cnt) #0 {
entry:
  %conv10 = zext i32 %cnt to i64
  %call11 = tail call i64 @write(i32 %fd, i8* %buf, i64 %conv10) #2
  %conv112 = trunc i64 %call11 to i32
  %cmp13 = icmp eq i32 %conv112, %cnt
  br i1 %cmp13, label %while.end, label %while.body.preheader

while.body.preheader:                             ; preds = %entry
  br label %while.body

while.body:                                       ; preds = %if.end, %while.body.preheader
  %conv117 = phi i32 [ %conv1, %if.end ], [ %conv112, %while.body.preheader ]
  %call16 = phi i64 [ %call, %if.end ], [ %call11, %while.body.preheader ]
  %buf.addr.015 = phi i8* [ %add.ptr, %if.end ], [ %buf, %while.body.preheader ]
  %cnt.addr.014 = phi i32 [ %sub, %if.end ], [ %cnt, %while.body.preheader ]
  %cmp3 = icmp eq i32 %conv117, -1
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %1 = load i8** @progname, align 8, !tbaa !7
  %call.i = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([6 x i8]* @.str5169, i64 0, i64 0), i8* %1) #11
  tail call void @perror(i8* getelementptr inbounds ([1024 x i8]* @ofname, i64 0, i64 0)) #11
  tail call void @abort_gzip() #2
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  %sub = sub i32 %cnt.addr.014, %conv117
  %idx.ext = and i64 %call16, 4294967295
  %add.ptr = getelementptr inbounds i8* %buf.addr.015, i64 %idx.ext
  %conv = zext i32 %sub to i64
  %call = tail call i64 @write(i32 %fd, i8* %add.ptr, i64 %conv) #2
  %conv1 = trunc i64 %call to i32
  %cmp = icmp eq i32 %sub, %conv1
  br i1 %cmp, label %while.end.loopexit, label %while.body

while.end.loopexit:                               ; preds = %if.end
  br label %while.end

while.end:                                        ; preds = %while.end.loopexit, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define void @read_error() #0 {
entry:
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %1 = load i8** @progname, align 8, !tbaa !7
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([6 x i8]* @.str5169, i64 0, i64 0), i8* %1) #11
  %call1 = tail call i32* @__errno_location() #13
  %2 = load i32* %call1, align 4, !tbaa !1
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  tail call void @perror(i8* getelementptr inbounds ([1024 x i8]* @ifname, i64 0, i64 0)) #11
  br label %if.end

if.else:                                          ; preds = %entry
  %3 = load %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %call2 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([28 x i8]* @.str6170, i64 0, i64 0), i8* getelementptr inbounds ([1024 x i8]* @ifname, i64 0, i64 0)) #11
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  tail call void @abort_gzip() #2
  ret void
}

; Function Attrs: nounwind uwtable
define i64 @updcrc(i8* readonly %s, i32 %n) #0 {
entry:
  %cmp = icmp eq i8* %s, null
  br i1 %cmp, label %if.end5, label %if.else

if.else:                                          ; preds = %entry
  %0 = load i64* @updcrc.crc, align 8, !tbaa !15
  %tobool = icmp eq i32 %n, 0
  br i1 %tobool, label %if.end5, label %do.body.preheader

do.body.preheader:                                ; preds = %if.else
  %xtraiter = and i32 %n, 1
  %lcmp.mod = icmp ne i32 %xtraiter, 0
  %lcmp.overflow = icmp eq i32 %n, 0
  %lcmp.or = or i1 %lcmp.overflow, %lcmp.mod
  br i1 %lcmp.or, label %do.body.unr, label %do.body.preheader.split

do.body.unr:                                      ; preds = %do.body.preheader
  %incdec.ptr.unr = getelementptr inbounds i8* %s, i64 1
  %1 = load i8* %s, align 1, !tbaa !9
  %conv2.unr = zext i8 %1 to i64
  %conv.masked.unr = and i64 %0, 255
  %and.unr = xor i64 %conv2.unr, %conv.masked.unr
  %arrayidx.unr = getelementptr inbounds [256 x i64]* @crc_32_tab, i64 0, i64 %and.unr
  %2 = load i64* %arrayidx.unr, align 8, !tbaa !15
  %shr.unr = lshr i64 %0, 8
  %xor3.unr = xor i64 %2, %shr.unr
  %dec.unr = add i32 %n, -1
  %tobool4.unr = icmp eq i32 %dec.unr, 0
  br label %do.body.preheader.split

do.body.preheader.split:                          ; preds = %do.body.unr, %do.body.preheader
  %xor3.lcssa.unr = phi i64 [ 0, %do.body.preheader ], [ %xor3.unr, %do.body.unr ]
  %s.addr.0.unr = phi i8* [ %s, %do.body.preheader ], [ %incdec.ptr.unr, %do.body.unr ]
  %n.addr.0.unr = phi i32 [ %n, %do.body.preheader ], [ %dec.unr, %do.body.unr ]
  %c.0.unr = phi i64 [ %0, %do.body.preheader ], [ %xor3.unr, %do.body.unr ]
  %3 = icmp ult i32 %n, 2
  br i1 %3, label %if.end5.loopexit, label %do.body.preheader.split.split

do.body.preheader.split.split:                    ; preds = %do.body.preheader.split
  br label %do.body

do.body:                                          ; preds = %do.body, %do.body.preheader.split.split
  %s.addr.0 = phi i8* [ %s.addr.0.unr, %do.body.preheader.split.split ], [ %incdec.ptr.1, %do.body ]
  %n.addr.0 = phi i32 [ %n.addr.0.unr, %do.body.preheader.split.split ], [ %dec.1, %do.body ]
  %c.0 = phi i64 [ %c.0.unr, %do.body.preheader.split.split ], [ %xor3.1, %do.body ]
  %incdec.ptr = getelementptr inbounds i8* %s.addr.0, i64 1
  %4 = load i8* %s.addr.0, align 1, !tbaa !9
  %conv2 = zext i8 %4 to i64
  %conv.masked = and i64 %c.0, 255
  %and = xor i64 %conv2, %conv.masked
  %arrayidx = getelementptr inbounds [256 x i64]* @crc_32_tab, i64 0, i64 %and
  %5 = load i64* %arrayidx, align 8, !tbaa !15
  %shr = lshr i64 %c.0, 8
  %xor3 = xor i64 %5, %shr
  %dec = add i32 %n.addr.0, -1
  %incdec.ptr.1 = getelementptr inbounds i8* %incdec.ptr, i64 1
  %6 = load i8* %incdec.ptr, align 1, !tbaa !9
  %conv2.1 = zext i8 %6 to i64
  %conv.masked.1 = and i64 %xor3, 255
  %and.1 = xor i64 %conv2.1, %conv.masked.1
  %arrayidx.1 = getelementptr inbounds [256 x i64]* @crc_32_tab, i64 0, i64 %and.1
  %7 = load i64* %arrayidx.1, align 8, !tbaa !15
  %shr.1 = lshr i64 %xor3, 8
  %xor3.1 = xor i64 %7, %shr.1
  %dec.1 = add i32 %dec, -1
  %tobool4.1 = icmp eq i32 %dec.1, 0
  br i1 %tobool4.1, label %if.end5.loopexit.unr-lcssa, label %do.body

if.end5.loopexit.unr-lcssa:                       ; preds = %do.body
  %xor3.lcssa.ph = phi i64 [ %xor3.1, %do.body ]
  br label %if.end5.loopexit

if.end5.loopexit:                                 ; preds = %if.end5.loopexit.unr-lcssa, %do.body.preheader.split
  %xor3.lcssa = phi i64 [ %xor3.lcssa.unr, %do.body.preheader.split ], [ %xor3.lcssa.ph, %if.end5.loopexit.unr-lcssa ]
  br label %if.end5

if.end5:                                          ; preds = %if.end5.loopexit, %if.else, %entry
  %c.1 = phi i64 [ %0, %if.else ], [ 4294967295, %entry ], [ %xor3.lcssa, %if.end5.loopexit ]
  store i64 %c.1, i64* @updcrc.crc, align 8, !tbaa !15
  %xor6 = xor i64 %c.1, 4294967295
  ret i64 %xor6
}

; Function Attrs: nounwind uwtable
define void @clear_bufs() #0 {
entry:
  store i32 0, i32* @outcnt, align 4, !tbaa !1
  store i32 0, i32* @inptr, align 4, !tbaa !1
  store i32 0, i32* @insize, align 4, !tbaa !1
  store i64 0, i64* @bytes_out, align 8, !tbaa !15
  store i64 0, i64* @bytes_in, align 8, !tbaa !15
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @fill_inbuf(i32 %eof_ok) #0 {
entry:
  store i32 0, i32* @insize, align 4, !tbaa !1
  %call = tail call i32* @__errno_location() #13
  store i32 0, i32* %call, align 4, !tbaa !1
  %.pre = load i32* @insize, align 4, !tbaa !1
  br label %do.body

do.body:                                          ; preds = %if.end, %entry
  %0 = phi i32 [ %add, %if.end ], [ %.pre, %entry ]
  %1 = load i32* @ifd, align 4, !tbaa !1
  %idx.ext = zext i32 %0 to i64
  %add.ptr = getelementptr inbounds [0 x i8]* bitcast ([32832 x i8]* @inbuf to [0 x i8]*), i64 0, i64 %idx.ext
  %sub = sub i32 32768, %0
  %conv = zext i32 %sub to i64
  %call1 = tail call i64 @read(i32 %1, i8* %add.ptr, i64 %conv) #2
  %conv2 = trunc i64 %call1 to i32
  switch i32 %conv2, label %if.end [
    i32 -1, label %do.end
    i32 0, label %do.end
  ]

if.end:                                           ; preds = %do.body
  %2 = load i32* @insize, align 4, !tbaa !1
  %add = add i32 %2, %conv2
  store i32 %add, i32* @insize, align 4, !tbaa !1
  %cmp6 = icmp ult i32 %add, 32768
  br i1 %cmp6, label %do.body, label %if.end13.loopexit

do.end:                                           ; preds = %do.body, %do.body
  %.pr = load i32* @insize, align 4, !tbaa !1
  %cmp8 = icmp eq i32 %.pr, 0
  br i1 %cmp8, label %if.then10, label %if.end13

if.then10:                                        ; preds = %do.end
  %tobool = icmp eq i32 %eof_ok, 0
  br i1 %tobool, label %if.end12, label %return

if.end12:                                         ; preds = %if.then10
  %3 = load %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %4 = load i8** @progname, align 8, !tbaa !7
  %call.i = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([6 x i8]* @.str5169, i64 0, i64 0), i8* %4) #11
  %5 = load i32* %call, align 4, !tbaa !1
  %cmp.i = icmp eq i32 %5, 0
  br i1 %cmp.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end12
  tail call void @perror(i8* getelementptr inbounds ([1024 x i8]* @ifname, i64 0, i64 0)) #11
  br label %read_error.exit

if.else.i:                                        ; preds = %if.end12
  %6 = load %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %call2.i = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([28 x i8]* @.str6170, i64 0, i64 0), i8* getelementptr inbounds ([1024 x i8]* @ifname, i64 0, i64 0)) #11
  br label %read_error.exit

read_error.exit:                                  ; preds = %if.else.i, %if.then.i
  tail call void @abort_gzip() #2
  %.pre20 = load i32* @insize, align 4, !tbaa !1
  br label %if.end13

if.end13.loopexit:                                ; preds = %if.end
  %add.lcssa = phi i32 [ %add, %if.end ]
  br label %if.end13

if.end13:                                         ; preds = %if.end13.loopexit, %read_error.exit, %do.end
  %7 = phi i32 [ %.pre20, %read_error.exit ], [ %.pr, %do.end ], [ %add.lcssa, %if.end13.loopexit ]
  %conv14 = zext i32 %7 to i64
  %8 = load i64* @bytes_in, align 8, !tbaa !15
  %add15 = add i64 %8, %conv14
  store i64 %add15, i64* @bytes_in, align 8, !tbaa !15
  store i32 1, i32* @inptr, align 4, !tbaa !1
  %9 = load i8* getelementptr inbounds ([32832 x i8]* @inbuf, i64 0, i64 0), align 1, !tbaa !9
  %conv16 = zext i8 %9 to i32
  br label %return

return:                                           ; preds = %if.end13, %if.then10
  %retval.0 = phi i32 [ %conv16, %if.end13 ], [ -1, %if.then10 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind uwtable
define void @flush_outbuf() #0 {
entry:
  %0 = load i32* @outcnt, align 4, !tbaa !1
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %1 = load i32* @ofd, align 4, !tbaa !1
  tail call void @write_buf(i32 %1, i8* getelementptr inbounds ([18432 x i8]* @outbuf, i64 0, i64 0), i32 %0)
  %2 = load i32* @outcnt, align 4, !tbaa !1
  %conv = zext i32 %2 to i64
  %3 = load i64* @bytes_out, align 8, !tbaa !15
  %add = add i64 %3, %conv
  store i64 %add, i64* @bytes_out, align 8, !tbaa !15
  store i32 0, i32* @outcnt, align 4, !tbaa !1
  br label %return

return:                                           ; preds = %if.end, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define void @flush_window() #0 {
entry:
  %0 = load i32* @outcnt, align 4, !tbaa !1
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %1 = load i64* @updcrc.crc, align 8, !tbaa !15
  %xtraiter = and i32 %0, 1
  %lcmp.mod = icmp ne i32 %xtraiter, 0
  %lcmp.overflow = icmp eq i32 %0, 0
  %lcmp.or = or i1 %lcmp.overflow, %lcmp.mod
  br i1 %lcmp.or, label %do.body.i.unr, label %if.end.split

do.body.i.unr:                                    ; preds = %if.end
  %incdec.ptr.i.unr = getelementptr inbounds i8* getelementptr inbounds ([65536 x i8]* @window, i64 0, i64 0), i64 1
  %2 = load i8* getelementptr inbounds ([65536 x i8]* @window, i64 0, i64 0), align 1, !tbaa !9
  %conv2.i.unr = zext i8 %2 to i64
  %conv.masked.i.unr = and i64 %1, 255
  %and.i.unr = xor i64 %conv2.i.unr, %conv.masked.i.unr
  %arrayidx.i.unr = getelementptr inbounds [256 x i64]* @crc_32_tab, i64 0, i64 %and.i.unr
  %3 = load i64* %arrayidx.i.unr, align 8, !tbaa !15
  %shr.i.unr = lshr i64 %1, 8
  %xor3.i.unr = xor i64 %3, %shr.i.unr
  %dec.i.unr = add i32 %0, -1
  %tobool4.i.unr = icmp eq i32 %dec.i.unr, 0
  br label %if.end.split

if.end.split:                                     ; preds = %do.body.i.unr, %if.end
  %xor3.i.lcssa.unr = phi i64 [ 0, %if.end ], [ %xor3.i.unr, %do.body.i.unr ]
  %s.addr.0.i.unr = phi i8* [ getelementptr inbounds ([65536 x i8]* @window, i64 0, i64 0), %if.end ], [ %incdec.ptr.i.unr, %do.body.i.unr ]
  %n.addr.0.i.unr = phi i32 [ %0, %if.end ], [ %dec.i.unr, %do.body.i.unr ]
  %c.0.i.unr = phi i64 [ %1, %if.end ], [ %xor3.i.unr, %do.body.i.unr ]
  %4 = icmp ult i32 %0, 2
  br i1 %4, label %updcrc.exit, label %if.end.split.split

if.end.split.split:                               ; preds = %if.end.split
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i, %if.end.split.split
  %s.addr.0.i = phi i8* [ %s.addr.0.i.unr, %if.end.split.split ], [ %incdec.ptr.i.1, %do.body.i ]
  %n.addr.0.i = phi i32 [ %n.addr.0.i.unr, %if.end.split.split ], [ %dec.i.1, %do.body.i ]
  %c.0.i = phi i64 [ %c.0.i.unr, %if.end.split.split ], [ %xor3.i.1, %do.body.i ]
  %incdec.ptr.i = getelementptr inbounds i8* %s.addr.0.i, i64 1
  %5 = load i8* %s.addr.0.i, align 1, !tbaa !9
  %conv2.i = zext i8 %5 to i64
  %conv.masked.i = and i64 %c.0.i, 255
  %and.i = xor i64 %conv2.i, %conv.masked.i
  %arrayidx.i = getelementptr inbounds [256 x i64]* @crc_32_tab, i64 0, i64 %and.i
  %6 = load i64* %arrayidx.i, align 8, !tbaa !15
  %shr.i = lshr i64 %c.0.i, 8
  %xor3.i = xor i64 %6, %shr.i
  %dec.i = add i32 %n.addr.0.i, -1
  %incdec.ptr.i.1 = getelementptr inbounds i8* %incdec.ptr.i, i64 1
  %7 = load i8* %incdec.ptr.i, align 1, !tbaa !9
  %conv2.i.1 = zext i8 %7 to i64
  %conv.masked.i.1 = and i64 %xor3.i, 255
  %and.i.1 = xor i64 %conv2.i.1, %conv.masked.i.1
  %arrayidx.i.1 = getelementptr inbounds [256 x i64]* @crc_32_tab, i64 0, i64 %and.i.1
  %8 = load i64* %arrayidx.i.1, align 8, !tbaa !15
  %shr.i.1 = lshr i64 %xor3.i, 8
  %xor3.i.1 = xor i64 %8, %shr.i.1
  %dec.i.1 = add i32 %dec.i, -1
  %tobool4.i.1 = icmp eq i32 %dec.i.1, 0
  br i1 %tobool4.i.1, label %updcrc.exit.unr-lcssa, label %do.body.i

updcrc.exit.unr-lcssa:                            ; preds = %do.body.i
  %xor3.i.lcssa.ph = phi i64 [ %xor3.i.1, %do.body.i ]
  br label %updcrc.exit

updcrc.exit:                                      ; preds = %updcrc.exit.unr-lcssa, %if.end.split
  %xor3.i.lcssa = phi i64 [ %xor3.i.lcssa.unr, %if.end.split ], [ %xor3.i.lcssa.ph, %updcrc.exit.unr-lcssa ]
  store i64 %xor3.i.lcssa, i64* @updcrc.crc, align 8, !tbaa !15
  %9 = load i32* @test, align 4, !tbaa !1
  %tobool = icmp eq i32 %9, 0
  br i1 %tobool, label %if.then1, label %if.end2

if.then1:                                         ; preds = %updcrc.exit
  %10 = load i32* @ofd, align 4, !tbaa !1
  tail call void @write_buf(i32 %10, i8* getelementptr inbounds ([65536 x i8]* @window, i64 0, i64 0), i32 %0)
  %.pre = load i32* @outcnt, align 4, !tbaa !1
  br label %if.end2

if.end2:                                          ; preds = %if.then1, %updcrc.exit
  %11 = phi i32 [ %0, %updcrc.exit ], [ %.pre, %if.then1 ]
  %conv = zext i32 %11 to i64
  %12 = load i64* @bytes_out, align 8, !tbaa !15
  %add = add i64 %12, %conv
  store i64 %add, i64* @bytes_out, align 8, !tbaa !15
  store i32 0, i32* @outcnt, align 4, !tbaa !1
  br label %return

return:                                           ; preds = %if.end2, %entry
  ret void
}

declare i64 @write(i32, i8* nocapture readonly, i64) #6

; Function Attrs: nounwind uwtable
define void @write_error() #0 {
entry:
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %1 = load i8** @progname, align 8, !tbaa !7
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([6 x i8]* @.str5169, i64 0, i64 0), i8* %1) #11
  tail call void @perror(i8* getelementptr inbounds ([1024 x i8]* @ofname, i64 0, i64 0)) #11
  tail call void @abort_gzip() #2
  ret void
}

; Function Attrs: nounwind uwtable
define i8* @strlwr(i8* %s) #0 {
entry:
  %0 = load i8* %s, align 1, !tbaa !9
  %tobool11 = icmp eq i8 %0, 0
  br i1 %tobool11, label %for.end, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %entry
  %call = tail call i16** @__ctype_b_loc() #13
  br label %for.body

for.body:                                         ; preds = %for.body, %for.body.lr.ph
  %1 = phi i8 [ %0, %for.body.lr.ph ], [ %4, %for.body ]
  %t.012 = phi i8* [ %s, %for.body.lr.ph ], [ %incdec.ptr, %for.body ]
  %idxprom = sext i8 %1 to i64
  %2 = load i16** %call, align 8, !tbaa !7
  %arrayidx = getelementptr inbounds i16* %2, i64 %idxprom
  %3 = load i16* %arrayidx, align 2, !tbaa !5
  %and = and i16 %3, 256
  %tobool2 = icmp eq i16 %and, 0
  %add = add i8 %1, 32
  %.add = select i1 %tobool2, i8 %1, i8 %add
  store i8 %.add, i8* %t.012, align 1, !tbaa !9
  %incdec.ptr = getelementptr inbounds i8* %t.012, i64 1
  %4 = load i8* %incdec.ptr, align 1, !tbaa !9
  %tobool = icmp eq i8 %4, 0
  br i1 %tobool, label %for.end.loopexit, label %for.body

for.end.loopexit:                                 ; preds = %for.body
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %entry
  ret i8* %s
}

; Function Attrs: nounwind readonly uwtable
define i8* @basename(i8* readonly %fname) #9 {
entry:
  %call = tail call i8* @strrchr(i8* %fname, i32 47) #10
  %cmp = icmp eq i8* %call, null
  %add.ptr = getelementptr inbounds i8* %call, i64 1
  %fname.add.ptr = select i1 %cmp, i8* %fname, i8* %add.ptr
  ret i8* %fname.add.ptr
}

; Function Attrs: nounwind uwtable
define void @make_simple_name(i8* %name) #0 {
entry:
  %name18 = ptrtoint i8* %name to i64
  %call = tail call i8* @strrchr(i8* %name, i32 46) #10
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %do.end, label %if.end

if.end:                                           ; preds = %entry
  %cmp1 = icmp eq i8* %call, %name
  %incdec.ptr = getelementptr inbounds i8* %call, i64 1
  %incdec.ptr.call = select i1 %cmp1, i8* %incdec.ptr, i8* %call
  %0 = xor i64 %name18, -1
  %scevgep = getelementptr i8* %incdec.ptr.call, i64 %0
  %backedge.overflow = icmp eq i8* %scevgep, inttoptr (i64 -1 to i8*)
  br i1 %backedge.overflow, label %do.body.preheader, label %overflow.checked

overflow.checked:                                 ; preds = %if.end
  %1 = ptrtoint i8* %incdec.ptr.call to i64
  %2 = sub i64 %1, %name18
  %n.vec = and i64 %2, -2
  %cmp.zero = icmp eq i64 %n.vec, 0
  %rev.ind.end = sub i64 0, %n.vec
  %rev.ptr.ind.end = getelementptr i8* %incdec.ptr.call, i64 %rev.ind.end
  br i1 %cmp.zero, label %middle.block, label %vector.body.preheader

vector.body.preheader:                            ; preds = %overflow.checked
  br label %vector.body

vector.body:                                      ; preds = %else23, %vector.body.preheader
  %index = phi i64 [ %index.next, %else23 ], [ 0, %vector.body.preheader ]
  %next.gep.sum = xor i64 %index, -1
  %3 = getelementptr inbounds i8* %incdec.ptr.call, i64 %next.gep.sum
  %next.gep21.sum = sub i64 -2, %index
  %4 = getelementptr inbounds i8* %incdec.ptr.call, i64 %next.gep21.sum
  %5 = load i8* %3, align 1, !tbaa !9
  %6 = load i8* %4, align 1, !tbaa !9
  %7 = icmp eq i8 %5, 46
  %8 = icmp eq i8 %6, 46
  br i1 %7, label %cond.store, label %else

cond.store:                                       ; preds = %vector.body
  store i8 95, i8* %3, align 1, !tbaa !9
  br label %else

else:                                             ; preds = %cond.store, %vector.body
  br i1 %8, label %cond.store22, label %else23

cond.store22:                                     ; preds = %else
  store i8 95, i8* %4, align 1, !tbaa !9
  br label %else23

else23:                                           ; preds = %cond.store22, %else
  %index.next = add i64 %index, 2
  %9 = icmp eq i64 %index.next, %n.vec
  br i1 %9, label %middle.block.loopexit, label %vector.body, !llvm.loop !66

middle.block.loopexit:                            ; preds = %else23
  br label %middle.block

middle.block:                                     ; preds = %middle.block.loopexit, %overflow.checked
  %resume.val = phi i8* [ %incdec.ptr.call, %overflow.checked ], [ %rev.ptr.ind.end, %middle.block.loopexit ]
  %new.indc.resume.val = phi i64 [ 0, %overflow.checked ], [ %n.vec, %middle.block.loopexit ]
  %cmp.n = icmp eq i64 %2, %new.indc.resume.val
  br i1 %cmp.n, label %do.end, label %do.body.preheader

do.body.preheader:                                ; preds = %middle.block, %if.end
  %p.0.ph = phi i8* [ %incdec.ptr.call, %if.end ], [ %resume.val, %middle.block ]
  br label %do.body

do.body:                                          ; preds = %do.cond, %do.body.preheader
  %p.0 = phi i8* [ %incdec.ptr4, %do.cond ], [ %p.0.ph, %do.body.preheader ]
  %incdec.ptr4 = getelementptr inbounds i8* %p.0, i64 -1
  %10 = load i8* %incdec.ptr4, align 1, !tbaa !9
  %cmp5 = icmp eq i8 %10, 46
  br i1 %cmp5, label %if.then7, label %do.cond

if.then7:                                         ; preds = %do.body
  store i8 95, i8* %incdec.ptr4, align 1, !tbaa !9
  br label %do.cond

do.cond:                                          ; preds = %if.then7, %do.body
  %cmp9 = icmp eq i8* %incdec.ptr4, %name
  br i1 %cmp9, label %do.end.loopexit, label %do.body, !llvm.loop !67

do.end.loopexit:                                  ; preds = %do.cond
  br label %do.end

do.end:                                           ; preds = %do.end.loopexit, %middle.block, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define i8* @add_envopt(i32* nocapture %argcp, i8*** nocapture %argvp, i8* nocapture readonly %env) #0 {
entry:
  %0 = load i32* %argcp, align 4, !tbaa !1
  %call = tail call i8* @getenv(i8* %env) #2
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %call1 = tail call i64 @strlen(i8* %call) #10
  %add = add i64 %call1, 1
  %conv.i = and i64 %add, 4294967295
  %call.i = tail call noalias i8* @malloc(i64 %conv.i) #2
  %cmp.i = icmp eq i8* %call.i, null
  br i1 %cmp.i, label %if.then.i, label %xmalloc.exit

if.then.i:                                        ; preds = %if.end
  %1 = load %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %2 = load i8** @progname, align 8, !tbaa !7
  %call.i.i = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([13 x i8]* @.str3167, i64 0, i64 0), i8* %2, i8* getelementptr inbounds ([1024 x i8]* @ifname, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8]* @.str1165, i64 0, i64 0)) #11
  tail call void @abort_gzip() #2
  br label %xmalloc.exit

xmalloc.exit:                                     ; preds = %if.then.i, %if.end
  %call3 = tail call i8* @strcpy(i8* %call.i, i8* %call) #2
  %3 = load i8* %call3, align 1, !tbaa !9
  %tobool278 = icmp eq i8 %3, 0
  br i1 %tobool278, label %if.then102, label %while.cond.i.preheader.preheader

while.cond.i.preheader.preheader:                 ; preds = %xmalloc.exit
  br label %while.cond.i.preheader

while.cond.i.preheader:                           ; preds = %for.inc, %while.cond.i.preheader.preheader
  %4 = phi i8 [ %.pre287, %for.inc ], [ %3, %while.cond.i.preheader.preheader ]
  %p.0280 = phi i8* [ %incdec.ptr, %for.inc ], [ %call3, %while.cond.i.preheader.preheader ]
  %nargc.0279 = phi i32 [ %inc, %for.inc ], [ 0, %while.cond.i.preheader.preheader ]
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.cond.i.backedge, %while.cond.i.preheader
  %5 = phi i8 [ %4, %while.cond.i.preheader ], [ %.pre, %while.cond.i.backedge ]
  %__result.0.i = phi i64 [ 0, %while.cond.i.preheader ], [ %inc.i, %while.cond.i.backedge ]
  %conv.i249 = sext i8 %5 to i32
  %inc.i = add i64 %__result.0.i, 1
  switch i32 %conv.i249, label %__strspn_c2.exit [
    i32 32, label %while.cond.i.backedge
    i32 9, label %while.cond.i.backedge
  ]

while.cond.i.backedge:                            ; preds = %while.cond.i, %while.cond.i
  %arrayidx.i.phi.trans.insert = getelementptr inbounds i8* %p.0280, i64 %inc.i
  %.pre = load i8* %arrayidx.i.phi.trans.insert, align 1, !tbaa !9
  br label %while.cond.i

__strspn_c2.exit:                                 ; preds = %while.cond.i
  %__result.0.i.lcssa = phi i64 [ %__result.0.i, %while.cond.i ]
  %.lcssa = phi i8 [ %5, %while.cond.i ]
  %cmp44 = icmp eq i8 %.lcssa, 0
  br i1 %cmp44, label %for.end.loopexit, label %while.cond.i255.preheader

while.cond.i255.preheader:                        ; preds = %__strspn_c2.exit
  br label %while.cond.i255

while.cond.i255:                                  ; preds = %switch.early.test, %while.cond.i255.preheader
  %__result.0.i251 = phi i64 [ %inc.i254, %switch.early.test ], [ 0, %while.cond.i255.preheader ]
  %arrayidx.i.sum = add i64 %__result.0.i251, %__result.0.i.lcssa
  %arrayidx.i252 = getelementptr inbounds i8* %p.0280, i64 %arrayidx.i.sum
  %6 = load i8* %arrayidx.i252, align 1, !tbaa !9
  %notlhs.i = icmp eq i8 %6, 0
  br i1 %notlhs.i, label %for.inc.thread, label %switch.early.test

for.inc.thread:                                   ; preds = %while.cond.i255
  %nargc.0279.lcssa347 = phi i32 [ %nargc.0279, %while.cond.i255 ]
  %inc289 = add nsw i32 %nargc.0279.lcssa347, 1
  br label %for.end

switch.early.test:                                ; preds = %while.cond.i255
  %inc.i254 = add i64 %__result.0.i251, 1
  %conv.i253 = sext i8 %6 to i32
  switch i32 %conv.i253, label %while.cond.i255 [
    i32 32, label %for.inc
    i32 9, label %for.inc
  ]

for.inc:                                          ; preds = %switch.early.test, %switch.early.test
  %arrayidx.i252.lcssa346 = phi i8* [ %arrayidx.i252, %switch.early.test ], [ %arrayidx.i252, %switch.early.test ]
  %arrayidx.i.sum.lcssa345 = phi i64 [ %arrayidx.i.sum, %switch.early.test ], [ %arrayidx.i.sum, %switch.early.test ]
  %add.ptr96.sum = add i64 %arrayidx.i.sum.lcssa345, 1
  %incdec.ptr = getelementptr inbounds i8* %p.0280, i64 %add.ptr96.sum
  store i8 0, i8* %arrayidx.i252.lcssa346, align 1, !tbaa !9
  %.pre287 = load i8* %incdec.ptr, align 1, !tbaa !9
  %inc = add nsw i32 %nargc.0279, 1
  %tobool = icmp eq i8 %.pre287, 0
  br i1 %tobool, label %for.end.loopexit, label %while.cond.i.preheader

for.end.loopexit:                                 ; preds = %for.inc, %__strspn_c2.exit
  %nargc.0.lcssa.ph = phi i32 [ %inc, %for.inc ], [ %nargc.0279, %__strspn_c2.exit ]
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %for.inc.thread
  %nargc.0.lcssa = phi i32 [ %inc289, %for.inc.thread ], [ %nargc.0.lcssa.ph, %for.end.loopexit ]
  %cmp100 = icmp eq i32 %nargc.0.lcssa, 0
  br i1 %cmp100, label %if.then102, label %if.end103

if.then102:                                       ; preds = %for.end, %xmalloc.exit
  tail call void @free(i8* %call3) #2
  br label %return

if.end103:                                        ; preds = %for.end
  %7 = load i32* %argcp, align 4, !tbaa !1
  %add104 = add nsw i32 %7, %nargc.0.lcssa
  store i32 %add104, i32* %argcp, align 4, !tbaa !1
  %add105 = add nsw i32 %add104, 1
  %conv106 = sext i32 %add105 to i64
  %call107 = tail call noalias i8* @calloc(i64 %conv106, i64 8) #2
  %8 = bitcast i8* %call107 to i8**
  %cmp108 = icmp eq i8* %call107, null
  br i1 %cmp108, label %if.then110, label %if.end111

if.then110:                                       ; preds = %if.end103
  %9 = load %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %10 = load i8** @progname, align 8, !tbaa !7
  %call.i256 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([13 x i8]* @.str3167, i64 0, i64 0), i8* %10, i8* getelementptr inbounds ([1024 x i8]* @ifname, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8]* @.str1165, i64 0, i64 0)) #11
  tail call void @abort_gzip() #2
  br label %if.end111

if.end111:                                        ; preds = %if.then110, %if.end103
  %11 = load i8*** %argvp, align 8, !tbaa !7
  store i8** %8, i8*** %argvp, align 8, !tbaa !7
  %cmp112 = icmp slt i32 %0, 0
  br i1 %cmp112, label %if.then114, label %if.end115

if.then114:                                       ; preds = %if.end111
  %12 = load %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %13 = load i8** @progname, align 8, !tbaa !7
  %call.i257 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %12, i8* getelementptr inbounds ([13 x i8]* @.str3167, i64 0, i64 0), i8* %13, i8* getelementptr inbounds ([1024 x i8]* @ifname, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str2166, i64 0, i64 0)) #11
  tail call void @abort_gzip() #2
  br label %if.end115

if.end115:                                        ; preds = %if.then114, %if.end111
  %14 = load i8** %11, align 8, !tbaa !7
  %incdec.ptr117 = getelementptr inbounds i8* %call107, i64 8
  %15 = bitcast i8* %incdec.ptr117 to i8**
  store i8* %14, i8** %8, align 8, !tbaa !7
  %cmp119273 = icmp sgt i32 %nargc.0.lcssa, 0
  br i1 %cmp119273, label %while.cond.i265.preheader.lr.ph, label %while.cond179.preheader

while.cond.i265.preheader.lr.ph:                  ; preds = %if.end115
  %16 = add i32 %nargc.0.lcssa, -1
  %17 = zext i32 %16 to i64
  %18 = shl nuw nsw i64 %17, 3
  %19 = add nuw nsw i64 %18, 16
  %scevgep285 = getelementptr i8* %call107, i64 %19
  br label %while.cond.i265.preheader

while.cond.i265.preheader:                        ; preds = %for.inc176, %while.cond.i265.preheader.lr.ph
  %p.2276 = phi i8* [ %call3, %while.cond.i265.preheader.lr.ph ], [ %incdec.ptr174.lcssa, %for.inc176 ]
  %nargv.0275 = phi i8** [ %15, %while.cond.i265.preheader.lr.ph ], [ %incdec.ptr173, %for.inc176 ]
  %nargc.1274 = phi i32 [ %nargc.0.lcssa, %while.cond.i265.preheader.lr.ph ], [ %dec177, %for.inc176 ]
  br label %while.cond.i265

for.cond118.while.cond179.preheader_crit_edge:    ; preds = %for.inc176
  %scevgep285286 = bitcast i8* %scevgep285 to i8**
  br label %while.cond179.preheader

while.cond179.preheader:                          ; preds = %for.cond118.while.cond179.preheader_crit_edge, %if.end115
  %nargv.0.lcssa = phi i8** [ %scevgep285286, %for.cond118.while.cond179.preheader_crit_edge ], [ %15, %if.end115 ]
  %oargc.0268 = add nsw i32 %0, -1
  %tobool181269 = icmp eq i32 %oargc.0268, 0
  br i1 %tobool181269, label %while.end185, label %while.body182.lr.ph

while.body182.lr.ph:                              ; preds = %while.cond179.preheader
  %20 = add i32 %0, -2
  %21 = zext i32 %20 to i64
  %22 = add nuw nsw i64 %21, 1
  %23 = zext i32 %20 to i64
  %24 = add nuw nsw i64 %23, 1
  %end.idx = add nuw nsw i64 %23, 1
  %n.vec = and i64 %24, 8589934588
  %cmp.zero = icmp eq i64 %n.vec, 0
  %25 = add i32 %0, -2
  %26 = zext i32 %25 to i64
  br i1 %cmp.zero, label %middle.block, label %vector.memcheck

vector.memcheck:                                  ; preds = %while.body182.lr.ph
  %27 = add nuw nsw i64 %26, 1
  %scevgep301 = getelementptr i8** %11, i64 %27
  %bound0 = icmp ule i8** %nargv.0.lcssa, %scevgep301
  %scevgep299 = getelementptr i8** %11, i64 1
  %scevgep297 = getelementptr i8** %nargv.0.lcssa, i64 %26
  %bound1 = icmp ule i8** %scevgep299, %scevgep297
  %memcheck.conflict = and i1 %bound0, %bound1
  %cast.crd = trunc i64 %n.vec to i32
  %rev.ind.end = sub i32 %oargc.0268, %cast.crd
  %ptr.ind.end = getelementptr i8** %11, i64 %n.vec
  %ptr.ind.end307 = getelementptr i8** %nargv.0.lcssa, i64 %n.vec
  br i1 %memcheck.conflict, label %middle.block, label %vector.body.preheader

vector.body.preheader:                            ; preds = %vector.memcheck
  %28 = add i32 %0, -2
  %29 = zext i32 %28 to i64
  %30 = add i64 %29, 1
  %31 = lshr i64 %30, 2
  %32 = mul i64 %31, 4
  %33 = add i64 %32, -4
  %34 = lshr i64 %33, 2
  %35 = add i64 %34, 1
  %xtraiter366 = and i64 %35, 1
  %lcmp.mod367 = icmp ne i64 %xtraiter366, 0
  %lcmp.overflow368 = icmp eq i64 %35, 0
  %lcmp.or369 = or i1 %lcmp.overflow368, %lcmp.mod367
  br i1 %lcmp.or369, label %vector.body.unr, label %vector.body.preheader.split

vector.body.unr:                                  ; preds = %vector.body.preheader
  %next.gep321.unr = getelementptr i8** %nargv.0.lcssa, i64 0
  %next.gep.sum339.unr = or i64 0, 1
  %36 = getelementptr inbounds i8** %11, i64 %next.gep.sum339.unr
  %37 = bitcast i8** %36 to <2 x i8*>*
  %wide.load.unr = load <2 x i8*>* %37, align 8, !tbaa !7
  %.sum341.unr = or i64 0, 3
  %38 = getelementptr i8** %11, i64 %.sum341.unr
  %39 = bitcast i8** %38 to <2 x i8*>*
  %wide.load332.unr = load <2 x i8*>* %39, align 8, !tbaa !7
  %40 = bitcast i8** %next.gep321.unr to <2 x i8*>*
  store <2 x i8*> %wide.load.unr, <2 x i8*>* %40, align 8, !tbaa !7
  %next.gep321.sum344.unr = or i64 0, 2
  %41 = getelementptr i8** %nargv.0.lcssa, i64 %next.gep321.sum344.unr
  %42 = bitcast i8** %41 to <2 x i8*>*
  store <2 x i8*> %wide.load332.unr, <2 x i8*>* %42, align 8, !tbaa !7
  %index.next.unr = add i64 0, 4
  %43 = icmp eq i64 %index.next.unr, %n.vec
  br label %vector.body.preheader.split

vector.body.preheader.split:                      ; preds = %vector.body.unr, %vector.body.preheader
  %index.unr = phi i64 [ 0, %vector.body.preheader ], [ %index.next.unr, %vector.body.unr ]
  %44 = icmp ult i64 %35, 2
  br i1 %44, label %middle.block.loopexit, label %vector.body.preheader.split.split

vector.body.preheader.split.split:                ; preds = %vector.body.preheader.split
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.body.preheader.split.split
  %index = phi i64 [ %index.unr, %vector.body.preheader.split.split ], [ %index.next.1, %vector.body ]
  %next.gep321 = getelementptr i8** %nargv.0.lcssa, i64 %index
  %next.gep.sum339 = or i64 %index, 1
  %45 = getelementptr inbounds i8** %11, i64 %next.gep.sum339
  %46 = bitcast i8** %45 to <2 x i8*>*
  %wide.load = load <2 x i8*>* %46, align 8, !tbaa !7
  %.sum341 = or i64 %index, 3
  %47 = getelementptr i8** %11, i64 %.sum341
  %48 = bitcast i8** %47 to <2 x i8*>*
  %wide.load332 = load <2 x i8*>* %48, align 8, !tbaa !7
  %49 = bitcast i8** %next.gep321 to <2 x i8*>*
  store <2 x i8*> %wide.load, <2 x i8*>* %49, align 8, !tbaa !7
  %next.gep321.sum344 = or i64 %index, 2
  %50 = getelementptr i8** %nargv.0.lcssa, i64 %next.gep321.sum344
  %51 = bitcast i8** %50 to <2 x i8*>*
  store <2 x i8*> %wide.load332, <2 x i8*>* %51, align 8, !tbaa !7
  %index.next = add i64 %index, 4
  %next.gep321.1 = getelementptr i8** %nargv.0.lcssa, i64 %index.next
  %next.gep.sum339.1 = or i64 %index.next, 1
  %52 = getelementptr inbounds i8** %11, i64 %next.gep.sum339.1
  %53 = bitcast i8** %52 to <2 x i8*>*
  %wide.load.1 = load <2 x i8*>* %53, align 8, !tbaa !7
  %.sum341.1 = or i64 %index.next, 3
  %54 = getelementptr i8** %11, i64 %.sum341.1
  %55 = bitcast i8** %54 to <2 x i8*>*
  %wide.load332.1 = load <2 x i8*>* %55, align 8, !tbaa !7
  %56 = bitcast i8** %next.gep321.1 to <2 x i8*>*
  store <2 x i8*> %wide.load.1, <2 x i8*>* %56, align 8, !tbaa !7
  %next.gep321.sum344.1 = or i64 %index.next, 2
  %57 = getelementptr i8** %nargv.0.lcssa, i64 %next.gep321.sum344.1
  %58 = bitcast i8** %57 to <2 x i8*>*
  store <2 x i8*> %wide.load332.1, <2 x i8*>* %58, align 8, !tbaa !7
  %index.next.1 = add i64 %index.next, 4
  %59 = icmp eq i64 %index.next.1, %n.vec
  br i1 %59, label %middle.block.loopexit.unr-lcssa, label %vector.body, !llvm.loop !68

middle.block.loopexit.unr-lcssa:                  ; preds = %vector.body
  br label %middle.block.loopexit

middle.block.loopexit:                            ; preds = %middle.block.loopexit.unr-lcssa, %vector.body.preheader.split
  br label %middle.block

middle.block:                                     ; preds = %middle.block.loopexit, %vector.memcheck, %while.body182.lr.ph
  %resume.val = phi i32 [ %oargc.0268, %while.body182.lr.ph ], [ %oargc.0268, %vector.memcheck ], [ %rev.ind.end, %middle.block.loopexit ]
  %resume.val303 = phi i8** [ %11, %while.body182.lr.ph ], [ %11, %vector.memcheck ], [ %ptr.ind.end, %middle.block.loopexit ]
  %resume.val305 = phi i8** [ %nargv.0.lcssa, %while.body182.lr.ph ], [ %nargv.0.lcssa, %vector.memcheck ], [ %ptr.ind.end307, %middle.block.loopexit ]
  %new.indc.resume.val = phi i64 [ 0, %while.body182.lr.ph ], [ 0, %vector.memcheck ], [ %n.vec, %middle.block.loopexit ]
  %cmp.n = icmp eq i64 %end.idx, %new.indc.resume.val
  br i1 %cmp.n, label %while.cond179.while.end185_crit_edge, label %while.body182.preheader

while.body182.preheader:                          ; preds = %middle.block
  %xtraiter = and i32 %resume.val, 3
  %lcmp.mod = icmp ne i32 %xtraiter, 0
  %lcmp.overflow = icmp eq i32 %resume.val, 0
  %lcmp.or = or i1 %lcmp.overflow, %lcmp.mod
  br i1 %lcmp.or, label %unr.cmp361, label %while.body182.preheader.split

unr.cmp361:                                       ; preds = %while.body182.preheader
  %un.tmp362 = icmp eq i32 %xtraiter, 1
  br i1 %un.tmp362, label %while.body182.unr353, label %unr.cmp

unr.cmp:                                          ; preds = %unr.cmp361
  %un.tmp = icmp eq i32 %xtraiter, 2
  br i1 %un.tmp, label %while.body182.unr348, label %while.body182.unr

while.body182.unr:                                ; preds = %unr.cmp
  %oargv.0271.unr = getelementptr inbounds i8** %resume.val303, i64 1
  %60 = load i8** %oargv.0271.unr, align 8, !tbaa !7
  %incdec.ptr184.unr = getelementptr inbounds i8** %resume.val305, i64 1
  store i8* %60, i8** %resume.val305, align 8, !tbaa !7
  %oargc.0.unr = add nsw i32 %resume.val, -1
  %tobool181.unr = icmp eq i32 %oargc.0.unr, 0
  br label %while.body182.unr348

while.body182.unr348:                             ; preds = %while.body182.unr, %unr.cmp
  %oargc.0272.unr = phi i32 [ %oargc.0.unr, %while.body182.unr ], [ %resume.val, %unr.cmp ]
  %.pn.unr = phi i8** [ %oargv.0271.unr, %while.body182.unr ], [ %resume.val303, %unr.cmp ]
  %nargv.1270.unr = phi i8** [ %incdec.ptr184.unr, %while.body182.unr ], [ %resume.val305, %unr.cmp ]
  %oargv.0271.unr349 = getelementptr inbounds i8** %.pn.unr, i64 1
  %61 = load i8** %oargv.0271.unr349, align 8, !tbaa !7
  %incdec.ptr184.unr350 = getelementptr inbounds i8** %nargv.1270.unr, i64 1
  store i8* %61, i8** %nargv.1270.unr, align 8, !tbaa !7
  %oargc.0.unr351 = add nsw i32 %oargc.0272.unr, -1
  %tobool181.unr352 = icmp eq i32 %oargc.0.unr351, 0
  br label %while.body182.unr353

while.body182.unr353:                             ; preds = %while.body182.unr348, %unr.cmp361
  %oargc.0272.unr354 = phi i32 [ %oargc.0.unr351, %while.body182.unr348 ], [ %resume.val, %unr.cmp361 ]
  %.pn.unr355 = phi i8** [ %oargv.0271.unr349, %while.body182.unr348 ], [ %resume.val303, %unr.cmp361 ]
  %nargv.1270.unr356 = phi i8** [ %incdec.ptr184.unr350, %while.body182.unr348 ], [ %resume.val305, %unr.cmp361 ]
  %oargv.0271.unr357 = getelementptr inbounds i8** %.pn.unr355, i64 1
  %62 = load i8** %oargv.0271.unr357, align 8, !tbaa !7
  %incdec.ptr184.unr358 = getelementptr inbounds i8** %nargv.1270.unr356, i64 1
  store i8* %62, i8** %nargv.1270.unr356, align 8, !tbaa !7
  %oargc.0.unr359 = add nsw i32 %oargc.0272.unr354, -1
  %tobool181.unr360 = icmp eq i32 %oargc.0.unr359, 0
  br label %while.body182.preheader.split

while.body182.preheader.split:                    ; preds = %while.body182.unr353, %while.body182.preheader
  %oargc.0272.unr363 = phi i32 [ %resume.val, %while.body182.preheader ], [ %oargc.0.unr359, %while.body182.unr353 ]
  %.pn.unr364 = phi i8** [ %resume.val303, %while.body182.preheader ], [ %oargv.0271.unr357, %while.body182.unr353 ]
  %nargv.1270.unr365 = phi i8** [ %resume.val305, %while.body182.preheader ], [ %incdec.ptr184.unr358, %while.body182.unr353 ]
  %63 = icmp ult i32 %resume.val, 4
  br i1 %63, label %while.cond179.while.end185_crit_edge.loopexit, label %while.body182.preheader.split.split

while.body182.preheader.split.split:              ; preds = %while.body182.preheader.split
  br label %while.body182

while.cond.i265:                                  ; preds = %while.cond.i265.backedge, %while.cond.i265.preheader
  %__result.0.i258 = phi i64 [ 0, %while.cond.i265.preheader ], [ %inc.i264, %while.cond.i265.backedge ]
  %arrayidx.i259 = getelementptr inbounds i8* %p.2276, i64 %__result.0.i258
  %64 = load i8* %arrayidx.i259, align 1, !tbaa !9
  %conv.i260 = sext i8 %64 to i32
  %inc.i264 = add i64 %__result.0.i258, 1
  switch i32 %conv.i260, label %__strspn_c2.exit266 [
    i32 32, label %while.cond.i265.backedge
    i32 9, label %while.cond.i265.backedge
  ]

while.cond.i265.backedge:                         ; preds = %while.cond.i265, %while.cond.i265
  br label %while.cond.i265

__strspn_c2.exit266:                              ; preds = %while.cond.i265
  %arrayidx.i259.lcssa = phi i8* [ %arrayidx.i259, %while.cond.i265 ]
  store i8* %arrayidx.i259.lcssa, i8** %nargv.0275, align 8, !tbaa !7
  br label %while.cond

while.cond:                                       ; preds = %while.cond, %__strspn_c2.exit266
  %p.3 = phi i8* [ %arrayidx.i259.lcssa, %__strspn_c2.exit266 ], [ %incdec.ptr174, %while.cond ]
  %incdec.ptr174 = getelementptr inbounds i8* %p.3, i64 1
  %65 = load i8* %p.3, align 1, !tbaa !9
  %tobool175 = icmp eq i8 %65, 0
  br i1 %tobool175, label %for.inc176, label %while.cond

for.inc176:                                       ; preds = %while.cond
  %incdec.ptr174.lcssa = phi i8* [ %incdec.ptr174, %while.cond ]
  %incdec.ptr173 = getelementptr inbounds i8** %nargv.0275, i64 1
  %dec177 = add nsw i32 %nargc.1274, -1
  %cmp119 = icmp sgt i32 %dec177, 0
  br i1 %cmp119, label %while.cond.i265.preheader, label %for.cond118.while.cond179.preheader_crit_edge

while.body182:                                    ; preds = %while.body182, %while.body182.preheader.split.split
  %oargc.0272 = phi i32 [ %oargc.0272.unr363, %while.body182.preheader.split.split ], [ %oargc.0.3, %while.body182 ]
  %.pn = phi i8** [ %.pn.unr364, %while.body182.preheader.split.split ], [ %oargv.0271.3, %while.body182 ]
  %nargv.1270 = phi i8** [ %nargv.1270.unr365, %while.body182.preheader.split.split ], [ %incdec.ptr184.3, %while.body182 ]
  %oargv.0271 = getelementptr inbounds i8** %.pn, i64 1
  %66 = load i8** %oargv.0271, align 8, !tbaa !7
  %incdec.ptr184 = getelementptr inbounds i8** %nargv.1270, i64 1
  store i8* %66, i8** %nargv.1270, align 8, !tbaa !7
  %oargc.0 = add nsw i32 %oargc.0272, -1
  %oargv.0271.1 = getelementptr inbounds i8** %oargv.0271, i64 1
  %67 = load i8** %oargv.0271.1, align 8, !tbaa !7
  %incdec.ptr184.1 = getelementptr inbounds i8** %incdec.ptr184, i64 1
  store i8* %67, i8** %incdec.ptr184, align 8, !tbaa !7
  %oargc.0.1 = add nsw i32 %oargc.0, -1
  %oargv.0271.2 = getelementptr inbounds i8** %oargv.0271.1, i64 1
  %68 = load i8** %oargv.0271.2, align 8, !tbaa !7
  %incdec.ptr184.2 = getelementptr inbounds i8** %incdec.ptr184.1, i64 1
  store i8* %68, i8** %incdec.ptr184.1, align 8, !tbaa !7
  %oargc.0.2 = add nsw i32 %oargc.0.1, -1
  %oargv.0271.3 = getelementptr inbounds i8** %oargv.0271.2, i64 1
  %69 = load i8** %oargv.0271.3, align 8, !tbaa !7
  %incdec.ptr184.3 = getelementptr inbounds i8** %incdec.ptr184.2, i64 1
  store i8* %69, i8** %incdec.ptr184.2, align 8, !tbaa !7
  %oargc.0.3 = add nsw i32 %oargc.0.2, -1
  %tobool181.3 = icmp eq i32 %oargc.0.3, 0
  br i1 %tobool181.3, label %while.cond179.while.end185_crit_edge.loopexit.unr-lcssa, label %while.body182, !llvm.loop !69

while.cond179.while.end185_crit_edge.loopexit.unr-lcssa: ; preds = %while.body182
  br label %while.cond179.while.end185_crit_edge.loopexit

while.cond179.while.end185_crit_edge.loopexit:    ; preds = %while.cond179.while.end185_crit_edge.loopexit.unr-lcssa, %while.body182.preheader.split
  br label %while.cond179.while.end185_crit_edge

while.cond179.while.end185_crit_edge:             ; preds = %while.cond179.while.end185_crit_edge.loopexit, %middle.block
  %scevgep = getelementptr i8** %nargv.0.lcssa, i64 %22
  br label %while.end185

while.end185:                                     ; preds = %while.cond179.while.end185_crit_edge, %while.cond179.preheader
  %nargv.1.lcssa = phi i8** [ %scevgep, %while.cond179.while.end185_crit_edge ], [ %nargv.0.lcssa, %while.cond179.preheader ]
  store i8* null, i8** %nargv.1.lcssa, align 8, !tbaa !7
  br label %return

return:                                           ; preds = %while.end185, %if.then102, %entry
  %retval.0 = phi i8* [ null, %if.then102 ], [ %call3, %while.end185 ], [ null, %entry ]
  ret i8* %retval.0
}

; Function Attrs: nounwind readonly
declare i8* @getenv(i8* nocapture) #4

; Function Attrs: nounwind uwtable
define noalias i8* @xmalloc(i32 %size) #0 {
entry:
  %conv = zext i32 %size to i64
  %call = tail call noalias i8* @malloc(i64 %conv) #2
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %1 = load i8** @progname, align 8, !tbaa !7
  %call.i = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([13 x i8]* @.str3167, i64 0, i64 0), i8* %1, i8* getelementptr inbounds ([1024 x i8]* @ifname, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8]* @.str1165, i64 0, i64 0)) #11
  tail call void @abort_gzip() #2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i8* %call
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) #5

; Function Attrs: nounwind uwtable
define void @error(i8* %m) #0 {
entry:
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %1 = load i8** @progname, align 8, !tbaa !7
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([13 x i8]* @.str3167, i64 0, i64 0), i8* %1, i8* getelementptr inbounds ([1024 x i8]* @ifname, i64 0, i64 0), i8* %m) #11
  tail call void @abort_gzip() #2
  ret void
}

; Function Attrs: nounwind uwtable
define void @warn(i8* %a, i8* %b) #0 {
entry:
  %0 = load i32* @quiet, align 4, !tbaa !1
  %tobool = icmp eq i32 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %2 = load i8** @progname, align 8, !tbaa !7
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([23 x i8]* @.str4168, i64 0, i64 0), i8* %2, i8* getelementptr inbounds ([1024 x i8]* @ifname, i64 0, i64 0), i8* %a, i8* %b) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i32* @exit_code, align 4, !tbaa !1
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %if.then1, label %if.end2

if.then1:                                         ; preds = %if.end
  store i32 2, i32* @exit_code, align 4, !tbaa !1
  br label %if.end2

if.end2:                                          ; preds = %if.then1, %if.end
  ret void
}

; Function Attrs: nounwind uwtable
define void @display_ratio(i64 %num, i64 %den, %struct._IO_FILE* nocapture %file) #0 {
entry:
  %cmp = icmp eq i64 %den, 0
  br i1 %cmp, label %if.else9, label %if.else

if.else:                                          ; preds = %entry
  %cmp1 = icmp slt i64 %den, 2147483
  br i1 %cmp1, label %if.then2, label %if.else3

if.then2:                                         ; preds = %if.else
  %mul = mul nsw i64 %num, 1000
  %div = sdiv i64 %mul, %den
  br label %if.end6

if.else3:                                         ; preds = %if.else
  %div4 = sdiv i64 %den, 1000
  %div5 = sdiv i64 %num, %div4
  br label %if.end6

if.end6:                                          ; preds = %if.else3, %if.then2
  %ratio.0 = phi i64 [ %div, %if.then2 ], [ %div5, %if.else3 ]
  %cmp7 = icmp slt i64 %ratio.0, 0
  br i1 %cmp7, label %if.then8, label %if.else9

if.then8:                                         ; preds = %if.end6
  %call = tail call i32 @_IO_putc(i32 45, %struct._IO_FILE* %file) #2
  %sub = sub nsw i64 0, %ratio.0
  br label %if.end11

if.else9:                                         ; preds = %if.end6, %entry
  %ratio.022 = phi i64 [ %ratio.0, %if.end6 ], [ 0, %entry ]
  %call10 = tail call i32 @_IO_putc(i32 32, %struct._IO_FILE* %file) #2
  br label %if.end11

if.end11:                                         ; preds = %if.else9, %if.then8
  %ratio.1 = phi i64 [ %sub, %if.then8 ], [ %ratio.022, %if.else9 ]
  %div12 = sdiv i64 %ratio.1, 10
  %rem = srem i64 %ratio.1, 10
  %call13 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %file, i8* getelementptr inbounds ([12 x i8]* @.str7171, i64 0, i64 0), i64 %div12, i64 %rem) #2
  ret void
}

; Function Attrs: nounwind
declare i32 @_IO_putc(i32, %struct._IO_FILE* nocapture) #5

; Function Attrs: nounwind uwtable
define i32 @zip(i32 %in, i32 %out) #0 {
if.end101:
  %attr = alloca i16, align 2
  %deflate_flags = alloca i16, align 2
  store i16 0, i16* %attr, align 2, !tbaa !5
  store i16 0, i16* %deflate_flags, align 2, !tbaa !5
  store i32 %in, i32* @ifd, align 4, !tbaa !1
  store i32 %out, i32* @ofd, align 4, !tbaa !1
  store i32 8, i32* @method, align 4, !tbaa !1
  store i8 31, i8* getelementptr inbounds ([18432 x i8]* @outbuf, i64 0, i64 0), align 1, !tbaa !9
  store i8 -117, i8* getelementptr inbounds ([18432 x i8]* @outbuf, i64 0, i64 1), align 1, !tbaa !9
  store i8 8, i8* getelementptr inbounds ([18432 x i8]* @outbuf, i64 0, i64 2), align 1, !tbaa !9
  %.pre347 = load i32* @save_orig_name, align 4, !tbaa !1
  %phitmp = icmp eq i32 %.pre347, 0
  %phitmp352 = select i1 %phitmp, i8 0, i8 8
  store i8 %phitmp352, i8* getelementptr inbounds ([18432 x i8]* @outbuf, i64 0, i64 3), align 1, !tbaa !9
  %.pre348 = load i64* @time_stamp, align 8, !tbaa !15
  %conv27 = trunc i64 %.pre348 to i8
  store i8 %conv27, i8* getelementptr inbounds ([18432 x i8]* @outbuf, i64 0, i64 4), align 1, !tbaa !9
  %conv32 = trunc i64 %.pre348 to i32
  %conv33 = lshr i32 %conv32, 8
  %conv34 = trunc i32 %conv33 to i8
  store i8 %conv34, i8* getelementptr inbounds ([18432 x i8]* @outbuf, i64 0, i64 5), align 1, !tbaa !9
  %shr64 = lshr i64 %.pre348, 16
  %conv66 = trunc i64 %shr64 to i8
  store i8 %conv66, i8* getelementptr inbounds ([18432 x i8]* @outbuf, i64 0, i64 6), align 1, !tbaa !9
  %shr70 = lshr i64 %.pre348, 24
  %conv74 = trunc i64 %shr70 to i8
  store i32 8, i32* @outcnt, align 4, !tbaa !1
  store i8 %conv74, i8* getelementptr inbounds ([18432 x i8]* @outbuf, i64 0, i64 7), align 1, !tbaa !9
  %call = tail call i64 @updcrc(i8* null, i32 0) #2
  store i64 %call, i64* @crc, align 8, !tbaa !15
  tail call void @bi_init(i32 %out) #2
  call void @ct_init(i16* %attr, i32* @method) #2
  %0 = load i32* @level, align 4, !tbaa !1
  call void @lm_init(i32 %0, i16* %deflate_flags) #2
  %1 = load i16* %deflate_flags, align 2, !tbaa !5
  %conv102 = trunc i16 %1 to i8
  %2 = load i32* @outcnt, align 4, !tbaa !1
  %inc103 = add i32 %2, 1
  store i32 %inc103, i32* @outcnt, align 4, !tbaa !1
  %idxprom104 = zext i32 %2 to i64
  %arrayidx105 = getelementptr inbounds [0 x i8]* bitcast ([18432 x i8]* @outbuf to [0 x i8]*), i64 0, i64 %idxprom104
  store i8 %conv102, i8* %arrayidx105, align 1, !tbaa !9
  %cmp106 = icmp eq i32 %inc103, 16384
  br i1 %cmp106, label %if.then108, label %if.end109

if.then108:                                       ; preds = %if.end101
  call void @flush_outbuf() #2
  %.pre329 = load i32* @outcnt, align 4, !tbaa !1
  br label %if.end109

if.end109:                                        ; preds = %if.then108, %if.end101
  %3 = phi i32 [ %.pre329, %if.then108 ], [ %inc103, %if.end101 ]
  %inc110 = add i32 %3, 1
  store i32 %inc110, i32* @outcnt, align 4, !tbaa !1
  %idxprom111 = zext i32 %3 to i64
  %arrayidx112 = getelementptr inbounds [0 x i8]* bitcast ([18432 x i8]* @outbuf to [0 x i8]*), i64 0, i64 %idxprom111
  store i8 3, i8* %arrayidx112, align 1, !tbaa !9
  %cmp113 = icmp eq i32 %inc110, 16384
  br i1 %cmp113, label %if.then115, label %if.end116

if.then115:                                       ; preds = %if.end109
  call void @flush_outbuf() #2
  br label %if.end116

if.end116:                                        ; preds = %if.then115, %if.end109
  %4 = load i32* @save_orig_name, align 4, !tbaa !1
  %tobool117 = icmp eq i32 %4, 0
  br i1 %tobool117, label %if.end128, label %if.then118

if.then118:                                       ; preds = %if.end116
  %call119 = call i8* @basename(i8* getelementptr inbounds ([1024 x i8]* @ifname, i64 0, i64 0)) #2
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.then118
  %p.0 = phi i8* [ %call119, %if.then118 ], [ %incdec.ptr, %do.cond ]
  %5 = load i8* %p.0, align 1, !tbaa !9
  %6 = load i32* @outcnt, align 4, !tbaa !1
  %inc120 = add i32 %6, 1
  store i32 %inc120, i32* @outcnt, align 4, !tbaa !1
  %idxprom121 = zext i32 %6 to i64
  %arrayidx122 = getelementptr inbounds [0 x i8]* bitcast ([18432 x i8]* @outbuf to [0 x i8]*), i64 0, i64 %idxprom121
  store i8 %5, i8* %arrayidx122, align 1, !tbaa !9
  %cmp123 = icmp eq i32 %inc120, 16384
  br i1 %cmp123, label %if.then125, label %do.cond

if.then125:                                       ; preds = %do.body
  call void @flush_outbuf() #2
  br label %do.cond

do.cond:                                          ; preds = %if.then125, %do.body
  %incdec.ptr = getelementptr inbounds i8* %p.0, i64 1
  %7 = load i8* %p.0, align 1, !tbaa !9
  %tobool127 = icmp eq i8 %7, 0
  br i1 %tobool127, label %if.end128.loopexit, label %do.body

if.end128.loopexit:                               ; preds = %do.cond
  br label %if.end128

if.end128:                                        ; preds = %if.end128.loopexit, %if.end116
  %8 = load i32* @outcnt, align 4, !tbaa !1
  %conv129 = zext i32 %8 to i64
  store i64 %conv129, i64* @header_bytes, align 8, !tbaa !15
  %call130 = call i64 @deflate() #2
  %9 = load i32* @outcnt, align 4, !tbaa !1
  %cmp131 = icmp ult i32 %9, 16382
  %10 = load i64* @crc, align 8, !tbaa !15
  %conv136 = trunc i64 %10 to i8
  %inc137 = add i32 %9, 1
  store i32 %inc137, i32* @outcnt, align 4, !tbaa !1
  %idxprom138 = zext i32 %9 to i64
  %arrayidx139 = getelementptr inbounds [0 x i8]* bitcast ([18432 x i8]* @outbuf to [0 x i8]*), i64 0, i64 %idxprom138
  store i8 %conv136, i8* %arrayidx139, align 1, !tbaa !9
  br i1 %cmp131, label %if.then133, label %if.else148

if.then133:                                       ; preds = %if.end128
  %conv141 = trunc i64 %10 to i32
  %conv142 = lshr i32 %conv141, 8
  %conv144 = trunc i32 %conv142 to i8
  %inc145 = add i32 %9, 2
  store i32 %inc145, i32* @outcnt, align 4, !tbaa !1
  %idxprom146 = zext i32 %inc137 to i64
  %arrayidx147 = getelementptr inbounds [0 x i8]* bitcast ([18432 x i8]* @outbuf to [0 x i8]*), i64 0, i64 %idxprom146
  store i8 %conv144, i8* %arrayidx147, align 1, !tbaa !9
  br label %if.end171

if.else148:                                       ; preds = %if.end128
  %cmp155 = icmp eq i32 %inc137, 16384
  br i1 %cmp155, label %if.then157, label %if.end158

if.then157:                                       ; preds = %if.else148
  call void @flush_outbuf() #2
  %.pre341 = load i64* @crc, align 8, !tbaa !15
  %.pre342 = load i32* @outcnt, align 4, !tbaa !1
  br label %if.end158

if.end158:                                        ; preds = %if.then157, %if.else148
  %11 = phi i32 [ %.pre342, %if.then157 ], [ %inc137, %if.else148 ]
  %12 = phi i64 [ %.pre341, %if.then157 ], [ %10, %if.else148 ]
  %conv160 = trunc i64 %12 to i32
  %conv161 = lshr i32 %conv160, 8
  %conv163 = trunc i32 %conv161 to i8
  %inc164 = add i32 %11, 1
  store i32 %inc164, i32* @outcnt, align 4, !tbaa !1
  %idxprom165 = zext i32 %11 to i64
  %arrayidx166 = getelementptr inbounds [0 x i8]* bitcast ([18432 x i8]* @outbuf to [0 x i8]*), i64 0, i64 %idxprom165
  store i8 %conv163, i8* %arrayidx166, align 1, !tbaa !9
  %cmp167 = icmp eq i32 %inc164, 16384
  br i1 %cmp167, label %if.then169, label %if.end171

if.then169:                                       ; preds = %if.end158
  call void @flush_outbuf() #2
  %.pr323.pre = load i32* @outcnt, align 4, !tbaa !1
  %.pre331.pre = load i64* @crc, align 8, !tbaa !15
  br label %if.end171

if.end171:                                        ; preds = %if.then169, %if.end158, %if.then133
  %13 = phi i64 [ %12, %if.end158 ], [ %10, %if.then133 ], [ %.pre331.pre, %if.then169 ]
  %14 = phi i32 [ %inc164, %if.end158 ], [ %inc145, %if.then133 ], [ %.pr323.pre, %if.then169 ]
  %cmp172 = icmp ult i32 %14, 16382
  %shr175 = lshr i64 %13, 16
  %conv177 = trunc i64 %shr175 to i8
  %inc178 = add i32 %14, 1
  store i32 %inc178, i32* @outcnt, align 4, !tbaa !1
  %idxprom179 = zext i32 %14 to i64
  %arrayidx180 = getelementptr inbounds [0 x i8]* bitcast ([18432 x i8]* @outbuf to [0 x i8]*), i64 0, i64 %idxprom179
  store i8 %conv177, i8* %arrayidx180, align 1, !tbaa !9
  br i1 %cmp172, label %if.then174, label %if.else189

if.then174:                                       ; preds = %if.end171
  %shr181 = lshr i64 %13, 24
  %conv185 = trunc i64 %shr181 to i8
  %inc186 = add i32 %14, 2
  store i32 %inc186, i32* @outcnt, align 4, !tbaa !1
  %idxprom187 = zext i32 %inc178 to i64
  %arrayidx188 = getelementptr inbounds [0 x i8]* bitcast ([18432 x i8]* @outbuf to [0 x i8]*), i64 0, i64 %idxprom187
  store i8 %conv185, i8* %arrayidx188, align 1, !tbaa !9
  br label %if.end212

if.else189:                                       ; preds = %if.end171
  %cmp196 = icmp eq i32 %inc178, 16384
  br i1 %cmp196, label %if.then198, label %if.end199

if.then198:                                       ; preds = %if.else189
  call void @flush_outbuf() #2
  %.pre339 = load i64* @crc, align 8, !tbaa !15
  %.pre340 = load i32* @outcnt, align 4, !tbaa !1
  br label %if.end199

if.end199:                                        ; preds = %if.then198, %if.else189
  %15 = phi i32 [ %.pre340, %if.then198 ], [ %inc178, %if.else189 ]
  %16 = phi i64 [ %.pre339, %if.then198 ], [ %13, %if.else189 ]
  %shr200 = lshr i64 %16, 24
  %conv204 = trunc i64 %shr200 to i8
  %inc205 = add i32 %15, 1
  store i32 %inc205, i32* @outcnt, align 4, !tbaa !1
  %idxprom206 = zext i32 %15 to i64
  %arrayidx207 = getelementptr inbounds [0 x i8]* bitcast ([18432 x i8]* @outbuf to [0 x i8]*), i64 0, i64 %idxprom206
  store i8 %conv204, i8* %arrayidx207, align 1, !tbaa !9
  %cmp208 = icmp eq i32 %inc205, 16384
  br i1 %cmp208, label %if.then210, label %if.end212

if.then210:                                       ; preds = %if.end199
  call void @flush_outbuf() #2
  %.pr324.pre = load i32* @outcnt, align 4, !tbaa !1
  br label %if.end212

if.end212:                                        ; preds = %if.then210, %if.end199, %if.then174
  %17 = phi i32 [ %inc205, %if.end199 ], [ %inc186, %if.then174 ], [ %.pr324.pre, %if.then210 ]
  %cmp213 = icmp ult i32 %17, 16382
  %18 = load i64* @bytes_in, align 8, !tbaa !15
  %conv218 = trunc i64 %18 to i8
  %inc219 = add i32 %17, 1
  store i32 %inc219, i32* @outcnt, align 4, !tbaa !1
  %idxprom220 = zext i32 %17 to i64
  %arrayidx221 = getelementptr inbounds [0 x i8]* bitcast ([18432 x i8]* @outbuf to [0 x i8]*), i64 0, i64 %idxprom220
  store i8 %conv218, i8* %arrayidx221, align 1, !tbaa !9
  br i1 %cmp213, label %if.then215, label %if.else230

if.then215:                                       ; preds = %if.end212
  %conv223 = trunc i64 %18 to i32
  %conv224 = lshr i32 %conv223, 8
  %conv226 = trunc i32 %conv224 to i8
  %inc227 = add i32 %17, 2
  store i32 %inc227, i32* @outcnt, align 4, !tbaa !1
  %idxprom228 = zext i32 %inc219 to i64
  %arrayidx229 = getelementptr inbounds [0 x i8]* bitcast ([18432 x i8]* @outbuf to [0 x i8]*), i64 0, i64 %idxprom228
  store i8 %conv226, i8* %arrayidx229, align 1, !tbaa !9
  br label %if.end253

if.else230:                                       ; preds = %if.end212
  %cmp237 = icmp eq i32 %inc219, 16384
  br i1 %cmp237, label %if.then239, label %if.end240

if.then239:                                       ; preds = %if.else230
  call void @flush_outbuf() #2
  %.pre337 = load i64* @bytes_in, align 8, !tbaa !15
  %.pre338 = load i32* @outcnt, align 4, !tbaa !1
  br label %if.end240

if.end240:                                        ; preds = %if.then239, %if.else230
  %19 = phi i32 [ %.pre338, %if.then239 ], [ %inc219, %if.else230 ]
  %20 = phi i64 [ %.pre337, %if.then239 ], [ %18, %if.else230 ]
  %conv242 = trunc i64 %20 to i32
  %conv243 = lshr i32 %conv242, 8
  %conv245 = trunc i32 %conv243 to i8
  %inc246 = add i32 %19, 1
  store i32 %inc246, i32* @outcnt, align 4, !tbaa !1
  %idxprom247 = zext i32 %19 to i64
  %arrayidx248 = getelementptr inbounds [0 x i8]* bitcast ([18432 x i8]* @outbuf to [0 x i8]*), i64 0, i64 %idxprom247
  store i8 %conv245, i8* %arrayidx248, align 1, !tbaa !9
  %cmp249 = icmp eq i32 %inc246, 16384
  br i1 %cmp249, label %if.then251, label %if.end253

if.then251:                                       ; preds = %if.end240
  call void @flush_outbuf() #2
  %.pr325.pre = load i32* @outcnt, align 4, !tbaa !1
  %.pre334.pre = load i64* @bytes_in, align 8, !tbaa !15
  br label %if.end253

if.end253:                                        ; preds = %if.then251, %if.end240, %if.then215
  %21 = phi i64 [ %20, %if.end240 ], [ %18, %if.then215 ], [ %.pre334.pre, %if.then251 ]
  %22 = phi i32 [ %inc246, %if.end240 ], [ %inc227, %if.then215 ], [ %.pr325.pre, %if.then251 ]
  %cmp254 = icmp ult i32 %22, 16382
  %shr257 = lshr i64 %21, 16
  %conv259 = trunc i64 %shr257 to i8
  %inc260 = add i32 %22, 1
  store i32 %inc260, i32* @outcnt, align 4, !tbaa !1
  %idxprom261 = zext i32 %22 to i64
  %arrayidx262 = getelementptr inbounds [0 x i8]* bitcast ([18432 x i8]* @outbuf to [0 x i8]*), i64 0, i64 %idxprom261
  store i8 %conv259, i8* %arrayidx262, align 1, !tbaa !9
  br i1 %cmp254, label %if.then256, label %if.else271

if.then256:                                       ; preds = %if.end253
  %shr263 = lshr i64 %21, 24
  %conv267 = trunc i64 %shr263 to i8
  %inc268 = add i32 %22, 2
  store i32 %inc268, i32* @outcnt, align 4, !tbaa !1
  %idxprom269 = zext i32 %inc260 to i64
  %arrayidx270 = getelementptr inbounds [0 x i8]* bitcast ([18432 x i8]* @outbuf to [0 x i8]*), i64 0, i64 %idxprom269
  store i8 %conv267, i8* %arrayidx270, align 1, !tbaa !9
  br label %if.end294

if.else271:                                       ; preds = %if.end253
  %cmp278 = icmp eq i32 %inc260, 16384
  br i1 %cmp278, label %if.then280, label %if.end281

if.then280:                                       ; preds = %if.else271
  call void @flush_outbuf() #2
  %.pre335 = load i64* @bytes_in, align 8, !tbaa !15
  %.pre336 = load i32* @outcnt, align 4, !tbaa !1
  br label %if.end281

if.end281:                                        ; preds = %if.then280, %if.else271
  %23 = phi i32 [ %.pre336, %if.then280 ], [ %inc260, %if.else271 ]
  %24 = phi i64 [ %.pre335, %if.then280 ], [ %21, %if.else271 ]
  %shr282 = lshr i64 %24, 24
  %conv286 = trunc i64 %shr282 to i8
  %inc287 = add i32 %23, 1
  store i32 %inc287, i32* @outcnt, align 4, !tbaa !1
  %idxprom288 = zext i32 %23 to i64
  %arrayidx289 = getelementptr inbounds [0 x i8]* bitcast ([18432 x i8]* @outbuf to [0 x i8]*), i64 0, i64 %idxprom288
  store i8 %conv286, i8* %arrayidx289, align 1, !tbaa !9
  %cmp290 = icmp eq i32 %inc287, 16384
  br i1 %cmp290, label %if.then292, label %if.end294

if.then292:                                       ; preds = %if.end281
  call void @flush_outbuf() #2
  br label %if.end294

if.end294:                                        ; preds = %if.then292, %if.end281, %if.then256
  %25 = load i64* @header_bytes, align 8, !tbaa !15
  %add = add i64 %25, 16
  store i64 %add, i64* @header_bytes, align 8, !tbaa !15
  call void @flush_outbuf() #2
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @file_read(i8* %buf, i32 %size) #0 {
entry:
  %0 = load i32* @ifd, align 4, !tbaa !1
  %conv = zext i32 %size to i64
  %call = tail call i64 @read(i32 %0, i8* %buf, i64 %conv) #2
  %conv1 = trunc i64 %call to i32
  switch i32 %conv1, label %if.end [
    i32 -1, label %return
    i32 0, label %return
  ]

if.end:                                           ; preds = %entry
  %call5 = tail call i64 @updcrc(i8* %buf, i32 %conv1) #2
  store i64 %call5, i64* @crc, align 8, !tbaa !15
  %conv6 = and i64 %call, 4294967295
  %1 = load i64* @bytes_in, align 8, !tbaa !15
  %add = add i64 %1, %conv6
  store i64 %add, i64* @bytes_in, align 8, !tbaa !15
  br label %return

return:                                           ; preds = %if.end, %entry, %entry
  ret i32 %conv1
}

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { noreturn nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { noreturn nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { nounwind readonly uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { nounwind readonly }
attributes #11 = { cold nounwind }
attributes #12 = { noreturn nounwind }
attributes #13 = { nounwind readnone }
attributes #14 = { cold }

!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}

!0 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
!1 = metadata !{metadata !2, metadata !2, i64 0}
!2 = metadata !{metadata !"int", metadata !3, i64 0}
!3 = metadata !{metadata !"omnipotent char", metadata !4, i64 0}
!4 = metadata !{metadata !"Simple C/C++ TBAA"}
!5 = metadata !{metadata !6, metadata !6, i64 0}
!6 = metadata !{metadata !"short", metadata !3, i64 0}
!7 = metadata !{metadata !8, metadata !8, i64 0}
!8 = metadata !{metadata !"any pointer", metadata !3, i64 0}
!9 = metadata !{metadata !3, metadata !3, i64 0}
!10 = metadata !{metadata !11, metadata !6, i64 2}
!11 = metadata !{metadata !"config", metadata !6, i64 0, metadata !6, i64 2, metadata !6, i64 4, metadata !6, i64 6}
!12 = metadata !{metadata !11, metadata !6, i64 0}
!13 = metadata !{metadata !11, metadata !6, i64 4}
!14 = metadata !{metadata !11, metadata !6, i64 6}
!15 = metadata !{metadata !16, metadata !16, i64 0}
!16 = metadata !{metadata !"long", metadata !3, i64 0}
!17 = metadata !{metadata !17, metadata !18, metadata !19}
!18 = metadata !{metadata !"llvm.loop.vectorize.width", i32 1}
!19 = metadata !{metadata !"llvm.loop.interleave.count", i32 1}
!20 = metadata !{metadata !20, metadata !18, metadata !19}
!21 = metadata !{metadata !22, metadata !2, i64 24}
!22 = metadata !{metadata !"stat", metadata !16, i64 0, metadata !16, i64 8, metadata !16, i64 16, metadata !2, i64 24, metadata !2, i64 28, metadata !2, i64 32, metadata !2, i64 36, metadata !16, i64 40, metadata !16, i64 48, metadata !16, i64 56, metadata !16, i64 64, metadata !23, i64 72, metadata !23, i64 88, metadata !23, i64 104, metadata !3, i64 120}
!23 = metadata !{metadata !"timespec", metadata !16, i64 0, metadata !16, i64 8}
!24 = metadata !{metadata !25, metadata !16, i64 0}
!25 = metadata !{metadata !"utimbuf", metadata !16, i64 0, metadata !16, i64 8}
!26 = metadata !{metadata !25, metadata !16, i64 8}
!27 = metadata !{metadata !22, metadata !16, i64 16}
!28 = metadata !{metadata !22, metadata !16, i64 48}
!29 = metadata !{metadata !22, metadata !16, i64 88}
!30 = metadata !{i64 0, i64 8, metadata !15, i64 8, i64 8, metadata !15, i64 16, i64 8, metadata !15, i64 24, i64 4, metadata !1, i64 28, i64 4, metadata !1, i64 32, i64 4, metadata !1, i64 36, i64 4, metadata !1, i64 40, i64 8, metadata !15, i64 48, i64 8, metadata !15, i64 56, i64 8, metadata !15, i64 64, i64 8, metadata !15, i64 72, i64 8, metadata !15, i64 80, i64 8, metadata !15, i64 88, i64 8, metadata !15, i64 96, i64 8, metadata !15, i64 104, i64 8, metadata !15, i64 112, i64 8, metadata !15, i64 120, i64 24, metadata !9}
!31 = metadata !{metadata !22, metadata !16, i64 8}
!32 = metadata !{metadata !22, metadata !16, i64 0}
!33 = metadata !{metadata !22, metadata !16, i64 72}
!34 = metadata !{metadata !22, metadata !2, i64 28}
!35 = metadata !{metadata !22, metadata !2, i64 32}
!36 = metadata !{metadata !37, metadata !3, i64 0}
!37 = metadata !{metadata !"huft", metadata !3, i64 0, metadata !3, i64 1, metadata !3, i64 8}
!38 = metadata !{metadata !37, metadata !3, i64 1}
!39 = metadata !{metadata !39, metadata !18, metadata !19}
!40 = metadata !{metadata !40, metadata !18, metadata !19}
!41 = metadata !{metadata !41, metadata !18, metadata !19}
!42 = metadata !{metadata !42, metadata !18, metadata !19}
!43 = metadata !{metadata !43, metadata !18, metadata !19}
!44 = metadata !{metadata !45, metadata !2, i64 36}
!45 = metadata !{metadata !"tree_desc", metadata !8, i64 0, metadata !8, i64 8, metadata !8, i64 16, metadata !2, i64 24, metadata !2, i64 28, metadata !2, i64 32, metadata !2, i64 36}
!46 = metadata !{metadata !46, metadata !18, metadata !19}
!47 = metadata !{metadata !45, metadata !8, i64 0}
!48 = metadata !{metadata !45, metadata !8, i64 8}
!49 = metadata !{metadata !45, metadata !2, i64 28}
!50 = metadata !{metadata !45, metadata !8, i64 16}
!51 = metadata !{metadata !45, metadata !2, i64 24}
!52 = metadata !{metadata !45, metadata !2, i64 32}
!53 = metadata !{metadata !53, metadata !18, metadata !19}
!54 = metadata !{metadata !54, metadata !18, metadata !19}
!55 = metadata !{metadata !55, metadata !18, metadata !19}
!56 = metadata !{metadata !56, metadata !18, metadata !19}
!57 = metadata !{metadata !57, metadata !18, metadata !19}
!58 = metadata !{metadata !58, metadata !18, metadata !19}
!59 = metadata !{metadata !59, metadata !18, metadata !19}
!60 = metadata !{metadata !60, metadata !18, metadata !19}
!61 = metadata !{metadata !61, metadata !18, metadata !19}
!62 = metadata !{metadata !62, metadata !18, metadata !19}
!63 = metadata !{metadata !63, metadata !18, metadata !19}
!64 = metadata !{metadata !64, metadata !18, metadata !19}
!65 = metadata !{metadata !65, metadata !18, metadata !19}
!66 = metadata !{metadata !66, metadata !18, metadata !19}
!67 = metadata !{metadata !67, metadata !18, metadata !19}
!68 = metadata !{metadata !68, metadata !18, metadata !19}
!69 = metadata !{metadata !69, metadata !18, metadata !19}
