; ModuleID = 'demo_inter_example.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define void @f(i32* %q) #0 {
entry:
  %q.addr = alloca i32*, align 8
  %temp = alloca i32, align 4
  store i32* %q, i32** %q.addr, align 8
  %0 = load i32** %q.addr, align 8
  %1 = load i32* %0, align 4
  store i32 %1, i32* %temp, align 4
  %2 = load i32** %q.addr, align 8
  store i32 100, i32* %2, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @main() #0 {
entry:
  %i = alloca i32, align 4
  %p = alloca i32*, align 8
  store i32 10, i32* %i, align 4
  store i32* %i, i32** %p, align 8
  %0 = load i32** %p, align 8
  store i32 8, i32* %0, align 4
  %1 = load i32** %p, align 8
  call void @f(i32* %1)
  %2 = load i32** %p, align 8
  %3 = load i32* %2, align 4
  store i32 %3, i32* %i, align 4
  ret void
}

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
