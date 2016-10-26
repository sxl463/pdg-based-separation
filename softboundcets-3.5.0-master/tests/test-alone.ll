; ModuleID = 'test-alone.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [16 x i8] c"enter a number\0A\00", align 1
@.str1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str2 = private unnamed_addr constant [19 x i8] c"the result is %zd\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %arr = alloca [100 x i32], align 16
  %num = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %result = alloca i64, align 8
  store i32 0, i32* %retval
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i64 0, i64* %result, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32* %i, align 4
  %cmp = icmp slt i32 %0, 100
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call = call i32 @rand() #3
  %1 = load i32* %i, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [100 x i32]* %arr, i32 0, i64 %idxprom
  store i32 %call, i32* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %2 = load i32* %i, align 4
  %inc = add nsw i32 %2, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %call1 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([16 x i8]* @.str, i32 0, i32 0))
  %call2 = call i32 (i8*, ...)* @__isoc99_scanf(i8* getelementptr inbounds ([3 x i8]* @.str1, i32 0, i32 0), i32* %num)
  store i32 0, i32* %j, align 4
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc14, %for.end
  %3 = load i32* %j, align 4
  %cmp4 = icmp slt i32 %3, 10000000
  br i1 %cmp4, label %for.body5, label %for.end16

for.body5:                                        ; preds = %for.cond3
  store i32 0, i32* %i, align 4
  br label %for.cond6

for.cond6:                                        ; preds = %for.inc11, %for.body5
  %4 = load i32* %i, align 4
  %5 = load i32* %num, align 4
  %cmp7 = icmp slt i32 %4, %5
  br i1 %cmp7, label %for.body8, label %for.end13

for.body8:                                        ; preds = %for.cond6
  %6 = load i64* %result, align 8
  %7 = load i32* %i, align 4
  %idxprom9 = sext i32 %7 to i64
  %arrayidx10 = getelementptr inbounds [100 x i32]* %arr, i32 0, i64 %idxprom9
  %8 = load i32* %arrayidx10, align 4
  %conv = sext i32 %8 to i64
  %add = add i64 %6, %conv
  store i64 %add, i64* %result, align 8
  br label %for.inc11

for.inc11:                                        ; preds = %for.body8
  %9 = load i32* %i, align 4
  %inc12 = add nsw i32 %9, 1
  store i32 %inc12, i32* %i, align 4
  br label %for.cond6

for.end13:                                        ; preds = %for.cond6
  br label %for.inc14

for.inc14:                                        ; preds = %for.end13
  %10 = load i32* %j, align 4
  %inc15 = add nsw i32 %10, 1
  store i32 %inc15, i32* %j, align 4
  br label %for.cond3

for.end16:                                        ; preds = %for.cond3
  %11 = load i64* %result, align 8
  %call17 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([19 x i8]* @.str2, i32 0, i32 0), i64 %11)
  ret i32 0
}

; Function Attrs: nounwind
declare i32 @rand() #1

declare i32 @printf(i8*, ...) #2

declare i32 @__isoc99_scanf(i8*, ...) #2

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
