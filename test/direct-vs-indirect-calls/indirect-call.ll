; ModuleID = 'indirect-call.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define i32 @foo(i32 %a) #0 {
entry:
  %a.addr = alloca i32, align 4
  store i32 %a, i32* %a.addr, align 4
  %0 = load i32* %a.addr, align 4
  ret i32 %0
}

; Function Attrs: nounwind uwtable
define i32 @bar(i32 %a) #0 {
entry:
  %a.addr = alloca i32, align 4
  store i32 %a, i32* %a.addr, align 4
  %0 = load i32* %a.addr, align 4
  ret i32 %0
}

; Function Attrs: nounwind uwtable
define i32 @baz(i32 %a) #0 {
entry:
  %a.addr = alloca i32, align 4
  store i32 %a, i32* %a.addr, align 4
  %0 = load i32* %a.addr, align 4
  ret i32 %0
}

; Function Attrs: nounwind uwtable
define i32 @direct_version() #0 {
entry:
  %i = alloca i32, align 4
  %b = alloca i32, align 4
  store i32 0, i32* %b, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32* %i, align 4
  %cmp = icmp slt i32 %0, 2147483647
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32* %b, align 4
  %call = call i32 @foo(i32 %1)
  %2 = load i32* %b, align 4
  %call1 = call i32 @bar(i32 %2)
  %add = add nsw i32 %call, %call1
  %3 = load i32* %b, align 4
  %call2 = call i32 @baz(i32 %3)
  %add3 = add nsw i32 %add, %call2
  store i32 %add3, i32* %b, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load i32* %i, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %5 = load i32* %b, align 4
  ret i32 %5
}

; Function Attrs: nounwind uwtable
define i32 @indirect_version(i32 (i32)* %fn, i32 (i32)* %fn2, i32 (i32)* %fn3) #0 {
entry:
  %fn.addr = alloca i32 (i32)*, align 8
  %fn2.addr = alloca i32 (i32)*, align 8
  %fn3.addr = alloca i32 (i32)*, align 8
  %i = alloca i32, align 4
  %b = alloca i32, align 4
  store i32 (i32)* %fn, i32 (i32)** %fn.addr, align 8
  store i32 (i32)* %fn2, i32 (i32)** %fn2.addr, align 8
  store i32 (i32)* %fn3, i32 (i32)** %fn3.addr, align 8
  store i32 0, i32* %b, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32* %i, align 4
  %cmp = icmp slt i32 %0, 2147483647
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32 (i32)** %fn.addr, align 8
  %2 = load i32* %b, align 4
  %call = call i32 %1(i32 %2)
  %3 = load i32 (i32)** %fn2.addr, align 8
  %4 = load i32* %b, align 4
  %call1 = call i32 %3(i32 %4)
  %add = add nsw i32 %call, %call1
  %5 = load i32 (i32)** %fn3.addr, align 8
  %6 = load i32* %b, align 4
  %call2 = call i32 %5(i32 %6)
  %add3 = add nsw i32 %add, %call2
  store i32 %add3, i32* %b, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32* %i, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %8 = load i32* %b, align 4
  ret i32 %8
}

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  store i32 0, i32* %retval
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  %0 = load i32* %argc.addr, align 4
  %cmp = icmp eq i32 %0, 2
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %1 = load i8*** %argv.addr, align 8
  %arrayidx = getelementptr inbounds i8** %1, i64 1
  %2 = load i8** %arrayidx, align 8
  %arrayidx1 = getelementptr inbounds i8* %2, i64 0
  %3 = load i8* %arrayidx1, align 1
  %conv = sext i8 %3 to i32
  %cmp2 = icmp eq i32 %conv, 100
  br i1 %cmp2, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %call = call i32 @direct_version()
  store i32 %call, i32* %retval
  br label %return

if.else:                                          ; preds = %land.lhs.true, %entry
  %call4 = call i32 @indirect_version(i32 (i32)* @foo, i32 (i32)* @bar, i32 (i32)* @baz)
  store i32 %call4, i32* %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %4 = load i32* %retval
  ret i32 %4
}

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
