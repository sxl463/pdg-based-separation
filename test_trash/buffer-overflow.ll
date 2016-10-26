; ModuleID = 'buffer-overflow.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [25 x i8] c"\0A Enter the password : \0A\00", align 1
@.str1 = private unnamed_addr constant [13 x i8] c"thegeekstuff\00", align 1
@.str2 = private unnamed_addr constant [19 x i8] c"\0A Wrong Password \0A\00", align 1
@.str3 = private unnamed_addr constant [21 x i8] c"\0A Correct Password \0A\00", align 1
@.str4 = private unnamed_addr constant [38 x i8] c"\0A Root privileges given to the user \0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %buff = alloca [15 x i8], align 1
  %pass = alloca i32, align 4
  store i32 0, i32* %retval
  store i32 0, i32* %pass, align 4
  %call = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([25 x i8]* @.str, i32 0, i32 0))
  %arraydecay = getelementptr inbounds [15 x i8]* %buff, i32 0, i32 0
  %call1 = call i8* @gets(i8* %arraydecay)
  %arraydecay2 = getelementptr inbounds [15 x i8]* %buff, i32 0, i32 0
  %call3 = call i32 @strcmp(i8* %arraydecay2, i8* getelementptr inbounds ([13 x i8]* @.str1, i32 0, i32 0)) #3
  %tobool = icmp ne i32 %call3, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call4 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([19 x i8]* @.str2, i32 0, i32 0))
  br label %if.end

if.else:                                          ; preds = %entry
  %call5 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([21 x i8]* @.str3, i32 0, i32 0))
  store i32 1, i32* %pass, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %0 = load i32* %pass, align 4
  %tobool6 = icmp ne i32 %0, 0
  br i1 %tobool6, label %if.then7, label %if.end9

if.then7:                                         ; preds = %if.end
  %call8 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([38 x i8]* @.str4, i32 0, i32 0))
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %if.end
  ret i32 0
}

declare i32 @printf(i8*, ...) #1

declare i8* @gets(i8*) #1

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #2

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
