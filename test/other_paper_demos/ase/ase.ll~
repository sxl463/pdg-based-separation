; ModuleID = 'ase.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@.str = private unnamed_addr constant [8 x i8] c"I am %s\00", align 1
@.str1 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str2 = private unnamed_addr constant [11 x i8] c"Bad login\0A\00", align 1
@.str3 = private unnamed_addr constant [13 x i8] c"/private_key\00", align 1
@.str4 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str5 = private unnamed_addr constant [12 x i8] c"/etc/shadow\00", align 1

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %username = alloca i8*, align 8
  %password = alloca i8*, align 8
  %buffer = alloca [100 x i8], align 16
  %signature = alloca i8*, align 8
  store i32 0, i32* %retval
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  %0 = load i8*** %argv.addr, align 8
  %arrayidx = getelementptr inbounds i8** %0, i64 1
  %1 = load i8** %arrayidx, align 8
  store i8* %1, i8** %username, align 8
  %2 = load i8*** %argv.addr, align 8
  %arrayidx1 = getelementptr inbounds i8** %2, i64 2
  %3 = load i8** %arrayidx1, align 8
  store i8* %3, i8** %password, align 8
  %4 = load i8** %username, align 8
  %5 = load i8** %password, align 8
  %call = call i32 @inpasswd(i8* %4, i8* %5)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %arraydecay = getelementptr inbounds [100 x i8]* %buffer, i32 0, i32 0
  %6 = load i8** %username, align 8
  %call2 = call i32 (i8*, i8*, ...)* @sprintf(i8* %arraydecay, i8* getelementptr inbounds ([8 x i8]* @.str, i32 0, i32 0), i8* %6) #3
  %arraydecay3 = getelementptr inbounds [100 x i8]* %buffer, i32 0, i32 0
  %call4 = call i8* @signmsg(i8* %arraydecay3)
  store i8* %call4, i8** %signature, align 8
  %7 = load i8** %signature, align 8
  %call5 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.str1, i32 0, i32 0), i8* %7)
  br label %if.end

if.else:                                          ; preds = %entry
  %call6 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([11 x i8]* @.str2, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %8 = load i32* %retval
  ret i32 %8
}

; Function Attrs: nounwind uwtable
define internal i32 @inpasswd(i8* %username, i8* %password) #0 {
entry:
  %retval = alloca i32, align 4
  %username.addr = alloca i8*, align 8
  %password.addr = alloca i8*, align 8
  %line = alloca [200 x i8], align 16
  %fp = alloca %struct._IO_FILE*, align 8
  store i8* %username, i8** %username.addr, align 8
  store i8* %password, i8** %password.addr, align 8
  %call = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([12 x i8]* @.str5, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @.str4, i32 0, i32 0))
  store %struct._IO_FILE* %call, %struct._IO_FILE** %fp, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %arraydecay = getelementptr inbounds [200 x i8]* %line, i32 0, i32 0
  %0 = load %struct._IO_FILE** %fp, align 8
  %call1 = call i8* @fgets(i8* %arraydecay, i32 200, %struct._IO_FILE* %0)
  %cmp = icmp ne i8* %call1, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %arraydecay2 = getelementptr inbounds [200 x i8]* %line, i32 0, i32 0
  %1 = load i8** %username.addr, align 8
  %2 = load i8** %password.addr, align 8
  %call3 = call i32 (i8*, i8*, i8*, ...)* bitcast (i32 (...)* @matches to i32 (i8*, i8*, i8*, ...)*)(i8* %arraydecay2, i8* %1, i8* %2)
  %tobool = icmp ne i32 %call3, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %while.body
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %while.end, %if.then
  %3 = load i32* %retval
  ret i32 %3
}

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #1

; Function Attrs: nounwind uwtable
define internal i8* @signmsg(i8* %message) #0 {
entry:
  %message.addr = alloca i8*, align 8
  %privkey = alloca [200 x i8], align 16
  %fp = alloca %struct._IO_FILE*, align 8
  %signature = alloca i8*, align 8
  store i8* %message, i8** %message.addr, align 8
  %call = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([13 x i8]* @.str3, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @.str4, i32 0, i32 0))
  store %struct._IO_FILE* %call, %struct._IO_FILE** %fp, align 8
  %arraydecay = getelementptr inbounds [200 x i8]* %privkey, i32 0, i32 0
  %0 = load %struct._IO_FILE** %fp, align 8
  %call1 = call i64 @fread(i8* %arraydecay, i64 200, i64 1, %struct._IO_FILE* %0)
  %arraydecay2 = getelementptr inbounds [200 x i8]* %privkey, i32 0, i32 0
  %1 = load i8** %message.addr, align 8
  %call3 = call i32 (i8*, i8*, ...)* bitcast (i32 (...)* @dosign to i32 (i8*, i8*, ...)*)(i8* %arraydecay2, i8* %1)
  %conv = sext i32 %call3 to i64
  %2 = inttoptr i64 %conv to i8*
  store i8* %2, i8** %signature, align 8
  %3 = load i8** %signature, align 8
  ret i8* %3
}

declare i32 @printf(i8*, ...) #2

declare %struct._IO_FILE* @fopen(i8*, i8*) #2

declare i64 @fread(i8*, i64, i64, %struct._IO_FILE*) #2

declare i32 @dosign(...) #2

declare i8* @fgets(i8*, i32, %struct._IO_FILE*) #2

declare i32 @matches(...) #2

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
