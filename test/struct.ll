; ModuleID = 'struct.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.S1 = type { i32, float, %struct.Base1* }
%struct.Base1 = type { i32*, i32* }
%struct.S2 = type { i32, float, %struct.Base2* }
%struct.Base2 = type { i32*, float* }

; Function Attrs: nounwind uwtable
define i32 @test() #0 {
entry:
  %s1 = alloca %struct.S1, align 8
  %s2 = alloca %struct.S2, align 8
  ret i32 0
}

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
