; ModuleID = 'bool.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define void @main1(i32 %r, i32 %y) #0 {
entry:
  %r.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %l = alloca i32, align 4
  store i32 %r, i32* %r.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  %0 = load i32* %y.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %entry
  %1 = load i32* %r.addr, align 4
  %tobool1 = icmp ne i32 %1, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry
  %2 = phi i1 [ true, %entry ], [ %tobool1, %lor.rhs ]
  %lor.ext = zext i1 %2 to i32
  store i32 %lor.ext, i32* %l, align 4
  ret void
}

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
