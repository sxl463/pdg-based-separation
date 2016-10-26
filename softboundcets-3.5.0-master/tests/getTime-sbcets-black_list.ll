; ModuleID = 'getTime-sbcets-black_list.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [24 x i8] c"Number of seconds: %ld\0A\00", align 1
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 0, void ()* @__softboundcets_global_init, i8* null }]

define i32 @softboundcets_pseudo_main() {
entry:
  %lock_alloca = alloca i8*
  %key_alloca = alloca i64
  call void @__softboundcets_stack_memory_allocation(i8** %lock_alloca, i64* %key_alloca)
  %lock.load = load i8** %lock_alloca
  %key.load = load i64* %key_alloca
  %0 = call i8* @__softboundcets_get_global_lock()
  %retval = alloca i32, align 4
  %retval1 = bitcast i32* %retval to i32*
  %bitcast = bitcast i32* %retval to i8*
  %mtmp = getelementptr i32* %retval1, i32 1
  %bitcast2 = bitcast i32* %mtmp to i8*
  %sec = alloca i64, align 8
  %sec3 = bitcast i64* %sec to i64*
  %bitcast4 = bitcast i64* %sec to i8*
  %mtmp5 = getelementptr i64* %sec3, i32 1
  %bitcast6 = bitcast i64* %mtmp5 to i8*
  %bitcast7 = bitcast i32* %retval to i8*
  call void @__softboundcets_spatial_store_dereference_check(i8* %bitcast, i8* %bitcast2, i8* %bitcast7, i64 ptrtoint (i32* getelementptr (i32* null, i32 1) to i64))
  store i32 0, i32* %retval
  call void @__softboundcets_allocate_shadow_stack_space(i32 2)
  call void @__softboundcets_store_base_shadow_stack(i8* %bitcast4, i32 1)
  call void @__softboundcets_store_bound_shadow_stack(i8* %bitcast6, i32 1)
  call void @__softboundcets_store_key_shadow_stack(i64 %key.load, i32 1)
  call void @__softboundcets_store_lock_shadow_stack(i8* %lock.load, i32 1)
  call void @getSeconds(i64* %sec)
  call void @__softboundcets_deallocate_shadow_stack_space()
  %bitcast8 = bitcast i64* %sec to i8*
  call void @__softboundcets_spatial_load_dereference_check(i8* %bitcast4, i8* %bitcast6, i8* %bitcast8, i64 ptrtoint (i64* getelementptr (i64* null, i32 1) to i64))
  %1 = load i64* %sec, align 8
  %call = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([24 x i8]* @.str, i32 0, i32 0), i64 %1)
  call void @__softboundcets_stack_memory_deallocation(i64 %key.load)
  ret i32 0
}

; Function Attrs: nounwind uwtable
define void @getSeconds(i64* %par) #0 {
entry:
  %base.alloca = alloca i8*
  %bound.alloca = alloca i8*
  %key.alloca = alloca i64
  %lock.alloca = alloca i8*
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
  %par.addr = alloca i64*, align 8
  %par.addr1 = bitcast i64** %par.addr to i64**
  %bitcast = bitcast i64** %par.addr to i8*
  %mtmp = getelementptr i64** %par.addr1, i32 1
  %bitcast2 = bitcast i64** %mtmp to i8*
  %bitcast7 = bitcast i64** %par.addr to i8*
  call void @__softboundcets_spatial_store_dereference_check(i8* %bitcast, i8* %bitcast2, i8* %bitcast7, i64 ptrtoint (i1** getelementptr (i1** null, i32 1) to i64))
  store i64* %par, i64** %par.addr, align 8
  %bitcast6 = bitcast i64** %par.addr to i8*
  call void @__softboundcets_metadata_store(i8* %bitcast6, i8* %0, i8* %1, i64 %2, i8* %3)
  call void @__softboundcets_allocate_shadow_stack_space(i32 2)
  call void @__softboundcets_store_base_shadow_stack(i8* null, i32 1)
  call void @__softboundcets_store_bound_shadow_stack(i8* null, i32 1)
  call void @__softboundcets_store_key_shadow_stack(i64 1, i32 1)
  call void @__softboundcets_store_lock_shadow_stack(i8* %4, i32 1)
  %call = call i64 @softboundcets_time(i64* null) #2
  call void @__softboundcets_deallocate_shadow_stack_space()
  %bitcast8 = bitcast i64** %par.addr to i8*
  %5 = load i64** %par.addr, align 8
  %bitcast3 = bitcast i64** %par.addr to i8*
  call void @__softboundcets_metadata_load(i8* %bitcast3, i8** %base.alloca, i8** %bound.alloca, i64* %key.alloca, i8** %lock.alloca)
  %base.load = load i8** %base.alloca
  %bound.load = load i8** %bound.alloca
  %key.load4 = load i64* %key.alloca
  %lock.load5 = load i8** %lock.alloca
  %bitcast9 = bitcast i64* %5 to i8*
  call void @__softboundcets_spatial_store_dereference_check(i8* %base.load, i8* %bound.load, i8* %bitcast9, i64 ptrtoint (i64* getelementptr (i64* null, i32 1) to i64))
  call void @__softboundcets_temporal_store_dereference_check(i8* %lock.load5, i64 %key.load4, i8* %base.load, i8* %bound.load)
  store i64 %call, i64* %5, align 8
  call void @__softboundcets_stack_memory_deallocation(i64 %key.load)
  ret void
}

declare i32 @printf(i8*, ...) #1

declare i64 @softboundcets_time(i64*)

declare void @__softboundcets_spatial_load_dereference_check(i8*, i8*, i8*, i64)

declare void @__softboundcets_spatial_store_dereference_check(i8*, i8*, i8*, i64)

declare void @__softboundcets_temporal_load_dereference_check(i8*, i64, i8*, i8*)

declare void @__softboundcets_temporal_store_dereference_check(i8*, i64, i8*, i8*)

; Function Attrs: nounwind
define internal void @__softboundcets_global_init() #2 {
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

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
