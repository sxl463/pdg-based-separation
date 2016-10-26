; ModuleID = 'demo_inter_example.bc.no_void'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"test\00", align 1

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
define i8* @foo(i8* %s) #0 {
entry:
  %s.addr = alloca i8*, align 8
  %str = alloca i8*, align 8
  store i8* %s, i8** %s.addr, align 8
  %0 = load i8** %s.addr, align 8
  store i8* %0, i8** %str, align 8
  %1 = load i8** %str, align 8
  ret i8* %1
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %str = alloca i8*, align 8
  %strForTest = alloca i8*, align 8
  %sum = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 0, i32* %retval
  store i8* getelementptr inbounds ([5 x i8]* @.str, i32 0, i32 0), i8** %str, align 8
  store i8* null, i8** %strForTest, align 8
  %0 = load i8** %str, align 8
  %call = call i8* @foo(i8* %0)
  store i8* %call, i8** %strForTest, align 8
  store i32 0, i32* %sum, align 4
  store i32 0, i32* %i, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %1 = load i32* %i, align 4
  %cmp = icmp slt i32 %1, 10
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load i32* %sum, align 4
  %3 = load i32* %i, align 4
  %call1 = call i32 @add(i32 %2, i32 %3)
  store i32 %call1, i32* %sum, align 4
  %4 = load i32* %i, align 4
  %add = add nsw i32 %4, 1
  store i32 %add, i32* %i, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret i32 0
}

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
