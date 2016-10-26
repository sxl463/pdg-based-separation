; ModuleID = 'funcPointer.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [19 x i8] c"\0A f1: a: %d, b: %d\00", align 1
@.str1 = private unnamed_addr constant [27 x i8] c"\0A f2: a: %d, b: %d, c: %d \00", align 1
@.str2 = private unnamed_addr constant [34 x i8] c"\0A f3: a: %d, b: %d, c: %d, d: %d \00", align 1

; Function Attrs: nounwind uwtable
define void @f1(i32 %a, i32 %b) #0 {
entry:
  %a.addr = alloca i32, align 4
  %b.addr = alloca i32, align 4
  store i32 %a, i32* %a.addr, align 4
  store i32 %b, i32* %b.addr, align 4
  %0 = load i32* %a.addr, align 4
  %1 = load i32* %b.addr, align 4
  %call = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([19 x i8]* @.str, i32 0, i32 0), i32 %0, i32 %1)
  ret void
}

declare i32 @printf(i8*, ...) #1

; Function Attrs: nounwind uwtable
define void @f2(i32 %a, i32 %b, i32 %c) #0 {
entry:
  %a.addr = alloca i32, align 4
  %b.addr = alloca i32, align 4
  %c.addr = alloca i32, align 4
  store i32 %a, i32* %a.addr, align 4
  store i32 %b, i32* %b.addr, align 4
  store i32 %c, i32* %c.addr, align 4
  %0 = load i32* %a.addr, align 4
  %1 = load i32* %b.addr, align 4
  %2 = load i32* %c.addr, align 4
  %call = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([27 x i8]* @.str1, i32 0, i32 0), i32 %0, i32 %1, i32 %2)
  ret void
}

; Function Attrs: nounwind uwtable
define void @f3(i32 %a, i32 %b, i32 %c, i32 %d) #0 {
entry:
  %a.addr = alloca i32, align 4
  %b.addr = alloca i32, align 4
  %c.addr = alloca i32, align 4
  %d.addr = alloca i32, align 4
  store i32 %a, i32* %a.addr, align 4
  store i32 %b, i32* %b.addr, align 4
  store i32 %c, i32* %c.addr, align 4
  store i32 %d, i32* %d.addr, align 4
  %0 = load i32* %a.addr, align 4
  %1 = load i32* %b.addr, align 4
  %2 = load i32* %c.addr, align 4
  %3 = load i32* %d.addr, align 4
  %call = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([34 x i8]* @.str2, i32 0, i32 0), i32 %0, i32 %1, i32 %2, i32 %3)
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %fp1 = alloca void (i32, i32, i32)*, align 8
  %fp2 = alloca void (i32, i32, i32)*, align 8
  %fp3 = alloca void (i32, i32, i32)*, align 8
  store i32 0, i32* %retval
  store void (i32, i32, i32)* bitcast (void (i32, i32)* @f1 to void (i32, i32, i32)*), void (i32, i32, i32)** %fp1, align 8
  store void (i32, i32, i32)* @f2, void (i32, i32, i32)** %fp2, align 8
  store void (i32, i32, i32)* bitcast (void (i32, i32, i32, i32)* @f3 to void (i32, i32, i32)*), void (i32, i32, i32)** %fp3, align 8
  %0 = load void (i32, i32, i32)** %fp1, align 8
  call void %0(i32 1, i32 2, i32 3)
  %1 = load void (i32, i32, i32)** %fp2, align 8
  call void %1(i32 4, i32 5, i32 6)
  %2 = load void (i32, i32, i32)** %fp3, align 8
  call void %2(i32 7, i32 8, i32 9)
  ret i32 0
}

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
