; ModuleID = 'chfn.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@.str = private unnamed_addr constant [7 x i8] c"shadow\00", align 1
@.str1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@stderr = external global %struct._IO_FILE*
@.str2 = private unnamed_addr constant [25 x i8] c"shadow cannot be opened\0A\00", align 1
@.str3 = private unnamed_addr constant [12 x i8] c"Username : \00", align 1
@stdin = external global %struct._IO_FILE*
@.str4 = private unnamed_addr constant [12 x i8] c"Password : \00", align 1
@.str5 = private unnamed_addr constant [4 x i8] c" : \00", align 1
@.str6 = private unnamed_addr constant [7 x i8] c"passwd\00", align 1
@.str7 = private unnamed_addr constant [3 x i8] c"w+\00", align 1
@.str8 = private unnamed_addr constant [25 x i8] c"Cannot open file passwd\0A\00", align 1
@.str9 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str10 = private unnamed_addr constant [16 x i8] c"Phone number : \00", align 1
@.str11 = private unnamed_addr constant [13 x i8] c"Phone number\00", align 1
@.str12 = private unnamed_addr constant [16 x i8] c"Authentication\0A\00", align 1
@.str13 = private unnamed_addr constant [23 x i8] c"Authentication failed\0A\00", align 1

; Function Attrs: uwtable
define i32 @_Z5_authPcS_(i8* %uname, i8* %passwd) #0 {
entry:
  %retval = alloca i32, align 4
  %uname.addr = alloca i8*, align 8
  %passwd.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %result = alloca i32, align 4
  %username = alloca [100 x i8], align 16
  %password = alloca [100 x i8], align 16
  %shadow = alloca %struct._IO_FILE*, align 128
  %ch = alloca i32, align 4
  %ch13 = alloca i32, align 4
  store i8* %uname, i8** %uname.addr, align 8
  store i8* %passwd, i8** %passwd.addr, align 8
  store i32 0, i32* %result, align 4
  %call = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([7 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @.str1, i32 0, i32 0))
  store %struct._IO_FILE* %call, %struct._IO_FILE** %shadow, align 128
  %0 = load %struct._IO_FILE** %shadow, align 128
  %cmp = icmp eq %struct._IO_FILE* null, %0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE** @stderr, align 8
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([25 x i8]* @.str2, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %2 = load i32* %i, align 4
  %cmp2 = icmp slt i32 %2, 99
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct._IO_FILE** %shadow, align 128
  %call3 = call i32 @fgetc(%struct._IO_FILE* %3)
  store i32 %call3, i32* %ch, align 4
  %4 = load i32* %ch, align 4
  %call4 = call i32 @isspace(i32 %4) #4
  %tobool = icmp ne i32 %call4, 0
  br i1 %tobool, label %if.then6, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %5 = load i32* %ch, align 4
  %cmp5 = icmp eq i32 -1, %5
  br i1 %cmp5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %lor.lhs.false, %for.body
  br label %for.end

if.end7:                                          ; preds = %lor.lhs.false
  %6 = load i32* %ch, align 4
  %conv = trunc i32 %6 to i8
  %7 = load i32* %i, align 4
  %idxprom = sext i32 %7 to i64
  %arrayidx = getelementptr inbounds [100 x i8]* %username, i32 0, i64 %idxprom
  store i8 %conv, i8* %arrayidx, align 1
  br label %for.inc

for.inc:                                          ; preds = %if.end7
  %8 = load i32* %i, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then6, %for.cond
  %9 = load i32* %i, align 4
  %idxprom8 = sext i32 %9 to i64
  %arrayidx9 = getelementptr inbounds [100 x i8]* %username, i32 0, i64 %idxprom8
  store i8 0, i8* %arrayidx9, align 1
  store i32 0, i32* %i, align 4
  br label %for.cond10

for.cond10:                                       ; preds = %for.inc24, %for.end
  %10 = load i32* %i, align 4
  %cmp11 = icmp slt i32 %10, 99
  br i1 %cmp11, label %for.body12, label %for.end26

for.body12:                                       ; preds = %for.cond10
  %11 = load %struct._IO_FILE** %shadow, align 128
  %call14 = call i32 @fgetc(%struct._IO_FILE* %11)
  store i32 %call14, i32* %ch13, align 4
  %12 = load i32* %ch13, align 4
  %call15 = call i32 @isspace(i32 %12) #4
  %tobool16 = icmp ne i32 %call15, 0
  br i1 %tobool16, label %if.then19, label %lor.lhs.false17

lor.lhs.false17:                                  ; preds = %for.body12
  %13 = load i32* %ch13, align 4
  %cmp18 = icmp eq i32 -1, %13
  br i1 %cmp18, label %if.then19, label %if.end20

if.then19:                                        ; preds = %lor.lhs.false17, %for.body12
  br label %for.end26

if.end20:                                         ; preds = %lor.lhs.false17
  %14 = load i32* %ch13, align 4
  %conv21 = trunc i32 %14 to i8
  %15 = load i32* %i, align 4
  %idxprom22 = sext i32 %15 to i64
  %arrayidx23 = getelementptr inbounds [100 x i8]* %password, i32 0, i64 %idxprom22
  store i8 %conv21, i8* %arrayidx23, align 1
  br label %for.inc24

for.inc24:                                        ; preds = %if.end20
  %16 = load i32* %i, align 4
  %inc25 = add nsw i32 %16, 1
  store i32 %inc25, i32* %i, align 4
  br label %for.cond10

for.end26:                                        ; preds = %if.then19, %for.cond10
  %17 = load i32* %i, align 4
  %idxprom27 = sext i32 %17 to i64
  %arrayidx28 = getelementptr inbounds [100 x i8]* %password, i32 0, i64 %idxprom27
  store i8 0, i8* %arrayidx28, align 1
  %arraydecay = getelementptr inbounds [100 x i8]* %username, i32 0, i32 0
  %18 = load i8** %uname.addr, align 8
  %call29 = call i32 @strncmp(i8* %arraydecay, i8* %18, i64 100) #6
  %tobool30 = icmp ne i32 %call29, 0
  br i1 %tobool30, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %for.end26
  %arraydecay31 = getelementptr inbounds [100 x i8]* %password, i32 0, i32 0
  %19 = load i8** %passwd.addr, align 8
  %call32 = call i32 @strncmp(i8* %arraydecay31, i8* %19, i64 100) #6
  %tobool33 = icmp ne i32 %call32, 0
  %lnot = xor i1 %tobool33, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.end26
  %20 = phi i1 [ false, %for.end26 ], [ %lnot, %land.rhs ]
  %conv34 = zext i1 %20 to i32
  store i32 %conv34, i32* %result, align 4
  %21 = load %struct._IO_FILE** %shadow, align 128
  %call35 = call i32 @fclose(%struct._IO_FILE* %21)
  %22 = load i32* %result, align 4
  store i32 %22, i32* %retval
  br label %return

return:                                           ; preds = %land.end, %if.then
  %23 = load i32* %retval
  ret i32 %23
}

declare %struct._IO_FILE* @fopen(i8*, i8*) #1

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

declare i32 @fgetc(%struct._IO_FILE*) #1

; Function Attrs: nounwind
declare i32 @isspace(i32) #2

; Function Attrs: nounwind readonly
declare i32 @strncmp(i8*, i8*, i64) #3

declare i32 @fclose(%struct._IO_FILE*) #1

; Function Attrs: uwtable
define i32 @_Z4authv() #0 {
entry:
  %i = alloca i32, align 4
  %username = alloca [100 x i8], align 16
  %password = alloca [100 x i8], align 16
  %ch = alloca i32, align 4
  %ch10 = alloca i32, align 4
  %call = call i64 @write(i32 1, i8* getelementptr inbounds ([12 x i8]* @.str3, i32 0, i32 0), i64 11)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32* %i, align 4
  %cmp = icmp slt i32 %0, 99
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load %struct._IO_FILE** @stdin, align 8
  %call1 = call i32 @fgetc(%struct._IO_FILE* %1)
  store i32 %call1, i32* %ch, align 4
  %2 = load i32* %ch, align 4
  %call2 = call i32 @isspace(i32 %2) #4
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %3 = load i32* %ch, align 4
  %cmp3 = icmp eq i32 -1, %3
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %for.body
  br label %for.end

if.end:                                           ; preds = %lor.lhs.false
  %4 = load i32* %ch, align 4
  %conv = trunc i32 %4 to i8
  %5 = load i32* %i, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds [100 x i8]* %username, i32 0, i64 %idxprom
  store i8 %conv, i8* %arrayidx, align 1
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %6 = load i32* %i, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then, %for.cond
  %7 = load i32* %i, align 4
  %idxprom4 = sext i32 %7 to i64
  %arrayidx5 = getelementptr inbounds [100 x i8]* %username, i32 0, i64 %idxprom4
  store i8 0, i8* %arrayidx5, align 1
  %call6 = call i64 @write(i32 1, i8* getelementptr inbounds ([12 x i8]* @.str4, i32 0, i32 0), i64 11)
  store i32 0, i32* %i, align 4
  br label %for.cond7

for.cond7:                                        ; preds = %for.inc21, %for.end
  %8 = load i32* %i, align 4
  %cmp8 = icmp slt i32 %8, 99
  br i1 %cmp8, label %for.body9, label %for.end23

for.body9:                                        ; preds = %for.cond7
  %9 = load %struct._IO_FILE** @stdin, align 8
  %call11 = call i32 @fgetc(%struct._IO_FILE* %9)
  store i32 %call11, i32* %ch10, align 4
  %10 = load i32* %ch10, align 4
  %call12 = call i32 @isspace(i32 %10) #4
  %tobool13 = icmp ne i32 %call12, 0
  br i1 %tobool13, label %if.then16, label %lor.lhs.false14

lor.lhs.false14:                                  ; preds = %for.body9
  %11 = load i32* %ch10, align 4
  %cmp15 = icmp eq i32 -1, %11
  br i1 %cmp15, label %if.then16, label %if.end17

if.then16:                                        ; preds = %lor.lhs.false14, %for.body9
  br label %for.end23

if.end17:                                         ; preds = %lor.lhs.false14
  %12 = load i32* %ch10, align 4
  %conv18 = trunc i32 %12 to i8
  %13 = load i32* %i, align 4
  %idxprom19 = sext i32 %13 to i64
  %arrayidx20 = getelementptr inbounds [100 x i8]* %password, i32 0, i64 %idxprom19
  store i8 %conv18, i8* %arrayidx20, align 1
  br label %for.inc21

for.inc21:                                        ; preds = %if.end17
  %14 = load i32* %i, align 4
  %inc22 = add nsw i32 %14, 1
  store i32 %inc22, i32* %i, align 4
  br label %for.cond7

for.end23:                                        ; preds = %if.then16, %for.cond7
  %15 = load i32* %i, align 4
  %idxprom24 = sext i32 %15 to i64
  %arrayidx25 = getelementptr inbounds [100 x i8]* %password, i32 0, i64 %idxprom24
  store i8 0, i8* %arrayidx25, align 1
  %arraydecay = getelementptr inbounds [100 x i8]* %username, i32 0, i32 0
  %arraydecay26 = getelementptr inbounds [100 x i8]* %password, i32 0, i32 0
  %call27 = call i32 @_Z5_authPcS_(i8* %arraydecay, i8* %arraydecay26)
  ret i32 %call27
}

declare i64 @write(i32, i8*, i64) #1

; Function Attrs: uwtable
define void @_Z9_changeFnPcS_(i8* %Item, i8* %Content) #0 {
entry:
  %Item.addr = alloca i8*, align 8
  %Content.addr = alloca i8*, align 8
  %entry1 = alloca i8*, align 8
  %size = alloca i32, align 4
  %fp = alloca %struct._IO_FILE*, align 8
  store i8* %Item, i8** %Item.addr, align 8
  store i8* %Content, i8** %Content.addr, align 8
  store i8* null, i8** %entry1, align 8
  store i32 0, i32* %size, align 4
  store %struct._IO_FILE* null, %struct._IO_FILE** %fp, align 8
  %0 = load i8** %Item.addr, align 8
  %cmp = icmp eq i8* null, %0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i8** %Content.addr, align 8
  %cmp2 = icmp eq i8* null, %1
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %2 = load i8** %Item.addr, align 8
  %call = call i64 @strlen(i8* %2) #6
  %add = add i64 %call, 3
  %3 = load i8** %Content.addr, align 8
  %call3 = call i64 @strlen(i8* %3) #6
  %add4 = add i64 %add, %call3
  %add5 = add i64 %add4, 1
  %conv = trunc i64 %add5 to i32
  store i32 %conv, i32* %size, align 4
  %4 = load i8** %Item.addr, align 8
  %call6 = call i64 @strlen(i8* %4) #6
  %add7 = add i64 %call6, 3
  %5 = load i8** %Content.addr, align 8
  %call8 = call i64 @strlen(i8* %5) #6
  %add9 = add i64 %add7, %call8
  %add10 = add i64 %add9, 1
  %call11 = call noalias i8* @malloc(i64 %add10) #4
  store i8* %call11, i8** %entry1, align 8
  %6 = load i8** %entry1, align 8
  %cmp12 = icmp eq i8* null, %6
  br i1 %cmp12, label %if.then13, label %if.end14

if.then13:                                        ; preds = %if.end
  br label %return

if.end14:                                         ; preds = %if.end
  %7 = load i8** %entry1, align 8
  %8 = load i32* %size, align 4
  %conv15 = zext i32 %8 to i64
  call void @llvm.memset.p0i8.i64(i8* %7, i8 0, i64 %conv15, i32 1, i1 false)
  %9 = load i8** %entry1, align 8
  %10 = load i8** %Item.addr, align 8
  %call16 = call i8* @strcpy(i8* %9, i8* %10) #4
  store i8* %call16, i8** %entry1, align 8
  %11 = load i8** %entry1, align 8
  %call17 = call i8* @strcat(i8* %11, i8* getelementptr inbounds ([4 x i8]* @.str5, i32 0, i32 0)) #4
  store i8* %call17, i8** %entry1, align 8
  %12 = load i8** %entry1, align 8
  %13 = load i8** %Content.addr, align 8
  %call18 = call i8* @strcat(i8* %12, i8* %13) #4
  store i8* %call18, i8** %entry1, align 8
  %call19 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([7 x i8]* @.str6, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str7, i32 0, i32 0))
  store %struct._IO_FILE* %call19, %struct._IO_FILE** %fp, align 8
  %14 = load %struct._IO_FILE** %fp, align 8
  %cmp20 = icmp eq %struct._IO_FILE* null, %14
  br i1 %cmp20, label %if.then21, label %if.end23

if.then21:                                        ; preds = %if.end14
  %15 = load %struct._IO_FILE** @stderr, align 8
  %call22 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %15, i8* getelementptr inbounds ([25 x i8]* @.str8, i32 0, i32 0))
  call void @exit(i32 1) #7
  unreachable

if.end23:                                         ; preds = %if.end14
  %16 = load %struct._IO_FILE** %fp, align 8
  %17 = load i8** %entry1, align 8
  %call24 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %16, i8* getelementptr inbounds ([4 x i8]* @.str9, i32 0, i32 0), i8* %17)
  %18 = load %struct._IO_FILE** %fp, align 8
  %call25 = call i32 @fclose(%struct._IO_FILE* %18)
  br label %return

return:                                           ; preds = %if.end23, %if.then13, %if.then
  ret void
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #2

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #4

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #2

; Function Attrs: nounwind
declare i8* @strcat(i8*, i8*) #2

; Function Attrs: noreturn nounwind
declare void @exit(i32) #5

; Function Attrs: uwtable
define void @_Z8changeFnv() #0 {
entry:
  %i = alloca i32, align 4
  %buf = alloca [100 x i8], align 16
  %ch = alloca i32, align 4
  %call = call i64 @write(i32 1, i8* getelementptr inbounds ([16 x i8]* @.str10, i32 0, i32 0), i64 15)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32* %i, align 4
  %cmp = icmp slt i32 %0, 99
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load %struct._IO_FILE** @stdin, align 8
  %call1 = call i32 @fgetc(%struct._IO_FILE* %1)
  store i32 %call1, i32* %ch, align 4
  %2 = load i32* %ch, align 4
  %call2 = call i32 @isspace(i32 %2) #4
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %3 = load i32* %ch, align 4
  %cmp3 = icmp eq i32 -1, %3
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %for.body
  br label %for.end

if.end:                                           ; preds = %lor.lhs.false
  %4 = load i32* %ch, align 4
  %conv = trunc i32 %4 to i8
  %5 = load i32* %i, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds [100 x i8]* %buf, i32 0, i64 %idxprom
  store i8 %conv, i8* %arrayidx, align 1
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %6 = load i32* %i, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then, %for.cond
  %7 = load i32* %i, align 4
  %idxprom4 = sext i32 %7 to i64
  %arrayidx5 = getelementptr inbounds [100 x i8]* %buf, i32 0, i64 %idxprom4
  store i8 0, i8* %arrayidx5, align 1
  %arraydecay = getelementptr inbounds [100 x i8]* %buf, i32 0, i32 0
  call void @_Z9_changeFnPcS_(i8* getelementptr inbounds ([13 x i8]* @.str11, i32 0, i32 0), i8* %arraydecay)
  ret void
}

; Function Attrs: uwtable
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, i32* %retval
  %call = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([16 x i8]* @.str12, i32 0, i32 0))
  %call1 = call i32 @_Z4authv()
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([23 x i8]* @.str13, i32 0, i32 0))
  call void @exit(i32 1) #7
  unreachable

if.end:                                           ; preds = %entry
  call void @_Z8changeFnv()
  ret i32 0
}

declare i32 @printf(i8*, ...) #1

attributes #0 = { uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { noreturn nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly }
attributes #7 = { noreturn nounwind }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
