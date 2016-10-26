; ModuleID = 'malloc-softbound.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 0, void ()* @__softboundcets_global_init, i8* null }]

; Function Attrs: nounwind uwtable
define i32 @function() #0 {
entry:
  %base.alloca70 = alloca i8*
  %bound.alloca71 = alloca i8*
  %key.alloca72 = alloca i64
  %lock.alloca73 = alloca i8*
  %base.alloca61 = alloca i8*
  %bound.alloca62 = alloca i8*
  %key.alloca63 = alloca i64
  %lock.alloca64 = alloca i8*
  %base.alloca52 = alloca i8*
  %bound.alloca53 = alloca i8*
  %key.alloca54 = alloca i64
  %lock.alloca55 = alloca i8*
  %base.alloca43 = alloca i8*
  %bound.alloca44 = alloca i8*
  %key.alloca45 = alloca i64
  %lock.alloca46 = alloca i8*
  %base.alloca34 = alloca i8*
  %bound.alloca35 = alloca i8*
  %key.alloca36 = alloca i64
  %lock.alloca37 = alloca i8*
  %base.alloca = alloca i8*
  %bound.alloca = alloca i8*
  %key.alloca = alloca i64
  %lock.alloca = alloca i8*
  %lock_alloca = alloca i8*
  %key_alloca = alloca i64
  call void @__softboundcets_stack_memory_allocation(i8** %lock_alloca, i64* %key_alloca)
  %lock.load = load i8** %lock_alloca
  %key.load = load i64* %key_alloca
  %0 = call i8* @__softboundcets_get_global_lock()
  %p1 = alloca i32*, align 8
  %p112 = bitcast i32** %p1 to i32**
  %bitcast = bitcast i32** %p1 to i8*
  %mtmp = getelementptr i32** %p112, i32 1
  %bitcast13 = bitcast i32** %mtmp to i8*
  %i = alloca i32, align 4
  %i14 = bitcast i32* %i to i32*
  %bitcast15 = bitcast i32* %i to i8*
  %mtmp16 = getelementptr i32* %i14, i32 1
  %bitcast17 = bitcast i32* %mtmp16 to i8*
  %p2 = alloca i32*, align 8
  %p218 = bitcast i32** %p2 to i32**
  %bitcast19 = bitcast i32** %p2 to i8*
  %mtmp20 = getelementptr i32** %p218, i32 1
  %bitcast21 = bitcast i32** %mtmp20 to i8*
  %j = alloca i32, align 4
  %j22 = bitcast i32* %j to i32*
  %bitcast23 = bitcast i32* %j to i8*
  %mtmp24 = getelementptr i32* %j22, i32 1
  %bitcast25 = bitcast i32* %mtmp24 to i8*
  %p3 = alloca i32*, align 8
  %p326 = bitcast i32** %p3 to i32**
  %bitcast27 = bitcast i32** %p3 to i8*
  %mtmp28 = getelementptr i32** %p326, i32 1
  %bitcast29 = bitcast i32** %mtmp28 to i8*
  call void @__softboundcets_allocate_shadow_stack_space(i32 1)
  %call = call noalias i8* @softboundcets_malloc(i64 400) #1
  %1 = call i8* @__softboundcets_load_base_shadow_stack(i32 0)
  %2 = call i8* @__softboundcets_load_bound_shadow_stack(i32 0)
  call void @__softboundcets_deallocate_shadow_stack_space()
  %3 = bitcast i8* %call to i32*
  store i32* %3, i32** %p1, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32* %i, align 4
  %cmp = icmp slt i32 %4, 100
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32* %i, align 4
  %mul = mul nsw i32 10, %5
  %6 = load i32* %i, align 4
  %idxprom = sext i32 %6 to i64
  %7 = load i32** %p1, align 8
  %bitcast30 = bitcast i32** %p1 to i8*
  call void @__softboundcets_metadata_load(i8* %bitcast30, i8** %base.alloca, i8** %bound.alloca, i64* %key.alloca, i8** %lock.alloca)
  %base.load = load i8** %base.alloca
  %bound.load = load i8** %bound.alloca
  %key.load31 = load i64* %key.alloca
  %lock.load32 = load i8** %lock.alloca
  %arrayidx = getelementptr inbounds i32* %7, i64 %idxprom
  store i32 %mul, i32* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i32* %i, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  call void @__softboundcets_allocate_shadow_stack_space(i32 1)
  %call1 = call noalias i8* @softboundcets_malloc(i64 400) #1
  %9 = call i8* @__softboundcets_load_base_shadow_stack(i32 0)
  %10 = call i8* @__softboundcets_load_bound_shadow_stack(i32 0)
  call void @__softboundcets_deallocate_shadow_stack_space()
  %11 = bitcast i8* %call1 to i32*
  store i32* %11, i32** %p2, align 8
  store i32 0, i32* %j, align 4
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc9, %for.end
  %12 = load i32* %j, align 4
  %cmp3 = icmp slt i32 %12, 100
  br i1 %cmp3, label %for.body4, label %for.end11

for.body4:                                        ; preds = %for.cond2
  %13 = load i32* %j, align 4
  %idxprom5 = sext i32 %13 to i64
  %14 = load i32** %p1, align 8
  %bitcast33 = bitcast i32** %p1 to i8*
  call void @__softboundcets_metadata_load(i8* %bitcast33, i8** %base.alloca34, i8** %bound.alloca35, i64* %key.alloca36, i8** %lock.alloca37)
  %base.load38 = load i8** %base.alloca34
  %bound.load39 = load i8** %bound.alloca35
  %key.load40 = load i64* %key.alloca36
  %lock.load41 = load i8** %lock.alloca37
  %arrayidx6 = getelementptr inbounds i32* %14, i64 %idxprom5
  %15 = load i32* %arrayidx6, align 4
  %add = add nsw i32 %15, 5
  %16 = load i32* %j, align 4
  %idxprom7 = sext i32 %16 to i64
  %17 = load i32** %p2, align 8
  %bitcast42 = bitcast i32** %p2 to i8*
  call void @__softboundcets_metadata_load(i8* %bitcast42, i8** %base.alloca43, i8** %bound.alloca44, i64* %key.alloca45, i8** %lock.alloca46)
  %base.load47 = load i8** %base.alloca43
  %bound.load48 = load i8** %bound.alloca44
  %key.load49 = load i64* %key.alloca45
  %lock.load50 = load i8** %lock.alloca46
  %arrayidx8 = getelementptr inbounds i32* %17, i64 %idxprom7
  store i32 %add, i32* %arrayidx8, align 4
  br label %for.inc9

for.inc9:                                         ; preds = %for.body4
  %18 = load i32* %j, align 4
  %inc10 = add nsw i32 %18, 1
  store i32 %inc10, i32* %j, align 4
  br label %for.cond2

for.end11:                                        ; preds = %for.cond2
  %19 = load i32** %p1, align 8
  %bitcast51 = bitcast i32** %p1 to i8*
  call void @__softboundcets_metadata_load(i8* %bitcast51, i8** %base.alloca52, i8** %bound.alloca53, i64* %key.alloca54, i8** %lock.alloca55)
  %base.load56 = load i8** %base.alloca52
  %bound.load57 = load i8** %bound.alloca53
  %key.load58 = load i64* %key.alloca54
  %lock.load59 = load i8** %lock.alloca55
  store i32* %19, i32** %p3, align 8
  %bitcast78 = bitcast i32** %p3 to i8*
  call void @__softboundcets_metadata_store(i8* %bitcast78, i8* %base.load56, i8* %bound.load57, i64 %key.load58, i8* %lock.load59)
  %20 = load i32** %p1, align 8
  %bitcast60 = bitcast i32** %p1 to i8*
  call void @__softboundcets_metadata_load(i8* %bitcast60, i8** %base.alloca61, i8** %bound.alloca62, i64* %key.alloca63, i8** %lock.alloca64)
  %base.load65 = load i8** %base.alloca61
  %bound.load66 = load i8** %bound.alloca62
  %key.load67 = load i64* %key.alloca63
  %lock.load68 = load i8** %lock.alloca64
  %21 = bitcast i32* %20 to i8*
  call void @__softboundcets_allocate_shadow_stack_space(i32 2)
  call void @__softboundcets_store_base_shadow_stack(i8* %base.load65, i32 1)
  call void @__softboundcets_store_bound_shadow_stack(i8* %bound.load66, i32 1)
  call void @softboundcets_free(i8* %21) #1
  call void @__softboundcets_deallocate_shadow_stack_space()
  %22 = load i32** %p2, align 8
  %bitcast69 = bitcast i32** %p2 to i8*
  call void @__softboundcets_metadata_load(i8* %bitcast69, i8** %base.alloca70, i8** %bound.alloca71, i64* %key.alloca72, i8** %lock.alloca73)
  %base.load74 = load i8** %base.alloca70
  %bound.load75 = load i8** %bound.alloca71
  %key.load76 = load i64* %key.alloca72
  %lock.load77 = load i8** %lock.alloca73
  %23 = bitcast i32* %22 to i8*
  call void @__softboundcets_allocate_shadow_stack_space(i32 2)
  call void @__softboundcets_store_base_shadow_stack(i8* %base.load74, i32 1)
  call void @__softboundcets_store_bound_shadow_stack(i8* %bound.load75, i32 1)
  call void @softboundcets_free(i8* %23) #1
  call void @__softboundcets_deallocate_shadow_stack_space()
  call void @__softboundcets_stack_memory_deallocation(i64 %key.load)
  ret i32 0
}

declare i8* @softboundcets_malloc(i64)

declare void @softboundcets_free(i8*)

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

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
