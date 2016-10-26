; ModuleID = 'array_test.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@main.array = private unnamed_addr constant [5 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4], align 16

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
  %array = alloca [5 x i32], align 16
  %test = alloca i32, align 4
  store i32 10, i32* %i, align 4
  store i32* %i, i32** %p, align 8
  %0 = bitcast [5 x i32]* %array to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* bitcast ([5 x i32]* @main.array to i8*), i64 20, i32 16, i1 false)
  %arrayidx = getelementptr inbounds [5 x i32]* %array, i32 0, i64 3
  store i32 8, i32* %arrayidx, align 4
  %arrayidx1 = getelementptr inbounds [5 x i32]* %array, i32 0, i64 2
  %1 = load i32* %arrayidx1, align 4
  %add = add nsw i32 %1, 3
  store i32 %add, i32* %test, align 4
  %2 = load i32** %p, align 8
  store i32 8, i32* %2, align 4
  %3 = load i32** %p, align 8
  call void @f(i32* %3)
  %4 = load i32** %p, align 8
  %5 = load i32* %4, align 4
  store i32 %5, i32* %i, align 4
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
