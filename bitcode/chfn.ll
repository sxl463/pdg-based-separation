; ModuleID = 'chfn.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.passwd = type { i8*, i8*, i32, i32, i8*, i8*, i8* }
%struct.option = type { i8*, i32, i32*, i32 }

@Prog = common global i8* null, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str1 = private unnamed_addr constant [7 x i8] c"shadow\00", align 1
@.str2 = private unnamed_addr constant [18 x i8] c"/usr/share/locale\00", align 1
@.str3 = private unnamed_addr constant [3 x i8] c"-R\00", align 1
@amroot = internal global i8 0, align 1
@.str4 = private unnamed_addr constant [5 x i8] c"chfn\00", align 1
@optind = external global i32
@stderr = external global %struct._IO_FILE*
@.str5 = private unnamed_addr constant [30 x i8] c"%s: user '%s' does not exist\0A\00", align 1
@.str6 = private unnamed_addr constant [38 x i8] c"%s: Cannot determine your user name.\0A\00", align 1
@.str7 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str8 = private unnamed_addr constant [55 x i8] c"Cannot determine the user name of the caller (UID %lu)\00", align 1
@fflg = internal global i8 0, align 1
@rflg = internal global i8 0, align 1
@wflg = internal global i8 0, align 1
@hflg = internal global i8 0, align 1
@oflg = internal global i8 0, align 1
@.str9 = private unnamed_addr constant [38 x i8] c"Changing the user information for %s\0A\00", align 1
@fullnm = internal global [8192 x i8] zeroinitializer, align 16
@roomno = internal global [8192 x i8] zeroinitializer, align 16
@workph = internal global [8192 x i8] zeroinitializer, align 16
@homeph = internal global [8192 x i8] zeroinitializer, align 16
@slop = internal global [8192 x i8] zeroinitializer, align 16
@.str10 = private unnamed_addr constant [21 x i8] c"%s: fields too long\0A\00", align 1
@.str11 = private unnamed_addr constant [16 x i8] c"%s,%s,%s,%s%s%s\00", align 1
@.str12 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str13 = private unnamed_addr constant [30 x i8] c"changed user '%s' information\00", align 1
@.str14 = private unnamed_addr constant [7 x i8] c"passwd\00", align 1
@.str15 = private unnamed_addr constant [27 x i8] c"Cannot change ID to root.\0A\00", align 1
@.str16 = private unnamed_addr constant [16 x i8] c"can't setuid(0)\00", align 1
@.str17 = private unnamed_addr constant [38 x i8] c"%s: cannot lock %s; try again later.\0A\00", align 1
@pw_locked = internal global i8 0, align 1
@.str18 = private unnamed_addr constant [20 x i8] c"%s: cannot open %s\0A\00", align 1
@.str19 = private unnamed_addr constant [36 x i8] c"%s: user '%s' does not exist in %s\0A\00", align 1
@.str20 = private unnamed_addr constant [45 x i8] c"%s: failed to prepare the new %s entry '%s'\0A\00", align 1
@.str21 = private unnamed_addr constant [41 x i8] c"%s: failure while writing changes to %s\0A\00", align 1
@.str22 = private unnamed_addr constant [36 x i8] c"failure while writing changes to %s\00", align 1
@.str23 = private unnamed_addr constant [25 x i8] c"%s: failed to unlock %s\0A\00", align 1
@.str24 = private unnamed_addr constant [20 x i8] c"failed to unlock %s\00", align 1
@.str25 = private unnamed_addr constant [5 x i8] c":,=\0A\00", align 1
@.str26 = private unnamed_addr constant [42 x i8] c"%s: name with non-ASCII characters: '%s'\0A\00", align 1
@.str27 = private unnamed_addr constant [24 x i8] c"%s: invalid name: '%s'\0A\00", align 1
@.str28 = private unnamed_addr constant [49 x i8] c"%s: room number with non-ASCII characters: '%s'\0A\00", align 1
@.str29 = private unnamed_addr constant [31 x i8] c"%s: invalid room number: '%s'\0A\00", align 1
@.str30 = private unnamed_addr constant [30 x i8] c"%s: invalid work phone: '%s'\0A\00", align 1
@.str31 = private unnamed_addr constant [30 x i8] c"%s: invalid home phone: '%s'\0A\00", align 1
@.str32 = private unnamed_addr constant [3 x i8] c":\0A\00", align 1
@.str33 = private unnamed_addr constant [40 x i8] c"%s: '%s' contains non-ASCII characters\0A\00", align 1
@.str34 = private unnamed_addr constant [38 x i8] c"%s: '%s' contains illegal characters\0A\00", align 1
@.str35 = private unnamed_addr constant [52 x i8] c"Enter the new value, or press ENTER for the default\00", align 1
@.str36 = private unnamed_addr constant [10 x i8] c"Full Name\00", align 1
@.str37 = private unnamed_addr constant [9 x i8] c"\09%s: %s\0A\00", align 1
@.str38 = private unnamed_addr constant [12 x i8] c"Room Number\00", align 1
@.str39 = private unnamed_addr constant [11 x i8] c"Work Phone\00", align 1
@.str40 = private unnamed_addr constant [11 x i8] c"Home Phone\00", align 1
@.str41 = private unnamed_addr constant [6 x i8] c"Other\00", align 1
@.str42 = private unnamed_addr constant [14 x i8] c"CHFN_RESTRICT\00", align 1
@.str43 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str44 = private unnamed_addr constant [4 x i8] c"rwh\00", align 1
@.str45 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@.str46 = private unnamed_addr constant [5 x i8] c"frwh\00", align 1
@.str47 = private unnamed_addr constant [24 x i8] c"%s: Permission denied.\0A\00", align 1
@.str48 = private unnamed_addr constant [10 x i8] c"CHFN_AUTH\00", align 1
@process_flags.long_options = internal global <{ { i8*, i32, i32*, i32, [4 x i8] }, { i8*, i32, i32*, i32, [4 x i8] }, { i8*, i32, i32*, i32, [4 x i8] }, { i8*, i32, i32*, i32, [4 x i8] }, { i8*, i32, i32*, i32, [4 x i8] }, { i8*, i32, i32*, i32, [4 x i8] }, { i8*, i32, i32*, i32, [4 x i8] }, { i8*, i32, i32*, i32, [4 x i8] } }> <{ { i8*, i32, i32*, i32, [4 x i8] } { i8* getelementptr inbounds ([10 x i8]* @.str49, i32 0, i32 0), i32 1, i32* null, i32 102, [4 x i8] undef }, { i8*, i32, i32*, i32, [4 x i8] } { i8* getelementptr inbounds ([11 x i8]* @.str50, i32 0, i32 0), i32 1, i32* null, i32 104, [4 x i8] undef }, { i8*, i32, i32*, i32, [4 x i8] } { i8* getelementptr inbounds ([6 x i8]* @.str51, i32 0, i32 0), i32 1, i32* null, i32 111, [4 x i8] undef }, { i8*, i32, i32*, i32, [4 x i8] } { i8* getelementptr inbounds ([5 x i8]* @.str52, i32 0, i32 0), i32 1, i32* null, i32 114, [4 x i8] undef }, { i8*, i32, i32*, i32, [4 x i8] } { i8* getelementptr inbounds ([5 x i8]* @.str53, i32 0, i32 0), i32 1, i32* null, i32 82, [4 x i8] undef }, { i8*, i32, i32*, i32, [4 x i8] } { i8* getelementptr inbounds ([5 x i8]* @.str54, i32 0, i32 0), i32 0, i32* null, i32 117, [4 x i8] undef }, { i8*, i32, i32*, i32, [4 x i8] } { i8* getelementptr inbounds ([11 x i8]* @.str55, i32 0, i32 0), i32 1, i32* null, i32 119, [4 x i8] undef }, { i8*, i32, i32*, i32, [4 x i8] } { i8* null, i32 0, i32* null, i32 0, [4 x i8] undef } }>, align 16
@.str49 = private unnamed_addr constant [10 x i8] c"full-name\00", align 1
@.str50 = private unnamed_addr constant [11 x i8] c"home-phone\00", align 1
@.str51 = private unnamed_addr constant [6 x i8] c"other\00", align 1
@.str52 = private unnamed_addr constant [5 x i8] c"room\00", align 1
@.str53 = private unnamed_addr constant [5 x i8] c"root\00", align 1
@.str54 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str55 = private unnamed_addr constant [11 x i8] c"work-phone\00", align 1
@.str56 = private unnamed_addr constant [14 x i8] c"f:h:o:r:R:uw:\00", align 1
@optarg = external global i8*
@stdout = external global %struct._IO_FILE*
@.str57 = private unnamed_addr constant [39 x i8] c"Usage: %s [options] [LOGIN]\0A\0AOptions:\0A\00", align 1
@.str58 = private unnamed_addr constant [57 x i8] c"  -f, --full-name FULL_NAME     change user's full name\0A\00", align 1
@.str59 = private unnamed_addr constant [65 x i8] c"  -h, --home-phone HOME_PHONE   change user's home phone number\0A\00", align 1
@.str60 = private unnamed_addr constant [71 x i8] c"  -o, --other OTHER_INFO        change user's other GECOS information\0A\00", align 1
@.str61 = private unnamed_addr constant [59 x i8] c"  -r, --room ROOM_NUMBER        change user's room number\0A\00", align 1
@.str62 = private unnamed_addr constant [58 x i8] c"  -R, --root CHROOT_DIR         directory to chroot into\0A\00", align 1
@.str63 = private unnamed_addr constant [68 x i8] c"  -u, --help                    display this help message and exit\0A\00", align 1
@.str64 = private unnamed_addr constant [67 x i8] c"  -w, --work-phone WORK_PHONE   change user's office phone number\0A\00", align 1
@.str65 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %pw = alloca %struct.passwd*, align 8
  %new_gecos = alloca [8192 x i8], align 16
  %user = alloca i8*, align 8
  %old_locale = alloca i8*, align 8
  %saved_locale = alloca i8*, align 8
  %old_locale66 = alloca i8*, align 8
  %saved_locale68 = alloca i8*, align 8
  store i32 0, i32* %retval
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  %0 = load i8*** %argv.addr, align 8
  %arrayidx = getelementptr inbounds i8** %0, i64 0
  %1 = load i8** %arrayidx, align 8
  %call = call i8* @Basename(i8* %1)
  store i8* %call, i8** @Prog, align 8
  call void @sanitize_env()
  %call1 = call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0)) #5
  %call2 = call i8* @bindtextdomain(i8* getelementptr inbounds ([7 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8]* @.str2, i32 0, i32 0)) #5
  %call3 = call i8* @textdomain(i8* getelementptr inbounds ([7 x i8]* @.str1, i32 0, i32 0)) #5
  %2 = load i32* %argc.addr, align 4
  %3 = load i8*** %argv.addr, align 8
  call void @process_root_flag(i8* getelementptr inbounds ([3 x i8]* @.str3, i32 0, i32 0), i32 %2, i8** %3)
  %call4 = call i32 @getuid() #5
  %cmp = icmp eq i32 %call4, 0
  %frombool = zext i1 %cmp to i8
  store i8 %frombool, i8* @amroot, align 1
  call void @openlog(i8* getelementptr inbounds ([5 x i8]* @.str4, i32 0, i32 0), i32 1, i32 80)
  %4 = load i32* %argc.addr, align 4
  %5 = load i8*** %argv.addr, align 8
  call void @process_flags(i32 %4, i8** %5)
  %6 = load i32* @optind, align 4
  %7 = load i32* %argc.addr, align 4
  %cmp5 = icmp slt i32 %6, %7
  br i1 %cmp5, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %8 = load i32* @optind, align 4
  %idxprom = sext i32 %8 to i64
  %9 = load i8*** %argv.addr, align 8
  %arrayidx6 = getelementptr inbounds i8** %9, i64 %idxprom
  %10 = load i8** %arrayidx6, align 8
  store i8* %10, i8** %user, align 8
  %11 = load i8** %user, align 8
  %call7 = call %struct.passwd* @xgetpwnam(i8* %11)
  store %struct.passwd* %call7, %struct.passwd** %pw, align 8
  %12 = load %struct.passwd** %pw, align 8
  %cmp8 = icmp eq %struct.passwd* null, %12
  br i1 %cmp8, label %if.then9, label %if.end

if.then9:                                         ; preds = %if.then
  %13 = load %struct._IO_FILE** @stderr, align 8
  %call10 = call i8* @gettext(i8* getelementptr inbounds ([30 x i8]* @.str5, i32 0, i32 0)) #5
  %14 = load i8** @Prog, align 8
  %15 = load i8** %user, align 8
  %call11 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %13, i8* %call10, i8* %14, i8* %15)
  call void @fail_exit(i32 1)
  br label %if.end

if.end:                                           ; preds = %if.then9, %if.then
  br label %if.end34

if.else:                                          ; preds = %entry
  %call12 = call %struct.passwd* @get_my_pwent()
  store %struct.passwd* %call12, %struct.passwd** %pw, align 8
  %16 = load %struct.passwd** %pw, align 8
  %cmp13 = icmp eq %struct.passwd* null, %16
  br i1 %cmp13, label %if.then14, label %if.end32

if.then14:                                        ; preds = %if.else
  %17 = load %struct._IO_FILE** @stderr, align 8
  %call15 = call i8* @gettext(i8* getelementptr inbounds ([38 x i8]* @.str6, i32 0, i32 0)) #5
  %18 = load i8** @Prog, align 8
  %call16 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %17, i8* %call15, i8* %18)
  br label %do.body

do.body:                                          ; preds = %if.then14
  %call17 = call i8* @setlocale(i32 6, i8* null) #5
  store i8* %call17, i8** %old_locale, align 8
  store i8* null, i8** %saved_locale, align 8
  %19 = load i8** %old_locale, align 8
  %cmp18 = icmp ne i8* null, %19
  br i1 %cmp18, label %if.then19, label %if.end21

if.then19:                                        ; preds = %do.body
  %20 = load i8** %old_locale, align 8
  %call20 = call noalias i8* @strdup(i8* %20) #5
  store i8* %call20, i8** %saved_locale, align 8
  br label %if.end21

if.end21:                                         ; preds = %if.then19, %do.body
  %21 = load i8** %saved_locale, align 8
  %cmp22 = icmp ne i8* null, %21
  br i1 %cmp22, label %if.then23, label %if.end25

if.then23:                                        ; preds = %if.end21
  %call24 = call i8* @setlocale(i32 6, i8* getelementptr inbounds ([2 x i8]* @.str7, i32 0, i32 0)) #5
  br label %if.end25

if.end25:                                         ; preds = %if.then23, %if.end21
  %call26 = call i32 @getuid() #5
  %conv = zext i32 %call26 to i64
  call void (i32, i8*, ...)* @syslog(i32 4, i8* getelementptr inbounds ([55 x i8]* @.str8, i32 0, i32 0), i64 %conv)
  %22 = load i8** %saved_locale, align 8
  %cmp27 = icmp ne i8* null, %22
  br i1 %cmp27, label %if.then29, label %if.end31

if.then29:                                        ; preds = %if.end25
  %23 = load i8** %saved_locale, align 8
  %call30 = call i8* @setlocale(i32 6, i8* %23) #5
  %24 = load i8** %saved_locale, align 8
  call void @free(i8* %24) #5
  br label %if.end31

if.end31:                                         ; preds = %if.then29, %if.end25
  br label %do.end

do.end:                                           ; preds = %if.end31
  call void @fail_exit(i32 1)
  br label %if.end32

if.end32:                                         ; preds = %do.end, %if.else
  %25 = load %struct.passwd** %pw, align 8
  %pw_name = getelementptr inbounds %struct.passwd* %25, i32 0, i32 0
  %26 = load i8** %pw_name, align 8
  %call33 = call i8* @xstrdup(i8* %26)
  store i8* %call33, i8** %user, align 8
  br label %if.end34

if.end34:                                         ; preds = %if.end32, %if.end
  %27 = load %struct.passwd** %pw, align 8
  call void @check_perms(%struct.passwd* %27)
  %28 = load %struct.passwd** %pw, align 8
  %pw_gecos = getelementptr inbounds %struct.passwd* %28, i32 0, i32 4
  %29 = load i8** %pw_gecos, align 8
  call void @get_old_fields(i8* %29)
  %30 = load i8* @fflg, align 1
  %tobool = trunc i8 %30 to i1
  br i1 %tobool, label %if.end45, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end34
  %31 = load i8* @rflg, align 1
  %tobool35 = trunc i8 %31 to i1
  br i1 %tobool35, label %if.end45, label %land.lhs.true36

land.lhs.true36:                                  ; preds = %land.lhs.true
  %32 = load i8* @wflg, align 1
  %tobool37 = trunc i8 %32 to i1
  br i1 %tobool37, label %if.end45, label %land.lhs.true38

land.lhs.true38:                                  ; preds = %land.lhs.true36
  %33 = load i8* @hflg, align 1
  %tobool39 = trunc i8 %33 to i1
  br i1 %tobool39, label %if.end45, label %land.lhs.true40

land.lhs.true40:                                  ; preds = %land.lhs.true38
  %34 = load i8* @oflg, align 1
  %tobool41 = trunc i8 %34 to i1
  br i1 %tobool41, label %if.end45, label %if.then42

if.then42:                                        ; preds = %land.lhs.true40
  %call43 = call i8* @gettext(i8* getelementptr inbounds ([38 x i8]* @.str9, i32 0, i32 0)) #5
  %35 = load i8** %user, align 8
  %call44 = call i32 (i8*, ...)* @printf(i8* %call43, i8* %35)
  call void @new_fields()
  br label %if.end45

if.end45:                                         ; preds = %if.then42, %land.lhs.true40, %land.lhs.true38, %land.lhs.true36, %land.lhs.true, %if.end34
  call void @check_fields()
  %call46 = call i64 @strlen(i8* getelementptr inbounds ([8192 x i8]* @fullnm, i32 0, i32 0)) #6
  %call47 = call i64 @strlen(i8* getelementptr inbounds ([8192 x i8]* @roomno, i32 0, i32 0)) #6
  %add = add i64 %call46, %call47
  %call48 = call i64 @strlen(i8* getelementptr inbounds ([8192 x i8]* @workph, i32 0, i32 0)) #6
  %add49 = add i64 %add, %call48
  %call50 = call i64 @strlen(i8* getelementptr inbounds ([8192 x i8]* @homeph, i32 0, i32 0)) #6
  %add51 = add i64 %add49, %call50
  %call52 = call i64 @strlen(i8* getelementptr inbounds ([8192 x i8]* @slop, i32 0, i32 0)) #6
  %add53 = add i64 %add51, %call52
  %cmp54 = icmp ugt i64 %add53, 80
  br i1 %cmp54, label %if.then56, label %if.end59

if.then56:                                        ; preds = %if.end45
  %36 = load %struct._IO_FILE** @stderr, align 8
  %call57 = call i8* @gettext(i8* getelementptr inbounds ([21 x i8]* @.str10, i32 0, i32 0)) #5
  %37 = load i8** @Prog, align 8
  %call58 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %36, i8* %call57, i8* %37)
  call void @fail_exit(i32 1)
  br label %if.end59

if.end59:                                         ; preds = %if.then56, %if.end45
  %arraydecay = getelementptr inbounds [8192 x i8]* %new_gecos, i32 0, i32 0
  %38 = load i8* getelementptr inbounds ([8192 x i8]* @slop, i32 0, i64 0), align 1
  %conv60 = sext i8 %38 to i32
  %cmp61 = icmp ne i32 0, %conv60
  %cond = select i1 %cmp61, i8* getelementptr inbounds ([2 x i8]* @.str12, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0)
  %call63 = call i32 (i8*, i64, i8*, ...)* @snprintf(i8* %arraydecay, i64 8192, i8* getelementptr inbounds ([16 x i8]* @.str11, i32 0, i32 0), i8* getelementptr inbounds ([8192 x i8]* @fullnm, i32 0, i32 0), i8* getelementptr inbounds ([8192 x i8]* @roomno, i32 0, i32 0), i8* getelementptr inbounds ([8192 x i8]* @workph, i32 0, i32 0), i8* getelementptr inbounds ([8192 x i8]* @homeph, i32 0, i32 0), i8* %cond, i8* getelementptr inbounds ([8192 x i8]* @slop, i32 0, i32 0)) #5
  %39 = load i8** %user, align 8
  %arraydecay64 = getelementptr inbounds [8192 x i8]* %new_gecos, i32 0, i32 0
  call void @update_gecos(i8* %39, i8* %arraydecay64)
  br label %do.body65

do.body65:                                        ; preds = %if.end59
  %call67 = call i8* @setlocale(i32 6, i8* null) #5
  store i8* %call67, i8** %old_locale66, align 8
  store i8* null, i8** %saved_locale68, align 8
  %40 = load i8** %old_locale66, align 8
  %cmp69 = icmp ne i8* null, %40
  br i1 %cmp69, label %if.then71, label %if.end73

if.then71:                                        ; preds = %do.body65
  %41 = load i8** %old_locale66, align 8
  %call72 = call noalias i8* @strdup(i8* %41) #5
  store i8* %call72, i8** %saved_locale68, align 8
  br label %if.end73

if.end73:                                         ; preds = %if.then71, %do.body65
  %42 = load i8** %saved_locale68, align 8
  %cmp74 = icmp ne i8* null, %42
  br i1 %cmp74, label %if.then76, label %if.end78

if.then76:                                        ; preds = %if.end73
  %call77 = call i8* @setlocale(i32 6, i8* getelementptr inbounds ([2 x i8]* @.str7, i32 0, i32 0)) #5
  br label %if.end78

if.end78:                                         ; preds = %if.then76, %if.end73
  %43 = load i8** %user, align 8
  call void (i32, i8*, ...)* @syslog(i32 6, i8* getelementptr inbounds ([30 x i8]* @.str13, i32 0, i32 0), i8* %43)
  %44 = load i8** %saved_locale68, align 8
  %cmp79 = icmp ne i8* null, %44
  br i1 %cmp79, label %if.then81, label %if.end83

if.then81:                                        ; preds = %if.end78
  %45 = load i8** %saved_locale68, align 8
  %call82 = call i8* @setlocale(i32 6, i8* %45) #5
  %46 = load i8** %saved_locale68, align 8
  call void @free(i8* %46) #5
  br label %if.end83

if.end83:                                         ; preds = %if.then81, %if.end78
  br label %do.end84

do.end84:                                         ; preds = %if.end83
  %call85 = call i32 @nscd_flush_cache(i8* getelementptr inbounds ([7 x i8]* @.str14, i32 0, i32 0))
  call void @closelog()
  call void @exit(i32 0) #7
  unreachable

return:                                           ; No predecessors!
  %47 = load i32* %retval
  ret i32 %47
}

declare i8* @Basename(i8*) #1

declare void @sanitize_env() #1

; Function Attrs: nounwind
declare i8* @setlocale(i32, i8*) #2

; Function Attrs: nounwind
declare i8* @bindtextdomain(i8*, i8*) #2

; Function Attrs: nounwind
declare i8* @textdomain(i8*) #2

declare void @process_root_flag(i8*, i32, i8**) #1

; Function Attrs: nounwind
declare i32 @getuid() #2

declare void @openlog(i8*, i32, i32) #1

; Function Attrs: nounwind uwtable
define internal void @process_flags(i32 %argc, i8** %argv) #0 {
entry:
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %c = alloca i32, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog, %entry
  %0 = load i32* %argc.addr, align 4
  %1 = load i8*** %argv.addr, align 8
  %call = call i32 @getopt_long(i32 %0, i8** %1, i8* getelementptr inbounds ([14 x i8]* @.str56, i32 0, i32 0), %struct.option* getelementptr inbounds ([8 x %struct.option]* bitcast (<{ { i8*, i32, i32*, i32, [4 x i8] }, { i8*, i32, i32*, i32, [4 x i8] }, { i8*, i32, i32*, i32, [4 x i8] }, { i8*, i32, i32*, i32, [4 x i8] }, { i8*, i32, i32*, i32, [4 x i8] }, { i8*, i32, i32*, i32, [4 x i8] }, { i8*, i32, i32*, i32, [4 x i8] }, { i8*, i32, i32*, i32, [4 x i8] } }>* @process_flags.long_options to [8 x %struct.option]*), i32 0, i32 0), i32* null) #5
  store i32 %call, i32* %c, align 4
  %cmp = icmp ne i32 %call, -1
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load i32* %c, align 4
  switch i32 %2, label %sw.default [
    i32 102, label %sw.bb
    i32 104, label %sw.bb5
    i32 111, label %sw.bb12
    i32 114, label %sw.bb18
    i32 82, label %sw.bb25
    i32 117, label %sw.bb26
    i32 119, label %sw.bb27
  ]

sw.bb:                                            ; preds = %while.body
  %call1 = call zeroext i1 @may_change_field(i32 102)
  br i1 %call1, label %if.end, label %if.then

if.then:                                          ; preds = %sw.bb
  %3 = load %struct._IO_FILE** @stderr, align 8
  %call2 = call i8* @gettext(i8* getelementptr inbounds ([24 x i8]* @.str47, i32 0, i32 0)) #5
  %4 = load i8** @Prog, align 8
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* %call2, i8* %4)
  call void @exit(i32 1) #7
  unreachable

if.end:                                           ; preds = %sw.bb
  store i8 1, i8* @fflg, align 1
  %5 = load i8** @optarg, align 8
  %call4 = call i8* @strncpy(i8* getelementptr inbounds ([8192 x i8]* @fullnm, i32 0, i32 0), i8* %5, i64 8191) #5
  store i8 0, i8* getelementptr inbounds ([8192 x i8]* @fullnm, i32 0, i64 8191), align 1
  br label %sw.epilog

sw.bb5:                                           ; preds = %while.body
  %call6 = call zeroext i1 @may_change_field(i32 104)
  br i1 %call6, label %if.end10, label %if.then7

if.then7:                                         ; preds = %sw.bb5
  %6 = load %struct._IO_FILE** @stderr, align 8
  %call8 = call i8* @gettext(i8* getelementptr inbounds ([24 x i8]* @.str47, i32 0, i32 0)) #5
  %7 = load i8** @Prog, align 8
  %call9 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %6, i8* %call8, i8* %7)
  call void @exit(i32 1) #7
  unreachable

if.end10:                                         ; preds = %sw.bb5
  store i8 1, i8* @hflg, align 1
  %8 = load i8** @optarg, align 8
  %call11 = call i8* @strncpy(i8* getelementptr inbounds ([8192 x i8]* @homeph, i32 0, i32 0), i8* %8, i64 8191) #5
  store i8 0, i8* getelementptr inbounds ([8192 x i8]* @homeph, i32 0, i64 8191), align 1
  br label %sw.epilog

sw.bb12:                                          ; preds = %while.body
  %9 = load i8* @amroot, align 1
  %tobool = trunc i8 %9 to i1
  br i1 %tobool, label %if.end16, label %if.then13

if.then13:                                        ; preds = %sw.bb12
  %10 = load %struct._IO_FILE** @stderr, align 8
  %call14 = call i8* @gettext(i8* getelementptr inbounds ([24 x i8]* @.str47, i32 0, i32 0)) #5
  %11 = load i8** @Prog, align 8
  %call15 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %10, i8* %call14, i8* %11)
  call void @exit(i32 1) #7
  unreachable

if.end16:                                         ; preds = %sw.bb12
  store i8 1, i8* @oflg, align 1
  %12 = load i8** @optarg, align 8
  %call17 = call i8* @strncpy(i8* getelementptr inbounds ([8192 x i8]* @slop, i32 0, i32 0), i8* %12, i64 8191) #5
  store i8 0, i8* getelementptr inbounds ([8192 x i8]* @slop, i32 0, i64 8191), align 1
  br label %sw.epilog

sw.bb18:                                          ; preds = %while.body
  %call19 = call zeroext i1 @may_change_field(i32 114)
  br i1 %call19, label %if.end23, label %if.then20

if.then20:                                        ; preds = %sw.bb18
  %13 = load %struct._IO_FILE** @stderr, align 8
  %call21 = call i8* @gettext(i8* getelementptr inbounds ([24 x i8]* @.str47, i32 0, i32 0)) #5
  %14 = load i8** @Prog, align 8
  %call22 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %13, i8* %call21, i8* %14)
  call void @exit(i32 1) #7
  unreachable

if.end23:                                         ; preds = %sw.bb18
  store i8 1, i8* @rflg, align 1
  %15 = load i8** @optarg, align 8
  %call24 = call i8* @strncpy(i8* getelementptr inbounds ([8192 x i8]* @roomno, i32 0, i32 0), i8* %15, i64 8191) #5
  store i8 0, i8* getelementptr inbounds ([8192 x i8]* @roomno, i32 0, i64 8191), align 1
  br label %sw.epilog

sw.bb25:                                          ; preds = %while.body
  br label %sw.epilog

sw.bb26:                                          ; preds = %while.body
  call void @usage(i32 0)
  br label %sw.epilog

sw.bb27:                                          ; preds = %while.body
  %call28 = call zeroext i1 @may_change_field(i32 119)
  br i1 %call28, label %if.end32, label %if.then29

if.then29:                                        ; preds = %sw.bb27
  %16 = load %struct._IO_FILE** @stderr, align 8
  %call30 = call i8* @gettext(i8* getelementptr inbounds ([24 x i8]* @.str47, i32 0, i32 0)) #5
  %17 = load i8** @Prog, align 8
  %call31 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %16, i8* %call30, i8* %17)
  call void @exit(i32 1) #7
  unreachable

if.end32:                                         ; preds = %sw.bb27
  store i8 1, i8* @wflg, align 1
  %18 = load i8** @optarg, align 8
  %call33 = call i8* @strncpy(i8* getelementptr inbounds ([8192 x i8]* @workph, i32 0, i32 0), i8* %18, i64 8191) #5
  store i8 0, i8* getelementptr inbounds ([8192 x i8]* @workph, i32 0, i64 8191), align 1
  br label %sw.epilog

sw.default:                                       ; preds = %while.body
  call void @usage(i32 2)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end32, %sw.bb26, %sw.bb25, %if.end23, %if.end16, %if.end10, %if.end
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

declare %struct.passwd* @xgetpwnam(i8*) #1

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #2

; Function Attrs: nounwind uwtable
define internal void @fail_exit(i32 %code) #0 {
entry:
  %code.addr = alloca i32, align 4
  %old_locale = alloca i8*, align 8
  %saved_locale = alloca i8*, align 8
  store i32 %code, i32* %code.addr, align 4
  %0 = load i8* @pw_locked, align 1
  %tobool = trunc i8 %0 to i1
  br i1 %tobool, label %if.then, label %if.end19

if.then:                                          ; preds = %entry
  %call = call i32 @pw_unlock()
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then1, label %if.end18

if.then1:                                         ; preds = %if.then
  %1 = load %struct._IO_FILE** @stderr, align 8
  %call2 = call i8* @gettext(i8* getelementptr inbounds ([25 x i8]* @.str23, i32 0, i32 0)) #5
  %2 = load i8** @Prog, align 8
  %call3 = call i8* @pw_dbname()
  %call4 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* %call2, i8* %2, i8* %call3)
  br label %do.body

do.body:                                          ; preds = %if.then1
  %call5 = call i8* @setlocale(i32 6, i8* null) #5
  store i8* %call5, i8** %old_locale, align 8
  store i8* null, i8** %saved_locale, align 8
  %3 = load i8** %old_locale, align 8
  %cmp6 = icmp ne i8* null, %3
  br i1 %cmp6, label %if.then7, label %if.end

if.then7:                                         ; preds = %do.body
  %4 = load i8** %old_locale, align 8
  %call8 = call noalias i8* @strdup(i8* %4) #5
  store i8* %call8, i8** %saved_locale, align 8
  br label %if.end

if.end:                                           ; preds = %if.then7, %do.body
  %5 = load i8** %saved_locale, align 8
  %cmp9 = icmp ne i8* null, %5
  br i1 %cmp9, label %if.then10, label %if.end12

if.then10:                                        ; preds = %if.end
  %call11 = call i8* @setlocale(i32 6, i8* getelementptr inbounds ([2 x i8]* @.str7, i32 0, i32 0)) #5
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %if.end
  %call13 = call i8* @pw_dbname()
  call void (i32, i8*, ...)* @syslog(i32 3, i8* getelementptr inbounds ([20 x i8]* @.str24, i32 0, i32 0), i8* %call13)
  %6 = load i8** %saved_locale, align 8
  %cmp14 = icmp ne i8* null, %6
  br i1 %cmp14, label %if.then15, label %if.end17

if.then15:                                        ; preds = %if.end12
  %7 = load i8** %saved_locale, align 8
  %call16 = call i8* @setlocale(i32 6, i8* %7) #5
  %8 = load i8** %saved_locale, align 8
  call void @free(i8* %8) #5
  br label %if.end17

if.end17:                                         ; preds = %if.then15, %if.end12
  br label %do.end

do.end:                                           ; preds = %if.end17
  br label %if.end18

if.end18:                                         ; preds = %do.end, %if.then
  br label %if.end19

if.end19:                                         ; preds = %if.end18, %entry
  store i8 0, i8* @pw_locked, align 1
  call void @closelog()
  %9 = load i32* %code.addr, align 4
  call void @exit(i32 %9) #7
  unreachable

return:                                           ; No predecessors!
  ret void
}

declare %struct.passwd* @get_my_pwent() #1

; Function Attrs: nounwind
declare noalias i8* @strdup(i8*) #2

declare void @syslog(i32, i8*, ...) #1

; Function Attrs: nounwind
declare void @free(i8*) #2

declare i8* @xstrdup(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @check_perms(%struct.passwd* %pw) #0 {
entry:
  %pw.addr = alloca %struct.passwd*, align 8
  store %struct.passwd* %pw, %struct.passwd** %pw.addr, align 8
  %0 = load i8* @amroot, align 1
  %tobool = trunc i8 %0 to i1
  br i1 %tobool, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %1 = load %struct.passwd** %pw.addr, align 8
  %pw_uid = getelementptr inbounds %struct.passwd* %1, i32 0, i32 2
  %2 = load i32* %pw_uid, align 4
  %call = call i32 @getuid() #5
  %cmp = icmp ne i32 %2, %call
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %3 = load %struct._IO_FILE** @stderr, align 8
  %call1 = call i8* @gettext(i8* getelementptr inbounds ([24 x i8]* @.str47, i32 0, i32 0)) #5
  %4 = load i8** @Prog, align 8
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* %call1, i8* %4)
  call void @closelog()
  call void @exit(i32 1) #7
  unreachable

if.end:                                           ; preds = %land.lhs.true, %entry
  %5 = load i8* @amroot, align 1
  %tobool3 = trunc i8 %5 to i1
  br i1 %tobool3, label %if.end7, label %land.lhs.true4

land.lhs.true4:                                   ; preds = %if.end
  %call5 = call zeroext i1 @getdef_bool(i8* getelementptr inbounds ([10 x i8]* @.str48, i32 0, i32 0))
  br i1 %call5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %land.lhs.true4
  %6 = load %struct.passwd** %pw.addr, align 8
  %pw_name = getelementptr inbounds %struct.passwd* %6, i32 0, i32 0
  %7 = load i8** %pw_name, align 8
  %8 = load %struct.passwd** %pw.addr, align 8
  %pw_passwd = getelementptr inbounds %struct.passwd* %8, i32 0, i32 1
  %9 = load i8** %pw_passwd, align 8
  call void @passwd_check(i8* %7, i8* %9, i8* getelementptr inbounds ([5 x i8]* @.str4, i32 0, i32 0))
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %land.lhs.true4, %if.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @get_old_fields(i8* %gecos) #0 {
entry:
  %gecos.addr = alloca i8*, align 8
  %cp = alloca i8*, align 8
  %old_gecos = alloca [8192 x i8], align 16
  store i8* %gecos, i8** %gecos.addr, align 8
  %arraydecay = getelementptr inbounds [8192 x i8]* %old_gecos, i32 0, i32 0
  %0 = load i8** %gecos.addr, align 8
  %call = call i8* @strncpy(i8* %arraydecay, i8* %0, i64 8191) #5
  %arrayidx = getelementptr inbounds [8192 x i8]* %old_gecos, i32 0, i64 8191
  store i8 0, i8* %arrayidx, align 1
  %arraydecay1 = getelementptr inbounds [8192 x i8]* %old_gecos, i32 0, i32 0
  %1 = load i8* @fflg, align 1
  %tobool = trunc i8 %1 to i1
  %cond = select i1 %tobool, i8* null, i8* getelementptr inbounds ([8192 x i8]* @fullnm, i32 0, i32 0)
  %call2 = call i8* @copy_field(i8* %arraydecay1, i8* %cond, i8* getelementptr inbounds ([8192 x i8]* @slop, i32 0, i32 0))
  store i8* %call2, i8** %cp, align 8
  %2 = load i8** %cp, align 8
  %cmp = icmp ne i8* null, %2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i8** %cp, align 8
  %4 = load i8* @rflg, align 1
  %tobool3 = trunc i8 %4 to i1
  %cond4 = select i1 %tobool3, i8* null, i8* getelementptr inbounds ([8192 x i8]* @roomno, i32 0, i32 0)
  %call5 = call i8* @copy_field(i8* %3, i8* %cond4, i8* getelementptr inbounds ([8192 x i8]* @slop, i32 0, i32 0))
  store i8* %call5, i8** %cp, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load i8** %cp, align 8
  %cmp6 = icmp ne i8* null, %5
  br i1 %cmp6, label %if.then7, label %if.end11

if.then7:                                         ; preds = %if.end
  %6 = load i8** %cp, align 8
  %7 = load i8* @wflg, align 1
  %tobool8 = trunc i8 %7 to i1
  %cond9 = select i1 %tobool8, i8* null, i8* getelementptr inbounds ([8192 x i8]* @workph, i32 0, i32 0)
  %call10 = call i8* @copy_field(i8* %6, i8* %cond9, i8* getelementptr inbounds ([8192 x i8]* @slop, i32 0, i32 0))
  store i8* %call10, i8** %cp, align 8
  br label %if.end11

if.end11:                                         ; preds = %if.then7, %if.end
  %8 = load i8** %cp, align 8
  %cmp12 = icmp ne i8* null, %8
  br i1 %cmp12, label %if.then13, label %if.end17

if.then13:                                        ; preds = %if.end11
  %9 = load i8** %cp, align 8
  %10 = load i8* @hflg, align 1
  %tobool14 = trunc i8 %10 to i1
  %cond15 = select i1 %tobool14, i8* null, i8* getelementptr inbounds ([8192 x i8]* @homeph, i32 0, i32 0)
  %call16 = call i8* @copy_field(i8* %9, i8* %cond15, i8* getelementptr inbounds ([8192 x i8]* @slop, i32 0, i32 0))
  store i8* %call16, i8** %cp, align 8
  br label %if.end17

if.end17:                                         ; preds = %if.then13, %if.end11
  %11 = load i8** %cp, align 8
  %cmp18 = icmp ne i8* null, %11
  br i1 %cmp18, label %land.lhs.true, label %if.end27

land.lhs.true:                                    ; preds = %if.end17
  %12 = load i8* @oflg, align 1
  %tobool19 = trunc i8 %12 to i1
  br i1 %tobool19, label %if.end27, label %if.then20

if.then20:                                        ; preds = %land.lhs.true
  %13 = load i8* getelementptr inbounds ([8192 x i8]* @slop, i32 0, i64 0), align 1
  %conv = sext i8 %13 to i32
  %cmp21 = icmp ne i32 0, %conv
  br i1 %cmp21, label %if.then23, label %if.end25

if.then23:                                        ; preds = %if.then20
  %call24 = call i8* @strcat(i8* getelementptr inbounds ([8192 x i8]* @slop, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @.str12, i32 0, i32 0)) #5
  br label %if.end25

if.end25:                                         ; preds = %if.then23, %if.then20
  %14 = load i8** %cp, align 8
  %call26 = call i8* @strcat(i8* getelementptr inbounds ([8192 x i8]* @slop, i32 0, i32 0), i8* %14) #5
  br label %if.end27

if.end27:                                         ; preds = %if.end25, %land.lhs.true, %if.end17
  ret void
}

declare i32 @printf(i8*, ...) #1

; Function Attrs: nounwind uwtable
define internal void @new_fields() #0 {
entry:
  %call = call i8* @gettext(i8* getelementptr inbounds ([52 x i8]* @.str35, i32 0, i32 0)) #5
  %call1 = call i32 @puts(i8* %call)
  %call2 = call zeroext i1 @may_change_field(i32 102)
  br i1 %call2, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call3 = call i8* @gettext(i8* getelementptr inbounds ([10 x i8]* @.str36, i32 0, i32 0)) #5
  call void @change_field(i8* getelementptr inbounds ([8192 x i8]* @fullnm, i32 0, i32 0), i64 8192, i8* %call3)
  br label %if.end

if.else:                                          ; preds = %entry
  %call4 = call i8* @gettext(i8* getelementptr inbounds ([9 x i8]* @.str37, i32 0, i32 0)) #5
  %call5 = call i8* @gettext(i8* getelementptr inbounds ([10 x i8]* @.str36, i32 0, i32 0)) #5
  %call6 = call i32 (i8*, ...)* @printf(i8* %call4, i8* %call5, i8* getelementptr inbounds ([8192 x i8]* @fullnm, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %call7 = call zeroext i1 @may_change_field(i32 114)
  br i1 %call7, label %if.then8, label %if.else10

if.then8:                                         ; preds = %if.end
  %call9 = call i8* @gettext(i8* getelementptr inbounds ([12 x i8]* @.str38, i32 0, i32 0)) #5
  call void @change_field(i8* getelementptr inbounds ([8192 x i8]* @roomno, i32 0, i32 0), i64 8192, i8* %call9)
  br label %if.end14

if.else10:                                        ; preds = %if.end
  %call11 = call i8* @gettext(i8* getelementptr inbounds ([9 x i8]* @.str37, i32 0, i32 0)) #5
  %call12 = call i8* @gettext(i8* getelementptr inbounds ([12 x i8]* @.str38, i32 0, i32 0)) #5
  %call13 = call i32 (i8*, ...)* @printf(i8* %call11, i8* %call12, i8* getelementptr inbounds ([8192 x i8]* @fullnm, i32 0, i32 0))
  br label %if.end14

if.end14:                                         ; preds = %if.else10, %if.then8
  %call15 = call zeroext i1 @may_change_field(i32 119)
  br i1 %call15, label %if.then16, label %if.else18

if.then16:                                        ; preds = %if.end14
  %call17 = call i8* @gettext(i8* getelementptr inbounds ([11 x i8]* @.str39, i32 0, i32 0)) #5
  call void @change_field(i8* getelementptr inbounds ([8192 x i8]* @workph, i32 0, i32 0), i64 8192, i8* %call17)
  br label %if.end22

if.else18:                                        ; preds = %if.end14
  %call19 = call i8* @gettext(i8* getelementptr inbounds ([9 x i8]* @.str37, i32 0, i32 0)) #5
  %call20 = call i8* @gettext(i8* getelementptr inbounds ([11 x i8]* @.str39, i32 0, i32 0)) #5
  %call21 = call i32 (i8*, ...)* @printf(i8* %call19, i8* %call20, i8* getelementptr inbounds ([8192 x i8]* @fullnm, i32 0, i32 0))
  br label %if.end22

if.end22:                                         ; preds = %if.else18, %if.then16
  %call23 = call zeroext i1 @may_change_field(i32 104)
  br i1 %call23, label %if.then24, label %if.else26

if.then24:                                        ; preds = %if.end22
  %call25 = call i8* @gettext(i8* getelementptr inbounds ([11 x i8]* @.str40, i32 0, i32 0)) #5
  call void @change_field(i8* getelementptr inbounds ([8192 x i8]* @homeph, i32 0, i32 0), i64 8192, i8* %call25)
  br label %if.end30

if.else26:                                        ; preds = %if.end22
  %call27 = call i8* @gettext(i8* getelementptr inbounds ([9 x i8]* @.str37, i32 0, i32 0)) #5
  %call28 = call i8* @gettext(i8* getelementptr inbounds ([11 x i8]* @.str40, i32 0, i32 0)) #5
  %call29 = call i32 (i8*, ...)* @printf(i8* %call27, i8* %call28, i8* getelementptr inbounds ([8192 x i8]* @fullnm, i32 0, i32 0))
  br label %if.end30

if.end30:                                         ; preds = %if.else26, %if.then24
  %0 = load i8* @amroot, align 1
  %tobool = trunc i8 %0 to i1
  br i1 %tobool, label %if.then31, label %if.end33

if.then31:                                        ; preds = %if.end30
  %call32 = call i8* @gettext(i8* getelementptr inbounds ([6 x i8]* @.str41, i32 0, i32 0)) #5
  call void @change_field(i8* getelementptr inbounds ([8192 x i8]* @slop, i32 0, i32 0), i64 8192, i8* %call32)
  br label %if.end33

if.end33:                                         ; preds = %if.then31, %if.end30
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @check_fields() #0 {
entry:
  %err = alloca i32, align 4
  %call = call i32 @valid_field(i8* getelementptr inbounds ([8192 x i8]* @fullnm, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str25, i32 0, i32 0))
  store i32 %call, i32* %err, align 4
  %0 = load i32* %err, align 4
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE** @stderr, align 8
  %call1 = call i8* @gettext(i8* getelementptr inbounds ([42 x i8]* @.str26, i32 0, i32 0)) #5
  %2 = load i8** @Prog, align 8
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* %call1, i8* %2, i8* getelementptr inbounds ([8192 x i8]* @fullnm, i32 0, i32 0))
  br label %if.end7

if.else:                                          ; preds = %entry
  %3 = load i32* %err, align 4
  %cmp3 = icmp slt i32 %3, 0
  br i1 %cmp3, label %if.then4, label %if.end

if.then4:                                         ; preds = %if.else
  %4 = load %struct._IO_FILE** @stderr, align 8
  %call5 = call i8* @gettext(i8* getelementptr inbounds ([24 x i8]* @.str27, i32 0, i32 0)) #5
  %5 = load i8** @Prog, align 8
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %4, i8* %call5, i8* %5, i8* getelementptr inbounds ([8192 x i8]* @fullnm, i32 0, i32 0))
  call void @fail_exit(i32 1)
  br label %if.end

if.end:                                           ; preds = %if.then4, %if.else
  br label %if.end7

if.end7:                                          ; preds = %if.end, %if.then
  %call8 = call i32 @valid_field(i8* getelementptr inbounds ([8192 x i8]* @roomno, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str25, i32 0, i32 0))
  store i32 %call8, i32* %err, align 4
  %6 = load i32* %err, align 4
  %cmp9 = icmp sgt i32 %6, 0
  br i1 %cmp9, label %if.then10, label %if.else13

if.then10:                                        ; preds = %if.end7
  %7 = load %struct._IO_FILE** @stderr, align 8
  %call11 = call i8* @gettext(i8* getelementptr inbounds ([49 x i8]* @.str28, i32 0, i32 0)) #5
  %8 = load i8** @Prog, align 8
  %call12 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %7, i8* %call11, i8* %8, i8* getelementptr inbounds ([8192 x i8]* @roomno, i32 0, i32 0))
  br label %if.end19

if.else13:                                        ; preds = %if.end7
  %9 = load i32* %err, align 4
  %cmp14 = icmp slt i32 %9, 0
  br i1 %cmp14, label %if.then15, label %if.end18

if.then15:                                        ; preds = %if.else13
  %10 = load %struct._IO_FILE** @stderr, align 8
  %call16 = call i8* @gettext(i8* getelementptr inbounds ([31 x i8]* @.str29, i32 0, i32 0)) #5
  %11 = load i8** @Prog, align 8
  %call17 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %10, i8* %call16, i8* %11, i8* getelementptr inbounds ([8192 x i8]* @roomno, i32 0, i32 0))
  call void @fail_exit(i32 1)
  br label %if.end18

if.end18:                                         ; preds = %if.then15, %if.else13
  br label %if.end19

if.end19:                                         ; preds = %if.end18, %if.then10
  %call20 = call i32 @valid_field(i8* getelementptr inbounds ([8192 x i8]* @workph, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str25, i32 0, i32 0))
  %cmp21 = icmp ne i32 %call20, 0
  br i1 %cmp21, label %if.then22, label %if.end25

if.then22:                                        ; preds = %if.end19
  %12 = load %struct._IO_FILE** @stderr, align 8
  %call23 = call i8* @gettext(i8* getelementptr inbounds ([30 x i8]* @.str30, i32 0, i32 0)) #5
  %13 = load i8** @Prog, align 8
  %call24 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %12, i8* %call23, i8* %13, i8* getelementptr inbounds ([8192 x i8]* @workph, i32 0, i32 0))
  call void @fail_exit(i32 1)
  br label %if.end25

if.end25:                                         ; preds = %if.then22, %if.end19
  %call26 = call i32 @valid_field(i8* getelementptr inbounds ([8192 x i8]* @homeph, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str25, i32 0, i32 0))
  %cmp27 = icmp ne i32 %call26, 0
  br i1 %cmp27, label %if.then28, label %if.end31

if.then28:                                        ; preds = %if.end25
  %14 = load %struct._IO_FILE** @stderr, align 8
  %call29 = call i8* @gettext(i8* getelementptr inbounds ([30 x i8]* @.str31, i32 0, i32 0)) #5
  %15 = load i8** @Prog, align 8
  %call30 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %14, i8* %call29, i8* %15, i8* getelementptr inbounds ([8192 x i8]* @homeph, i32 0, i32 0))
  call void @fail_exit(i32 1)
  br label %if.end31

if.end31:                                         ; preds = %if.then28, %if.end25
  %call32 = call i32 @valid_field(i8* getelementptr inbounds ([8192 x i8]* @slop, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str32, i32 0, i32 0))
  store i32 %call32, i32* %err, align 4
  %16 = load i32* %err, align 4
  %cmp33 = icmp sgt i32 %16, 0
  br i1 %cmp33, label %if.then34, label %if.else37

if.then34:                                        ; preds = %if.end31
  %17 = load %struct._IO_FILE** @stderr, align 8
  %call35 = call i8* @gettext(i8* getelementptr inbounds ([40 x i8]* @.str33, i32 0, i32 0)) #5
  %18 = load i8** @Prog, align 8
  %call36 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %17, i8* %call35, i8* %18, i8* getelementptr inbounds ([8192 x i8]* @slop, i32 0, i32 0))
  br label %if.end43

if.else37:                                        ; preds = %if.end31
  %19 = load i32* %err, align 4
  %cmp38 = icmp slt i32 %19, 0
  br i1 %cmp38, label %if.then39, label %if.end42

if.then39:                                        ; preds = %if.else37
  %20 = load %struct._IO_FILE** @stderr, align 8
  %call40 = call i8* @gettext(i8* getelementptr inbounds ([38 x i8]* @.str34, i32 0, i32 0)) #5
  %21 = load i8** @Prog, align 8
  %call41 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %20, i8* %call40, i8* %21, i8* getelementptr inbounds ([8192 x i8]* @slop, i32 0, i32 0))
  call void @fail_exit(i32 1)
  br label %if.end42

if.end42:                                         ; preds = %if.then39, %if.else37
  br label %if.end43

if.end43:                                         ; preds = %if.end42, %if.then34
  ret void
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

; Function Attrs: nounwind
declare i32 @snprintf(i8*, i64, i8*, ...) #2

; Function Attrs: nounwind uwtable
define internal void @update_gecos(i8* %user, i8* %gecos) #0 {
entry:
  %user.addr = alloca i8*, align 8
  %gecos.addr = alloca i8*, align 8
  %pw = alloca %struct.passwd*, align 8
  %pwent = alloca %struct.passwd, align 8
  %old_locale = alloca i8*, align 8
  %saved_locale = alloca i8*, align 8
  %old_locale51 = alloca i8*, align 8
  %saved_locale53 = alloca i8*, align 8
  %old_locale76 = alloca i8*, align 8
  %saved_locale78 = alloca i8*, align 8
  store i8* %user, i8** %user.addr, align 8
  store i8* %gecos, i8** %gecos.addr, align 8
  %call = call i32 @setuid(i32 0) #5
  %cmp = icmp ne i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end15

if.then:                                          ; preds = %entry
  %call1 = call i8* @gettext(i8* getelementptr inbounds ([27 x i8]* @.str15, i32 0, i32 0)) #5
  %0 = load %struct._IO_FILE** @stderr, align 8
  %call2 = call i32 @fputs(i8* %call1, %struct._IO_FILE* %0)
  br label %do.body

do.body:                                          ; preds = %if.then
  %call3 = call i8* @setlocale(i32 6, i8* null) #5
  store i8* %call3, i8** %old_locale, align 8
  store i8* null, i8** %saved_locale, align 8
  %1 = load i8** %old_locale, align 8
  %cmp4 = icmp ne i8* null, %1
  br i1 %cmp4, label %if.then5, label %if.end

if.then5:                                         ; preds = %do.body
  %2 = load i8** %old_locale, align 8
  %call6 = call noalias i8* @strdup(i8* %2) #5
  store i8* %call6, i8** %saved_locale, align 8
  br label %if.end

if.end:                                           ; preds = %if.then5, %do.body
  %3 = load i8** %saved_locale, align 8
  %cmp7 = icmp ne i8* null, %3
  br i1 %cmp7, label %if.then8, label %if.end10

if.then8:                                         ; preds = %if.end
  %call9 = call i8* @setlocale(i32 6, i8* getelementptr inbounds ([2 x i8]* @.str7, i32 0, i32 0)) #5
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %if.end
  call void (i32, i8*, ...)* @syslog(i32 3, i8* getelementptr inbounds ([16 x i8]* @.str16, i32 0, i32 0))
  %4 = load i8** %saved_locale, align 8
  %cmp11 = icmp ne i8* null, %4
  br i1 %cmp11, label %if.then12, label %if.end14

if.then12:                                        ; preds = %if.end10
  %5 = load i8** %saved_locale, align 8
  %call13 = call i8* @setlocale(i32 6, i8* %5) #5
  %6 = load i8** %saved_locale, align 8
  call void @free(i8* %6) #5
  br label %if.end14

if.end14:                                         ; preds = %if.then12, %if.end10
  br label %do.end

do.end:                                           ; preds = %if.end14
  call void @fail_exit(i32 1)
  br label %if.end15

if.end15:                                         ; preds = %do.end, %entry
  call void @pwd_init()
  %call16 = call i32 @pw_lock()
  %cmp17 = icmp eq i32 %call16, 0
  br i1 %cmp17, label %if.then18, label %if.end22

if.then18:                                        ; preds = %if.end15
  %7 = load %struct._IO_FILE** @stderr, align 8
  %call19 = call i8* @gettext(i8* getelementptr inbounds ([38 x i8]* @.str17, i32 0, i32 0)) #5
  %8 = load i8** @Prog, align 8
  %call20 = call i8* @pw_dbname()
  %call21 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %7, i8* %call19, i8* %8, i8* %call20)
  call void @fail_exit(i32 1)
  br label %if.end22

if.end22:                                         ; preds = %if.then18, %if.end15
  store i8 1, i8* @pw_locked, align 1
  %call23 = call i32 @pw_open(i32 2)
  %cmp24 = icmp eq i32 %call23, 0
  br i1 %cmp24, label %if.then25, label %if.end29

if.then25:                                        ; preds = %if.end22
  %9 = load %struct._IO_FILE** @stderr, align 8
  %call26 = call i8* @gettext(i8* getelementptr inbounds ([20 x i8]* @.str18, i32 0, i32 0)) #5
  %10 = load i8** @Prog, align 8
  %call27 = call i8* @pw_dbname()
  %call28 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %9, i8* %call26, i8* %10, i8* %call27)
  call void @fail_exit(i32 1)
  br label %if.end29

if.end29:                                         ; preds = %if.then25, %if.end22
  %11 = load i8** %user.addr, align 8
  %call30 = call %struct.passwd* @pw_locate(i8* %11)
  store %struct.passwd* %call30, %struct.passwd** %pw, align 8
  %12 = load %struct.passwd** %pw, align 8
  %cmp31 = icmp eq %struct.passwd* null, %12
  br i1 %cmp31, label %if.then32, label %if.end36

if.then32:                                        ; preds = %if.end29
  %13 = load %struct._IO_FILE** @stderr, align 8
  %call33 = call i8* @gettext(i8* getelementptr inbounds ([36 x i8]* @.str19, i32 0, i32 0)) #5
  %14 = load i8** @Prog, align 8
  %15 = load i8** %user.addr, align 8
  %call34 = call i8* @pw_dbname()
  %call35 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %13, i8* %call33, i8* %14, i8* %15, i8* %call34)
  call void @fail_exit(i32 1)
  br label %if.end36

if.end36:                                         ; preds = %if.then32, %if.end29
  %16 = load %struct.passwd** %pw, align 8
  %17 = bitcast %struct.passwd* %pwent to i8*
  %18 = bitcast %struct.passwd* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %17, i8* %18, i64 48, i32 8, i1 false)
  %19 = load i8** %gecos.addr, align 8
  %pw_gecos = getelementptr inbounds %struct.passwd* %pwent, i32 0, i32 4
  store i8* %19, i8** %pw_gecos, align 8
  %call37 = call i32 @pw_update(%struct.passwd* %pwent)
  %cmp38 = icmp eq i32 %call37, 0
  br i1 %cmp38, label %if.then39, label %if.end43

if.then39:                                        ; preds = %if.end36
  %20 = load %struct._IO_FILE** @stderr, align 8
  %call40 = call i8* @gettext(i8* getelementptr inbounds ([45 x i8]* @.str20, i32 0, i32 0)) #5
  %21 = load i8** @Prog, align 8
  %call41 = call i8* @pw_dbname()
  %pw_name = getelementptr inbounds %struct.passwd* %pwent, i32 0, i32 0
  %22 = load i8** %pw_name, align 8
  %call42 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %20, i8* %call40, i8* %21, i8* %call41, i8* %22)
  call void @fail_exit(i32 1)
  br label %if.end43

if.end43:                                         ; preds = %if.then39, %if.end36
  %call44 = call i32 @pw_close()
  %cmp45 = icmp eq i32 %call44, 0
  br i1 %cmp45, label %if.then46, label %if.end68

if.then46:                                        ; preds = %if.end43
  %23 = load %struct._IO_FILE** @stderr, align 8
  %call47 = call i8* @gettext(i8* getelementptr inbounds ([41 x i8]* @.str21, i32 0, i32 0)) #5
  %24 = load i8** @Prog, align 8
  %call48 = call i8* @pw_dbname()
  %call49 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %23, i8* %call47, i8* %24, i8* %call48)
  br label %do.body50

do.body50:                                        ; preds = %if.then46
  %call52 = call i8* @setlocale(i32 6, i8* null) #5
  store i8* %call52, i8** %old_locale51, align 8
  store i8* null, i8** %saved_locale53, align 8
  %25 = load i8** %old_locale51, align 8
  %cmp54 = icmp ne i8* null, %25
  br i1 %cmp54, label %if.then55, label %if.end57

if.then55:                                        ; preds = %do.body50
  %26 = load i8** %old_locale51, align 8
  %call56 = call noalias i8* @strdup(i8* %26) #5
  store i8* %call56, i8** %saved_locale53, align 8
  br label %if.end57

if.end57:                                         ; preds = %if.then55, %do.body50
  %27 = load i8** %saved_locale53, align 8
  %cmp58 = icmp ne i8* null, %27
  br i1 %cmp58, label %if.then59, label %if.end61

if.then59:                                        ; preds = %if.end57
  %call60 = call i8* @setlocale(i32 6, i8* getelementptr inbounds ([2 x i8]* @.str7, i32 0, i32 0)) #5
  br label %if.end61

if.end61:                                         ; preds = %if.then59, %if.end57
  %call62 = call i8* @pw_dbname()
  call void (i32, i8*, ...)* @syslog(i32 3, i8* getelementptr inbounds ([36 x i8]* @.str22, i32 0, i32 0), i8* %call62)
  %28 = load i8** %saved_locale53, align 8
  %cmp63 = icmp ne i8* null, %28
  br i1 %cmp63, label %if.then64, label %if.end66

if.then64:                                        ; preds = %if.end61
  %29 = load i8** %saved_locale53, align 8
  %call65 = call i8* @setlocale(i32 6, i8* %29) #5
  %30 = load i8** %saved_locale53, align 8
  call void @free(i8* %30) #5
  br label %if.end66

if.end66:                                         ; preds = %if.then64, %if.end61
  br label %do.end67

do.end67:                                         ; preds = %if.end66
  call void @fail_exit(i32 1)
  br label %if.end68

if.end68:                                         ; preds = %do.end67, %if.end43
  %call69 = call i32 @pw_unlock()
  %cmp70 = icmp eq i32 %call69, 0
  br i1 %cmp70, label %if.then71, label %if.end93

if.then71:                                        ; preds = %if.end68
  %31 = load %struct._IO_FILE** @stderr, align 8
  %call72 = call i8* @gettext(i8* getelementptr inbounds ([25 x i8]* @.str23, i32 0, i32 0)) #5
  %32 = load i8** @Prog, align 8
  %call73 = call i8* @pw_dbname()
  %call74 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %31, i8* %call72, i8* %32, i8* %call73)
  br label %do.body75

do.body75:                                        ; preds = %if.then71
  %call77 = call i8* @setlocale(i32 6, i8* null) #5
  store i8* %call77, i8** %old_locale76, align 8
  store i8* null, i8** %saved_locale78, align 8
  %33 = load i8** %old_locale76, align 8
  %cmp79 = icmp ne i8* null, %33
  br i1 %cmp79, label %if.then80, label %if.end82

if.then80:                                        ; preds = %do.body75
  %34 = load i8** %old_locale76, align 8
  %call81 = call noalias i8* @strdup(i8* %34) #5
  store i8* %call81, i8** %saved_locale78, align 8
  br label %if.end82

if.end82:                                         ; preds = %if.then80, %do.body75
  %35 = load i8** %saved_locale78, align 8
  %cmp83 = icmp ne i8* null, %35
  br i1 %cmp83, label %if.then84, label %if.end86

if.then84:                                        ; preds = %if.end82
  %call85 = call i8* @setlocale(i32 6, i8* getelementptr inbounds ([2 x i8]* @.str7, i32 0, i32 0)) #5
  br label %if.end86

if.end86:                                         ; preds = %if.then84, %if.end82
  %call87 = call i8* @pw_dbname()
  call void (i32, i8*, ...)* @syslog(i32 3, i8* getelementptr inbounds ([20 x i8]* @.str24, i32 0, i32 0), i8* %call87)
  %36 = load i8** %saved_locale78, align 8
  %cmp88 = icmp ne i8* null, %36
  br i1 %cmp88, label %if.then89, label %if.end91

if.then89:                                        ; preds = %if.end86
  %37 = load i8** %saved_locale78, align 8
  %call90 = call i8* @setlocale(i32 6, i8* %37) #5
  %38 = load i8** %saved_locale78, align 8
  call void @free(i8* %38) #5
  br label %if.end91

if.end91:                                         ; preds = %if.then89, %if.end86
  br label %do.end92

do.end92:                                         ; preds = %if.end91
  br label %if.end93

if.end93:                                         ; preds = %do.end92, %if.end68
  store i8 0, i8* @pw_locked, align 1
  ret void
}

declare i32 @nscd_flush_cache(i8*) #1

declare void @closelog() #1

; Function Attrs: noreturn nounwind
declare void @exit(i32) #4

; Function Attrs: nounwind
declare i32 @setuid(i32) #2

declare i32 @fputs(i8*, %struct._IO_FILE*) #1

declare void @pwd_init() #1

declare i32 @pw_lock() #1

declare i8* @pw_dbname() #1

declare i32 @pw_open(i32) #1

declare %struct.passwd* @pw_locate(i8*) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #5

declare i32 @pw_update(%struct.passwd*) #1

declare i32 @pw_close() #1

declare i32 @pw_unlock() #1

declare i32 @valid_field(i8*, i8*) #1

declare i32 @puts(i8*) #1

; Function Attrs: nounwind uwtable
define internal zeroext i1 @may_change_field(i32 %field) #0 {
entry:
  %retval = alloca i1, align 1
  %field.addr = alloca i32, align 4
  %cp = alloca i8*, align 8
  store i32 %field, i32* %field.addr, align 4
  %0 = load i8* @amroot, align 1
  %tobool = trunc i8 %0 to i1
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i1 true, i1* %retval
  br label %return

if.end:                                           ; preds = %entry
  %call = call i8* @getdef_str(i8* getelementptr inbounds ([14 x i8]* @.str42, i32 0, i32 0))
  store i8* %call, i8** %cp, align 8
  %1 = load i8** %cp, align 8
  %cmp = icmp eq i8* null, %1
  br i1 %cmp, label %if.then1, label %if.else

if.then1:                                         ; preds = %if.end
  store i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i8** %cp, align 8
  br label %if.end11

if.else:                                          ; preds = %if.end
  %2 = load i8** %cp, align 8
  %call2 = call i32 @strcmp(i8* %2, i8* getelementptr inbounds ([4 x i8]* @.str43, i32 0, i32 0)) #6
  %cmp3 = icmp eq i32 %call2, 0
  br i1 %cmp3, label %if.then4, label %if.else5

if.then4:                                         ; preds = %if.else
  store i8* getelementptr inbounds ([4 x i8]* @.str44, i32 0, i32 0), i8** %cp, align 8
  br label %if.end10

if.else5:                                         ; preds = %if.else
  %3 = load i8** %cp, align 8
  %call6 = call i32 @strcmp(i8* %3, i8* getelementptr inbounds ([3 x i8]* @.str45, i32 0, i32 0)) #6
  %cmp7 = icmp eq i32 %call6, 0
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.else5
  store i8* getelementptr inbounds ([5 x i8]* @.str46, i32 0, i32 0), i8** %cp, align 8
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %if.else5
  br label %if.end10

if.end10:                                         ; preds = %if.end9, %if.then4
  br label %if.end11

if.end11:                                         ; preds = %if.end10, %if.then1
  %4 = load i8** %cp, align 8
  %5 = load i32* %field.addr, align 4
  %call12 = call i8* @strchr(i8* %4, i32 %5) #6
  %cmp13 = icmp ne i8* %call12, null
  br i1 %cmp13, label %if.then14, label %if.end15

if.then14:                                        ; preds = %if.end11
  store i1 true, i1* %retval
  br label %return

if.end15:                                         ; preds = %if.end11
  store i1 false, i1* %retval
  br label %return

return:                                           ; preds = %if.end15, %if.then14, %if.then
  %6 = load i1* %retval
  ret i1 %6
}

declare void @change_field(i8*, i64, i8*) #1

declare i8* @getdef_str(i8*) #1

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #3

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #3

; Function Attrs: nounwind
declare i8* @strncpy(i8*, i8*, i64) #2

; Function Attrs: nounwind uwtable
define internal i8* @copy_field(i8* %in, i8* %out, i8* %extra) #0 {
entry:
  %in.addr = alloca i8*, align 8
  %out.addr = alloca i8*, align 8
  %extra.addr = alloca i8*, align 8
  %cp = alloca i8*, align 8
  store i8* %in, i8** %in.addr, align 8
  store i8* %out, i8** %out.addr, align 8
  store i8* %extra, i8** %extra.addr, align 8
  store i8* null, i8** %cp, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end14, %entry
  %0 = load i8** %in.addr, align 8
  %cmp = icmp ne i8* null, %0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load i8** %in.addr, align 8
  %call = call i8* @strchr(i8* %1, i32 44) #6
  store i8* %call, i8** %cp, align 8
  %2 = load i8** %cp, align 8
  %cmp1 = icmp ne i8* null, %2
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %3 = load i8** %cp, align 8
  %incdec.ptr = getelementptr inbounds i8* %3, i32 1
  store i8* %incdec.ptr, i8** %cp, align 8
  store i8 0, i8* %3, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  %4 = load i8** %in.addr, align 8
  %call2 = call i8* @strchr(i8* %4, i32 61) #6
  %cmp3 = icmp eq i8* %call2, null
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  br label %while.end

if.end5:                                          ; preds = %if.end
  %5 = load i8** %extra.addr, align 8
  %cmp6 = icmp ne i8* null, %5
  br i1 %cmp6, label %if.then7, label %if.end14

if.then7:                                         ; preds = %if.end5
  %6 = load i8** %extra.addr, align 8
  %arrayidx = getelementptr inbounds i8* %6, i64 0
  %7 = load i8* %arrayidx, align 1
  %conv = sext i8 %7 to i32
  %cmp8 = icmp ne i32 0, %conv
  br i1 %cmp8, label %if.then10, label %if.end12

if.then10:                                        ; preds = %if.then7
  %8 = load i8** %extra.addr, align 8
  %call11 = call i8* @strcat(i8* %8, i8* getelementptr inbounds ([2 x i8]* @.str12, i32 0, i32 0)) #5
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %if.then7
  %9 = load i8** %extra.addr, align 8
  %10 = load i8** %in.addr, align 8
  %call13 = call i8* @strcat(i8* %9, i8* %10) #5
  br label %if.end14

if.end14:                                         ; preds = %if.end12, %if.end5
  %11 = load i8** %cp, align 8
  store i8* %11, i8** %in.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %if.then4, %while.cond
  %12 = load i8** %in.addr, align 8
  %cmp15 = icmp ne i8* null, %12
  br i1 %cmp15, label %land.lhs.true, label %if.end21

land.lhs.true:                                    ; preds = %while.end
  %13 = load i8** %out.addr, align 8
  %cmp17 = icmp ne i8* null, %13
  br i1 %cmp17, label %if.then19, label %if.end21

if.then19:                                        ; preds = %land.lhs.true
  %14 = load i8** %out.addr, align 8
  %15 = load i8** %in.addr, align 8
  %call20 = call i8* @strcpy(i8* %14, i8* %15) #5
  br label %if.end21

if.end21:                                         ; preds = %if.then19, %land.lhs.true, %while.end
  %16 = load i8** %cp, align 8
  ret i8* %16
}

; Function Attrs: nounwind
declare i8* @strcat(i8*, i8*) #2

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #2

declare zeroext i1 @getdef_bool(i8*) #1

declare void @passwd_check(i8*, i8*, i8*) #1

; Function Attrs: nounwind
declare i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) #2

; Function Attrs: nounwind uwtable
define internal void @usage(i32 %status) #0 {
entry:
  %status.addr = alloca i32, align 4
  %usageout = alloca %struct._IO_FILE*, align 8
  store i32 %status, i32* %status.addr, align 4
  %0 = load i32* %status.addr, align 4
  %cmp = icmp ne i32 0, %0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %1 = load %struct._IO_FILE** @stderr, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  %2 = load %struct._IO_FILE** @stdout, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._IO_FILE* [ %1, %cond.true ], [ %2, %cond.false ]
  store %struct._IO_FILE* %cond, %struct._IO_FILE** %usageout, align 8
  %3 = load %struct._IO_FILE** %usageout, align 8
  %call = call i8* @gettext(i8* getelementptr inbounds ([39 x i8]* @.str57, i32 0, i32 0)) #5
  %4 = load i8** @Prog, align 8
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* %call, i8* %4)
  %call2 = call i8* @gettext(i8* getelementptr inbounds ([57 x i8]* @.str58, i32 0, i32 0)) #5
  %5 = load %struct._IO_FILE** %usageout, align 8
  %call3 = call i32 @fputs(i8* %call2, %struct._IO_FILE* %5)
  %call4 = call i8* @gettext(i8* getelementptr inbounds ([65 x i8]* @.str59, i32 0, i32 0)) #5
  %6 = load %struct._IO_FILE** %usageout, align 8
  %call5 = call i32 @fputs(i8* %call4, %struct._IO_FILE* %6)
  %call6 = call i8* @gettext(i8* getelementptr inbounds ([71 x i8]* @.str60, i32 0, i32 0)) #5
  %7 = load %struct._IO_FILE** %usageout, align 8
  %call7 = call i32 @fputs(i8* %call6, %struct._IO_FILE* %7)
  %call8 = call i8* @gettext(i8* getelementptr inbounds ([59 x i8]* @.str61, i32 0, i32 0)) #5
  %8 = load %struct._IO_FILE** %usageout, align 8
  %call9 = call i32 @fputs(i8* %call8, %struct._IO_FILE* %8)
  %call10 = call i8* @gettext(i8* getelementptr inbounds ([58 x i8]* @.str62, i32 0, i32 0)) #5
  %9 = load %struct._IO_FILE** %usageout, align 8
  %call11 = call i32 @fputs(i8* %call10, %struct._IO_FILE* %9)
  %call12 = call i8* @gettext(i8* getelementptr inbounds ([68 x i8]* @.str63, i32 0, i32 0)) #5
  %10 = load %struct._IO_FILE** %usageout, align 8
  %call13 = call i32 @fputs(i8* %call12, %struct._IO_FILE* %10)
  %call14 = call i8* @gettext(i8* getelementptr inbounds ([67 x i8]* @.str64, i32 0, i32 0)) #5
  %11 = load %struct._IO_FILE** %usageout, align 8
  %call15 = call i32 @fputs(i8* %call14, %struct._IO_FILE* %11)
  %12 = load %struct._IO_FILE** %usageout, align 8
  %call16 = call i32 @fputs(i8* getelementptr inbounds ([2 x i8]* @.str65, i32 0, i32 0), %struct._IO_FILE* %12)
  %13 = load i32* %status.addr, align 4
  call void @exit(i32 %13) #7
  unreachable

return:                                           ; No predecessors!
  ret void
}

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind readonly }
attributes #7 = { noreturn nounwind }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
