; ModuleID = 'encrypt.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [13 x i8] c"Welcome %s!\0A\00", align 1
@.str1 = private unnamed_addr constant [27 x i8] c"encrypted password is %s!\0A\00", align 1
@.str2 = private unnamed_addr constant [24 x i8] c"Create your username: \0A\00", align 1
@.str3 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@username = internal global [20 x i8] zeroinitializer, align 16
@.str4 = private unnamed_addr constant [15 x i8] c"Invalid user!\0A\00", align 1
@.str5 = private unnamed_addr constant [23 x i8] c"Enter your password: \0A\00", align 1
@password = internal global [20 x i8] zeroinitializer, align 16
@.str6 = private unnamed_addr constant [20 x i8] c"encryption failed!\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @greeter(i8* %str) #0 {
entry:
  %retval = alloca i32, align 4
  %str.addr = alloca i8*, align 8
  store i8* %str, i8** %str.addr, align 8
  %0 = load i8** %str.addr, align 8
  %cmp = icmp eq i8* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i8** %str.addr, align 8
  %call = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([13 x i8]* @.str, i32 0, i32 0), i8* %1)
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %2 = load i32* %retval
  ret i32 %2
}

declare i32 @printf(i8*, ...) #1

; Function Attrs: nounwind uwtable
define i32 @encrypt(i8* %str, i32 %key) #0 {
entry:
  %retval = alloca i32, align 4
  %str.addr = alloca i8*, align 8
  %key.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store i8* %str, i8** %str.addr, align 8
  store i32 %key, i32* %key.addr, align 4
  %0 = load i8** %str.addr, align 8
  %cmp = icmp eq i8* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %1 = load i32* %i, align 4
  %conv = zext i32 %1 to i64
  %2 = load i8** %str.addr, align 8
  %call = call i64 @strlen(i8* %2) #3
  %cmp1 = icmp ult i64 %conv, %call
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32* %i, align 4
  %idxprom = zext i32 %3 to i64
  %4 = load i8** %str.addr, align 8
  %arrayidx = getelementptr inbounds i8* %4, i64 %idxprom
  %5 = load i8* %arrayidx, align 1
  %conv3 = sext i8 %5 to i32
  %6 = load i32* %key.addr, align 4
  %sub = sub nsw i32 %conv3, %6
  %conv4 = trunc i32 %sub to i8
  %7 = load i32* %i, align 4
  %idxprom5 = zext i32 %7 to i64
  %8 = load i8** %str.addr, align 8
  %arrayidx6 = getelementptr inbounds i8* %8, i64 %idxprom5
  store i8 %conv4, i8* %arrayidx6, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i32* %i, align 4
  %inc = add i32 %9, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %10 = load i8** %str.addr, align 8
  %call7 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([27 x i8]* @.str1, i32 0, i32 0), i8* %10)
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %11 = load i32* %retval
  ret i32 %11
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #2

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, i32* %retval
  %call = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([24 x i8]* @.str2, i32 0, i32 0))
  %call1 = call i32 (i8*, ...)* @__isoc99_scanf(i8* getelementptr inbounds ([3 x i8]* @.str3, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8]* @username, i32 0, i32 0))
  %call2 = call i32 @greeter(i8* getelementptr inbounds ([20 x i8]* @username, i32 0, i32 0))
  %cmp = icmp eq i32 %call2, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call3 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([15 x i8]* @.str4, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call4 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([23 x i8]* @.str5, i32 0, i32 0))
  %call5 = call i32 (i8*, ...)* @__isoc99_scanf(i8* getelementptr inbounds ([3 x i8]* @.str3, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8]* @password, i32 0, i32 0))
  %call6 = call i32 @encrypt(i8* getelementptr inbounds ([20 x i8]* @password, i32 0, i32 0), i32 5)
  %cmp7 = icmp eq i32 %call6, 1
  br i1 %cmp7, label %if.then8, label %if.end10

if.then8:                                         ; preds = %if.end
  %call9 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([20 x i8]* @.str6, i32 0, i32 0))
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %if.end
  ret i32 0
}

declare i32 @__isoc99_scanf(i8*, ...) #1

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
