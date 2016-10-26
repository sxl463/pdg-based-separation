; ModuleID = 'array-pointer.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@array_place = global [100 x i8] c"don't panic\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@.str = private unnamed_addr constant [12 x i8] c"don't panic\00", align 1
@ptr_place = global i8* getelementptr inbounds ([12 x i8]* @.str, i32 0, i32 0), align 8

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %a = alloca i8, align 1
  %b = alloca i8, align 1
  store i32 0, i32* %retval
  %0 = load i8* getelementptr inbounds ([100 x i8]* @array_place, i32 0, i64 7), align 1
  store i8 %0, i8* %a, align 1
  %1 = load i8** @ptr_place, align 8
  %arrayidx = getelementptr inbounds i8* %1, i64 7
  %2 = load i8* %arrayidx, align 1
  store i8 %2, i8* %b, align 1
  ret i32 0
}

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
