; ModuleID = 'strato.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define i32 @foo(i32 %v, i32* %ptr) #0 {
entry:
  %v.addr = alloca i32, align 4
  %ptr.addr = alloca i32*, align 8
  %tmp = alloca i32, align 4
  store i32 %v, i32* %v.addr, align 4
  store i32* %ptr, i32** %ptr.addr, align 8
  store i32 0, i32* %tmp, align 4
  %0 = load i32* %v.addr, align 4
  %cmp = icmp sgt i32 %0, 47
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i32* %v.addr, align 4
  %2 = load i32** %ptr.addr, align 8
  store i32 %1, i32* %2, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %3 = load i32** %ptr.addr, align 8
  %4 = load i32* %3, align 4
  store i32 %4, i32* %tmp, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %5 = load i32* %tmp, align 4
  ret i32 %5
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %a = alloca i32, align 4
  %p = alloca i32*, align 256
  store i32 0, i32* %retval
  store i32 2, i32* %a, align 4
  %0 = load i32* %a, align 4
  %1 = load i32** %p, align 256
  %call = call i32 @foo(i32 %0, i32* %1)
  ret i32 0
}

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
