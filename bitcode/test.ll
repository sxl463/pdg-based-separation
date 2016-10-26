; ModuleID = 'test.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@var = internal global i32 0, align 128

; Function Attrs: nounwind uwtable
define i32 @CalcSum(i32 %s, i32 %i) #0 {
entry:
  %s.addr = alloca i32, align 4
  %i.addr = alloca i32, align 4
  store i32 %s, i32* %s.addr, align 4
  store i32 %i, i32* %i.addr, align 4
  %0 = load i32* %s.addr, align 4
  %1 = load i32* %i.addr, align 4
  %add = add nsw i32 %0, %1
  ret i32 %add
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %sum = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 0, i32* %retval
  store i32 0, i32* %sum, align 4
  store i32 0, i32* %i, align 4
  %0 = load i32* @var, align 128
  %add = add nsw i32 %0, 1
  store i32 %add, i32* %j, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %1 = load i32* %i, align 4
  %cmp = icmp slt i32 %1, 10
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load i32* %sum, align 4
  %3 = load i32* %i, align 4
  %call = call i32 @CalcSum(i32 %2, i32 %3)
  store i32 %call, i32* %sum, align 4
  %4 = load i32* %i, align 4
  %add1 = add nsw i32 %4, 1
  store i32 %add1, i32* %i, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret i32 0
}

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
