; ModuleID = 'ret.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define i32 @gcd(i32 %x, i32 %y) #0 {
entry:
  %retval = alloca i32, align 4
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  %0 = load i32* %x.addr, align 4
  %1 = load i32* %y.addr, align 4
  %cmp = icmp eq i32 %0, %1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load i32* %x.addr, align 4
  store i32 %2, i32* %retval
  br label %return

if.else:                                          ; preds = %entry
  %3 = load i32* %x.addr, align 4
  %4 = load i32* %y.addr, align 4
  %cmp1 = icmp ult i32 %3, %4
  br i1 %cmp1, label %if.then2, label %if.else3

if.then2:                                         ; preds = %if.else
  %5 = load i32* %x.addr, align 4
  %6 = load i32* %y.addr, align 4
  %7 = load i32* %x.addr, align 4
  %sub = sub i32 %6, %7
  %call = call i32 @gcd(i32 %5, i32 %sub)
  store i32 %call, i32* %retval
  br label %return

if.else3:                                         ; preds = %if.else
  %8 = load i32* %x.addr, align 4
  %9 = load i32* %y.addr, align 4
  %sub4 = sub i32 %8, %9
  %10 = load i32* %y.addr, align 4
  %call5 = call i32 @gcd(i32 %sub4, i32 %10)
  store i32 %call5, i32* %retval
  br label %return

return:                                           ; preds = %if.else3, %if.then2, %if.then
  %11 = load i32* %retval
  ret i32 %11
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, i32* %retval
  %call = call i32 @gcd(i32 2, i32 3)
  ret i32 0
}

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
