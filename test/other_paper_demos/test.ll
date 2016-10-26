; ModuleID = 'test.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stuff = type { i32, [1024 x i8] }

; Function Attrs: nounwind uwtable
define void @foo(i8* %buf_foo, i32 %len_foo, i8 signext %fac_foo) #0 {
entry:
  %buf_foo.addr = alloca i8*, align 8
  %len_foo.addr = alloca i32, align 4
  %fac_foo.addr = alloca i8, align 1
  %i = alloca i32, align 4
  store i8* %buf_foo, i8** %buf_foo.addr, align 8
  store i32 %len_foo, i32* %len_foo.addr, align 4
  store i8 %fac_foo, i8* %fac_foo.addr, align 1
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32* %i, align 4
  %1 = load i32* %len_foo.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i8* %fac_foo.addr, align 1
  %conv = sext i8 %2 to i32
  %3 = load i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load i8** %buf_foo.addr, align 8
  %arrayidx = getelementptr inbounds i8* %4, i64 %idxprom
  %5 = load i8* %arrayidx, align 1
  %conv1 = sext i8 %5 to i32
  %mul = mul nsw i32 %conv1, %conv
  %conv2 = trunc i32 %mul to i8
  store i8 %conv2, i8* %arrayidx, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32* %i, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @bar(i8* %buf_bar, i32 %len_bar, i8 signext %off_bar) #0 {
entry:
  %buf_bar.addr = alloca i8*, align 8
  %len_bar.addr = alloca i32, align 4
  %off_bar.addr = alloca i8, align 1
  %i = alloca i32, align 4
  store i8* %buf_bar, i8** %buf_bar.addr, align 8
  store i32 %len_bar, i32* %len_bar.addr, align 4
  store i8 %off_bar, i8* %off_bar.addr, align 1
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32* %i, align 4
  %1 = load i32* %len_bar.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i8* %off_bar.addr, align 1
  %conv = sext i8 %2 to i32
  %3 = load i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load i8** %buf_bar.addr, align 8
  %arrayidx = getelementptr inbounds i8* %4, i64 %idxprom
  %5 = load i8* %arrayidx, align 1
  %conv1 = sext i8 %5 to i32
  %add = add nsw i32 %conv1, %conv
  %conv2 = trunc i32 %add to i8
  store i8 %conv2, i8* %arrayidx, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32* %i, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @foobar(i8* %buf_foobar, i32 %len_foobar, i8 signext %fac_foobar, i8 signext %off_foobar) #0 {
entry:
  %buf_foobar.addr = alloca i8*, align 8
  %len_foobar.addr = alloca i32, align 4
  %fac_foobar.addr = alloca i8, align 1
  %off_foobar.addr = alloca i8, align 1
  store i8* %buf_foobar, i8** %buf_foobar.addr, align 8
  store i32 %len_foobar, i32* %len_foobar.addr, align 4
  store i8 %fac_foobar, i8* %fac_foobar.addr, align 1
  store i8 %off_foobar, i8* %off_foobar.addr, align 1
  %0 = load i8** %buf_foobar.addr, align 8
  %1 = load i32* %len_foobar.addr, align 4
  %2 = load i8* %fac_foobar.addr, align 1
  call void @foo(i8* %0, i32 %1, i8 signext %2)
  %3 = load i8** %buf_foobar.addr, align 8
  %4 = load i32* %len_foobar.addr, align 4
  %5 = load i8* %off_foobar.addr, align 1
  call void @bar(i8* %3, i32 %4, i8 signext %5)
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @main(i32 %ac, i8** %av) #0 {
entry:
  %retval = alloca i32, align 4
  %ac.addr = alloca i32, align 4
  %av.addr = alloca i8**, align 8
  %fd = alloca i32, align 4
  %st = alloca %struct.stuff, align 4
  %fac = alloca i8, align 1
  %off = alloca i8, align 1
  store i32 0, i32* %retval
  store i32 %ac, i32* %ac.addr, align 4
  store i8** %av, i8*** %av.addr, align 8
  %0 = load i8*** %av.addr, align 8
  %arrayidx = getelementptr inbounds i8** %0, i64 1
  %1 = load i8** %arrayidx, align 8
  %call = call i32 (i8*, i32, ...)* @open(i8* %1, i32 0)
  store i32 %call, i32* %fd, align 4
  %2 = load i8*** %av.addr, align 8
  %arrayidx1 = getelementptr inbounds i8** %2, i64 2
  %3 = load i8** %arrayidx1, align 8
  %call2 = call i32 (i8*, ...)* bitcast (i32 (...)* @atoi to i32 (i8*, ...)*)(i8* %3)
  %conv = trunc i32 %call2 to i8
  store i8 %conv, i8* %fac, align 1
  %4 = load i8*** %av.addr, align 8
  %arrayidx3 = getelementptr inbounds i8** %4, i64 3
  %5 = load i8** %arrayidx3, align 8
  %call4 = call i32 (i8*, ...)* bitcast (i32 (...)* @atoi to i32 (i8*, ...)*)(i8* %5)
  %conv5 = trunc i32 %call4 to i8
  store i8 %conv5, i8* %off, align 1
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %6 = load i32* %fd, align 4
  %buf = getelementptr inbounds %struct.stuff* %st, i32 0, i32 1
  %arraydecay = getelementptr inbounds [1024 x i8]* %buf, i32 0, i32 0
  %call6 = call i32 (i32, i8*, i32, ...)* bitcast (i32 (...)* @read to i32 (i32, i8*, i32, ...)*)(i32 %6, i8* %arraydecay, i32 1024)
  %cnt = getelementptr inbounds %struct.stuff* %st, i32 0, i32 0
  store i32 %call6, i32* %cnt, align 4
  %cmp = icmp sgt i32 %call6, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %buf8 = getelementptr inbounds %struct.stuff* %st, i32 0, i32 1
  %arraydecay9 = getelementptr inbounds [1024 x i8]* %buf8, i32 0, i32 0
  %cnt10 = getelementptr inbounds %struct.stuff* %st, i32 0, i32 0
  %7 = load i32* %cnt10, align 4
  %sub = sub nsw i32 %7, 24
  %8 = load i8* %fac, align 1
  %9 = load i8* %off, align 1
  call void @foobar(i8* %arraydecay9, i32 %sub, i8 signext %8, i8 signext %9)
  %buf11 = getelementptr inbounds %struct.stuff* %st, i32 0, i32 1
  %arraydecay12 = getelementptr inbounds [1024 x i8]* %buf11, i32 0, i32 0
  %cnt13 = getelementptr inbounds %struct.stuff* %st, i32 0, i32 0
  %10 = load i32* %cnt13, align 4
  %call14 = call i32 (i32, i8*, i32, ...)* bitcast (i32 (...)* @write to i32 (i32, i8*, i32, ...)*)(i32 2, i8* %arraydecay12, i32 %10)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %11 = load i32* %fd, align 4
  %call15 = call i32 (i32, ...)* bitcast (i32 (...)* @close to i32 (i32, ...)*)(i32 %11)
  %12 = load i32* %retval
  ret i32 %12
}

declare i32 @open(i8*, i32, ...) #1

declare i32 @atoi(...) #1

declare i32 @read(...) #1

declare i32 @write(...) #1

declare i32 @close(...) #1

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
