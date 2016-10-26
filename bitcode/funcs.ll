; ModuleID = 'funcs.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define i32 @add(i32 %x, i32 %y) #0 {
entry:
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  %0 = load i32* %x.addr, align 4
  %1 = load i32* %y.addr, align 4
  %add = add nsw i32 %0, %1
  ret i32 %add
}

; Function Attrs: nounwind uwtable
define i32 @mult(i32 %x, i32 %y) #0 {
entry:
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  %0 = load i32* %x.addr, align 4
  %1 = load i32* %y.addr, align 4
  %mul = mul nsw i32 %0, %1
  ret i32 %mul
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %i = alloca i32, align 4
  %sum = alloca i32, align 4
  %prod = alloca i32, align 4
  store i32 0, i32* %retval
  store i32 2, i32* %x, align 4
  store i32 3, i32* %y, align 4
  store i32 5, i32* %i, align 4
  store i32 0, i32* %sum, align 4
  store i32 1, i32* %prod, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i32* %i, align 4
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load i32* %x, align 4
  %2 = load i32* %y, align 4
  %call = call i32 @add(i32 %1, i32 %2)
  store i32 %call, i32* %sum, align 4
  %3 = load i32* %i, align 4
  %sub = sub nsw i32 %3, 1
  store i32 %sub, i32* %i, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %while.cond1

while.cond1:                                      ; preds = %while.body3, %while.end
  %4 = load i32* %i, align 4
  %cmp2 = icmp slt i32 %4, 10
  br i1 %cmp2, label %while.body3, label %while.end5

while.body3:                                      ; preds = %while.cond1
  %5 = load i32* %sum, align 4
  %call4 = call i32 @mult(i32 %5, i32 2)
  store i32 %call4, i32* %prod, align 4
  %6 = load i32* %i, align 4
  %add = add nsw i32 %6, 1
  store i32 %add, i32* %i, align 4
  br label %while.cond1

while.end5:                                       ; preds = %while.cond1
  %7 = load i32* %sum, align 4
  ret i32 %7
}

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
