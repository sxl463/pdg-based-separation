; ModuleID = 'complex-struct-pointer.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.conn = type { i32, float, i16, i8*, i8*, i8*, %struct.anon, i8**, i8***, %struct.S* }
%struct.anon = type { i8*, i32 }
%struct.S = type { i32, i8* }

@main.str = private unnamed_addr constant [10 x i8] c"abcdefg\00\00\00", align 1

; Function Attrs: nounwind uwtable
define i8* @function(%struct.conn* %cp_f) #0 {
entry:
  %cp_f.addr = alloca %struct.conn*, align 8
  store %struct.conn* %cp_f, %struct.conn** %cp_f.addr, align 8
  %0 = load %struct.conn** %cp_f.addr, align 8
  %buf_c = getelementptr inbounds %struct.conn* %0, i32 0, i32 3
  %1 = load i8** %buf_c, align 8
  ret i8* %1
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %str = alloca [10 x i8], align 1
  %s1 = alloca %struct.S, align 8
  %C = alloca %struct.conn, align 8
  store i32 0, i32* %retval
  %0 = bitcast [10 x i8]* %str to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* getelementptr inbounds ([10 x i8]* @main.str, i32 0, i32 0), i64 10, i32 1, i1 false)
  %si = getelementptr inbounds %struct.S* %s1, i32 0, i32 0
  store i32 3, i32* %si, align 4
  %sp_S = getelementptr inbounds %struct.S* %s1, i32 0, i32 1
  %arraydecay = getelementptr inbounds [10 x i8]* %str, i32 0, i32 0
  store i8* %arraydecay, i8** %sp_S, align 8
  %sp = getelementptr inbounds %struct.conn* %C, i32 0, i32 9
  store %struct.S* %s1, %struct.S** %sp, align 8
  %call = call i8* @function(%struct.conn* %C)
  ret i32 0
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
