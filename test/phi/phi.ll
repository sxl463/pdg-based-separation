; ModuleID = 'phi.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define i32 @f() #0 {
entry:
  ret i32 5
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %y = alloca i32, align 4
  %z = alloca i32, align 4
  store i32 0, i32* %retval
  %call = call i32 @f()
  store i32 %call, i32* %y, align 4
  %0 = load i32* %y, align 4
  %add = add nsw i32 %0, 1
  %tobool = icmp ne i32 %add, 0
  br i1 %tobool, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %entry
  %1 = load i32* %y, align 4
  %add1 = add nsw i32 %1, 2
  %tobool2 = icmp ne i32 %add1, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry
  %2 = phi i1 [ true, %entry ], [ %tobool2, %lor.rhs ]
  %lor.ext = zext i1 %2 to i32
  store i32 %lor.ext, i32* %z, align 4
  %3 = load i32* %z, align 4
  ret i32 %3
}

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
