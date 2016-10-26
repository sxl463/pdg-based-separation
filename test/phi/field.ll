; ModuleID = 'field.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MyStruct = type { i32, i32, i32, i32, i32 }

@main.sp = private unnamed_addr constant %struct.MyStruct { i32 15, i32 0, i32 25, i32 0, i32 0 }, align 4

; Function Attrs: nounwind uwtable
define i32 @func() #0 {
entry:
  ret i32 3
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %sp = alloca %struct.MyStruct, align 4
  %p1 = alloca i32, align 4
  %p2 = alloca i32, align 4
  %p = alloca i32, align 4
  %t = alloca i32, align 4
  store i32 0, i32* %retval
  %0 = bitcast %struct.MyStruct* %sp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* bitcast (%struct.MyStruct* @main.sp to i8*), i64 20, i32 4, i1 false)
  %call = call i32 @func()
  %cmp = icmp sgt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %f2 = getelementptr inbounds %struct.MyStruct* %sp, i32 0, i32 1
  %1 = load i32* %f2, align 4
  store i32 %1, i32* %p1, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %f4 = getelementptr inbounds %struct.MyStruct* %sp, i32 0, i32 3
  %2 = load i32* %f4, align 4
  store i32 %2, i32* %p2, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %3 = load i32* %p1, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %if.end
  %4 = load i32* %p2, align 4
  %tobool1 = icmp ne i32 %4, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.end
  %5 = phi i1 [ true, %if.end ], [ %tobool1, %lor.rhs ]
  %lor.ext = zext i1 %5 to i32
  store i32 %lor.ext, i32* %p, align 4
  %6 = load i32* %p, align 4
  %add = add nsw i32 %6, 3
  store i32 %add, i32* %t, align 4
  ret i32 0
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
