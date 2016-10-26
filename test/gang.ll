; ModuleID = 'gang.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.point = type { i32, i32 }

@main.pt1 = private unnamed_addr constant %struct.point { i32 2, i32 3 }, align 4
@.str = private unnamed_addr constant [22 x i8] c"p->x = %d \0Ap->y = %d\0A\00", align 1

; Function Attrs: nounwind uwtable
define void @to_origin(%struct.point* %ptr) #0 {
entry:
  %ptr.addr = alloca %struct.point*, align 8
  store %struct.point* %ptr, %struct.point** %ptr.addr, align 8
  %0 = load %struct.point** %ptr.addr, align 8
  %x = getelementptr inbounds %struct.point* %0, i32 0, i32 0
  store i32 0, i32* %x, align 4
  %1 = load %struct.point** %ptr.addr, align 8
  %y = getelementptr inbounds %struct.point* %1, i32 0, i32 1
  store i32 0, i32* %y, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %pt1 = alloca %struct.point, align 4
  %p = alloca %struct.point*, align 8
  store i32 0, i32* %retval
  %0 = bitcast %struct.point* %pt1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* bitcast (%struct.point* @main.pt1 to i8*), i64 8, i32 4, i1 false)
  store %struct.point* %pt1, %struct.point** %p, align 8
  %1 = load %struct.point** %p, align 8
  call void @to_origin(%struct.point* %1)
  %2 = load %struct.point** %p, align 8
  %x = getelementptr inbounds %struct.point* %2, i32 0, i32 0
  %3 = load i32* %x, align 4
  %4 = load %struct.point** %p, align 8
  %y = getelementptr inbounds %struct.point* %4, i32 0, i32 1
  %5 = load i32* %y, align 4
  %call = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([22 x i8]* @.str, i32 0, i32 0), i32 %3, i32 %5)
  ret i32 0
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

declare i32 @printf(i8*, ...) #2

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
