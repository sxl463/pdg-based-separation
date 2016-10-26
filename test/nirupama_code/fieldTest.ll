; ModuleID = 'fieldTest.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.srv_data = type { i32, i32, [5 x i32], i8*, i8* }

@.str = private unnamed_addr constant [17 x i8] c"Authenticated %d\00", align 1
@.str1 = private unnamed_addr constant [21 x i8] c"Not authenticated %d\00", align 1

; Function Attrs: nounwind uwtable
define i32 @Authenticate(%struct.srv_data* byval align 8 %srv1, i32 %pass) #0 {
entry:
  %retval = alloca i32, align 4
  %pass.addr = alloca i32, align 4
  store i32 %pass, i32* %pass.addr, align 4
  %0 = load i32* %pass.addr, align 4
  %pass_ref = getelementptr inbounds %struct.srv_data* %srv1, i32 0, i32 1
  %1 = load i32* %pass_ref, align 4
  %cmp = icmp eq i32 %0, %1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval
  br label %return

if.else:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %2 = load i32* %retval
  ret i32 %2
}

; Function Attrs: nounwind uwtable
define i32 @processUserRequest(%struct.srv_data* byval align 8 %srv1) #0 {
entry:
  %val = alloca i32, align 4
  %pass_ref = getelementptr inbounds %struct.srv_data* %srv1, i32 0, i32 1
  %0 = load i32* %pass_ref, align 4
  store i32 %0, i32* %val, align 4
  %1 = load i32* %val, align 4
  ret i32 %1
}

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %in = alloca i32, align 4
  %b = alloca i32, align 4
  %c = alloca i32, align 4
  %b_string = alloca i8*, align 8
  %inter = alloca i8*, align 8
  %srv = alloca %struct.srv_data, align 8
  %resourcesArr = alloca [6 x i32], align 16
  %inputString = alloca i8*, align 8
  %auth = alloca i32, align 4
  %sink = alloca i32, align 4
  store i32 0, i32* %retval
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  %0 = load i8*** %argv.addr, align 8
  %arrayidx = getelementptr inbounds i8** %0, i64 1
  %1 = load i8** %arrayidx, align 8
  %call = call i32 @atoi(i8* %1) #3
  store i32 %call, i32* %b, align 4
  %2 = load i8*** %argv.addr, align 8
  %arrayidx1 = getelementptr inbounds i8** %2, i64 1
  %3 = load i8** %arrayidx1, align 8
  store i8* %3, i8** %inputString, align 8
  %4 = load i8*** %argv.addr, align 8
  %arrayidx2 = getelementptr inbounds i8** %4, i64 2
  %5 = load i8** %arrayidx2, align 8
  store i8* %5, i8** %b_string, align 8
  %6 = load i32* %b, align 4
  %conf_file = getelementptr inbounds %struct.srv_data* %srv, i32 0, i32 0
  store i32 %6, i32* %conf_file, align 4
  %7 = load i8** %inputString, align 8
  %password = getelementptr inbounds %struct.srv_data* %srv, i32 0, i32 3
  store i8* %7, i8** %password, align 8
  %call3 = call i32 @processUserRequest(%struct.srv_data* byval align 8 %srv)
  store i32 %call3, i32* %c, align 4
  %8 = load i32* %c, align 4
  %call4 = call i32 @Authenticate(%struct.srv_data* byval align 8 %srv, i32 %8)
  store i32 %call4, i32* %auth, align 4
  %9 = load i32* %auth, align 4
  %cmp = icmp eq i32 %9, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %10 = load i32* %auth, align 4
  %call5 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([17 x i8]* @.str, i32 0, i32 0), i32 %10)
  %conf_file6 = getelementptr inbounds %struct.srv_data* %srv, i32 0, i32 0
  %11 = load i32* %conf_file6, align 4
  store i32 %11, i32* %sink, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %12 = load i32* %auth, align 4
  %call7 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([21 x i8]* @.str1, i32 0, i32 0), i32 %12)
  %pass_ref = getelementptr inbounds %struct.srv_data* %srv, i32 0, i32 1
  %13 = load i32* %pass_ref, align 4
  store i32 %13, i32* %sink, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %14 = load i32* %b, align 4
  ret i32 %14
}

; Function Attrs: nounwind readonly
declare i32 @atoi(i8*) #1

declare i32 @printf(i8*, ...) #2

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
