; ModuleID = 'malloc.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define i32 @function() #0 {
entry:
  %p = alloca i32*, align 8
  %q = alloca i32*, align 8
  %q2 = alloca i32*, align 8
  %call = call noalias i8* @malloc(i64 4) #2
  %0 = bitcast i8* %call to i32*
  store i32* %0, i32** %p, align 8
  %1 = load i32** %p, align 8
  store i32 5, i32* %1, align 4
  %call1 = call noalias i8* @malloc(i64 4) #2
  %2 = bitcast i8* %call1 to i32*
  store i32* %2, i32** %q, align 8
  %3 = load i32** %p, align 8
  %4 = load i32* %3, align 4
  %5 = load i32** %q, align 8
  store i32 %4, i32* %5, align 4
  %6 = load i32** %p, align 8
  store i32* %6, i32** %q2, align 8
  ret i32 0
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #1

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
