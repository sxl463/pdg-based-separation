; ModuleID = 'test.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@var = internal global i32 0, align 128
@.str = private unnamed_addr constant [6 x i8] c"a.txt\00", align 1
@.str1 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str2 = private unnamed_addr constant [12 x i8] c"testing...\0A\00", align 1

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
  %fp = alloca %struct._IO_FILE*, align 128
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
  %call2 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([6 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @.str1, i32 0, i32 0))
  store %struct._IO_FILE* %call2, %struct._IO_FILE** %fp, align 128
  %5 = load %struct._IO_FILE** %fp, align 128
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([12 x i8]* @.str2, i32 0, i32 0))
  %6 = load %struct._IO_FILE** %fp, align 128
  %call4 = call i32 @fclose(%struct._IO_FILE* %6)
  ret i32 0
}

declare %struct._IO_FILE* @fopen(i8*, i8*) #1

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

declare i32 @fclose(%struct._IO_FILE*) #1

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
