; ModuleID = 'malloc.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [13 x i8] c"p is NULL !\0A\00", align 1
@.str1 = private unnamed_addr constant [13 x i8] c"*(p+1) = %d\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %n = alloca i32, align 4
  %p = alloca i32*, align 8
  store i32 0, i32* %retval
  store i32 100, i32* %n, align 4
  %0 = load i32* %n, align 4
  %inc = add nsw i32 %0, 1
  store i32 %inc, i32* %n, align 4
  %1 = load i32* %n, align 4
  %add = add nsw i32 %1, 2
  %conv = sext i32 %add to i64
  %mul = mul i64 4, %conv
  %call = call noalias i8* @malloc(i64 %mul) #3
  %2 = bitcast i8* %call to i32*
  store i32* %2, i32** %p, align 8
  %3 = load i32** %p, align 8
  %cmp = icmp eq i32* %3, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call2 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([13 x i8]* @.str, i32 0, i32 0))
  br label %if.end

if.else:                                          ; preds = %entry
  %4 = load i32** %p, align 8
  store i32 0, i32* %4, align 4
  %5 = load i32** %p, align 8
  %add.ptr = getelementptr inbounds i32* %5, i64 1
  store i32 1, i32* %add.ptr, align 4
  %6 = load i32** %p, align 8
  %add.ptr3 = getelementptr inbounds i32* %6, i64 2
  store i32 2, i32* %add.ptr3, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %7 = load i32** %p, align 8
  %add.ptr4 = getelementptr inbounds i32* %7, i64 1
  %8 = load i32* %add.ptr4, align 4
  %call5 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([13 x i8]* @.str1, i32 0, i32 0), i32 %8)
  ret i32 0
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #1

declare i32 @printf(i8*, ...) #2

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
