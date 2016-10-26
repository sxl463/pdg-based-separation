; ModuleID = 'inter_procedural.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@b = common global i32 0, align 4
@gp = common global i32* null, align 8
@a = common global i32 0, align 4
@c = common global i32 0, align 4

; Function Attrs: nounwind uwtable
define void @update() #0 {
entry:
  store i32* @b, i32** @gp, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, i32* %retval
  store i32* @a, i32** @gp, align 8
  %0 = load i32** @gp, align 8
  store i32 5, i32* %0, align 4
  call void @update()
  %1 = load i32** @gp, align 8
  store i32 10, i32* %1, align 4
  ret i32 0
}

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
