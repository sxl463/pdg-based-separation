; ModuleID = 'struct_pstruct.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MyStruct = type { i32*, float }

; Function Attrs: nounwind uwtable
define i32 @f_call_by_reference(%struct.MyStruct* %sp) #0 {
entry:
  %sp.addr = alloca %struct.MyStruct*, align 8
  store %struct.MyStruct* %sp, %struct.MyStruct** %sp.addr, align 8
  %0 = load %struct.MyStruct** %sp.addr, align 8
  %pa = getelementptr inbounds %struct.MyStruct* %0, i32 0, i32 0
  %1 = load i32** %pa, align 8
  store i32 2, i32* %1, align 4
  %2 = load %struct.MyStruct** %sp.addr, align 8
  %b = getelementptr inbounds %struct.MyStruct* %2, i32 0, i32 1
  store float 0x4002666660000000, float* %b, align 4
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @f_call_by_value(i32* %s.coerce0, float %s.coerce1) #0 {
entry:
  %s = alloca %struct.MyStruct, align 8
  %0 = bitcast %struct.MyStruct* %s to { i32*, float }*
  %1 = getelementptr { i32*, float }* %0, i32 0, i32 0
  store i32* %s.coerce0, i32** %1
  %2 = getelementptr { i32*, float }* %0, i32 0, i32 1
  store float %s.coerce1, float* %2
  %pa = getelementptr inbounds %struct.MyStruct* %s, i32 0, i32 0
  %3 = load i32** %pa, align 8
  store i32 2, i32* %3, align 4
  %b = getelementptr inbounds %struct.MyStruct* %s, i32 0, i32 1
  store float 0x400B333340000000, float* %b, align 4
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %a = alloca i32, align 4
  %s = alloca %struct.MyStruct, align 8
  %p = alloca %struct.MyStruct*, align 8
  store i32 0, i32* %retval
  store i32 3, i32* %a, align 4
  %pa = getelementptr inbounds %struct.MyStruct* %s, i32 0, i32 0
  store i32* %a, i32** %pa, align 8
  %b = getelementptr inbounds %struct.MyStruct* %s, i32 0, i32 1
  store float 1.500000e+00, float* %b, align 4
  store %struct.MyStruct* %s, %struct.MyStruct** %p, align 8
  %0 = bitcast %struct.MyStruct* %s to { i32*, float }*
  %1 = getelementptr { i32*, float }* %0, i32 0, i32 0
  %2 = load i32** %1, align 1
  %3 = getelementptr { i32*, float }* %0, i32 0, i32 1
  %4 = load float* %3, align 1
  %call = call i32 @f_call_by_value(i32* %2, float %4)
  %5 = load %struct.MyStruct** %p, align 8
  %call1 = call i32 @f_call_by_reference(%struct.MyStruct* %5)
  ret i32 0
}

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
