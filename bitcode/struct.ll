; ModuleID = 'struct.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.S1 = type { i32, i32, %struct.S2* }
%struct.S2 = type { float }

@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: nounwind uwtable
define void @func(%struct.S1* %sp) #0 {
entry:
  %sp.addr = alloca %struct.S1*, align 8
  store %struct.S1* %sp, %struct.S1** %sp.addr, align 8
  %0 = load %struct.S1** %sp.addr, align 8
  %a = getelementptr inbounds %struct.S1* %0, i32 0, i32 0
  %1 = load i32* %a, align 4
  %call = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.str, i32 0, i32 0), i32 %1)
  ret void
}

declare i32 @printf(i8*, ...) #1

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
entry:
  %s1 = alloca %struct.S1, align 8
  %s2 = alloca %struct.S2, align 4
  %a = getelementptr inbounds %struct.S1* %s1, i32 0, i32 0
  store i32 2, i32* %a, align 4
  %b = getelementptr inbounds %struct.S1* %s1, i32 0, i32 1
  store i32 3, i32* %b, align 4
  %p = getelementptr inbounds %struct.S1* %s1, i32 0, i32 2
  store %struct.S2* %s2, %struct.S2** %p, align 8
  call void @func(%struct.S1* %s1)
  ret i32 0
}

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
