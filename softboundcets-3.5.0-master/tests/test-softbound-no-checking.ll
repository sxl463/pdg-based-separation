; ModuleID = 'test-softbound-no-checking.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [16 x i8] c"enter a number\0A\00", align 1
@.str1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str2 = private unnamed_addr constant [19 x i8] c"the result is %zd\0A\00", align 1
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 0, void ()* @__softboundcets_global_init, i8* null }]

define i32 @softboundcets_pseudo_main(i32 %argc, i8** %argv) {
entry:
  %lock_alloca = alloca i8*
  %key_alloca = alloca i64
  call void @__softboundcets_stack_memory_allocation(i8** %lock_alloca, i64* %key_alloca)
  %lock.load = load i8** %lock_alloca
  %key.load = load i64* %key_alloca
  %0 = call i8* @__softboundcets_load_base_shadow_stack(i32 1)
  %1 = call i8* @__softboundcets_load_bound_shadow_stack(i32 1)
  %2 = call i64 @__softboundcets_load_key_shadow_stack(i32 1)
  %3 = call i8* @__softboundcets_load_lock_shadow_stack(i32 1)
  %4 = call i8* @__softboundcets_get_global_lock()
  %retval = alloca i32, align 4
  %retval1 = bitcast i32* %retval to i32*
  %bitcast = bitcast i32* %retval to i8*
  %mtmp = getelementptr i32* %retval1, i32 1
  %bitcast2 = bitcast i32* %mtmp to i8*
  %argc.addr = alloca i32, align 4
  %argc.addr3 = bitcast i32* %argc.addr to i32*
  %bitcast4 = bitcast i32* %argc.addr to i8*
  %mtmp5 = getelementptr i32* %argc.addr3, i32 1
  %bitcast6 = bitcast i32* %mtmp5 to i8*
  %argv.addr = alloca i8**, align 8
  %argv.addr7 = bitcast i8*** %argv.addr to i8***
  %bitcast8 = bitcast i8*** %argv.addr to i8*
  %mtmp9 = getelementptr i8*** %argv.addr7, i32 1
  %bitcast10 = bitcast i8*** %mtmp9 to i8*
  %arr = alloca [100 x i32], align 16
  %arr11 = bitcast [100 x i32]* %arr to [100 x i32]*
  %bitcast12 = bitcast [100 x i32]* %arr to i8*
  %mtmp13 = getelementptr [100 x i32]* %arr11, i32 1
  %bitcast14 = bitcast [100 x i32]* %mtmp13 to i8*
  %num = alloca i32, align 4
  %num15 = bitcast i32* %num to i32*
  %bitcast16 = bitcast i32* %num to i8*
  %mtmp17 = getelementptr i32* %num15, i32 1
  %bitcast18 = bitcast i32* %mtmp17 to i8*
  %i = alloca i32, align 4
  %i19 = bitcast i32* %i to i32*
  %bitcast20 = bitcast i32* %i to i8*
  %mtmp21 = getelementptr i32* %i19, i32 1
  %bitcast22 = bitcast i32* %mtmp21 to i8*
  %j = alloca i32, align 4
  %j23 = bitcast i32* %j to i32*
  %bitcast24 = bitcast i32* %j to i8*
  %mtmp25 = getelementptr i32* %j23, i32 1
  %bitcast26 = bitcast i32* %mtmp25 to i8*
  %result = alloca i64, align 8
  %result27 = bitcast i64* %result to i64*
  %bitcast28 = bitcast i64* %result to i8*
  %mtmp29 = getelementptr i64* %result27, i32 1
  %bitcast30 = bitcast i64* %mtmp29 to i8*
  store i32 0, i32* %retval
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  %bitcast31 = bitcast i8*** %argv.addr to i8*
  call void @__softboundcets_metadata_store(i8* %bitcast31, i8* %0, i8* %1, i64 %2, i8* %3)
  store i64 0, i64* %result, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load i32* %i, align 4
  %cmp = icmp slt i32 %5, 100
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call = call i32 @softboundcets_rand() #1
  %6 = load i32* %i, align 4
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds [100 x i32]* %arr, i32 0, i64 %idxprom
  store i32 %call, i32* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32* %i, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %call1 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([16 x i8]* @.str, i32 0, i32 0))
  %call2 = call i32 (i8*, ...)* @__isoc99_scanf(i8* getelementptr inbounds ([3 x i8]* @.str1, i32 0, i32 0), i32* %num)
  store i32 0, i32* %j, align 4
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc14, %for.end
  %8 = load i32* %j, align 4
  %cmp4 = icmp slt i32 %8, 10000000
  br i1 %cmp4, label %for.body5, label %for.end16

for.body5:                                        ; preds = %for.cond3
  store i32 0, i32* %i, align 4
  br label %for.cond6

for.cond6:                                        ; preds = %for.inc11, %for.body5
  %9 = load i32* %i, align 4
  %10 = load i32* %num, align 4
  %cmp7 = icmp slt i32 %9, %10
  br i1 %cmp7, label %for.body8, label %for.end13

for.body8:                                        ; preds = %for.cond6
  %11 = load i64* %result, align 8
  %12 = load i32* %i, align 4
  %idxprom9 = sext i32 %12 to i64
  %arrayidx10 = getelementptr inbounds [100 x i32]* %arr, i32 0, i64 %idxprom9
  %13 = load i32* %arrayidx10, align 4
  %conv = sext i32 %13 to i64
  %add = add i64 %11, %conv
  store i64 %add, i64* %result, align 8
  br label %for.inc11

for.inc11:                                        ; preds = %for.body8
  %14 = load i32* %i, align 4
  %inc12 = add nsw i32 %14, 1
  store i32 %inc12, i32* %i, align 4
  br label %for.cond6

for.end13:                                        ; preds = %for.cond6
  br label %for.inc14

for.inc14:                                        ; preds = %for.end13
  %15 = load i32* %j, align 4
  %inc15 = add nsw i32 %15, 1
  store i32 %inc15, i32* %j, align 4
  br label %for.cond3

for.end16:                                        ; preds = %for.cond3
  %16 = load i64* %result, align 8
  %call17 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([19 x i8]* @.str2, i32 0, i32 0), i64 %16)
  call void @__softboundcets_stack_memory_deallocation(i64 %key.load)
  ret i32 0
}

declare i32 @softboundcets_rand()

declare i32 @printf(i8*, ...) #0

declare i32 @__isoc99_scanf(i8*, ...) #0

declare void @__softboundcets_spatial_load_dereference_check(i8*, i8*, i8*, i64)

declare void @__softboundcets_spatial_store_dereference_check(i8*, i8*, i8*, i64)

declare void @__softboundcets_temporal_load_dereference_check(i8*, i64, i8*, i8*)

declare void @__softboundcets_temporal_store_dereference_check(i8*, i64, i8*, i8*)

; Function Attrs: nounwind
define internal void @__softboundcets_global_init() #1 {
entry:
  call void @__softboundcets_init(i32 1)
  ret void
}

declare void @__softboundcets_init(i32)

declare void @__softboundcets_allocate_shadow_stack_space(i32)

declare void @__softboundcets_deallocate_shadow_stack_space()

declare i8* @__softboundcets_load_base_shadow_stack(i32)

declare i8* @__softboundcets_load_bound_shadow_stack(i32)

declare i64 @__softboundcets_load_key_shadow_stack(i32)

declare i8* @__softboundcets_load_lock_shadow_stack(i32)

declare void @__softboundcets_store_base_shadow_stack(i8*, i32)

declare void @__softboundcets_store_bound_shadow_stack(i8*, i32)

declare void @__softboundcets_store_key_shadow_stack(i64, i32)

declare void @__softboundcets_store_lock_shadow_stack(i8*, i32)

declare void @__softboundcets_introspect_metadata(i8*, i8*, i32)

declare void @__softboundcets_copy_metadata(i8*, i8*, i64)

declare i8* @__softboundcets_metadata_map(i8*)

declare i8* @__softboundcets_metadata_load_base(i8*)

declare i8* @__softboundcets_metadata_load_bound(i8*)

declare i64 @__softboundcets_metadata_load_key(i8*)

declare i8* @__softboundcets_metadata_load_lock(i8*)

declare void @__softboundcets_metadata_load_vector(i8*, i8**, i8**, i64*, i8**, i32)

declare void @__softboundcets_metadata_store_vector(i8*, i8*, i8*, i64, i8*, i32)

declare void @__softboundcets_metadata_load(i8*, i8**, i8**, i64*, i8**)

declare void @__softboundcets_metadata_store(i8*, i8*, i8*, i64, i8*)

declare void @__softboundcets_memcopy_check(i8*, i8*, i64, i8*, i8*, i8*, i8*, i64, i8*, i64, i8*)

declare void @__softboundcets_memset_check(i8*, i64, i8*, i8*, i64, i8*)

declare i8* @__softboundcets_get_global_lock()

declare void @__softboundcets_stack_memory_allocation(i8**, i64*)

declare void @__softboundcets_stack_memory_deallocation(i64)

declare void @__softboundcets_spatial_call_dereference_check(i8*, i8*, i8*)

declare void @__softboundcets_print_metadata(i8*, i8*, i8*, i64, i64*)

declare void @__softboundcets_dummy()

declare void @__softboundcets_intermediate(i1, i1, i1, i64)

attributes #0 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
