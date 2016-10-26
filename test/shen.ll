; ModuleID = 'shen.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tmp = type { i64, i32 ()*, i32 ()* }

; Function Attrs: nounwind uwtable
define void @swap(%struct.tmp* %t) #0 {
entry:
  %t.addr = alloca %struct.tmp*, align 8
  %tmp = alloca i64, align 8
  %p = alloca i64*, align 8
  %fp = alloca i32 ()*, align 8
  store %struct.tmp* %t, %struct.tmp** %t.addr, align 8
  %0 = load %struct.tmp** %t.addr, align 8
  %v = getelementptr inbounds %struct.tmp* %0, i32 0, i32 0
  store i64* %v, i64** %p, align 8
  %1 = load i64** %p, align 8
  %arrayidx = getelementptr inbounds i64* %1, i64 1
  %2 = load i64* %arrayidx, align 8
  store i64 %2, i64* %tmp, align 8
  %3 = load i64** %p, align 8
  %arrayidx3 = getelementptr inbounds i64* %3, i64 2
  %4 = load i64* %arrayidx3, align 8
  %5 = load i64** %p, align 8
  %arrayidx4 = getelementptr inbounds i64* %5, i64 1
  store i64 %4, i64* %arrayidx4, align 8
  %6 = load i64* %tmp, align 8
  %7 = load i64** %p, align 8
  %arrayidx5 = getelementptr inbounds i64* %7, i64 2
  store i64 %6, i64* %arrayidx5, align 8
  %8 = load %struct.tmp** %t.addr, align 8
  %f1 = getelementptr inbounds %struct.tmp* %8, i32 0, i32 1
  %9 = load i32 ()** %f1, align 8
  store i32 ()* %9, i32 ()** %fp, align 8
  ret void
}

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
