; ModuleID = 'libquantum.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.quantum_reg_struct = type { i32, i32, i32, %struct.quantum_reg_node_struct*, i32* }
%struct.quantum_reg_node_struct = type { { float, float }, i64 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.quantum_matrix_struct = type { i32, i32, { float, float }* }

@status = global i32 0, align 4
@lambda = global float 0.000000e+00, align 4
@.str = private unnamed_addr constant [48 x i8] c"Not enough memory for %i-sized array of float!\0A\00", align 1
@.str1 = private unnamed_addr constant [40 x i8] c"Error allocating %i-element int array!\0A\00", align 1
@.str12 = private unnamed_addr constant [29 x i8] c"Matrix is not a 2x2 matrix!\0A\00", align 1
@.str2 = private unnamed_addr constant [39 x i8] c"Not enough memory for %i-sized qubit!\0A\00", align 1
@.str3 = private unnamed_addr constant [39 x i8] c"Not enough memory for %i bytes array!\0A\00", align 1
@.str4 = private unnamed_addr constant [29 x i8] c"Matrix is not a 4x4 matrix!\0A\00", align 1
@quantum_gate_counter.counter = internal global i32 0, align 4
@quantum_memman.mem = internal global i64 0, align 8
@quantum_memman.max = internal global i64 0, align 8
@.str10 = private unnamed_addr constant [35 x i8] c"Not enogh memory for %ix%i-Matrix!\00", align 1
@.str111 = private unnamed_addr constant [10 x i8] c"% f %+fi\09\00", align 1
@.str212 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str21 = private unnamed_addr constant [39 x i8] c"Not enough memory for %i-sized qubit!\0A\00", align 1
@opstatus = global i32 0, align 4
@objcode = global i8* null, align 8
@position = global i64 0, align 8
@allocated = global i64 0, align 8
@.str27 = private unnamed_addr constant [43 x i8] c"Error allocating memory for objcode data!\0A\00", align 1
@.str128 = private unnamed_addr constant [24 x i8] c"Unknown opcode 0x(%X)!\0A\00", align 1
@.str229 = private unnamed_addr constant [45 x i8] c"Error reallocating memory for objcode data!\0A\00", align 1
@stderr = external global %struct._IO_FILE*
@.str330 = private unnamed_addr constant [74 x i8] c"Object code generation not active! Forgot to call quantum_objcode_start?\0A\00", align 1
@globalfile = common global i8* null, align 8
@.str431 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str5 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str6 = private unnamed_addr constant [41 x i8] c"quantum_objcode_run: Could not open %s: \00", align 1
@.str7 = private unnamed_addr constant [28 x i8] c"%i: Unknown opcode 0x(%X)!\0A\00", align 1
@type = global i32 0, align 4
@width = global i32 0, align 4
@quantum_qec_counter.counter = internal global i32 0, align 4
@quantum_qec_counter.freq = internal global i32 1073741824, align 4
@.str44 = private unnamed_addr constant [51 x i8] c"Error! Cannot convert a multi-column-matrix (%i)!\0A\00", align 1
@.str145 = private unnamed_addr constant [39 x i8] c"Not enough memory for %i-sized qubit!\0A\00", align 1
@.str246 = private unnamed_addr constant [38 x i8] c"Not enough memory for %i-sized hash!\0A\00", align 1
@.str347 = private unnamed_addr constant [9 x i8] c"QUOBFILE\00", align 1
@.str448 = private unnamed_addr constant [23 x i8] c"% f %+fi|%lli> (%e) (|\00", align 1
@.str549 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str650 = private unnamed_addr constant [3 x i8] c"%i\00", align 1
@.str751 = private unnamed_addr constant [4 x i8] c">)\0A\00", align 1
@.str8 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str9 = private unnamed_addr constant [10 x i8] c"%i: %lli\0A\00", align 1
@.str1052 = private unnamed_addr constant [13 x i8] c"%i: %i %llu\0A\00", align 1
@.str11 = private unnamed_addr constant [50 x i8] c"Not enough memory for %i-sized quantum register!\0A\00", align 1
@.str65 = private unnamed_addr constant [23 x i8] c"Usage: shor [number]\0A\0A\00", align 1
@.str166 = private unnamed_addr constant [17 x i8] c"Invalid number\0A\0A\00", align 1
@.str267 = private unnamed_addr constant [28 x i8] c"N = %i, %i qubits required\0A\00", align 1
@.str368 = private unnamed_addr constant [17 x i8] c"Random seed: %i\0A\00", align 1
@.str469 = private unnamed_addr constant [25 x i8] c"Impossible Measurement!\0A\00", align 1
@.str570 = private unnamed_addr constant [27 x i8] c"Measured zero, try again.\0A\00", align 1
@.str671 = private unnamed_addr constant [19 x i8] c"Measured %i (%f), \00", align 1
@.str772 = private unnamed_addr constant [36 x i8] c"fractional approximation is %i/%i.\0A\00", align 1
@.str873 = private unnamed_addr constant [41 x i8] c"Odd denominator, trying to expand by 2.\0A\00", align 1
@.str974 = private unnamed_addr constant [24 x i8] c"Odd period, try again.\0A\00", align 1
@.str1075 = private unnamed_addr constant [24 x i8] c"Possible period is %i.\0A\00", align 1
@.str1176 = private unnamed_addr constant [14 x i8] c"%i = %i * %i\0A\00", align 1
@.str1277 = private unnamed_addr constant [41 x i8] c"Unable to determine factors, try again.\0A\00", align 1
@seedi = internal global i32 0, align 4
@.str82 = private unnamed_addr constant [6 x i8] c"0.2.4\00", align 1

; Function Attrs: nounwind uwtable
define i32 @quantum_ipow(i32 %a, i32 %b) #0 {
entry:
  %a.addr = alloca i32, align 4
  %b.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %r = alloca i32, align 4
  store i32 %a, i32* %a.addr, align 4
  store i32 %b, i32* %b.addr, align 4
  store i32 1, i32* %r, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32* %i, align 4
  %1 = load i32* %b.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32* %a.addr, align 4
  %3 = load i32* %r, align 4
  %mul = mul nsw i32 %3, %2
  store i32 %mul, i32* %r, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load i32* %i, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %5 = load i32* %r, align 4
  ret i32 %5
}

; Function Attrs: nounwind uwtable
define i32 @quantum_gcd(i32 %u, i32 %v) #0 {
entry:
  %u.addr = alloca i32, align 4
  %v.addr = alloca i32, align 4
  %r = alloca i32, align 4
  store i32 %u, i32* %u.addr, align 4
  store i32 %v, i32* %v.addr, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i32* %v.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load i32* %u.addr, align 4
  %2 = load i32* %v.addr, align 4
  %rem = srem i32 %1, %2
  store i32 %rem, i32* %r, align 4
  %3 = load i32* %v.addr, align 4
  store i32 %3, i32* %u.addr, align 4
  %4 = load i32* %r, align 4
  store i32 %4, i32* %v.addr, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %5 = load i32* %u.addr, align 4
  ret i32 %5
}

; Function Attrs: nounwind uwtable
define void @quantum_frac_approx(i32* %a, i32* %b, i32 %width) #0 {
entry:
  %a.addr = alloca i32*, align 8
  %b.addr = alloca i32*, align 8
  %width.addr = alloca i32, align 4
  %f = alloca float, align 4
  %g = alloca float, align 4
  %i = alloca i32, align 4
  %num2 = alloca i32, align 4
  %den2 = alloca i32, align 4
  %num1 = alloca i32, align 4
  %den1 = alloca i32, align 4
  %num = alloca i32, align 4
  %den = alloca i32, align 4
  store i32* %a, i32** %a.addr, align 8
  store i32* %b, i32** %b.addr, align 8
  store i32 %width, i32* %width.addr, align 4
  %0 = load i32** %a.addr, align 8
  %1 = load i32* %0, align 4
  %conv = sitofp i32 %1 to float
  %2 = load i32** %b.addr, align 8
  %3 = load i32* %2, align 4
  %conv1 = sitofp i32 %3 to float
  %div = fdiv float %conv, %conv1
  store float %div, float* %f, align 4
  %4 = load float* %f, align 4
  store float %4, float* %g, align 4
  store i32 0, i32* %num2, align 4
  store i32 1, i32* %den2, align 4
  store i32 1, i32* %num1, align 4
  store i32 0, i32* %den1, align 4
  store i32 0, i32* %num, align 4
  store i32 0, i32* %den, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %5 = load float* %g, align 4
  %conv2 = fpext float %5 to double
  %add = fadd double %conv2, 5.000000e-06
  %conv3 = fptosi double %add to i32
  store i32 %conv3, i32* %i, align 4
  %6 = load i32* %i, align 4
  %conv4 = sitofp i32 %6 to double
  %sub = fsub double %conv4, 5.000000e-06
  %7 = load float* %g, align 4
  %conv5 = fpext float %7 to double
  %sub6 = fsub double %conv5, %sub
  %conv7 = fptrunc double %sub6 to float
  store float %conv7, float* %g, align 4
  %8 = load float* %g, align 4
  %conv8 = fpext float %8 to double
  %div9 = fdiv double 1.000000e+00, %conv8
  %conv10 = fptrunc double %div9 to float
  store float %conv10, float* %g, align 4
  %9 = load i32* %i, align 4
  %10 = load i32* %den1, align 4
  %mul = mul nsw i32 %9, %10
  %11 = load i32* %den2, align 4
  %add11 = add nsw i32 %mul, %11
  %12 = load i32* %width.addr, align 4
  %shl = shl i32 1, %12
  %cmp = icmp sgt i32 %add11, %shl
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  br label %do.end

if.end:                                           ; preds = %do.body
  %13 = load i32* %i, align 4
  %14 = load i32* %num1, align 4
  %mul13 = mul nsw i32 %13, %14
  %15 = load i32* %num2, align 4
  %add14 = add nsw i32 %mul13, %15
  store i32 %add14, i32* %num, align 4
  %16 = load i32* %i, align 4
  %17 = load i32* %den1, align 4
  %mul15 = mul nsw i32 %16, %17
  %18 = load i32* %den2, align 4
  %add16 = add nsw i32 %mul15, %18
  store i32 %add16, i32* %den, align 4
  %19 = load i32* %num1, align 4
  store i32 %19, i32* %num2, align 4
  %20 = load i32* %den1, align 4
  store i32 %20, i32* %den2, align 4
  %21 = load i32* %num, align 4
  store i32 %21, i32* %num1, align 4
  %22 = load i32* %den, align 4
  store i32 %22, i32* %den1, align 4
  br label %do.cond

do.cond:                                          ; preds = %if.end
  %23 = load i32* %num, align 4
  %conv17 = sitofp i32 %23 to float
  %24 = load i32* %den, align 4
  %conv18 = sitofp i32 %24 to float
  %div19 = fdiv float %conv17, %conv18
  %25 = load float* %f, align 4
  %sub20 = fsub float %div19, %25
  %call = call float @fabsf(float %sub20) #8
  %conv21 = fpext float %call to double
  %26 = load i32* %width.addr, align 4
  %shl22 = shl i32 1, %26
  %mul23 = mul nsw i32 2, %shl22
  %conv24 = sitofp i32 %mul23 to double
  %div25 = fdiv double 1.000000e+00, %conv24
  %cmp26 = fcmp ogt double %conv21, %div25
  br i1 %cmp26, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond, %if.then
  %27 = load i32* %num, align 4
  %28 = load i32** %a.addr, align 8
  store i32 %27, i32* %28, align 4
  %29 = load i32* %den, align 4
  %30 = load i32** %b.addr, align 8
  store i32 %29, i32* %30, align 4
  ret void
}

; Function Attrs: nounwind readnone
declare float @fabsf(float) #1

; Function Attrs: nounwind uwtable
define i32 @quantum_getwidth(i32 %n) #0 {
entry:
  %n.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32* %i, align 4
  %shl = shl i32 1, %0
  %1 = load i32* %n.addr, align 4
  %cmp = icmp slt i32 %shl, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %2 = load i32* %i, align 4
  %inc = add nsw i32 %2, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %3 = load i32* %i, align 4
  ret i32 %3
}

; Function Attrs: nounwind uwtable
define i32 @quantum_inverse_mod(i32 %n, i32 %c) #0 {
entry:
  %n.addr = alloca i32, align 4
  %c.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  store i32 %c, i32* %c.addr, align 4
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32* %i, align 4
  %1 = load i32* %c.addr, align 4
  %mul = mul nsw i32 %0, %1
  %2 = load i32* %n.addr, align 4
  %rem = srem i32 %mul, %2
  %cmp = icmp ne i32 %rem, 1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load i32* %i, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %4 = load i32* %i, align 4
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define <2 x float> @quantum_conj(<2 x float> %a.coerce) #0 {
entry:
  %retval = alloca { float, float }, align 4
  %a = alloca { float, float }, align 8
  %r = alloca float, align 4
  %i = alloca float, align 4
  %coerce = alloca { float, float }, align 4
  %coerce5 = alloca { float, float }, align 4
  %0 = bitcast { float, float }* %a to <2 x float>*
  store <2 x float> %a.coerce, <2 x float>* %0, align 1
  %a.realp = getelementptr inbounds { float, float }* %a, i32 0, i32 0
  %a.real = load float* %a.realp, align 4
  %a.imagp = getelementptr inbounds { float, float }* %a, i32 0, i32 1
  %a.imag = load float* %a.imagp, align 4
  %real = getelementptr inbounds { float, float }* %coerce, i32 0, i32 0
  %imag = getelementptr inbounds { float, float }* %coerce, i32 0, i32 1
  store float %a.real, float* %real, align 4
  store float %a.imag, float* %imag, align 4
  %1 = bitcast { float, float }* %coerce to <2 x float>*
  %2 = load <2 x float>* %1, align 1
  %call = call float @quantum_real(<2 x float> %2)
  store float %call, float* %r, align 4
  %a.realp1 = getelementptr inbounds { float, float }* %a, i32 0, i32 0
  %a.real2 = load float* %a.realp1, align 4
  %a.imagp3 = getelementptr inbounds { float, float }* %a, i32 0, i32 1
  %a.imag4 = load float* %a.imagp3, align 4
  %real6 = getelementptr inbounds { float, float }* %coerce5, i32 0, i32 0
  %imag7 = getelementptr inbounds { float, float }* %coerce5, i32 0, i32 1
  store float %a.real2, float* %real6, align 4
  store float %a.imag4, float* %imag7, align 4
  %3 = bitcast { float, float }* %coerce5 to <2 x float>*
  %4 = load <2 x float>* %3, align 1
  %call8 = call float @quantum_imag(<2 x float> %4)
  store float %call8, float* %i, align 4
  %5 = load float* %r, align 4
  %6 = load float* %i, align 4
  %mul.rl = fmul float 0.000000e+00, %6
  %mul.r = fsub float %mul.rl, 0.000000e+00
  %mul.il = fmul float 1.000000e+00, %6
  %mul.i = fadd float %mul.il, 0.000000e+00
  %sub.r = fsub float %5, %mul.r
  %sub.i = fsub float 0.000000e+00, %mul.i
  %real9 = getelementptr inbounds { float, float }* %retval, i32 0, i32 0
  %imag10 = getelementptr inbounds { float, float }* %retval, i32 0, i32 1
  store float %sub.r, float* %real9, align 4
  store float %sub.i, float* %imag10, align 4
  %7 = bitcast { float, float }* %retval to <2 x float>*
  %8 = load <2 x float>* %7, align 1
  ret <2 x float> %8
}

; Function Attrs: nounwind uwtable
define float @quantum_prob(<2 x float> %a.coerce) #0 {
entry:
  %a = alloca { float, float }, align 8
  %coerce = alloca { float, float }, align 4
  %0 = bitcast { float, float }* %a to <2 x float>*
  store <2 x float> %a.coerce, <2 x float>* %0, align 1
  %a.realp = getelementptr inbounds { float, float }* %a, i32 0, i32 0
  %a.real = load float* %a.realp, align 4
  %a.imagp = getelementptr inbounds { float, float }* %a, i32 0, i32 1
  %a.imag = load float* %a.imagp, align 4
  %real = getelementptr inbounds { float, float }* %coerce, i32 0, i32 0
  %imag = getelementptr inbounds { float, float }* %coerce, i32 0, i32 1
  store float %a.real, float* %real, align 4
  store float %a.imag, float* %imag, align 4
  %1 = bitcast { float, float }* %coerce to <2 x float>*
  %2 = load <2 x float>* %1, align 1
  %call = call float @quantum_prob_inline(<2 x float> %2)
  ret float %call
}

; Function Attrs: nounwind uwtable
define <2 x float> @quantum_cexp(float %phi) #0 {
entry:
  %retval = alloca { float, float }, align 4
  %phi.addr = alloca float, align 4
  store float %phi, float* %phi.addr, align 4
  %0 = load float* %phi.addr, align 4
  %conv = fpext float %0 to double
  %call = call double @cos(double %conv) #6
  %1 = load float* %phi.addr, align 4
  %conv1 = fpext float %1 to double
  %call2 = call double @sin(double %conv1) #6
  %mul.rl = fmul double 0.000000e+00, %call2
  %mul.r = fsub double %mul.rl, 0.000000e+00
  %mul.il = fmul double 1.000000e+00, %call2
  %mul.i = fadd double %mul.il, 0.000000e+00
  %add.r = fadd double %call, %mul.r
  %add.i = fadd double 0.000000e+00, %mul.i
  %conv3 = fptrunc double %add.r to float
  %conv4 = fptrunc double %add.i to float
  %real = getelementptr inbounds { float, float }* %retval, i32 0, i32 0
  %imag = getelementptr inbounds { float, float }* %retval, i32 0, i32 1
  store float %conv3, float* %real, align 4
  store float %conv4, float* %imag, align 4
  %2 = bitcast { float, float }* %retval to <2 x float>*
  %3 = load <2 x float>* %2, align 1
  ret <2 x float> %3
}

; Function Attrs: nounwind
declare double @cos(double) #2

; Function Attrs: nounwind
declare double @sin(double) #2

; Function Attrs: inlinehint nounwind uwtable
define internal float @quantum_real(<2 x float> %a.coerce) #3 {
entry:
  %a = alloca { float, float }, align 8
  %p = alloca float*, align 8
  %0 = bitcast { float, float }* %a to <2 x float>*
  store <2 x float> %a.coerce, <2 x float>* %0, align 1
  %1 = bitcast { float, float }* %a to float*
  store float* %1, float** %p, align 8
  %2 = load float** %p, align 8
  %arrayidx = getelementptr inbounds float* %2, i64 0
  %3 = load float* %arrayidx, align 4
  ret float %3
}

; Function Attrs: inlinehint nounwind uwtable
define internal float @quantum_imag(<2 x float> %a.coerce) #3 {
entry:
  %a = alloca { float, float }, align 8
  %p = alloca float*, align 8
  %0 = bitcast { float, float }* %a to <2 x float>*
  store <2 x float> %a.coerce, <2 x float>* %0, align 1
  %1 = bitcast { float, float }* %a to float*
  store float* %1, float** %p, align 8
  %2 = load float** %p, align 8
  %arrayidx = getelementptr inbounds float* %2, i64 1
  %3 = load float* %arrayidx, align 4
  ret float %3
}

; Function Attrs: inlinehint nounwind uwtable
define internal float @quantum_prob_inline(<2 x float> %a.coerce) #3 {
entry:
  %a = alloca { float, float }, align 8
  %r = alloca float, align 4
  %i = alloca float, align 4
  %coerce = alloca { float, float }, align 4
  %coerce5 = alloca { float, float }, align 4
  %0 = bitcast { float, float }* %a to <2 x float>*
  store <2 x float> %a.coerce, <2 x float>* %0, align 1
  %a.realp = getelementptr inbounds { float, float }* %a, i32 0, i32 0
  %a.real = load float* %a.realp, align 4
  %a.imagp = getelementptr inbounds { float, float }* %a, i32 0, i32 1
  %a.imag = load float* %a.imagp, align 4
  %real = getelementptr inbounds { float, float }* %coerce, i32 0, i32 0
  %imag = getelementptr inbounds { float, float }* %coerce, i32 0, i32 1
  store float %a.real, float* %real, align 4
  store float %a.imag, float* %imag, align 4
  %1 = bitcast { float, float }* %coerce to <2 x float>*
  %2 = load <2 x float>* %1, align 1
  %call = call float @quantum_real(<2 x float> %2)
  store float %call, float* %r, align 4
  %a.realp1 = getelementptr inbounds { float, float }* %a, i32 0, i32 0
  %a.real2 = load float* %a.realp1, align 4
  %a.imagp3 = getelementptr inbounds { float, float }* %a, i32 0, i32 1
  %a.imag4 = load float* %a.imagp3, align 4
  %real6 = getelementptr inbounds { float, float }* %coerce5, i32 0, i32 0
  %imag7 = getelementptr inbounds { float, float }* %coerce5, i32 0, i32 1
  store float %a.real2, float* %real6, align 4
  store float %a.imag4, float* %imag7, align 4
  %3 = bitcast { float, float }* %coerce5 to <2 x float>*
  %4 = load <2 x float>* %3, align 1
  %call8 = call float @quantum_imag(<2 x float> %4)
  store float %call8, float* %i, align 4
  %5 = load float* %r, align 4
  %6 = load float* %r, align 4
  %mul = fmul float %5, %6
  %7 = load float* %i, align 4
  %8 = load float* %i, align 4
  %mul9 = fmul float %7, %8
  %add = fadd float %mul, %mul9
  ret float %add
}

; Function Attrs: nounwind uwtable
define float @quantum_get_decoherence() #0 {
entry:
  %0 = load float* @lambda, align 4
  ret float %0
}

; Function Attrs: nounwind uwtable
define void @quantum_set_decoherence(float %l) #0 {
entry:
  %l.addr = alloca float, align 4
  store float %l, float* %l.addr, align 4
  %0 = load float* %l.addr, align 4
  %tobool = fcmp une float %0, 0.000000e+00
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 1, i32* @status, align 4
  %1 = load float* %l.addr, align 4
  store float %1, float* @lambda, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  store i32 0, i32* @status, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define void @quantum_decohere(%struct.quantum_reg_struct* %reg) #0 {
entry:
  %reg.addr = alloca %struct.quantum_reg_struct*, align 8
  %u = alloca float, align 4
  %v = alloca float, align 4
  %s = alloca float, align 4
  %x = alloca float, align 4
  %nrands = alloca float*, align 8
  %angle = alloca float, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %coerce = alloca { float, float }, align 4
  store %struct.quantum_reg_struct* %reg, %struct.quantum_reg_struct** %reg.addr, align 8
  %call = call i32 @quantum_gate_counter(i32 1)
  %0 = load i32* @status, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.end72

if.then:                                          ; preds = %entry
  %1 = load %struct.quantum_reg_struct** %reg.addr, align 8
  %width = getelementptr inbounds %struct.quantum_reg_struct* %1, i32 0, i32 0
  %2 = load i32* %width, align 4
  %conv = sext i32 %2 to i64
  %call1 = call noalias i8* @calloc(i64 %conv, i64 4) #6
  %3 = bitcast i8* %call1 to float*
  store float* %3, float** %nrands, align 8
  %4 = load float** %nrands, align 8
  %tobool2 = icmp ne float* %4, null
  br i1 %tobool2, label %if.end, label %if.then3

if.then3:                                         ; preds = %if.then
  %5 = load %struct.quantum_reg_struct** %reg.addr, align 8
  %width4 = getelementptr inbounds %struct.quantum_reg_struct* %5, i32 0, i32 0
  %6 = load i32* %width4, align 4
  %call5 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([48 x i8]* @.str, i32 0, i32 0), i32 %6)
  call void @exit(i32 1) #9
  unreachable

if.end:                                           ; preds = %if.then
  %7 = load %struct.quantum_reg_struct** %reg.addr, align 8
  %width6 = getelementptr inbounds %struct.quantum_reg_struct* %7, i32 0, i32 0
  %8 = load i32* %width6, align 4
  %conv7 = sext i32 %8 to i64
  %mul = mul i64 %conv7, 4
  %call8 = call i64 @quantum_memman(i64 %mul)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %9 = load i32* %i, align 4
  %10 = load %struct.quantum_reg_struct** %reg.addr, align 8
  %width9 = getelementptr inbounds %struct.quantum_reg_struct* %10, i32 0, i32 0
  %11 = load i32* %width9, align 4
  %cmp = icmp slt i32 %9, %11
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %do.body

do.body:                                          ; preds = %do.cond, %for.body
  %call11 = call double (...)* bitcast (double ()* @quantum_frand to double (...)*)()
  %mul12 = fmul double 2.000000e+00, %call11
  %sub = fsub double %mul12, 1.000000e+00
  %conv13 = fptrunc double %sub to float
  store float %conv13, float* %u, align 4
  %call14 = call double (...)* bitcast (double ()* @quantum_frand to double (...)*)()
  %mul15 = fmul double 2.000000e+00, %call14
  %sub16 = fsub double %mul15, 1.000000e+00
  %conv17 = fptrunc double %sub16 to float
  store float %conv17, float* %v, align 4
  %12 = load float* %u, align 4
  %13 = load float* %u, align 4
  %mul18 = fmul float %12, %13
  %14 = load float* %v, align 4
  %15 = load float* %v, align 4
  %mul19 = fmul float %14, %15
  %add = fadd float %mul18, %mul19
  store float %add, float* %s, align 4
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %16 = load float* %s, align 4
  %cmp20 = fcmp oge float %16, 1.000000e+00
  br i1 %cmp20, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %17 = load float* %u, align 4
  %conv22 = fpext float %17 to double
  %18 = load float* %s, align 4
  %conv23 = fpext float %18 to double
  %call24 = call double @log(double %conv23) #6
  %mul25 = fmul double -2.000000e+00, %call24
  %19 = load float* %s, align 4
  %conv26 = fpext float %19 to double
  %div = fdiv double %mul25, %conv26
  %call27 = call double @sqrt(double %div) #6
  %mul28 = fmul double %conv22, %call27
  %conv29 = fptrunc double %mul28 to float
  store float %conv29, float* %x, align 4
  %20 = load float* @lambda, align 4
  %mul30 = fmul float 2.000000e+00, %20
  %conv31 = fpext float %mul30 to double
  %call32 = call double @sqrt(double %conv31) #6
  %21 = load float* %x, align 4
  %conv33 = fpext float %21 to double
  %mul34 = fmul double %conv33, %call32
  %conv35 = fptrunc double %mul34 to float
  store float %conv35, float* %x, align 4
  %22 = load float* %x, align 4
  %div36 = fdiv float %22, 2.000000e+00
  %23 = load i32* %i, align 4
  %idxprom = sext i32 %23 to i64
  %24 = load float** %nrands, align 8
  %arrayidx = getelementptr inbounds float* %24, i64 %idxprom
  store float %div36, float* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %do.end
  %25 = load i32* %i, align 4
  %inc = add nsw i32 %25, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond37

for.cond37:                                       ; preds = %for.inc64, %for.end
  %26 = load i32* %i, align 4
  %27 = load %struct.quantum_reg_struct** %reg.addr, align 8
  %size = getelementptr inbounds %struct.quantum_reg_struct* %27, i32 0, i32 1
  %28 = load i32* %size, align 4
  %cmp38 = icmp slt i32 %26, %28
  br i1 %cmp38, label %for.body40, label %for.end66

for.body40:                                       ; preds = %for.cond37
  store float 0.000000e+00, float* %angle, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond41

for.cond41:                                       ; preds = %for.inc57, %for.body40
  %29 = load i32* %j, align 4
  %30 = load %struct.quantum_reg_struct** %reg.addr, align 8
  %width42 = getelementptr inbounds %struct.quantum_reg_struct* %30, i32 0, i32 0
  %31 = load i32* %width42, align 4
  %cmp43 = icmp slt i32 %29, %31
  br i1 %cmp43, label %for.body45, label %for.end59

for.body45:                                       ; preds = %for.cond41
  %32 = load i32* %i, align 4
  %idxprom46 = sext i32 %32 to i64
  %33 = load %struct.quantum_reg_struct** %reg.addr, align 8
  %node = getelementptr inbounds %struct.quantum_reg_struct* %33, i32 0, i32 3
  %34 = load %struct.quantum_reg_node_struct** %node, align 8
  %arrayidx47 = getelementptr inbounds %struct.quantum_reg_node_struct* %34, i64 %idxprom46
  %state = getelementptr inbounds %struct.quantum_reg_node_struct* %arrayidx47, i32 0, i32 1
  %35 = load i64* %state, align 8
  %36 = load i32* %j, align 4
  %sh_prom = zext i32 %36 to i64
  %shl = shl i64 1, %sh_prom
  %and = and i64 %35, %shl
  %tobool48 = icmp ne i64 %and, 0
  br i1 %tobool48, label %if.then49, label %if.else

if.then49:                                        ; preds = %for.body45
  %37 = load i32* %j, align 4
  %idxprom50 = sext i32 %37 to i64
  %38 = load float** %nrands, align 8
  %arrayidx51 = getelementptr inbounds float* %38, i64 %idxprom50
  %39 = load float* %arrayidx51, align 4
  %40 = load float* %angle, align 4
  %add52 = fadd float %40, %39
  store float %add52, float* %angle, align 4
  br label %if.end56

if.else:                                          ; preds = %for.body45
  %41 = load i32* %j, align 4
  %idxprom53 = sext i32 %41 to i64
  %42 = load float** %nrands, align 8
  %arrayidx54 = getelementptr inbounds float* %42, i64 %idxprom53
  %43 = load float* %arrayidx54, align 4
  %44 = load float* %angle, align 4
  %sub55 = fsub float %44, %43
  store float %sub55, float* %angle, align 4
  br label %if.end56

if.end56:                                         ; preds = %if.else, %if.then49
  br label %for.inc57

for.inc57:                                        ; preds = %if.end56
  %45 = load i32* %j, align 4
  %inc58 = add nsw i32 %45, 1
  store i32 %inc58, i32* %j, align 4
  br label %for.cond41

for.end59:                                        ; preds = %for.cond41
  %46 = load float* %angle, align 4
  %call60 = call <2 x float> @quantum_cexp(float %46)
  %47 = bitcast { float, float }* %coerce to <2 x float>*
  store <2 x float> %call60, <2 x float>* %47, align 1
  %coerce.realp = getelementptr inbounds { float, float }* %coerce, i32 0, i32 0
  %coerce.real = load float* %coerce.realp, align 4
  %coerce.imagp = getelementptr inbounds { float, float }* %coerce, i32 0, i32 1
  %coerce.imag = load float* %coerce.imagp, align 4
  %48 = load i32* %i, align 4
  %idxprom61 = sext i32 %48 to i64
  %49 = load %struct.quantum_reg_struct** %reg.addr, align 8
  %node62 = getelementptr inbounds %struct.quantum_reg_struct* %49, i32 0, i32 3
  %50 = load %struct.quantum_reg_node_struct** %node62, align 8
  %arrayidx63 = getelementptr inbounds %struct.quantum_reg_node_struct* %50, i64 %idxprom61
  %amplitude = getelementptr inbounds %struct.quantum_reg_node_struct* %arrayidx63, i32 0, i32 0
  %amplitude.realp = getelementptr inbounds { float, float }* %amplitude, i32 0, i32 0
  %amplitude.real = load float* %amplitude.realp, align 4
  %amplitude.imagp = getelementptr inbounds { float, float }* %amplitude, i32 0, i32 1
  %amplitude.imag = load float* %amplitude.imagp, align 4
  %mul.rl = fmul float %amplitude.real, %coerce.real
  %mul.rr = fmul float %amplitude.imag, %coerce.imag
  %mul.r = fsub float %mul.rl, %mul.rr
  %mul.il = fmul float %amplitude.imag, %coerce.real
  %mul.ir = fmul float %amplitude.real, %coerce.imag
  %mul.i = fadd float %mul.il, %mul.ir
  %real = getelementptr inbounds { float, float }* %amplitude, i32 0, i32 0
  %imag = getelementptr inbounds { float, float }* %amplitude, i32 0, i32 1
  store float %mul.r, float* %real, align 4
  store float %mul.i, float* %imag, align 4
  br label %for.inc64

for.inc64:                                        ; preds = %for.end59
  %51 = load i32* %i, align 4
  %inc65 = add nsw i32 %51, 1
  store i32 %inc65, i32* %i, align 4
  br label %for.cond37

for.end66:                                        ; preds = %for.cond37
  %52 = load float** %nrands, align 8
  %53 = bitcast float* %52 to i8*
  call void @free(i8* %53) #6
  %54 = load %struct.quantum_reg_struct** %reg.addr, align 8
  %width67 = getelementptr inbounds %struct.quantum_reg_struct* %54, i32 0, i32 0
  %55 = load i32* %width67, align 4
  %sub68 = sub nsw i32 0, %55
  %conv69 = sext i32 %sub68 to i64
  %mul70 = mul i64 %conv69, 4
  %call71 = call i64 @quantum_memman(i64 %mul70)
  br label %if.end72

if.end72:                                         ; preds = %for.end66, %entry
  ret void
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) #2

declare i32 @printf(i8*, ...) #4

; Function Attrs: noreturn nounwind
declare void @exit(i32) #5

; Function Attrs: nounwind
declare double @sqrt(double) #2

; Function Attrs: nounwind
declare double @log(double) #2

; Function Attrs: nounwind
declare void @free(i8*) #2

; Function Attrs: nounwind uwtable
define void @quantum_exp_mod_n(i32 %N, i32 %x, i32 %width_input, i32 %width, %struct.quantum_reg_struct* %reg) #0 {
entry:
  %N.addr = alloca i32, align 4
  %x.addr = alloca i32, align 4
  %width_input.addr = alloca i32, align 4
  %width.addr = alloca i32, align 4
  %reg.addr = alloca %struct.quantum_reg_struct*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %f = alloca i32, align 4
  store i32 %N, i32* %N.addr, align 4
  store i32 %x, i32* %x.addr, align 4
  store i32 %width_input, i32* %width_input.addr, align 4
  store i32 %width, i32* %width.addr, align 4
  store %struct.quantum_reg_struct* %reg, %struct.quantum_reg_struct** %reg.addr, align 8
  %0 = load i32* %width.addr, align 4
  %mul = mul nsw i32 2, %0
  %add = add nsw i32 %mul, 2
  %1 = load %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_sigma_x(i32 %add, %struct.quantum_reg_struct* %1)
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc9, %entry
  %2 = load i32* %i, align 4
  %3 = load i32* %width_input.addr, align 4
  %cmp = icmp sle i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end11

for.body:                                         ; preds = %for.cond
  %4 = load i32* %x.addr, align 4
  %5 = load i32* %N.addr, align 4
  %rem = srem i32 %4, %5
  store i32 %rem, i32* %f, align 4
  store i32 1, i32* %j, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %6 = load i32* %j, align 4
  %7 = load i32* %i, align 4
  %cmp2 = icmp slt i32 %6, %7
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %8 = load i32* %f, align 4
  %9 = load i32* %f, align 4
  %mul4 = mul nsw i32 %9, %8
  store i32 %mul4, i32* %f, align 4
  %10 = load i32* %f, align 4
  %11 = load i32* %N.addr, align 4
  %rem5 = srem i32 %10, %11
  store i32 %rem5, i32* %f, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %12 = load i32* %j, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond1

for.end:                                          ; preds = %for.cond1
  %13 = load i32* %N.addr, align 4
  %14 = load i32* %f, align 4
  %15 = load i32* %width.addr, align 4
  %mul6 = mul nsw i32 3, %15
  %add7 = add nsw i32 %mul6, 1
  %16 = load i32* %i, align 4
  %add8 = add nsw i32 %add7, %16
  %17 = load i32* %width.addr, align 4
  %18 = load %struct.quantum_reg_struct** %reg.addr, align 8
  call void @mul_mod_n(i32 %13, i32 %14, i32 %add8, i32 %17, %struct.quantum_reg_struct* %18)
  br label %for.inc9

for.inc9:                                         ; preds = %for.end
  %19 = load i32* %i, align 4
  %inc10 = add nsw i32 %19, 1
  store i32 %inc10, i32* %i, align 4
  br label %for.cond

for.end11:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @quantum_cnot(i32 %control, i32 %target, %struct.quantum_reg_struct* %reg) #0 {
entry:
  %control.addr = alloca i32, align 4
  %target.addr = alloca i32, align 4
  %reg.addr = alloca %struct.quantum_reg_struct*, align 8
  %i = alloca i32, align 4
  %qec = alloca i32, align 4
  store i32 %control, i32* %control.addr, align 4
  store i32 %target, i32* %target.addr, align 4
  store %struct.quantum_reg_struct* %reg, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_qec_get_status(i32* %qec, i32* null)
  %0 = load i32* %qec, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i32* %control.addr, align 4
  %2 = load i32* %target.addr, align 4
  %3 = load %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_cnot_ft(i32 %1, i32 %2, %struct.quantum_reg_struct* %3)
  br label %if.end12

if.else:                                          ; preds = %entry
  %4 = load i32* %control.addr, align 4
  %5 = load i32* %target.addr, align 4
  %call = call i32 (i8, ...)* @quantum_objcode_put(i8 zeroext 1, i32 %4, i32 %5)
  %tobool1 = icmp ne i32 %call, 0
  br i1 %tobool1, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.else
  br label %if.end12

if.end:                                           ; preds = %if.else
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %6 = load i32* %i, align 4
  %7 = load %struct.quantum_reg_struct** %reg.addr, align 8
  %size = getelementptr inbounds %struct.quantum_reg_struct* %7, i32 0, i32 1
  %8 = load i32* %size, align 4
  %cmp = icmp slt i32 %6, %8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load i32* %i, align 4
  %idxprom = sext i32 %9 to i64
  %10 = load %struct.quantum_reg_struct** %reg.addr, align 8
  %node = getelementptr inbounds %struct.quantum_reg_struct* %10, i32 0, i32 3
  %11 = load %struct.quantum_reg_node_struct** %node, align 8
  %arrayidx = getelementptr inbounds %struct.quantum_reg_node_struct* %11, i64 %idxprom
  %state = getelementptr inbounds %struct.quantum_reg_node_struct* %arrayidx, i32 0, i32 1
  %12 = load i64* %state, align 8
  %13 = load i32* %control.addr, align 4
  %sh_prom = zext i32 %13 to i64
  %shl = shl i64 1, %sh_prom
  %and = and i64 %12, %shl
  %tobool3 = icmp ne i64 %and, 0
  br i1 %tobool3, label %if.then4, label %if.end11

if.then4:                                         ; preds = %for.body
  %14 = load i32* %target.addr, align 4
  %sh_prom5 = zext i32 %14 to i64
  %shl6 = shl i64 1, %sh_prom5
  %15 = load i32* %i, align 4
  %idxprom7 = sext i32 %15 to i64
  %16 = load %struct.quantum_reg_struct** %reg.addr, align 8
  %node8 = getelementptr inbounds %struct.quantum_reg_struct* %16, i32 0, i32 3
  %17 = load %struct.quantum_reg_node_struct** %node8, align 8
  %arrayidx9 = getelementptr inbounds %struct.quantum_reg_node_struct* %17, i64 %idxprom7
  %state10 = getelementptr inbounds %struct.quantum_reg_node_struct* %arrayidx9, i32 0, i32 1
  %18 = load i64* %state10, align 8
  %xor = xor i64 %18, %shl6
  store i64 %xor, i64* %state10, align 8
  br label %if.end11

if.end11:                                         ; preds = %if.then4, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end11
  %19 = load i32* %i, align 4
  %inc = add nsw i32 %19, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %20 = load %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_decohere(%struct.quantum_reg_struct* %20)
  br label %if.end12

if.end12:                                         ; preds = %for.end, %if.then2, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define void @quantum_toffoli(i32 %control1, i32 %control2, i32 %target, %struct.quantum_reg_struct* %reg) #0 {
entry:
  %control1.addr = alloca i32, align 4
  %control2.addr = alloca i32, align 4
  %target.addr = alloca i32, align 4
  %reg.addr = alloca %struct.quantum_reg_struct*, align 8
  %i = alloca i32, align 4
  %qec = alloca i32, align 4
  store i32 %control1, i32* %control1.addr, align 4
  store i32 %control2, i32* %control2.addr, align 4
  store i32 %target, i32* %target.addr, align 4
  store %struct.quantum_reg_struct* %reg, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_qec_get_status(i32* %qec, i32* null)
  %0 = load i32* %qec, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i32* %control1.addr, align 4
  %2 = load i32* %control2.addr, align 4
  %3 = load i32* %target.addr, align 4
  %4 = load %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_toffoli_ft(i32 %1, i32 %2, i32 %3, %struct.quantum_reg_struct* %4)
  br label %if.end22

if.else:                                          ; preds = %entry
  %5 = load i32* %control1.addr, align 4
  %6 = load i32* %control2.addr, align 4
  %7 = load i32* %target.addr, align 4
  %call = call i32 (i8, ...)* @quantum_objcode_put(i8 zeroext 2, i32 %5, i32 %6, i32 %7)
  %tobool1 = icmp ne i32 %call, 0
  br i1 %tobool1, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.else
  br label %if.end22

if.end:                                           ; preds = %if.else
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %8 = load i32* %i, align 4
  %9 = load %struct.quantum_reg_struct** %reg.addr, align 8
  %size = getelementptr inbounds %struct.quantum_reg_struct* %9, i32 0, i32 1
  %10 = load i32* %size, align 4
  %cmp = icmp slt i32 %8, %10
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load i32* %i, align 4
  %idxprom = sext i32 %11 to i64
  %12 = load %struct.quantum_reg_struct** %reg.addr, align 8
  %node = getelementptr inbounds %struct.quantum_reg_struct* %12, i32 0, i32 3
  %13 = load %struct.quantum_reg_node_struct** %node, align 8
  %arrayidx = getelementptr inbounds %struct.quantum_reg_node_struct* %13, i64 %idxprom
  %state = getelementptr inbounds %struct.quantum_reg_node_struct* %arrayidx, i32 0, i32 1
  %14 = load i64* %state, align 8
  %15 = load i32* %control1.addr, align 4
  %sh_prom = zext i32 %15 to i64
  %shl = shl i64 1, %sh_prom
  %and = and i64 %14, %shl
  %tobool3 = icmp ne i64 %and, 0
  br i1 %tobool3, label %if.then4, label %if.end21

if.then4:                                         ; preds = %for.body
  %16 = load i32* %i, align 4
  %idxprom5 = sext i32 %16 to i64
  %17 = load %struct.quantum_reg_struct** %reg.addr, align 8
  %node6 = getelementptr inbounds %struct.quantum_reg_struct* %17, i32 0, i32 3
  %18 = load %struct.quantum_reg_node_struct** %node6, align 8
  %arrayidx7 = getelementptr inbounds %struct.quantum_reg_node_struct* %18, i64 %idxprom5
  %state8 = getelementptr inbounds %struct.quantum_reg_node_struct* %arrayidx7, i32 0, i32 1
  %19 = load i64* %state8, align 8
  %20 = load i32* %control2.addr, align 4
  %sh_prom9 = zext i32 %20 to i64
  %shl10 = shl i64 1, %sh_prom9
  %and11 = and i64 %19, %shl10
  %tobool12 = icmp ne i64 %and11, 0
  br i1 %tobool12, label %if.then13, label %if.end20

if.then13:                                        ; preds = %if.then4
  %21 = load i32* %target.addr, align 4
  %sh_prom14 = zext i32 %21 to i64
  %shl15 = shl i64 1, %sh_prom14
  %22 = load i32* %i, align 4
  %idxprom16 = sext i32 %22 to i64
  %23 = load %struct.quantum_reg_struct** %reg.addr, align 8
  %node17 = getelementptr inbounds %struct.quantum_reg_struct* %23, i32 0, i32 3
  %24 = load %struct.quantum_reg_node_struct** %node17, align 8
  %arrayidx18 = getelementptr inbounds %struct.quantum_reg_node_struct* %24, i64 %idxprom16
  %state19 = getelementptr inbounds %struct.quantum_reg_node_struct* %arrayidx18, i32 0, i32 1
  %25 = load i64* %state19, align 8
  %xor = xor i64 %25, %shl15
  store i64 %xor, i64* %state19, align 8
  br label %if.end20

if.end20:                                         ; preds = %if.then13, %if.then4
  br label %if.end21

if.end21:                                         ; preds = %if.end20, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end21
  %26 = load i32* %i, align 4
  %inc = add nsw i32 %26, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %27 = load %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_decohere(%struct.quantum_reg_struct* %27)
  br label %if.end22

if.end22:                                         ; preds = %for.end, %if.then2, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define void @quantum_unbounded_toffoli(i32 %controlling, %struct.quantum_reg_struct* %reg, ...) #0 {
entry:
  %controlling.addr = alloca i32, align 4
  %reg.addr = alloca %struct.quantum_reg_struct*, align 8
  %bits = alloca [1 x %struct.__va_list_tag], align 16
  %target = alloca i32, align 4
  %controls = alloca i32*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 %controlling, i32* %controlling.addr, align 4
  store %struct.quantum_reg_struct* %reg, %struct.quantum_reg_struct** %reg.addr, align 8
  %0 = load i32* %controlling.addr, align 4
  %conv = sext i32 %0 to i64
  %mul = mul i64 %conv, 4
  %call = call noalias i8* @malloc(i64 %mul) #6
  %1 = bitcast i8* %call to i32*
  store i32* %1, i32** %controls, align 8
  %2 = load i32** %controls, align 8
  %tobool = icmp ne i32* %2, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %3 = load i32* %controlling.addr, align 4
  %call1 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([40 x i8]* @.str1, i32 0, i32 0), i32 %3)
  call void @exit(i32 1) #9
  unreachable

if.end:                                           ; preds = %entry
  %4 = load i32* %controlling.addr, align 4
  %conv2 = sext i32 %4 to i64
  %mul3 = mul i64 %conv2, 4
  %call4 = call i64 @quantum_memman(i64 %mul3)
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag]* %bits, i32 0, i32 0
  %arraydecay5 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay5)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %5 = load i32* %i, align 4
  %6 = load i32* %controlling.addr, align 4
  %cmp = icmp slt i32 %5, %6
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arraydecay7 = getelementptr inbounds [1 x %struct.__va_list_tag]* %bits, i32 0, i32 0
  %gp_offset_p = getelementptr inbounds %struct.__va_list_tag* %arraydecay7, i32 0, i32 0
  %gp_offset = load i32* %gp_offset_p
  %fits_in_gp = icmp ule i32 %gp_offset, 40
  br i1 %fits_in_gp, label %vaarg.in_reg, label %vaarg.in_mem

vaarg.in_reg:                                     ; preds = %for.body
  %7 = getelementptr inbounds %struct.__va_list_tag* %arraydecay7, i32 0, i32 3
  %reg_save_area = load i8** %7
  %8 = getelementptr i8* %reg_save_area, i32 %gp_offset
  %9 = bitcast i8* %8 to i32*
  %10 = add i32 %gp_offset, 8
  store i32 %10, i32* %gp_offset_p
  br label %vaarg.end

vaarg.in_mem:                                     ; preds = %for.body
  %overflow_arg_area_p = getelementptr inbounds %struct.__va_list_tag* %arraydecay7, i32 0, i32 2
  %overflow_arg_area = load i8** %overflow_arg_area_p
  %11 = bitcast i8* %overflow_arg_area to i32*
  %overflow_arg_area.next = getelementptr i8* %overflow_arg_area, i32 8
  store i8* %overflow_arg_area.next, i8** %overflow_arg_area_p
  br label %vaarg.end

vaarg.end:                                        ; preds = %vaarg.in_mem, %vaarg.in_reg
  %vaarg.addr = phi i32* [ %9, %vaarg.in_reg ], [ %11, %vaarg.in_mem ]
  %12 = load i32* %vaarg.addr
  %13 = load i32* %i, align 4
  %idxprom = sext i32 %13 to i64
  %14 = load i32** %controls, align 8
  %arrayidx = getelementptr inbounds i32* %14, i64 %idxprom
  store i32 %12, i32* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %vaarg.end
  %15 = load i32* %i, align 4
  %inc = add nsw i32 %15, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %arraydecay8 = getelementptr inbounds [1 x %struct.__va_list_tag]* %bits, i32 0, i32 0
  %gp_offset_p9 = getelementptr inbounds %struct.__va_list_tag* %arraydecay8, i32 0, i32 0
  %gp_offset10 = load i32* %gp_offset_p9
  %fits_in_gp11 = icmp ule i32 %gp_offset10, 40
  br i1 %fits_in_gp11, label %vaarg.in_reg12, label %vaarg.in_mem14

vaarg.in_reg12:                                   ; preds = %for.end
  %16 = getelementptr inbounds %struct.__va_list_tag* %arraydecay8, i32 0, i32 3
  %reg_save_area13 = load i8** %16
  %17 = getelementptr i8* %reg_save_area13, i32 %gp_offset10
  %18 = bitcast i8* %17 to i32*
  %19 = add i32 %gp_offset10, 8
  store i32 %19, i32* %gp_offset_p9
  br label %vaarg.end18

vaarg.in_mem14:                                   ; preds = %for.end
  %overflow_arg_area_p15 = getelementptr inbounds %struct.__va_list_tag* %arraydecay8, i32 0, i32 2
  %overflow_arg_area16 = load i8** %overflow_arg_area_p15
  %20 = bitcast i8* %overflow_arg_area16 to i32*
  %overflow_arg_area.next17 = getelementptr i8* %overflow_arg_area16, i32 8
  store i8* %overflow_arg_area.next17, i8** %overflow_arg_area_p15
  br label %vaarg.end18

vaarg.end18:                                      ; preds = %vaarg.in_mem14, %vaarg.in_reg12
  %vaarg.addr19 = phi i32* [ %18, %vaarg.in_reg12 ], [ %20, %vaarg.in_mem14 ]
  %21 = load i32* %vaarg.addr19
  store i32 %21, i32* %target, align 4
  %arraydecay20 = getelementptr inbounds [1 x %struct.__va_list_tag]* %bits, i32 0, i32 0
  %arraydecay2021 = bitcast %struct.__va_list_tag* %arraydecay20 to i8*
  call void @llvm.va_end(i8* %arraydecay2021)
  store i32 0, i32* %i, align 4
  br label %for.cond22

for.cond22:                                       ; preds = %for.inc48, %vaarg.end18
  %22 = load i32* %i, align 4
  %23 = load %struct.quantum_reg_struct** %reg.addr, align 8
  %size = getelementptr inbounds %struct.quantum_reg_struct* %23, i32 0, i32 1
  %24 = load i32* %size, align 4
  %cmp23 = icmp slt i32 %22, %24
  br i1 %cmp23, label %for.body25, label %for.end50

for.body25:                                       ; preds = %for.cond22
  store i32 0, i32* %j, align 4
  br label %for.cond26

for.cond26:                                       ; preds = %for.inc35, %for.body25
  %25 = load i32* %j, align 4
  %26 = load i32* %controlling.addr, align 4
  %cmp27 = icmp slt i32 %25, %26
  br i1 %cmp27, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond26
  %27 = load i32* %i, align 4
  %idxprom29 = sext i32 %27 to i64
  %28 = load %struct.quantum_reg_struct** %reg.addr, align 8
  %node = getelementptr inbounds %struct.quantum_reg_struct* %28, i32 0, i32 3
  %29 = load %struct.quantum_reg_node_struct** %node, align 8
  %arrayidx30 = getelementptr inbounds %struct.quantum_reg_node_struct* %29, i64 %idxprom29
  %state = getelementptr inbounds %struct.quantum_reg_node_struct* %arrayidx30, i32 0, i32 1
  %30 = load i64* %state, align 8
  %31 = load i32* %j, align 4
  %idxprom31 = sext i32 %31 to i64
  %32 = load i32** %controls, align 8
  %arrayidx32 = getelementptr inbounds i32* %32, i64 %idxprom31
  %33 = load i32* %arrayidx32, align 4
  %sh_prom = zext i32 %33 to i64
  %shl = shl i64 1, %sh_prom
  %and = and i64 %30, %shl
  %tobool33 = icmp ne i64 %and, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond26
  %34 = phi i1 [ false, %for.cond26 ], [ %tobool33, %land.rhs ]
  br i1 %34, label %for.body34, label %for.end37

for.body34:                                       ; preds = %land.end
  br label %for.inc35

for.inc35:                                        ; preds = %for.body34
  %35 = load i32* %j, align 4
  %inc36 = add nsw i32 %35, 1
  store i32 %inc36, i32* %j, align 4
  br label %for.cond26

for.end37:                                        ; preds = %land.end
  %36 = load i32* %j, align 4
  %37 = load i32* %controlling.addr, align 4
  %cmp38 = icmp eq i32 %36, %37
  br i1 %cmp38, label %if.then40, label %if.end47

if.then40:                                        ; preds = %for.end37
  %38 = load i32* %target, align 4
  %sh_prom41 = zext i32 %38 to i64
  %shl42 = shl i64 1, %sh_prom41
  %39 = load i32* %i, align 4
  %idxprom43 = sext i32 %39 to i64
  %40 = load %struct.quantum_reg_struct** %reg.addr, align 8
  %node44 = getelementptr inbounds %struct.quantum_reg_struct* %40, i32 0, i32 3
  %41 = load %struct.quantum_reg_node_struct** %node44, align 8
  %arrayidx45 = getelementptr inbounds %struct.quantum_reg_node_struct* %41, i64 %idxprom43
  %state46 = getelementptr inbounds %struct.quantum_reg_node_struct* %arrayidx45, i32 0, i32 1
  %42 = load i64* %state46, align 8
  %xor = xor i64 %42, %shl42
  store i64 %xor, i64* %state46, align 8
  br label %if.end47

if.end47:                                         ; preds = %if.then40, %for.end37
  br label %for.inc48

for.inc48:                                        ; preds = %if.end47
  %43 = load i32* %i, align 4
  %inc49 = add nsw i32 %43, 1
  store i32 %inc49, i32* %i, align 4
  br label %for.cond22

for.end50:                                        ; preds = %for.cond22
  %44 = load i32** %controls, align 8
  %45 = bitcast i32* %44 to i8*
  call void @free(i8* %45) #6
  %46 = load i32* %controlling.addr, align 4
  %sub = sub nsw i32 0, %46
  %conv51 = sext i32 %sub to i64
  %mul52 = mul i64 %conv51, 4
  %call53 = call i64 @quantum_memman(i64 %mul52)
  %47 = load %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_decohere(%struct.quantum_reg_struct* %47)
  ret void
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #2

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #6

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #6

; Function Attrs: nounwind uwtable
define void @quantum_sigma_x(i32 %target, %struct.quantum_reg_struct* %reg) #0 {
entry:
  %target.addr = alloca i32, align 4
  %reg.addr = alloca %struct.quantum_reg_struct*, align 8
  %i = alloca i32, align 4
  %qec = alloca i32, align 4
  store i32 %target, i32* %target.addr, align 4
  store %struct.quantum_reg_struct* %reg, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_qec_get_status(i32* %qec, i32* null)
  %0 = load i32* %qec, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i32* %target.addr, align 4
  %2 = load %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_sigma_x_ft(i32 %1, %struct.quantum_reg_struct* %2)
  br label %if.end3

if.else:                                          ; preds = %entry
  %3 = load i32* %target.addr, align 4
  %call = call i32 (i8, ...)* @quantum_objcode_put(i8 zeroext 3, i32 %3)
  %tobool1 = icmp ne i32 %call, 0
  br i1 %tobool1, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.else
  br label %if.end3

if.end:                                           ; preds = %if.else
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %4 = load i32* %i, align 4
  %5 = load %struct.quantum_reg_struct** %reg.addr, align 8
  %size = getelementptr inbounds %struct.quantum_reg_struct* %5, i32 0, i32 1
  %6 = load i32* %size, align 4
  %cmp = icmp slt i32 %4, %6
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i32* %target.addr, align 4
  %sh_prom = zext i32 %7 to i64
  %shl = shl i64 1, %sh_prom
  %8 = load i32* %i, align 4
  %idxprom = sext i32 %8 to i64
  %9 = load %struct.quantum_reg_struct** %reg.addr, align 8
  %node = getelementptr inbounds %struct.quantum_reg_struct* %9, i32 0, i32 3
  %10 = load %struct.quantum_reg_node_struct** %node, align 8
  %arrayidx = getelementptr inbounds %struct.quantum_reg_node_struct* %10, i64 %idxprom
  %state = getelementptr inbounds %struct.quantum_reg_node_struct* %arrayidx, i32 0, i32 1
  %11 = load i64* %state, align 8
  %xor = xor i64 %11, %shl
  store i64 %xor, i64* %state, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %12 = load i32* %i, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %13 = load %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_decohere(%struct.quantum_reg_struct* %13)
  br label %if.end3

if.end3:                                          ; preds = %for.end, %if.then2, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define void @quantum_sigma_y(i32 %target, %struct.quantum_reg_struct* %reg) #0 {
entry:
  %target.addr = alloca i32, align 4
  %reg.addr = alloca %struct.quantum_reg_struct*, align 8
  %i = alloca i32, align 4
  store i32 %target, i32* %target.addr, align 4
  store %struct.quantum_reg_struct* %reg, %struct.quantum_reg_struct** %reg.addr, align 8
  %0 = load i32* %target.addr, align 4
  %call = call i32 (i8, ...)* @quantum_objcode_put(i8 zeroext 4, i32 %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %1 = load i32* %i, align 4
  %2 = load %struct.quantum_reg_struct** %reg.addr, align 8
  %size = getelementptr inbounds %struct.quantum_reg_struct* %2, i32 0, i32 1
  %3 = load i32* %size, align 4
  %cmp = icmp slt i32 %1, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32* %target.addr, align 4
  %sh_prom = zext i32 %4 to i64
  %shl = shl i64 1, %sh_prom
  %5 = load i32* %i, align 4
  %idxprom = sext i32 %5 to i64
  %6 = load %struct.quantum_reg_struct** %reg.addr, align 8
  %node = getelementptr inbounds %struct.quantum_reg_struct* %6, i32 0, i32 3
  %7 = load %struct.quantum_reg_node_struct** %node, align 8
  %arrayidx = getelementptr inbounds %struct.quantum_reg_node_struct* %7, i64 %idxprom
  %state = getelementptr inbounds %struct.quantum_reg_node_struct* %arrayidx, i32 0, i32 1
  %8 = load i64* %state, align 8
  %xor = xor i64 %8, %shl
  store i64 %xor, i64* %state, align 8
  %9 = load i32* %i, align 4
  %idxprom1 = sext i32 %9 to i64
  %10 = load %struct.quantum_reg_struct** %reg.addr, align 8
  %node2 = getelementptr inbounds %struct.quantum_reg_struct* %10, i32 0, i32 3
  %11 = load %struct.quantum_reg_node_struct** %node2, align 8
  %arrayidx3 = getelementptr inbounds %struct.quantum_reg_node_struct* %11, i64 %idxprom1
  %state4 = getelementptr inbounds %struct.quantum_reg_node_struct* %arrayidx3, i32 0, i32 1
  %12 = load i64* %state4, align 8
  %13 = load i32* %target.addr, align 4
  %sh_prom5 = zext i32 %13 to i64
  %shl6 = shl i64 1, %sh_prom5
  %and = and i64 %12, %shl6
  %tobool7 = icmp ne i64 %and, 0
  br i1 %tobool7, label %if.then8, label %if.else

if.then8:                                         ; preds = %for.body
  %14 = load i32* %i, align 4
  %idxprom9 = sext i32 %14 to i64
  %15 = load %struct.quantum_reg_struct** %reg.addr, align 8
  %node10 = getelementptr inbounds %struct.quantum_reg_struct* %15, i32 0, i32 3
  %16 = load %struct.quantum_reg_node_struct** %node10, align 8
  %arrayidx11 = getelementptr inbounds %struct.quantum_reg_node_struct* %16, i64 %idxprom9
  %amplitude = getelementptr inbounds %struct.quantum_reg_node_struct* %arrayidx11, i32 0, i32 0
  %amplitude.realp = getelementptr inbounds { float, float }* %amplitude, i32 0, i32 0
  %amplitude.real = load float* %amplitude.realp, align 4
  %amplitude.imagp = getelementptr inbounds { float, float }* %amplitude, i32 0, i32 1
  %amplitude.imag = load float* %amplitude.imagp, align 4
  %mul.rl = fmul float %amplitude.real, 0.000000e+00
  %mul.rr = fmul float %amplitude.imag, 1.000000e+00
  %mul.r = fsub float %mul.rl, %mul.rr
  %mul.il = fmul float %amplitude.imag, 0.000000e+00
  %mul.ir = fmul float %amplitude.real, 1.000000e+00
  %mul.i = fadd float %mul.il, %mul.ir
  %real = getelementptr inbounds { float, float }* %amplitude, i32 0, i32 0
  %imag = getelementptr inbounds { float, float }* %amplitude, i32 0, i32 1
  store float %mul.r, float* %real, align 4
  store float %mul.i, float* %imag, align 4
  br label %if.end24

if.else:                                          ; preds = %for.body
  %17 = load i32* %i, align 4
  %idxprom12 = sext i32 %17 to i64
  %18 = load %struct.quantum_reg_struct** %reg.addr, align 8
  %node13 = getelementptr inbounds %struct.quantum_reg_struct* %18, i32 0, i32 3
  %19 = load %struct.quantum_reg_node_struct** %node13, align 8
  %arrayidx14 = getelementptr inbounds %struct.quantum_reg_node_struct* %19, i64 %idxprom12
  %amplitude15 = getelementptr inbounds %struct.quantum_reg_node_struct* %arrayidx14, i32 0, i32 0
  %amplitude15.realp = getelementptr inbounds { float, float }* %amplitude15, i32 0, i32 0
  %amplitude15.real = load float* %amplitude15.realp, align 4
  %amplitude15.imagp = getelementptr inbounds { float, float }* %amplitude15, i32 0, i32 1
  %amplitude15.imag = load float* %amplitude15.imagp, align 4
  %mul.rl16 = fmul float %amplitude15.real, -0.000000e+00
  %mul.rr17 = fmul float %amplitude15.imag, -1.000000e+00
  %mul.r18 = fsub float %mul.rl16, %mul.rr17
  %mul.il19 = fmul float %amplitude15.imag, -0.000000e+00
  %mul.ir20 = fmul float %amplitude15.real, -1.000000e+00
  %mul.i21 = fadd float %mul.il19, %mul.ir20
  %real22 = getelementptr inbounds { float, float }* %amplitude15, i32 0, i32 0
  %imag23 = getelementptr inbounds { float, float }* %amplitude15, i32 0, i32 1
  store float %mul.r18, float* %real22, align 4
  store float %mul.i21, float* %imag23, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.else, %if.then8
  br label %for.inc

for.inc:                                          ; preds = %if.end24
  %20 = load i32* %i, align 4
  %inc = add nsw i32 %20, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %21 = load %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_decohere(%struct.quantum_reg_struct* %21)
  br label %return

return:                                           ; preds = %for.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define void @quantum_sigma_z(i32 %target, %struct.quantum_reg_struct* %reg) #0 {
entry:
  %target.addr = alloca i32, align 4
  %reg.addr = alloca %struct.quantum_reg_struct*, align 8
  %i = alloca i32, align 4
  store i32 %target, i32* %target.addr, align 4
  store %struct.quantum_reg_struct* %reg, %struct.quantum_reg_struct** %reg.addr, align 8
  %0 = load i32* %target.addr, align 4
  %call = call i32 (i8, ...)* @quantum_objcode_put(i8 zeroext 5, i32 %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %1 = load i32* %i, align 4
  %2 = load %struct.quantum_reg_struct** %reg.addr, align 8
  %size = getelementptr inbounds %struct.quantum_reg_struct* %2, i32 0, i32 1
  %3 = load i32* %size, align 4
  %cmp = icmp slt i32 %1, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32* %i, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load %struct.quantum_reg_struct** %reg.addr, align 8
  %node = getelementptr inbounds %struct.quantum_reg_struct* %5, i32 0, i32 3
  %6 = load %struct.quantum_reg_node_struct** %node, align 8
  %arrayidx = getelementptr inbounds %struct.quantum_reg_node_struct* %6, i64 %idxprom
  %state = getelementptr inbounds %struct.quantum_reg_node_struct* %arrayidx, i32 0, i32 1
  %7 = load i64* %state, align 8
  %8 = load i32* %target.addr, align 4
  %sh_prom = zext i32 %8 to i64
  %shl = shl i64 1, %sh_prom
  %and = and i64 %7, %shl
  %tobool1 = icmp ne i64 %and, 0
  br i1 %tobool1, label %if.then2, label %if.end6

if.then2:                                         ; preds = %for.body
  %9 = load i32* %i, align 4
  %idxprom3 = sext i32 %9 to i64
  %10 = load %struct.quantum_reg_struct** %reg.addr, align 8
  %node4 = getelementptr inbounds %struct.quantum_reg_struct* %10, i32 0, i32 3
  %11 = load %struct.quantum_reg_node_struct** %node4, align 8
  %arrayidx5 = getelementptr inbounds %struct.quantum_reg_node_struct* %11, i64 %idxprom3
  %amplitude = getelementptr inbounds %struct.quantum_reg_node_struct* %arrayidx5, i32 0, i32 0
  %amplitude.realp = getelementptr inbounds { float, float }* %amplitude, i32 0, i32 0
  %amplitude.real = load float* %amplitude.realp, align 4
  %amplitude.imagp = getelementptr inbounds { float, float }* %amplitude, i32 0, i32 1
  %amplitude.imag = load float* %amplitude.imagp, align 4
  %mul.rl = fmul float %amplitude.real, -1.000000e+00
  %mul.rr = fmul float %amplitude.imag, 0.000000e+00
  %mul.r = fsub float %mul.rl, %mul.rr
  %mul.il = fmul float %amplitude.imag, -1.000000e+00
  %mul.ir = fmul float %amplitude.real, 0.000000e+00
  %mul.i = fadd float %mul.il, %mul.ir
  %real = getelementptr inbounds { float, float }* %amplitude, i32 0, i32 0
  %imag = getelementptr inbounds { float, float }* %amplitude, i32 0, i32 1
  store float %mul.r, float* %real, align 4
  store float %mul.i, float* %imag, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.then2, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end6
  %12 = load i32* %i, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %13 = load %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_decohere(%struct.quantum_reg_struct* %13)
  br label %return

return:                                           ; preds = %for.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define void @quantum_swaptheleads(i32 %width, %struct.quantum_reg_struct* %reg) #0 {
entry:
  %width.addr = alloca i32, align 4
  %reg.addr = alloca %struct.quantum_reg_struct*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %pat1 = alloca i32, align 4
  %pat2 = alloca i32, align 4
  %qec = alloca i32, align 4
  %l = alloca i64, align 8
  store i32 %width, i32* %width.addr, align 4
  store %struct.quantum_reg_struct* %reg, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_qec_get_status(i32* %qec, i32* null)
  %0 = load i32* %qec, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %1 = load i32* %i, align 4
  %2 = load i32* %width.addr, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32* %i, align 4
  %4 = load i32* %width.addr, align 4
  %5 = load i32* %i, align 4
  %add = add nsw i32 %4, %5
  %6 = load %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_cnot(i32 %3, i32 %add, %struct.quantum_reg_struct* %6)
  %7 = load i32* %width.addr, align 4
  %8 = load i32* %i, align 4
  %add1 = add nsw i32 %7, %8
  %9 = load i32* %i, align 4
  %10 = load %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_cnot(i32 %add1, i32 %9, %struct.quantum_reg_struct* %10)
  %11 = load i32* %i, align 4
  %12 = load i32* %width.addr, align 4
  %13 = load i32* %i, align 4
  %add2 = add nsw i32 %12, %13
  %14 = load %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_cnot(i32 %11, i32 %add2, %struct.quantum_reg_struct* %14)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %15 = load i32* %i, align 4
  %inc = add nsw i32 %15, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end43

if.else:                                          ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc40, %if.else
  %16 = load i32* %i, align 4
  %17 = load %struct.quantum_reg_struct** %reg.addr, align 8
  %size = getelementptr inbounds %struct.quantum_reg_struct* %17, i32 0, i32 1
  %18 = load i32* %size, align 4
  %cmp4 = icmp slt i32 %16, %18
  br i1 %cmp4, label %for.body5, label %for.end42

for.body5:                                        ; preds = %for.cond3
  %19 = load i32* %width.addr, align 4
  %call = call i32 (i8, ...)* @quantum_objcode_put(i8 zeroext 14, i32 %19)
  %tobool6 = icmp ne i32 %call, 0
  br i1 %tobool6, label %if.then7, label %if.end

if.then7:                                         ; preds = %for.body5
  br label %if.end43

if.end:                                           ; preds = %for.body5
  %20 = load i32* %i, align 4
  %idxprom = sext i32 %20 to i64
  %21 = load %struct.quantum_reg_struct** %reg.addr, align 8
  %node = getelementptr inbounds %struct.quantum_reg_struct* %21, i32 0, i32 3
  %22 = load %struct.quantum_reg_node_struct** %node, align 8
  %arrayidx = getelementptr inbounds %struct.quantum_reg_node_struct* %22, i64 %idxprom
  %state = getelementptr inbounds %struct.quantum_reg_node_struct* %arrayidx, i32 0, i32 1
  %23 = load i64* %state, align 8
  %24 = load i32* %width.addr, align 4
  %sh_prom = zext i32 %24 to i64
  %shl = shl i64 1, %sh_prom
  %rem = urem i64 %23, %shl
  %conv = trunc i64 %rem to i32
  store i32 %conv, i32* %pat1, align 4
  store i32 0, i32* %pat2, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond8

for.cond8:                                        ; preds = %for.inc22, %if.end
  %25 = load i32* %j, align 4
  %26 = load i32* %width.addr, align 4
  %cmp9 = icmp slt i32 %25, %26
  br i1 %cmp9, label %for.body11, label %for.end24

for.body11:                                       ; preds = %for.cond8
  %27 = load i32* %i, align 4
  %idxprom12 = sext i32 %27 to i64
  %28 = load %struct.quantum_reg_struct** %reg.addr, align 8
  %node13 = getelementptr inbounds %struct.quantum_reg_struct* %28, i32 0, i32 3
  %29 = load %struct.quantum_reg_node_struct** %node13, align 8
  %arrayidx14 = getelementptr inbounds %struct.quantum_reg_node_struct* %29, i64 %idxprom12
  %state15 = getelementptr inbounds %struct.quantum_reg_node_struct* %arrayidx14, i32 0, i32 1
  %30 = load i64* %state15, align 8
  %31 = load i32* %width.addr, align 4
  %32 = load i32* %j, align 4
  %add16 = add nsw i32 %31, %32
  %sh_prom17 = zext i32 %add16 to i64
  %shl18 = shl i64 1, %sh_prom17
  %and = and i64 %30, %shl18
  %33 = load i32* %pat2, align 4
  %conv19 = sext i32 %33 to i64
  %add20 = add i64 %conv19, %and
  %conv21 = trunc i64 %add20 to i32
  store i32 %conv21, i32* %pat2, align 4
  br label %for.inc22

for.inc22:                                        ; preds = %for.body11
  %34 = load i32* %j, align 4
  %inc23 = add nsw i32 %34, 1
  store i32 %inc23, i32* %j, align 4
  br label %for.cond8

for.end24:                                        ; preds = %for.cond8
  %35 = load i32* %i, align 4
  %idxprom25 = sext i32 %35 to i64
  %36 = load %struct.quantum_reg_struct** %reg.addr, align 8
  %node26 = getelementptr inbounds %struct.quantum_reg_struct* %36, i32 0, i32 3
  %37 = load %struct.quantum_reg_node_struct** %node26, align 8
  %arrayidx27 = getelementptr inbounds %struct.quantum_reg_node_struct* %37, i64 %idxprom25
  %state28 = getelementptr inbounds %struct.quantum_reg_node_struct* %arrayidx27, i32 0, i32 1
  %38 = load i64* %state28, align 8
  %39 = load i32* %pat1, align 4
  %40 = load i32* %pat2, align 4
  %add29 = add nsw i32 %39, %40
  %conv30 = sext i32 %add29 to i64
  %sub = sub i64 %38, %conv30
  store i64 %sub, i64* %l, align 8
  %41 = load i32* %pat1, align 4
  %42 = load i32* %width.addr, align 4
  %shl31 = shl i32 %41, %42
  %conv32 = sext i32 %shl31 to i64
  %43 = load i64* %l, align 8
  %add33 = add i64 %43, %conv32
  store i64 %add33, i64* %l, align 8
  %44 = load i32* %pat2, align 4
  %45 = load i32* %width.addr, align 4
  %shr = ashr i32 %44, %45
  %conv34 = sext i32 %shr to i64
  %46 = load i64* %l, align 8
  %add35 = add i64 %46, %conv34
  store i64 %add35, i64* %l, align 8
  %47 = load i64* %l, align 8
  %48 = load i32* %i, align 4
  %idxprom36 = sext i32 %48 to i64
  %49 = load %struct.quantum_reg_struct** %reg.addr, align 8
  %node37 = getelementptr inbounds %struct.quantum_reg_struct* %49, i32 0, i32 3
  %50 = load %struct.quantum_reg_node_struct** %node37, align 8
  %arrayidx38 = getelementptr inbounds %struct.quantum_reg_node_struct* %50, i64 %idxprom36
  %state39 = getelementptr inbounds %struct.quantum_reg_node_struct* %arrayidx38, i32 0, i32 1
  store i64 %47, i64* %state39, align 8
  br label %for.inc40

for.inc40:                                        ; preds = %for.end24
  %51 = load i32* %i, align 4
  %inc41 = add nsw i32 %51, 1
  store i32 %inc41, i32* %i, align 4
  br label %for.cond3

for.end42:                                        ; preds = %for.cond3
  br label %if.end43

if.end43:                                         ; preds = %for.end42, %if.then7, %for.end
  ret void
}

; Function Attrs: nounwind uwtable
define void @quantum_swaptheleads_omuln_controlled(i32 %control, i32 %width, %struct.quantum_reg_struct* %reg) #0 {
entry:
  %control.addr = alloca i32, align 4
  %width.addr = alloca i32, align 4
  %reg.addr = alloca %struct.quantum_reg_struct*, align 8
  %i = alloca i32, align 4
  store i32 %control, i32* %control.addr, align 4
  store i32 %width, i32* %width.addr, align 4
  store %struct.quantum_reg_struct* %reg, %struct.quantum_reg_struct** %reg.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32* %i, align 4
  %1 = load i32* %width.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32* %control.addr, align 4
  %3 = load i32* %width.addr, align 4
  %4 = load i32* %i, align 4
  %add = add nsw i32 %3, %4
  %5 = load i32* %width.addr, align 4
  %mul = mul nsw i32 2, %5
  %6 = load i32* %i, align 4
  %add1 = add nsw i32 %mul, %6
  %add2 = add nsw i32 %add1, 2
  %7 = load %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_toffoli(i32 %2, i32 %add, i32 %add2, %struct.quantum_reg_struct* %7)
  %8 = load i32* %control.addr, align 4
  %9 = load i32* %width.addr, align 4
  %mul3 = mul nsw i32 2, %9
  %10 = load i32* %i, align 4
  %add4 = add nsw i32 %mul3, %10
  %add5 = add nsw i32 %add4, 2
  %11 = load i32* %width.addr, align 4
  %12 = load i32* %i, align 4
  %add6 = add nsw i32 %11, %12
  %13 = load %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_toffoli(i32 %8, i32 %add5, i32 %add6, %struct.quantum_reg_struct* %13)
  %14 = load i32* %control.addr, align 4
  %15 = load i32* %width.addr, align 4
  %16 = load i32* %i, align 4
  %add7 = add nsw i32 %15, %16
  %17 = load i32* %width.addr, align 4
  %mul8 = mul nsw i32 2, %17
  %18 = load i32* %i, align 4
  %add9 = add nsw i32 %mul8, %18
  %add10 = add nsw i32 %add9, 2
  %19 = load %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_toffoli(i32 %14, i32 %add7, i32 %add10, %struct.quantum_reg_struct* %19)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %20 = load i32* %i, align 4
  %inc = add nsw i32 %20, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @quantum_gate1(i32 %target, i64 %m.coerce0, { float, float }* %m.coerce1, %struct.quantum_reg_struct* %reg) #0 {
entry:
  %m = alloca %struct.quantum_matrix_struct, align 8
  %target.addr = alloca i32, align 4
  %reg.addr = alloca %struct.quantum_reg_struct*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %iset = alloca i32, align 4
  %addsize = alloca i32, align 4
  %decsize = alloca i32, align 4
  %t = alloca { float, float }, align 4
  %tnot = alloca { float, float }, align 4
  %limit = alloca float, align 4
  %done = alloca i8*, align 8
  %coerce = alloca { float, float }, align 4
  %coerce41 = alloca { float, float }, align 4
  %coerce291 = alloca { float, float }, align 4
  %coerce304 = alloca { float, float }, align 4
  %coerce393 = alloca { float, float }, align 4
  %0 = bitcast %struct.quantum_matrix_struct* %m to { i64, { float, float }* }*
  %1 = getelementptr { i64, { float, float }* }* %0, i32 0, i32 0
  store i64 %m.coerce0, i64* %1
  %2 = getelementptr { i64, { float, float }* }* %0, i32 0, i32 1
  store { float, float }* %m.coerce1, { float, float }** %2
  store i32 %target, i32* %target.addr, align 4
  store %struct.quantum_reg_struct* %reg, %struct.quantum_reg_struct** %reg.addr, align 8
  store i32 0, i32* %addsize, align 4
  store i32 0, i32* %decsize, align 4
  %real = getelementptr inbounds { float, float }* %tnot, i32 0, i32 0
  %imag = getelementptr inbounds { float, float }* %tnot, i32 0, i32 1
  store float 0.000000e+00, float* %real, align 4
  store float 0.000000e+00, float* %imag, align 4
  %cols = getelementptr inbounds %struct.quantum_matrix_struct* %m, i32 0, i32 1
  %3 = load i32* %cols, align 4
  %cmp = icmp ne i32 %3, 2
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %rows = getelementptr inbounds %struct.quantum_matrix_struct* %m, i32 0, i32 0
  %4 = load i32* %rows, align 4
  %cmp1 = icmp ne i32 %4, 2
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %call = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([29 x i8]* @.str12, i32 0, i32 0))
  call void @exit(i32 1) #9
  unreachable

if.end:                                           ; preds = %lor.lhs.false
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %5 = load i32* %i, align 4
  %6 = load %struct.quantum_reg_struct** %reg.addr, align 8
  %hashw = getelementptr inbounds %struct.quantum_reg_struct* %6, i32 0, i32 2
  %7 = load i32* %hashw, align 4
  %shl = shl i32 1, %7
  %cmp2 = icmp slt i32 %5, %shl
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load i32* %i, align 4
  %idxprom = sext i32 %8 to i64
  %9 = load %struct.quantum_reg_struct** %reg.addr, align 8
  %hash = getelementptr inbounds %struct.quantum_reg_struct* %9, i32 0, i32 4
  %10 = load i32** %hash, align 8
  %arrayidx = getelementptr inbounds i32* %10, i64 %idxprom
  store i32 0, i32* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %11 = load i32* %i, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc8, %for.end
  %12 = load i32* %i, align 4
  %13 = load %struct.quantum_reg_struct** %reg.addr, align 8
  %size = getelementptr inbounds %struct.quantum_reg_struct* %13, i32 0, i32 1
  %14 = load i32* %size, align 4
  %cmp4 = icmp slt i32 %12, %14
  br i1 %cmp4, label %for.body5, label %for.end10

for.body5:                                        ; preds = %for.cond3
  %15 = load i32* %i, align 4
  %idxprom6 = sext i32 %15 to i64
  %16 = load %struct.quantum_reg_struct** %reg.addr, align 8
  %node = getelementptr inbounds %struct.quantum_reg_struct* %16, i32 0, i32 3
  %17 = load %struct.quantum_reg_node_struct** %node, align 8
  %arrayidx7 = getelementptr inbounds %struct.quantum_reg_node_struct* %17, i64 %idxprom6
  %state = getelementptr inbounds %struct.quantum_reg_node_struct* %arrayidx7, i32 0, i32 1
  %18 = load i64* %state, align 8
  %19 = load i32* %i, align 4
  %20 = load %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_add_hash(i64 %18, i32 %19, %struct.quantum_reg_struct* %20)
  br label %for.inc8

for.inc8:                                         ; preds = %for.body5
  %21 = load i32* %i, align 4
  %inc9 = add nsw i32 %21, 1
  store i32 %inc9, i32* %i, align 4
  br label %for.cond3

for.end10:                                        ; preds = %for.cond3
  store i32 0, i32* %i, align 4
  br label %for.cond11

for.cond11:                                       ; preds = %for.inc61, %for.end10
  %22 = load i32* %i, align 4
  %23 = load %struct.quantum_reg_struct** %reg.addr, align 8
  %size12 = getelementptr inbounds %struct.quantum_reg_struct* %23, i32 0, i32 1
  %24 = load i32* %size12, align 4
  %cmp13 = icmp slt i32 %22, %24
  br i1 %cmp13, label %for.body14, label %for.end63

for.body14:                                       ; preds = %for.cond11
  %25 = load i32* %i, align 4
  %idxprom15 = sext i32 %25 to i64
  %26 = load %struct.quantum_reg_struct** %reg.addr, align 8
  %node16 = getelementptr inbounds %struct.quantum_reg_struct* %26, i32 0, i32 3
  %27 = load %struct.quantum_reg_node_struct** %node16, align 8
  %arrayidx17 = getelementptr inbounds %struct.quantum_reg_node_struct* %27, i64 %idxprom15
  %state18 = getelementptr inbounds %struct.quantum_reg_node_struct* %arrayidx17, i32 0, i32 1
  %28 = load i64* %state18, align 8
  %29 = load i32* %target.addr, align 4
  %sh_prom = zext i32 %29 to i64
  %shl19 = shl i64 1, %sh_prom
  %xor = xor i64 %28, %shl19
  %30 = load %struct.quantum_reg_struct** %reg.addr, align 8
  %call20 = call i32 @quantum_get_state(i64 %xor, %struct.quantum_reg_struct* byval align 8 %30)
  store i32 %call20, i32* %j, align 4
  %31 = load i32* %j, align 4
  %cmp21 = icmp eq i32 %31, -1
  br i1 %cmp21, label %if.then22, label %if.end60

if.then22:                                        ; preds = %for.body14
  %t23 = getelementptr inbounds %struct.quantum_matrix_struct* %m, i32 0, i32 2
  %32 = load { float, float }** %t23, align 8
  %arrayidx24 = getelementptr inbounds { float, float }* %32, i64 1
  %arrayidx24.realp = getelementptr inbounds { float, float }* %arrayidx24, i32 0, i32 0
  %arrayidx24.real = load float* %arrayidx24.realp, align 4
  %arrayidx24.imagp = getelementptr inbounds { float, float }* %arrayidx24, i32 0, i32 1
  %arrayidx24.imag = load float* %arrayidx24.imagp, align 4
  %real25 = getelementptr inbounds { float, float }* %coerce, i32 0, i32 0
  %imag26 = getelementptr inbounds { float, float }* %coerce, i32 0, i32 1
  store float %arrayidx24.real, float* %real25, align 4
  store float %arrayidx24.imag, float* %imag26, align 4
  %33 = bitcast { float, float }* %coerce to <2 x float>*
  %34 = load <2 x float>* %33, align 1
  %call27 = call float @quantum_prob_inline7(<2 x float> %34)
  %conv = fpext float %call27 to double
  %cmp28 = fcmp ogt double %conv, 1.000000e-09
  br i1 %cmp28, label %land.lhs.true, label %if.end38

land.lhs.true:                                    ; preds = %if.then22
  %35 = load i32* %i, align 4
  %idxprom30 = sext i32 %35 to i64
  %36 = load %struct.quantum_reg_struct** %reg.addr, align 8
  %node31 = getelementptr inbounds %struct.quantum_reg_struct* %36, i32 0, i32 3
  %37 = load %struct.quantum_reg_node_struct** %node31, align 8
  %arrayidx32 = getelementptr inbounds %struct.quantum_reg_node_struct* %37, i64 %idxprom30
  %state33 = getelementptr inbounds %struct.quantum_reg_node_struct* %arrayidx32, i32 0, i32 1
  %38 = load i64* %state33, align 8
  %39 = load i32* %target.addr, align 4
  %sh_prom34 = zext i32 %39 to i64
  %shl35 = shl i64 1, %sh_prom34
  %and = and i64 %38, %shl35
  %tobool = icmp ne i64 %and, 0
  br i1 %tobool, label %if.then36, label %if.end38

if.then36:                                        ; preds = %land.lhs.true
  %40 = load i32* %addsize, align 4
  %inc37 = add nsw i32 %40, 1
  store i32 %inc37, i32* %addsize, align 4
  br label %if.end38

if.end38:                                         ; preds = %if.then36, %land.lhs.true, %if.then22
  %t39 = getelementptr inbounds %struct.quantum_matrix_struct* %m, i32 0, i32 2
  %41 = load { float, float }** %t39, align 8
  %arrayidx40 = getelementptr inbounds { float, float }* %41, i64 2
  %arrayidx40.realp = getelementptr inbounds { float, float }* %arrayidx40, i32 0, i32 0
  %arrayidx40.real = load float* %arrayidx40.realp, align 4
  %arrayidx40.imagp = getelementptr inbounds { float, float }* %arrayidx40, i32 0, i32 1
  %arrayidx40.imag = load float* %arrayidx40.imagp, align 4
  %real42 = getelementptr inbounds { float, float }* %coerce41, i32 0, i32 0
  %imag43 = getelementptr inbounds { float, float }* %coerce41, i32 0, i32 1
  store float %arrayidx40.real, float* %real42, align 4
  store float %arrayidx40.imag, float* %imag43, align 4
  %42 = bitcast { float, float }* %coerce41 to <2 x float>*
  %43 = load <2 x float>* %42, align 1
  %call44 = call float @quantum_prob_inline7(<2 x float> %43)
  %conv45 = fpext float %call44 to double
  %cmp46 = fcmp ogt double %conv45, 1.000000e-09
  br i1 %cmp46, label %land.lhs.true48, label %if.end59

land.lhs.true48:                                  ; preds = %if.end38
  %44 = load i32* %i, align 4
  %idxprom49 = sext i32 %44 to i64
  %45 = load %struct.quantum_reg_struct** %reg.addr, align 8
  %node50 = getelementptr inbounds %struct.quantum_reg_struct* %45, i32 0, i32 3
  %46 = load %struct.quantum_reg_node_struct** %node50, align 8
  %arrayidx51 = getelementptr inbounds %struct.quantum_reg_node_struct* %46, i64 %idxprom49
  %state52 = getelementptr inbounds %struct.quantum_reg_node_struct* %arrayidx51, i32 0, i32 1
  %47 = load i64* %state52, align 8
  %48 = load i32* %target.addr, align 4
  %sh_prom53 = zext i32 %48 to i64
  %shl54 = shl i64 1, %sh_prom53
  %and55 = and i64 %47, %shl54
  %tobool56 = icmp ne i64 %and55, 0
  br i1 %tobool56, label %if.end59, label %if.then57

if.then57:                                        ; preds = %land.lhs.true48
  %49 = load i32* %addsize, align 4
  %inc58 = add nsw i32 %49, 1
  store i32 %inc58, i32* %addsize, align 4
  br label %if.end59

if.end59:                                         ; preds = %if.then57, %land.lhs.true48, %if.end38
  br label %if.end60

if.end60:                                         ; preds = %if.end59, %for.body14
  br label %for.inc61

for.inc61:                                        ; preds = %if.end60
  %50 = load i32* %i, align 4
  %inc62 = add nsw i32 %50, 1
  store i32 %inc62, i32* %i, align 4
  br label %for.cond11

for.end63:                                        ; preds = %for.cond11
  %51 = load %struct.quantum_reg_struct** %reg.addr, align 8
  %node64 = getelementptr inbounds %struct.quantum_reg_struct* %51, i32 0, i32 3
  %52 = load %struct.quantum_reg_node_struct** %node64, align 8
  %53 = bitcast %struct.quantum_reg_node_struct* %52 to i8*
  %54 = load %struct.quantum_reg_struct** %reg.addr, align 8
  %size65 = getelementptr inbounds %struct.quantum_reg_struct* %54, i32 0, i32 1
  %55 = load i32* %size65, align 4
  %56 = load i32* %addsize, align 4
  %add = add nsw i32 %55, %56
  %conv66 = sext i32 %add to i64
  %mul = mul i64 %conv66, 16
  %call67 = call i8* @realloc(i8* %53, i64 %mul) #6
  %57 = bitcast i8* %call67 to %struct.quantum_reg_node_struct*
  %58 = load %struct.quantum_reg_struct** %reg.addr, align 8
  %node68 = getelementptr inbounds %struct.quantum_reg_struct* %58, i32 0, i32 3
  store %struct.quantum_reg_node_struct* %57, %struct.quantum_reg_node_struct** %node68, align 8
  %59 = load %struct.quantum_reg_struct** %reg.addr, align 8
  %node69 = getelementptr inbounds %struct.quantum_reg_struct* %59, i32 0, i32 3
  %60 = load %struct.quantum_reg_node_struct** %node69, align 8
  %tobool70 = icmp ne %struct.quantum_reg_node_struct* %60, null
  br i1 %tobool70, label %if.end75, label %if.then71

if.then71:                                        ; preds = %for.end63
  %61 = load %struct.quantum_reg_struct** %reg.addr, align 8
  %size72 = getelementptr inbounds %struct.quantum_reg_struct* %61, i32 0, i32 1
  %62 = load i32* %size72, align 4
  %63 = load i32* %addsize, align 4
  %add73 = add nsw i32 %62, %63
  %call74 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([39 x i8]* @.str2, i32 0, i32 0), i32 %add73)
  call void @exit(i32 1) #9
  unreachable

if.end75:                                         ; preds = %for.end63
  %64 = load i32* %addsize, align 4
  %conv76 = sext i32 %64 to i64
  %mul77 = mul i64 %conv76, 16
  %call78 = call i64 @quantum_memman(i64 %mul77)
  store i32 0, i32* %i, align 4
  br label %for.cond79

for.cond79:                                       ; preds = %for.inc96, %if.end75
  %65 = load i32* %i, align 4
  %66 = load i32* %addsize, align 4
  %cmp80 = icmp slt i32 %65, %66
  br i1 %cmp80, label %for.body82, label %for.end98

for.body82:                                       ; preds = %for.cond79
  %67 = load i32* %i, align 4
  %68 = load %struct.quantum_reg_struct** %reg.addr, align 8
  %size83 = getelementptr inbounds %struct.quantum_reg_struct* %68, i32 0, i32 1
  %69 = load i32* %size83, align 4
  %add84 = add nsw i32 %67, %69
  %idxprom85 = sext i32 %add84 to i64
  %70 = load %struct.quantum_reg_struct** %reg.addr, align 8
  %node86 = getelementptr inbounds %struct.quantum_reg_struct* %70, i32 0, i32 3
  %71 = load %struct.quantum_reg_node_struct** %node86, align 8
  %arrayidx87 = getelementptr inbounds %struct.quantum_reg_node_struct* %71, i64 %idxprom85
  %state88 = getelementptr inbounds %struct.quantum_reg_node_struct* %arrayidx87, i32 0, i32 1
  store i64 0, i64* %state88, align 8
  %72 = load i32* %i, align 4
  %73 = load %struct.quantum_reg_struct** %reg.addr, align 8
  %size89 = getelementptr inbounds %struct.quantum_reg_struct* %73, i32 0, i32 1
  %74 = load i32* %size89, align 4
  %add90 = add nsw i32 %72, %74
  %idxprom91 = sext i32 %add90 to i64
  %75 = load %struct.quantum_reg_struct** %reg.addr, align 8
  %node92 = getelementptr inbounds %struct.quantum_reg_struct* %75, i32 0, i32 3
  %76 = load %struct.quantum_reg_node_struct** %node92, align 8
  %arrayidx93 = getelementptr inbounds %struct.quantum_reg_node_struct* %76, i64 %idxprom91
  %amplitude = getelementptr inbounds %struct.quantum_reg_node_struct* %arrayidx93, i32 0, i32 0
  %real94 = getelementptr inbounds { float, float }* %amplitude, i32 0, i32 0
  %imag95 = getelementptr inbounds { float, float }* %amplitude, i32 0, i32 1
  store float 0.000000e+00, float* %real94, align 4
  store float 0.000000e+00, float* %imag95, align 4
  br label %for.inc96

for.inc96:                                        ; preds = %for.body82
  %77 = load i32* %i, align 4
  %inc97 = add nsw i32 %77, 1
  store i32 %inc97, i32* %i, align 4
  br label %for.cond79

for.end98:                                        ; preds = %for.cond79
  %78 = load %struct.quantum_reg_struct** %reg.addr, align 8
  %size99 = getelementptr inbounds %struct.quantum_reg_struct* %78, i32 0, i32 1
  %79 = load i32* %size99, align 4
  %80 = load i32* %addsize, align 4
  %add100 = add nsw i32 %79, %80
  %conv101 = sext i32 %add100 to i64
  %call102 = call noalias i8* @calloc(i64 %conv101, i64 1) #6
  store i8* %call102, i8** %done, align 8
  %81 = load i8** %done, align 8
  %tobool103 = icmp ne i8* %81, null
  br i1 %tobool103, label %if.end110, label %if.then104

if.then104:                                       ; preds = %for.end98
  %82 = load %struct.quantum_reg_struct** %reg.addr, align 8
  %size105 = getelementptr inbounds %struct.quantum_reg_struct* %82, i32 0, i32 1
  %83 = load i32* %size105, align 4
  %84 = load i32* %addsize, align 4
  %add106 = add nsw i32 %83, %84
  %conv107 = sext i32 %add106 to i64
  %mul108 = mul i64 %conv107, 1
  %call109 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([39 x i8]* @.str3, i32 0, i32 0), i64 %mul108)
  call void @exit(i32 1) #9
  unreachable

if.end110:                                        ; preds = %for.end98
  %85 = load %struct.quantum_reg_struct** %reg.addr, align 8
  %size111 = getelementptr inbounds %struct.quantum_reg_struct* %85, i32 0, i32 1
  %86 = load i32* %size111, align 4
  %conv112 = sext i32 %86 to i64
  %87 = load i32* %addsize, align 4
  %conv113 = sext i32 %87 to i64
  %mul114 = mul i64 %conv113, 1
  %add115 = add i64 %conv112, %mul114
  %call116 = call i64 @quantum_memman(i64 %add115)
  %88 = load %struct.quantum_reg_struct** %reg.addr, align 8
  %size117 = getelementptr inbounds %struct.quantum_reg_struct* %88, i32 0, i32 1
  %89 = load i32* %size117, align 4
  store i32 %89, i32* %k, align 4
  %90 = load %struct.quantum_reg_struct** %reg.addr, align 8
  %width = getelementptr inbounds %struct.quantum_reg_struct* %90, i32 0, i32 0
  %91 = load i32* %width, align 4
  %sh_prom118 = zext i32 %91 to i64
  %shl119 = shl i64 1, %sh_prom118
  %conv120 = uitofp i64 %shl119 to double
  %div = fdiv double 1.000000e+00, %conv120
  %div121 = fdiv double %div, 1.000000e+06
  %conv122 = fptrunc double %div121 to float
  store float %conv122, float* %limit, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond123

for.cond123:                                      ; preds = %for.inc375, %if.end110
  %92 = load i32* %i, align 4
  %93 = load %struct.quantum_reg_struct** %reg.addr, align 8
  %size124 = getelementptr inbounds %struct.quantum_reg_struct* %93, i32 0, i32 1
  %94 = load i32* %size124, align 4
  %cmp125 = icmp slt i32 %92, %94
  br i1 %cmp125, label %for.body127, label %for.end377

for.body127:                                      ; preds = %for.cond123
  %95 = load i32* %i, align 4
  %idxprom128 = sext i32 %95 to i64
  %96 = load i8** %done, align 8
  %arrayidx129 = getelementptr inbounds i8* %96, i64 %idxprom128
  %97 = load i8* %arrayidx129, align 1
  %tobool130 = icmp ne i8 %97, 0
  br i1 %tobool130, label %if.end374, label %if.then131

if.then131:                                       ; preds = %for.body127
  %98 = load i32* %i, align 4
  %idxprom132 = sext i32 %98 to i64
  %99 = load %struct.quantum_reg_struct** %reg.addr, align 8
  %node133 = getelementptr inbounds %struct.quantum_reg_struct* %99, i32 0, i32 3
  %100 = load %struct.quantum_reg_node_struct** %node133, align 8
  %arrayidx134 = getelementptr inbounds %struct.quantum_reg_node_struct* %100, i64 %idxprom132
  %state135 = getelementptr inbounds %struct.quantum_reg_node_struct* %arrayidx134, i32 0, i32 1
  %101 = load i64* %state135, align 8
  %102 = load i32* %target.addr, align 4
  %sh_prom136 = zext i32 %102 to i64
  %shl137 = shl i64 1, %sh_prom136
  %and138 = and i64 %101, %shl137
  %conv139 = trunc i64 %and138 to i32
  store i32 %conv139, i32* %iset, align 4
  %real140 = getelementptr inbounds { float, float }* %tnot, i32 0, i32 0
  %imag141 = getelementptr inbounds { float, float }* %tnot, i32 0, i32 1
  store float 0.000000e+00, float* %real140, align 4
  store float 0.000000e+00, float* %imag141, align 4
  %103 = load i32* %i, align 4
  %idxprom142 = sext i32 %103 to i64
  %104 = load %struct.quantum_reg_struct** %reg.addr, align 8
  %node143 = getelementptr inbounds %struct.quantum_reg_struct* %104, i32 0, i32 3
  %105 = load %struct.quantum_reg_node_struct** %node143, align 8
  %arrayidx144 = getelementptr inbounds %struct.quantum_reg_node_struct* %105, i64 %idxprom142
  %state145 = getelementptr inbounds %struct.quantum_reg_node_struct* %arrayidx144, i32 0, i32 1
  %106 = load i64* %state145, align 8
  %107 = load i32* %target.addr, align 4
  %sh_prom146 = zext i32 %107 to i64
  %shl147 = shl i64 1, %sh_prom146
  %xor148 = xor i64 %106, %shl147
  %108 = load %struct.quantum_reg_struct** %reg.addr, align 8
  %call149 = call i32 @quantum_get_state(i64 %xor148, %struct.quantum_reg_struct* byval align 8 %108)
  store i32 %call149, i32* %j, align 4
  %109 = load i32* %i, align 4
  %idxprom150 = sext i32 %109 to i64
  %110 = load %struct.quantum_reg_struct** %reg.addr, align 8
  %node151 = getelementptr inbounds %struct.quantum_reg_struct* %110, i32 0, i32 3
  %111 = load %struct.quantum_reg_node_struct** %node151, align 8
  %arrayidx152 = getelementptr inbounds %struct.quantum_reg_node_struct* %111, i64 %idxprom150
  %amplitude153 = getelementptr inbounds %struct.quantum_reg_node_struct* %arrayidx152, i32 0, i32 0
  %amplitude153.realp = getelementptr inbounds { float, float }* %amplitude153, i32 0, i32 0
  %amplitude153.real = load float* %amplitude153.realp, align 4
  %amplitude153.imagp = getelementptr inbounds { float, float }* %amplitude153, i32 0, i32 1
  %amplitude153.imag = load float* %amplitude153.imagp, align 4
  %real154 = getelementptr inbounds { float, float }* %t, i32 0, i32 0
  %imag155 = getelementptr inbounds { float, float }* %t, i32 0, i32 1
  store float %amplitude153.real, float* %real154, align 4
  store float %amplitude153.imag, float* %imag155, align 4
  %112 = load i32* %j, align 4
  %cmp156 = icmp sge i32 %112, 0
  br i1 %cmp156, label %if.then158, label %if.end165

if.then158:                                       ; preds = %if.then131
  %113 = load i32* %j, align 4
  %idxprom159 = sext i32 %113 to i64
  %114 = load %struct.quantum_reg_struct** %reg.addr, align 8
  %node160 = getelementptr inbounds %struct.quantum_reg_struct* %114, i32 0, i32 3
  %115 = load %struct.quantum_reg_node_struct** %node160, align 8
  %arrayidx161 = getelementptr inbounds %struct.quantum_reg_node_struct* %115, i64 %idxprom159
  %amplitude162 = getelementptr inbounds %struct.quantum_reg_node_struct* %arrayidx161, i32 0, i32 0
  %amplitude162.realp = getelementptr inbounds { float, float }* %amplitude162, i32 0, i32 0
  %amplitude162.real = load float* %amplitude162.realp, align 4
  %amplitude162.imagp = getelementptr inbounds { float, float }* %amplitude162, i32 0, i32 1
  %amplitude162.imag = load float* %amplitude162.imagp, align 4
  %real163 = getelementptr inbounds { float, float }* %tnot, i32 0, i32 0
  %imag164 = getelementptr inbounds { float, float }* %tnot, i32 0, i32 1
  store float %amplitude162.real, float* %real163, align 4
  store float %amplitude162.imag, float* %imag164, align 4
  br label %if.end165

if.end165:                                        ; preds = %if.then158, %if.then131
  %116 = load i32* %iset, align 4
  %tobool166 = icmp ne i32 %116, 0
  br i1 %tobool166, label %if.then167, label %if.else

if.then167:                                       ; preds = %if.end165
  %t168 = getelementptr inbounds %struct.quantum_matrix_struct* %m, i32 0, i32 2
  %117 = load { float, float }** %t168, align 8
  %arrayidx169 = getelementptr inbounds { float, float }* %117, i64 2
  %arrayidx169.realp = getelementptr inbounds { float, float }* %arrayidx169, i32 0, i32 0
  %arrayidx169.real = load float* %arrayidx169.realp, align 4
  %arrayidx169.imagp = getelementptr inbounds { float, float }* %arrayidx169, i32 0, i32 1
  %arrayidx169.imag = load float* %arrayidx169.imagp, align 4
  %tnot.realp = getelementptr inbounds { float, float }* %tnot, i32 0, i32 0
  %tnot.real = load float* %tnot.realp, align 4
  %tnot.imagp = getelementptr inbounds { float, float }* %tnot, i32 0, i32 1
  %tnot.imag = load float* %tnot.imagp, align 4
  %mul.rl = fmul float %arrayidx169.real, %tnot.real
  %mul.rr = fmul float %arrayidx169.imag, %tnot.imag
  %mul.r = fsub float %mul.rl, %mul.rr
  %mul.il = fmul float %arrayidx169.imag, %tnot.real
  %mul.ir = fmul float %arrayidx169.real, %tnot.imag
  %mul.i = fadd float %mul.il, %mul.ir
  %t170 = getelementptr inbounds %struct.quantum_matrix_struct* %m, i32 0, i32 2
  %118 = load { float, float }** %t170, align 8
  %arrayidx171 = getelementptr inbounds { float, float }* %118, i64 3
  %arrayidx171.realp = getelementptr inbounds { float, float }* %arrayidx171, i32 0, i32 0
  %arrayidx171.real = load float* %arrayidx171.realp, align 4
  %arrayidx171.imagp = getelementptr inbounds { float, float }* %arrayidx171, i32 0, i32 1
  %arrayidx171.imag = load float* %arrayidx171.imagp, align 4
  %t.realp = getelementptr inbounds { float, float }* %t, i32 0, i32 0
  %t.real = load float* %t.realp, align 4
  %t.imagp = getelementptr inbounds { float, float }* %t, i32 0, i32 1
  %t.imag = load float* %t.imagp, align 4
  %mul.rl172 = fmul float %arrayidx171.real, %t.real
  %mul.rr173 = fmul float %arrayidx171.imag, %t.imag
  %mul.r174 = fsub float %mul.rl172, %mul.rr173
  %mul.il175 = fmul float %arrayidx171.imag, %t.real
  %mul.ir176 = fmul float %arrayidx171.real, %t.imag
  %mul.i177 = fadd float %mul.il175, %mul.ir176
  %add.r = fadd float %mul.r, %mul.r174
  %add.i = fadd float %mul.i, %mul.i177
  %119 = load i32* %i, align 4
  %idxprom178 = sext i32 %119 to i64
  %120 = load %struct.quantum_reg_struct** %reg.addr, align 8
  %node179 = getelementptr inbounds %struct.quantum_reg_struct* %120, i32 0, i32 3
  %121 = load %struct.quantum_reg_node_struct** %node179, align 8
  %arrayidx180 = getelementptr inbounds %struct.quantum_reg_node_struct* %121, i64 %idxprom178
  %amplitude181 = getelementptr inbounds %struct.quantum_reg_node_struct* %arrayidx180, i32 0, i32 0
  %real182 = getelementptr inbounds { float, float }* %amplitude181, i32 0, i32 0
  %imag183 = getelementptr inbounds { float, float }* %amplitude181, i32 0, i32 1
  store float %add.r, float* %real182, align 4
  store float %add.i, float* %imag183, align 4
  br label %if.end216

if.else:                                          ; preds = %if.end165
  %t184 = getelementptr inbounds %struct.quantum_matrix_struct* %m, i32 0, i32 2
  %122 = load { float, float }** %t184, align 8
  %arrayidx185 = getelementptr inbounds { float, float }* %122, i64 0
  %arrayidx185.realp = getelementptr inbounds { float, float }* %arrayidx185, i32 0, i32 0
  %arrayidx185.real = load float* %arrayidx185.realp, align 4
  %arrayidx185.imagp = getelementptr inbounds { float, float }* %arrayidx185, i32 0, i32 1
  %arrayidx185.imag = load float* %arrayidx185.imagp, align 4
  %t.realp186 = getelementptr inbounds { float, float }* %t, i32 0, i32 0
  %t.real187 = load float* %t.realp186, align 4
  %t.imagp188 = getelementptr inbounds { float, float }* %t, i32 0, i32 1
  %t.imag189 = load float* %t.imagp188, align 4
  %mul.rl190 = fmul float %arrayidx185.real, %t.real187
  %mul.rr191 = fmul float %arrayidx185.imag, %t.imag189
  %mul.r192 = fsub float %mul.rl190, %mul.rr191
  %mul.il193 = fmul float %arrayidx185.imag, %t.real187
  %mul.ir194 = fmul float %arrayidx185.real, %t.imag189
  %mul.i195 = fadd float %mul.il193, %mul.ir194
  %t196 = getelementptr inbounds %struct.quantum_matrix_struct* %m, i32 0, i32 2
  %123 = load { float, float }** %t196, align 8
  %arrayidx197 = getelementptr inbounds { float, float }* %123, i64 1
  %arrayidx197.realp = getelementptr inbounds { float, float }* %arrayidx197, i32 0, i32 0
  %arrayidx197.real = load float* %arrayidx197.realp, align 4
  %arrayidx197.imagp = getelementptr inbounds { float, float }* %arrayidx197, i32 0, i32 1
  %arrayidx197.imag = load float* %arrayidx197.imagp, align 4
  %tnot.realp198 = getelementptr inbounds { float, float }* %tnot, i32 0, i32 0
  %tnot.real199 = load float* %tnot.realp198, align 4
  %tnot.imagp200 = getelementptr inbounds { float, float }* %tnot, i32 0, i32 1
  %tnot.imag201 = load float* %tnot.imagp200, align 4
  %mul.rl202 = fmul float %arrayidx197.real, %tnot.real199
  %mul.rr203 = fmul float %arrayidx197.imag, %tnot.imag201
  %mul.r204 = fsub float %mul.rl202, %mul.rr203
  %mul.il205 = fmul float %arrayidx197.imag, %tnot.real199
  %mul.ir206 = fmul float %arrayidx197.real, %tnot.imag201
  %mul.i207 = fadd float %mul.il205, %mul.ir206
  %add.r208 = fadd float %mul.r192, %mul.r204
  %add.i209 = fadd float %mul.i195, %mul.i207
  %124 = load i32* %i, align 4
  %idxprom210 = sext i32 %124 to i64
  %125 = load %struct.quantum_reg_struct** %reg.addr, align 8
  %node211 = getelementptr inbounds %struct.quantum_reg_struct* %125, i32 0, i32 3
  %126 = load %struct.quantum_reg_node_struct** %node211, align 8
  %arrayidx212 = getelementptr inbounds %struct.quantum_reg_node_struct* %126, i64 %idxprom210
  %amplitude213 = getelementptr inbounds %struct.quantum_reg_node_struct* %arrayidx212, i32 0, i32 0
  %real214 = getelementptr inbounds { float, float }* %amplitude213, i32 0, i32 0
  %imag215 = getelementptr inbounds { float, float }* %amplitude213, i32 0, i32 1
  store float %add.r208, float* %real214, align 4
  store float %add.i209, float* %imag215, align 4
  br label %if.end216

if.end216:                                        ; preds = %if.else, %if.then167
  %127 = load i32* %j, align 4
  %cmp217 = icmp sge i32 %127, 0
  br i1 %cmp217, label %if.then219, label %if.else288

if.then219:                                       ; preds = %if.end216
  %128 = load i32* %iset, align 4
  %tobool220 = icmp ne i32 %128, 0
  br i1 %tobool220, label %if.then221, label %if.else254

if.then221:                                       ; preds = %if.then219
  %t222 = getelementptr inbounds %struct.quantum_matrix_struct* %m, i32 0, i32 2
  %129 = load { float, float }** %t222, align 8
  %arrayidx223 = getelementptr inbounds { float, float }* %129, i64 0
  %arrayidx223.realp = getelementptr inbounds { float, float }* %arrayidx223, i32 0, i32 0
  %arrayidx223.real = load float* %arrayidx223.realp, align 4
  %arrayidx223.imagp = getelementptr inbounds { float, float }* %arrayidx223, i32 0, i32 1
  %arrayidx223.imag = load float* %arrayidx223.imagp, align 4
  %tnot.realp224 = getelementptr inbounds { float, float }* %tnot, i32 0, i32 0
  %tnot.real225 = load float* %tnot.realp224, align 4
  %tnot.imagp226 = getelementptr inbounds { float, float }* %tnot, i32 0, i32 1
  %tnot.imag227 = load float* %tnot.imagp226, align 4
  %mul.rl228 = fmul float %arrayidx223.real, %tnot.real225
  %mul.rr229 = fmul float %arrayidx223.imag, %tnot.imag227
  %mul.r230 = fsub float %mul.rl228, %mul.rr229
  %mul.il231 = fmul float %arrayidx223.imag, %tnot.real225
  %mul.ir232 = fmul float %arrayidx223.real, %tnot.imag227
  %mul.i233 = fadd float %mul.il231, %mul.ir232
  %t234 = getelementptr inbounds %struct.quantum_matrix_struct* %m, i32 0, i32 2
  %130 = load { float, float }** %t234, align 8
  %arrayidx235 = getelementptr inbounds { float, float }* %130, i64 1
  %arrayidx235.realp = getelementptr inbounds { float, float }* %arrayidx235, i32 0, i32 0
  %arrayidx235.real = load float* %arrayidx235.realp, align 4
  %arrayidx235.imagp = getelementptr inbounds { float, float }* %arrayidx235, i32 0, i32 1
  %arrayidx235.imag = load float* %arrayidx235.imagp, align 4
  %t.realp236 = getelementptr inbounds { float, float }* %t, i32 0, i32 0
  %t.real237 = load float* %t.realp236, align 4
  %t.imagp238 = getelementptr inbounds { float, float }* %t, i32 0, i32 1
  %t.imag239 = load float* %t.imagp238, align 4
  %mul.rl240 = fmul float %arrayidx235.real, %t.real237
  %mul.rr241 = fmul float %arrayidx235.imag, %t.imag239
  %mul.r242 = fsub float %mul.rl240, %mul.rr241
  %mul.il243 = fmul float %arrayidx235.imag, %t.real237
  %mul.ir244 = fmul float %arrayidx235.real, %t.imag239
  %mul.i245 = fadd float %mul.il243, %mul.ir244
  %add.r246 = fadd float %mul.r230, %mul.r242
  %add.i247 = fadd float %mul.i233, %mul.i245
  %131 = load i32* %j, align 4
  %idxprom248 = sext i32 %131 to i64
  %132 = load %struct.quantum_reg_struct** %reg.addr, align 8
  %node249 = getelementptr inbounds %struct.quantum_reg_struct* %132, i32 0, i32 3
  %133 = load %struct.quantum_reg_node_struct** %node249, align 8
  %arrayidx250 = getelementptr inbounds %struct.quantum_reg_node_struct* %133, i64 %idxprom248
  %amplitude251 = getelementptr inbounds %struct.quantum_reg_node_struct* %arrayidx250, i32 0, i32 0
  %real252 = getelementptr inbounds { float, float }* %amplitude251, i32 0, i32 0
  %imag253 = getelementptr inbounds { float, float }* %amplitude251, i32 0, i32 1
  store float %add.r246, float* %real252, align 4
  store float %add.i247, float* %imag253, align 4
  br label %if.end287

if.else254:                                       ; preds = %if.then219
  %t255 = getelementptr inbounds %struct.quantum_matrix_struct* %m, i32 0, i32 2
  %134 = load { float, float }** %t255, align 8
  %arrayidx256 = getelementptr inbounds { float, float }* %134, i64 2
  %arrayidx256.realp = getelementptr inbounds { float, float }* %arrayidx256, i32 0, i32 0
  %arrayidx256.real = load float* %arrayidx256.realp, align 4
  %arrayidx256.imagp = getelementptr inbounds { float, float }* %arrayidx256, i32 0, i32 1
  %arrayidx256.imag = load float* %arrayidx256.imagp, align 4
  %t.realp257 = getelementptr inbounds { float, float }* %t, i32 0, i32 0
  %t.real258 = load float* %t.realp257, align 4
  %t.imagp259 = getelementptr inbounds { float, float }* %t, i32 0, i32 1
  %t.imag260 = load float* %t.imagp259, align 4
  %mul.rl261 = fmul float %arrayidx256.real, %t.real258
  %mul.rr262 = fmul float %arrayidx256.imag, %t.imag260
  %mul.r263 = fsub float %mul.rl261, %mul.rr262
  %mul.il264 = fmul float %arrayidx256.imag, %t.real258
  %mul.ir265 = fmul float %arrayidx256.real, %t.imag260
  %mul.i266 = fadd float %mul.il264, %mul.ir265
  %t267 = getelementptr inbounds %struct.quantum_matrix_struct* %m, i32 0, i32 2
  %135 = load { float, float }** %t267, align 8
  %arrayidx268 = getelementptr inbounds { float, float }* %135, i64 3
  %arrayidx268.realp = getelementptr inbounds { float, float }* %arrayidx268, i32 0, i32 0
  %arrayidx268.real = load float* %arrayidx268.realp, align 4
  %arrayidx268.imagp = getelementptr inbounds { float, float }* %arrayidx268, i32 0, i32 1
  %arrayidx268.imag = load float* %arrayidx268.imagp, align 4
  %tnot.realp269 = getelementptr inbounds { float, float }* %tnot, i32 0, i32 0
  %tnot.real270 = load float* %tnot.realp269, align 4
  %tnot.imagp271 = getelementptr inbounds { float, float }* %tnot, i32 0, i32 1
  %tnot.imag272 = load float* %tnot.imagp271, align 4
  %mul.rl273 = fmul float %arrayidx268.real, %tnot.real270
  %mul.rr274 = fmul float %arrayidx268.imag, %tnot.imag272
  %mul.r275 = fsub float %mul.rl273, %mul.rr274
  %mul.il276 = fmul float %arrayidx268.imag, %tnot.real270
  %mul.ir277 = fmul float %arrayidx268.real, %tnot.imag272
  %mul.i278 = fadd float %mul.il276, %mul.ir277
  %add.r279 = fadd float %mul.r263, %mul.r275
  %add.i280 = fadd float %mul.i266, %mul.i278
  %136 = load i32* %j, align 4
  %idxprom281 = sext i32 %136 to i64
  %137 = load %struct.quantum_reg_struct** %reg.addr, align 8
  %node282 = getelementptr inbounds %struct.quantum_reg_struct* %137, i32 0, i32 3
  %138 = load %struct.quantum_reg_node_struct** %node282, align 8
  %arrayidx283 = getelementptr inbounds %struct.quantum_reg_node_struct* %138, i64 %idxprom281
  %amplitude284 = getelementptr inbounds %struct.quantum_reg_node_struct* %arrayidx283, i32 0, i32 0
  %real285 = getelementptr inbounds { float, float }* %amplitude284, i32 0, i32 0
  %imag286 = getelementptr inbounds { float, float }* %amplitude284, i32 0, i32 1
  store float %add.r279, float* %real285, align 4
  store float %add.i280, float* %imag286, align 4
  br label %if.end287

if.end287:                                        ; preds = %if.else254, %if.then221
  br label %if.end367

if.else288:                                       ; preds = %if.end216
  %t289 = getelementptr inbounds %struct.quantum_matrix_struct* %m, i32 0, i32 2
  %139 = load { float, float }** %t289, align 8
  %arrayidx290 = getelementptr inbounds { float, float }* %139, i64 1
  %arrayidx290.realp = getelementptr inbounds { float, float }* %arrayidx290, i32 0, i32 0
  %arrayidx290.real = load float* %arrayidx290.realp, align 4
  %arrayidx290.imagp = getelementptr inbounds { float, float }* %arrayidx290, i32 0, i32 1
  %arrayidx290.imag = load float* %arrayidx290.imagp, align 4
  %real292 = getelementptr inbounds { float, float }* %coerce291, i32 0, i32 0
  %imag293 = getelementptr inbounds { float, float }* %coerce291, i32 0, i32 1
  store float %arrayidx290.real, float* %real292, align 4
  store float %arrayidx290.imag, float* %imag293, align 4
  %140 = bitcast { float, float }* %coerce291 to <2 x float>*
  %141 = load <2 x float>* %140, align 1
  %call294 = call float @quantum_prob_inline7(<2 x float> %141)
  %conv295 = fpext float %call294 to double
  %cmp296 = fcmp olt double %conv295, 1.000000e-09
  br i1 %cmp296, label %land.lhs.true298, label %if.end301

land.lhs.true298:                                 ; preds = %if.else288
  %142 = load i32* %iset, align 4
  %tobool299 = icmp ne i32 %142, 0
  br i1 %tobool299, label %if.then300, label %if.end301

if.then300:                                       ; preds = %land.lhs.true298
  br label %for.end377

if.end301:                                        ; preds = %land.lhs.true298, %if.else288
  %t302 = getelementptr inbounds %struct.quantum_matrix_struct* %m, i32 0, i32 2
  %143 = load { float, float }** %t302, align 8
  %arrayidx303 = getelementptr inbounds { float, float }* %143, i64 2
  %arrayidx303.realp = getelementptr inbounds { float, float }* %arrayidx303, i32 0, i32 0
  %arrayidx303.real = load float* %arrayidx303.realp, align 4
  %arrayidx303.imagp = getelementptr inbounds { float, float }* %arrayidx303, i32 0, i32 1
  %arrayidx303.imag = load float* %arrayidx303.imagp, align 4
  %real305 = getelementptr inbounds { float, float }* %coerce304, i32 0, i32 0
  %imag306 = getelementptr inbounds { float, float }* %coerce304, i32 0, i32 1
  store float %arrayidx303.real, float* %real305, align 4
  store float %arrayidx303.imag, float* %imag306, align 4
  %144 = bitcast { float, float }* %coerce304 to <2 x float>*
  %145 = load <2 x float>* %144, align 1
  %call307 = call float @quantum_prob_inline7(<2 x float> %145)
  %conv308 = fpext float %call307 to double
  %cmp309 = fcmp olt double %conv308, 1.000000e-09
  br i1 %cmp309, label %land.lhs.true311, label %if.end314

land.lhs.true311:                                 ; preds = %if.end301
  %146 = load i32* %iset, align 4
  %tobool312 = icmp ne i32 %146, 0
  br i1 %tobool312, label %if.end314, label %if.then313

if.then313:                                       ; preds = %land.lhs.true311
  br label %for.end377

if.end314:                                        ; preds = %land.lhs.true311, %if.end301
  %147 = load i32* %i, align 4
  %idxprom315 = sext i32 %147 to i64
  %148 = load %struct.quantum_reg_struct** %reg.addr, align 8
  %node316 = getelementptr inbounds %struct.quantum_reg_struct* %148, i32 0, i32 3
  %149 = load %struct.quantum_reg_node_struct** %node316, align 8
  %arrayidx317 = getelementptr inbounds %struct.quantum_reg_node_struct* %149, i64 %idxprom315
  %state318 = getelementptr inbounds %struct.quantum_reg_node_struct* %arrayidx317, i32 0, i32 1
  %150 = load i64* %state318, align 8
  %151 = load i32* %target.addr, align 4
  %sh_prom319 = zext i32 %151 to i64
  %shl320 = shl i64 1, %sh_prom319
  %xor321 = xor i64 %150, %shl320
  %152 = load i32* %k, align 4
  %idxprom322 = sext i32 %152 to i64
  %153 = load %struct.quantum_reg_struct** %reg.addr, align 8
  %node323 = getelementptr inbounds %struct.quantum_reg_struct* %153, i32 0, i32 3
  %154 = load %struct.quantum_reg_node_struct** %node323, align 8
  %arrayidx324 = getelementptr inbounds %struct.quantum_reg_node_struct* %154, i64 %idxprom322
  %state325 = getelementptr inbounds %struct.quantum_reg_node_struct* %arrayidx324, i32 0, i32 1
  store i64 %xor321, i64* %state325, align 8
  %155 = load i32* %iset, align 4
  %tobool326 = icmp ne i32 %155, 0
  br i1 %tobool326, label %if.then327, label %if.else346

if.then327:                                       ; preds = %if.end314
  %t328 = getelementptr inbounds %struct.quantum_matrix_struct* %m, i32 0, i32 2
  %156 = load { float, float }** %t328, align 8
  %arrayidx329 = getelementptr inbounds { float, float }* %156, i64 1
  %arrayidx329.realp = getelementptr inbounds { float, float }* %arrayidx329, i32 0, i32 0
  %arrayidx329.real = load float* %arrayidx329.realp, align 4
  %arrayidx329.imagp = getelementptr inbounds { float, float }* %arrayidx329, i32 0, i32 1
  %arrayidx329.imag = load float* %arrayidx329.imagp, align 4
  %t.realp330 = getelementptr inbounds { float, float }* %t, i32 0, i32 0
  %t.real331 = load float* %t.realp330, align 4
  %t.imagp332 = getelementptr inbounds { float, float }* %t, i32 0, i32 1
  %t.imag333 = load float* %t.imagp332, align 4
  %mul.rl334 = fmul float %arrayidx329.real, %t.real331
  %mul.rr335 = fmul float %arrayidx329.imag, %t.imag333
  %mul.r336 = fsub float %mul.rl334, %mul.rr335
  %mul.il337 = fmul float %arrayidx329.imag, %t.real331
  %mul.ir338 = fmul float %arrayidx329.real, %t.imag333
  %mul.i339 = fadd float %mul.il337, %mul.ir338
  %157 = load i32* %k, align 4
  %idxprom340 = sext i32 %157 to i64
  %158 = load %struct.quantum_reg_struct** %reg.addr, align 8
  %node341 = getelementptr inbounds %struct.quantum_reg_struct* %158, i32 0, i32 3
  %159 = load %struct.quantum_reg_node_struct** %node341, align 8
  %arrayidx342 = getelementptr inbounds %struct.quantum_reg_node_struct* %159, i64 %idxprom340
  %amplitude343 = getelementptr inbounds %struct.quantum_reg_node_struct* %arrayidx342, i32 0, i32 0
  %real344 = getelementptr inbounds { float, float }* %amplitude343, i32 0, i32 0
  %imag345 = getelementptr inbounds { float, float }* %amplitude343, i32 0, i32 1
  store float %mul.r336, float* %real344, align 4
  store float %mul.i339, float* %imag345, align 4
  br label %if.end365

if.else346:                                       ; preds = %if.end314
  %t347 = getelementptr inbounds %struct.quantum_matrix_struct* %m, i32 0, i32 2
  %160 = load { float, float }** %t347, align 8
  %arrayidx348 = getelementptr inbounds { float, float }* %160, i64 2
  %arrayidx348.realp = getelementptr inbounds { float, float }* %arrayidx348, i32 0, i32 0
  %arrayidx348.real = load float* %arrayidx348.realp, align 4
  %arrayidx348.imagp = getelementptr inbounds { float, float }* %arrayidx348, i32 0, i32 1
  %arrayidx348.imag = load float* %arrayidx348.imagp, align 4
  %t.realp349 = getelementptr inbounds { float, float }* %t, i32 0, i32 0
  %t.real350 = load float* %t.realp349, align 4
  %t.imagp351 = getelementptr inbounds { float, float }* %t, i32 0, i32 1
  %t.imag352 = load float* %t.imagp351, align 4
  %mul.rl353 = fmul float %arrayidx348.real, %t.real350
  %mul.rr354 = fmul float %arrayidx348.imag, %t.imag352
  %mul.r355 = fsub float %mul.rl353, %mul.rr354
  %mul.il356 = fmul float %arrayidx348.imag, %t.real350
  %mul.ir357 = fmul float %arrayidx348.real, %t.imag352
  %mul.i358 = fadd float %mul.il356, %mul.ir357
  %161 = load i32* %k, align 4
  %idxprom359 = sext i32 %161 to i64
  %162 = load %struct.quantum_reg_struct** %reg.addr, align 8
  %node360 = getelementptr inbounds %struct.quantum_reg_struct* %162, i32 0, i32 3
  %163 = load %struct.quantum_reg_node_struct** %node360, align 8
  %arrayidx361 = getelementptr inbounds %struct.quantum_reg_node_struct* %163, i64 %idxprom359
  %amplitude362 = getelementptr inbounds %struct.quantum_reg_node_struct* %arrayidx361, i32 0, i32 0
  %real363 = getelementptr inbounds { float, float }* %amplitude362, i32 0, i32 0
  %imag364 = getelementptr inbounds { float, float }* %amplitude362, i32 0, i32 1
  store float %mul.r355, float* %real363, align 4
  store float %mul.i358, float* %imag364, align 4
  br label %if.end365

if.end365:                                        ; preds = %if.else346, %if.then327
  %164 = load i32* %k, align 4
  %inc366 = add nsw i32 %164, 1
  store i32 %inc366, i32* %k, align 4
  br label %if.end367

if.end367:                                        ; preds = %if.end365, %if.end287
  %165 = load i32* %j, align 4
  %cmp368 = icmp sge i32 %165, 0
  br i1 %cmp368, label %if.then370, label %if.end373

if.then370:                                       ; preds = %if.end367
  %166 = load i32* %j, align 4
  %idxprom371 = sext i32 %166 to i64
  %167 = load i8** %done, align 8
  %arrayidx372 = getelementptr inbounds i8* %167, i64 %idxprom371
  store i8 1, i8* %arrayidx372, align 1
  br label %if.end373

if.end373:                                        ; preds = %if.then370, %if.end367
  br label %if.end374

if.end374:                                        ; preds = %if.end373, %for.body127
  br label %for.inc375

for.inc375:                                       ; preds = %if.end374
  %168 = load i32* %i, align 4
  %inc376 = add nsw i32 %168, 1
  store i32 %inc376, i32* %i, align 4
  br label %for.cond123

for.end377:                                       ; preds = %if.then313, %if.then300, %for.cond123
  %169 = load i32* %addsize, align 4
  %170 = load %struct.quantum_reg_struct** %reg.addr, align 8
  %size378 = getelementptr inbounds %struct.quantum_reg_struct* %170, i32 0, i32 1
  %171 = load i32* %size378, align 4
  %add379 = add nsw i32 %171, %169
  store i32 %add379, i32* %size378, align 4
  %172 = load i8** %done, align 8
  call void @free(i8* %172) #6
  %173 = load %struct.quantum_reg_struct** %reg.addr, align 8
  %size380 = getelementptr inbounds %struct.quantum_reg_struct* %173, i32 0, i32 1
  %174 = load i32* %size380, align 4
  %sub = sub nsw i32 0, %174
  %conv381 = sext i32 %sub to i64
  %mul382 = mul i64 %conv381, 1
  %call383 = call i64 @quantum_memman(i64 %mul382)
  store i32 0, i32* %i, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond384

for.cond384:                                      ; preds = %for.inc427, %for.end377
  %175 = load i32* %i, align 4
  %176 = load %struct.quantum_reg_struct** %reg.addr, align 8
  %size385 = getelementptr inbounds %struct.quantum_reg_struct* %176, i32 0, i32 1
  %177 = load i32* %size385, align 4
  %cmp386 = icmp slt i32 %175, %177
  br i1 %cmp386, label %for.body388, label %for.end429

for.body388:                                      ; preds = %for.cond384
  %178 = load i32* %i, align 4
  %idxprom389 = sext i32 %178 to i64
  %179 = load %struct.quantum_reg_struct** %reg.addr, align 8
  %node390 = getelementptr inbounds %struct.quantum_reg_struct* %179, i32 0, i32 3
  %180 = load %struct.quantum_reg_node_struct** %node390, align 8
  %arrayidx391 = getelementptr inbounds %struct.quantum_reg_node_struct* %180, i64 %idxprom389
  %amplitude392 = getelementptr inbounds %struct.quantum_reg_node_struct* %arrayidx391, i32 0, i32 0
  %amplitude392.realp = getelementptr inbounds { float, float }* %amplitude392, i32 0, i32 0
  %amplitude392.real = load float* %amplitude392.realp, align 4
  %amplitude392.imagp = getelementptr inbounds { float, float }* %amplitude392, i32 0, i32 1
  %amplitude392.imag = load float* %amplitude392.imagp, align 4
  %real394 = getelementptr inbounds { float, float }* %coerce393, i32 0, i32 0
  %imag395 = getelementptr inbounds { float, float }* %coerce393, i32 0, i32 1
  store float %amplitude392.real, float* %real394, align 4
  store float %amplitude392.imag, float* %imag395, align 4
  %181 = bitcast { float, float }* %coerce393 to <2 x float>*
  %182 = load <2 x float>* %181, align 1
  %call396 = call float @quantum_prob_inline7(<2 x float> %182)
  %183 = load float* %limit, align 4
  %cmp397 = fcmp olt float %call396, %183
  br i1 %cmp397, label %if.then399, label %if.else402

if.then399:                                       ; preds = %for.body388
  %184 = load i32* %j, align 4
  %inc400 = add nsw i32 %184, 1
  store i32 %inc400, i32* %j, align 4
  %185 = load i32* %decsize, align 4
  %inc401 = add nsw i32 %185, 1
  store i32 %inc401, i32* %decsize, align 4
  br label %if.end426

if.else402:                                       ; preds = %for.body388
  %186 = load i32* %j, align 4
  %tobool403 = icmp ne i32 %186, 0
  br i1 %tobool403, label %if.then404, label %if.end425

if.then404:                                       ; preds = %if.else402
  %187 = load i32* %i, align 4
  %idxprom405 = sext i32 %187 to i64
  %188 = load %struct.quantum_reg_struct** %reg.addr, align 8
  %node406 = getelementptr inbounds %struct.quantum_reg_struct* %188, i32 0, i32 3
  %189 = load %struct.quantum_reg_node_struct** %node406, align 8
  %arrayidx407 = getelementptr inbounds %struct.quantum_reg_node_struct* %189, i64 %idxprom405
  %state408 = getelementptr inbounds %struct.quantum_reg_node_struct* %arrayidx407, i32 0, i32 1
  %190 = load i64* %state408, align 8
  %191 = load i32* %i, align 4
  %192 = load i32* %j, align 4
  %sub409 = sub nsw i32 %191, %192
  %idxprom410 = sext i32 %sub409 to i64
  %193 = load %struct.quantum_reg_struct** %reg.addr, align 8
  %node411 = getelementptr inbounds %struct.quantum_reg_struct* %193, i32 0, i32 3
  %194 = load %struct.quantum_reg_node_struct** %node411, align 8
  %arrayidx412 = getelementptr inbounds %struct.quantum_reg_node_struct* %194, i64 %idxprom410
  %state413 = getelementptr inbounds %struct.quantum_reg_node_struct* %arrayidx412, i32 0, i32 1
  store i64 %190, i64* %state413, align 8
  %195 = load i32* %i, align 4
  %idxprom414 = sext i32 %195 to i64
  %196 = load %struct.quantum_reg_struct** %reg.addr, align 8
  %node415 = getelementptr inbounds %struct.quantum_reg_struct* %196, i32 0, i32 3
  %197 = load %struct.quantum_reg_node_struct** %node415, align 8
  %arrayidx416 = getelementptr inbounds %struct.quantum_reg_node_struct* %197, i64 %idxprom414
  %amplitude417 = getelementptr inbounds %struct.quantum_reg_node_struct* %arrayidx416, i32 0, i32 0
  %amplitude417.realp = getelementptr inbounds { float, float }* %amplitude417, i32 0, i32 0
  %amplitude417.real = load float* %amplitude417.realp, align 4
  %amplitude417.imagp = getelementptr inbounds { float, float }* %amplitude417, i32 0, i32 1
  %amplitude417.imag = load float* %amplitude417.imagp, align 4
  %198 = load i32* %i, align 4
  %199 = load i32* %j, align 4
  %sub418 = sub nsw i32 %198, %199
  %idxprom419 = sext i32 %sub418 to i64
  %200 = load %struct.quantum_reg_struct** %reg.addr, align 8
  %node420 = getelementptr inbounds %struct.quantum_reg_struct* %200, i32 0, i32 3
  %201 = load %struct.quantum_reg_node_struct** %node420, align 8
  %arrayidx421 = getelementptr inbounds %struct.quantum_reg_node_struct* %201, i64 %idxprom419
  %amplitude422 = getelementptr inbounds %struct.quantum_reg_node_struct* %arrayidx421, i32 0, i32 0
  %real423 = getelementptr inbounds { float, float }* %amplitude422, i32 0, i32 0
  %imag424 = getelementptr inbounds { float, float }* %amplitude422, i32 0, i32 1
  store float %amplitude417.real, float* %real423, align 4
  store float %amplitude417.imag, float* %imag424, align 4
  br label %if.end425

if.end425:                                        ; preds = %if.then404, %if.else402
  br label %if.end426

if.end426:                                        ; preds = %if.end425, %if.then399
  br label %for.inc427

for.inc427:                                       ; preds = %if.end426
  %202 = load i32* %i, align 4
  %inc428 = add nsw i32 %202, 1
  store i32 %inc428, i32* %i, align 4
  br label %for.cond384

for.end429:                                       ; preds = %for.cond384
  %203 = load i32* %decsize, align 4
  %tobool430 = icmp ne i32 %203, 0
  br i1 %tobool430, label %if.then431, label %if.end451

if.then431:                                       ; preds = %for.end429
  %204 = load i32* %decsize, align 4
  %205 = load %struct.quantum_reg_struct** %reg.addr, align 8
  %size432 = getelementptr inbounds %struct.quantum_reg_struct* %205, i32 0, i32 1
  %206 = load i32* %size432, align 4
  %sub433 = sub nsw i32 %206, %204
  store i32 %sub433, i32* %size432, align 4
  %207 = load %struct.quantum_reg_struct** %reg.addr, align 8
  %node434 = getelementptr inbounds %struct.quantum_reg_struct* %207, i32 0, i32 3
  %208 = load %struct.quantum_reg_node_struct** %node434, align 8
  %209 = bitcast %struct.quantum_reg_node_struct* %208 to i8*
  %210 = load %struct.quantum_reg_struct** %reg.addr, align 8
  %size435 = getelementptr inbounds %struct.quantum_reg_struct* %210, i32 0, i32 1
  %211 = load i32* %size435, align 4
  %conv436 = sext i32 %211 to i64
  %mul437 = mul i64 %conv436, 16
  %call438 = call i8* @realloc(i8* %209, i64 %mul437) #6
  %212 = bitcast i8* %call438 to %struct.quantum_reg_node_struct*
  %213 = load %struct.quantum_reg_struct** %reg.addr, align 8
  %node439 = getelementptr inbounds %struct.quantum_reg_struct* %213, i32 0, i32 3
  store %struct.quantum_reg_node_struct* %212, %struct.quantum_reg_node_struct** %node439, align 8
  %214 = load %struct.quantum_reg_struct** %reg.addr, align 8
  %node440 = getelementptr inbounds %struct.quantum_reg_struct* %214, i32 0, i32 3
  %215 = load %struct.quantum_reg_node_struct** %node440, align 8
  %tobool441 = icmp ne %struct.quantum_reg_node_struct* %215, null
  br i1 %tobool441, label %if.end446, label %if.then442

if.then442:                                       ; preds = %if.then431
  %216 = load %struct.quantum_reg_struct** %reg.addr, align 8
  %size443 = getelementptr inbounds %struct.quantum_reg_struct* %216, i32 0, i32 1
  %217 = load i32* %size443, align 4
  %218 = load i32* %addsize, align 4
  %add444 = add nsw i32 %217, %218
  %call445 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([39 x i8]* @.str2, i32 0, i32 0), i32 %add444)
  call void @exit(i32 1) #9
  unreachable

if.end446:                                        ; preds = %if.then431
  %219 = load i32* %decsize, align 4
  %sub447 = sub nsw i32 0, %219
  %conv448 = sext i32 %sub447 to i64
  %mul449 = mul i64 %conv448, 16
  %call450 = call i64 @quantum_memman(i64 %mul449)
  br label %if.end451

if.end451:                                        ; preds = %if.end446, %for.end429
  %220 = load %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_decohere(%struct.quantum_reg_struct* %220)
  ret void
}

; Function Attrs: nounwind
declare i8* @realloc(i8*, i64) #2

; Function Attrs: nounwind uwtable
define void @quantum_gate2(i32 %control, i32 %target, i64 %m.coerce0, { float, float }* %m.coerce1, %struct.quantum_reg_struct* %reg) #0 {
entry:
  %m = alloca %struct.quantum_matrix_struct, align 8
  %control.addr = alloca i32, align 4
  %target.addr = alloca i32, align 4
  %reg.addr = alloca %struct.quantum_reg_struct*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %iset = alloca i32, align 4
  %addsize = alloca i32, align 4
  %decsize = alloca i32, align 4
  %t = alloca { float, float }, align 4
  %tnot = alloca { float, float }, align 4
  %limit = alloca float, align 4
  %done = alloca i8*, align 8
  %coerce = alloca { float, float }, align 4
  %0 = bitcast %struct.quantum_matrix_struct* %m to { i64, { float, float }* }*
  %1 = getelementptr { i64, { float, float }* }* %0, i32 0, i32 0
  store i64 %m.coerce0, i64* %1
  %2 = getelementptr { i64, { float, float }* }* %0, i32 0, i32 1
  store { float, float }* %m.coerce1, { float, float }** %2
  store i32 %control, i32* %control.addr, align 4
  store i32 %target, i32* %target.addr, align 4
  store %struct.quantum_reg_struct* %reg, %struct.quantum_reg_struct** %reg.addr, align 8
  store i32 0, i32* %addsize, align 4
  store i32 0, i32* %decsize, align 4
  %real = getelementptr inbounds { float, float }* %tnot, i32 0, i32 0
  %imag = getelementptr inbounds { float, float }* %tnot, i32 0, i32 1
  store float 0.000000e+00, float* %real, align 4
  store float 0.000000e+00, float* %imag, align 4
  %cols = getelementptr inbounds %struct.quantum_matrix_struct* %m, i32 0, i32 1
  %3 = load i32* %cols, align 4
  %cmp = icmp ne i32 %3, 4
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %rows = getelementptr inbounds %struct.quantum_matrix_struct* %m, i32 0, i32 0
  %4 = load i32* %rows, align 4
  %cmp1 = icmp ne i32 %4, 4
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %call = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([29 x i8]* @.str4, i32 0, i32 0))
  call void @exit(i32 1) #9
  unreachable

if.end:                                           ; preds = %lor.lhs.false
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %5 = load i32* %i, align 4
  %6 = load %struct.quantum_reg_struct** %reg.addr, align 8
  %hashw = getelementptr inbounds %struct.quantum_reg_struct* %6, i32 0, i32 2
  %7 = load i32* %hashw, align 4
  %shl = shl i32 1, %7
  %cmp2 = icmp slt i32 %5, %shl
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load i32* %i, align 4
  %idxprom = sext i32 %8 to i64
  %9 = load %struct.quantum_reg_struct** %reg.addr, align 8
  %hash = getelementptr inbounds %struct.quantum_reg_struct* %9, i32 0, i32 4
  %10 = load i32** %hash, align 8
  %arrayidx = getelementptr inbounds i32* %10, i64 %idxprom
  store i32 0, i32* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %11 = load i32* %i, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc8, %for.end
  %12 = load i32* %i, align 4
  %13 = load %struct.quantum_reg_struct** %reg.addr, align 8
  %size = getelementptr inbounds %struct.quantum_reg_struct* %13, i32 0, i32 1
  %14 = load i32* %size, align 4
  %cmp4 = icmp slt i32 %12, %14
  br i1 %cmp4, label %for.body5, label %for.end10

for.body5:                                        ; preds = %for.cond3
  %15 = load i32* %i, align 4
  %idxprom6 = sext i32 %15 to i64
  %16 = load %struct.quantum_reg_struct** %reg.addr, align 8
  %node = getelementptr inbounds %struct.quantum_reg_struct* %16, i32 0, i32 3
  %17 = load %struct.quantum_reg_node_struct** %node, align 8
  %arrayidx7 = getelementptr inbounds %struct.quantum_reg_node_struct* %17, i64 %idxprom6
  %state = getelementptr inbounds %struct.quantum_reg_node_struct* %arrayidx7, i32 0, i32 1
  %18 = load i64* %state, align 8
  %19 = load i32* %i, align 4
  %20 = load %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_add_hash(i64 %18, i32 %19, %struct.quantum_reg_struct* %20)
  br label %for.inc8

for.inc8:                                         ; preds = %for.body5
  %21 = load i32* %i, align 4
  %inc9 = add nsw i32 %21, 1
  store i32 %inc9, i32* %i, align 4
  br label %for.cond3

for.end10:                                        ; preds = %for.cond3
  store i32 0, i32* %i, align 4
  br label %for.cond11

for.cond11:                                       ; preds = %for.inc52, %for.end10
  %22 = load i32* %i, align 4
  %23 = load %struct.quantum_reg_struct** %reg.addr, align 8
  %size12 = getelementptr inbounds %struct.quantum_reg_struct* %23, i32 0, i32 1
  %24 = load i32* %size12, align 4
  %cmp13 = icmp slt i32 %22, %24
  br i1 %cmp13, label %for.body14, label %for.end54

for.body14:                                       ; preds = %for.cond11
  %25 = load i32* %i, align 4
  %idxprom15 = sext i32 %25 to i64
  %26 = load %struct.quantum_reg_struct** %reg.addr, align 8
  %node16 = getelementptr inbounds %struct.quantum_reg_struct* %26, i32 0, i32 3
  %27 = load %struct.quantum_reg_node_struct** %node16, align 8
  %arrayidx17 = getelementptr inbounds %struct.quantum_reg_node_struct* %27, i64 %idxprom15
  %state18 = getelementptr inbounds %struct.quantum_reg_node_struct* %arrayidx17, i32 0, i32 1
  %28 = load i64* %state18, align 8
  %29 = load i32* %target.addr, align 4
  %sh_prom = zext i32 %29 to i64
  %shl19 = shl i64 1, %sh_prom
  %xor = xor i64 %28, %shl19
  %30 = load %struct.quantum_reg_struct** %reg.addr, align 8
  %call20 = call i32 @quantum_get_state(i64 %xor, %struct.quantum_reg_struct* byval align 8 %30)
  store i32 %call20, i32* %j, align 4
  %31 = load i32* %j, align 4
  %cmp21 = icmp eq i32 %31, -1
  br i1 %cmp21, label %if.then22, label %if.end51

if.then22:                                        ; preds = %for.body14
  %t23 = getelementptr inbounds %struct.quantum_matrix_struct* %m, i32 0, i32 2
  %32 = load { float, float }** %t23, align 8
  %arrayidx24 = getelementptr inbounds { float, float }* %32, i64 1
  %arrayidx24.realp = getelementptr inbounds { float, float }* %arrayidx24, i32 0, i32 0
  %arrayidx24.real = load float* %arrayidx24.realp, align 4
  %arrayidx24.imagp = getelementptr inbounds { float, float }* %arrayidx24, i32 0, i32 1
  %arrayidx24.imag = load float* %arrayidx24.imagp, align 4
  %cmp.r = fcmp une float %arrayidx24.real, 0.000000e+00
  %cmp.i = fcmp une float %arrayidx24.imag, 0.000000e+00
  %or.ri = or i1 %cmp.r, %cmp.i
  br i1 %or.ri, label %land.lhs.true, label %if.end33

land.lhs.true:                                    ; preds = %if.then22
  %33 = load i32* %i, align 4
  %idxprom25 = sext i32 %33 to i64
  %34 = load %struct.quantum_reg_struct** %reg.addr, align 8
  %node26 = getelementptr inbounds %struct.quantum_reg_struct* %34, i32 0, i32 3
  %35 = load %struct.quantum_reg_node_struct** %node26, align 8
  %arrayidx27 = getelementptr inbounds %struct.quantum_reg_node_struct* %35, i64 %idxprom25
  %state28 = getelementptr inbounds %struct.quantum_reg_node_struct* %arrayidx27, i32 0, i32 1
  %36 = load i64* %state28, align 8
  %37 = load i32* %target.addr, align 4
  %sh_prom29 = zext i32 %37 to i64
  %shl30 = shl i64 1, %sh_prom29
  %and = and i64 %36, %shl30
  %tobool = icmp ne i64 %and, 0
  br i1 %tobool, label %if.then31, label %if.end33

if.then31:                                        ; preds = %land.lhs.true
  %38 = load i32* %addsize, align 4
  %inc32 = add nsw i32 %38, 1
  store i32 %inc32, i32* %addsize, align 4
  br label %if.end33

if.end33:                                         ; preds = %if.then31, %land.lhs.true, %if.then22
  %t34 = getelementptr inbounds %struct.quantum_matrix_struct* %m, i32 0, i32 2
  %39 = load { float, float }** %t34, align 8
  %arrayidx35 = getelementptr inbounds { float, float }* %39, i64 2
  %arrayidx35.realp = getelementptr inbounds { float, float }* %arrayidx35, i32 0, i32 0
  %arrayidx35.real = load float* %arrayidx35.realp, align 4
  %arrayidx35.imagp = getelementptr inbounds { float, float }* %arrayidx35, i32 0, i32 1
  %arrayidx35.imag = load float* %arrayidx35.imagp, align 4
  %cmp.r36 = fcmp une float %arrayidx35.real, 0.000000e+00
  %cmp.i37 = fcmp une float %arrayidx35.imag, 0.000000e+00
  %or.ri38 = or i1 %cmp.r36, %cmp.i37
  br i1 %or.ri38, label %land.lhs.true39, label %if.end50

land.lhs.true39:                                  ; preds = %if.end33
  %40 = load i32* %i, align 4
  %idxprom40 = sext i32 %40 to i64
  %41 = load %struct.quantum_reg_struct** %reg.addr, align 8
  %node41 = getelementptr inbounds %struct.quantum_reg_struct* %41, i32 0, i32 3
  %42 = load %struct.quantum_reg_node_struct** %node41, align 8
  %arrayidx42 = getelementptr inbounds %struct.quantum_reg_node_struct* %42, i64 %idxprom40
  %state43 = getelementptr inbounds %struct.quantum_reg_node_struct* %arrayidx42, i32 0, i32 1
  %43 = load i64* %state43, align 8
  %44 = load i32* %target.addr, align 4
  %sh_prom44 = zext i32 %44 to i64
  %shl45 = shl i64 1, %sh_prom44
  %and46 = and i64 %43, %shl45
  %tobool47 = icmp ne i64 %and46, 0
  br i1 %tobool47, label %if.end50, label %if.then48

if.then48:                                        ; preds = %land.lhs.true39
  %45 = load i32* %addsize, align 4
  %inc49 = add nsw i32 %45, 1
  store i32 %inc49, i32* %addsize, align 4
  br label %if.end50

if.end50:                                         ; preds = %if.then48, %land.lhs.true39, %if.end33
  br label %if.end51

if.end51:                                         ; preds = %if.end50, %for.body14
  br label %for.inc52

for.inc52:                                        ; preds = %if.end51
  %46 = load i32* %i, align 4
  %inc53 = add nsw i32 %46, 1
  store i32 %inc53, i32* %i, align 4
  br label %for.cond11

for.end54:                                        ; preds = %for.cond11
  %47 = load %struct.quantum_reg_struct** %reg.addr, align 8
  %node55 = getelementptr inbounds %struct.quantum_reg_struct* %47, i32 0, i32 3
  %48 = load %struct.quantum_reg_node_struct** %node55, align 8
  %49 = bitcast %struct.quantum_reg_node_struct* %48 to i8*
  %50 = load %struct.quantum_reg_struct** %reg.addr, align 8
  %size56 = getelementptr inbounds %struct.quantum_reg_struct* %50, i32 0, i32 1
  %51 = load i32* %size56, align 4
  %52 = load i32* %addsize, align 4
  %add = add nsw i32 %51, %52
  %conv = sext i32 %add to i64
  %mul = mul i64 %conv, 16
  %call57 = call i8* @realloc(i8* %49, i64 %mul) #6
  %53 = bitcast i8* %call57 to %struct.quantum_reg_node_struct*
  %54 = load %struct.quantum_reg_struct** %reg.addr, align 8
  %node58 = getelementptr inbounds %struct.quantum_reg_struct* %54, i32 0, i32 3
  store %struct.quantum_reg_node_struct* %53, %struct.quantum_reg_node_struct** %node58, align 8
  %55 = load %struct.quantum_reg_struct** %reg.addr, align 8
  %node59 = getelementptr inbounds %struct.quantum_reg_struct* %55, i32 0, i32 3
  %56 = load %struct.quantum_reg_node_struct** %node59, align 8
  %tobool60 = icmp ne %struct.quantum_reg_node_struct* %56, null
  br i1 %tobool60, label %if.end65, label %if.then61

if.then61:                                        ; preds = %for.end54
  %57 = load %struct.quantum_reg_struct** %reg.addr, align 8
  %size62 = getelementptr inbounds %struct.quantum_reg_struct* %57, i32 0, i32 1
  %58 = load i32* %size62, align 4
  %59 = load i32* %addsize, align 4
  %add63 = add nsw i32 %58, %59
  %call64 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([39 x i8]* @.str2, i32 0, i32 0), i32 %add63)
  call void @exit(i32 1) #9
  unreachable

if.end65:                                         ; preds = %for.end54
  %60 = load i32* %addsize, align 4
  %conv66 = sext i32 %60 to i64
  %mul67 = mul i64 %conv66, 16
  %call68 = call i64 @quantum_memman(i64 %mul67)
  store i32 0, i32* %i, align 4
  br label %for.cond69

for.cond69:                                       ; preds = %for.inc86, %if.end65
  %61 = load i32* %i, align 4
  %62 = load i32* %addsize, align 4
  %cmp70 = icmp slt i32 %61, %62
  br i1 %cmp70, label %for.body72, label %for.end88

for.body72:                                       ; preds = %for.cond69
  %63 = load i32* %i, align 4
  %64 = load %struct.quantum_reg_struct** %reg.addr, align 8
  %size73 = getelementptr inbounds %struct.quantum_reg_struct* %64, i32 0, i32 1
  %65 = load i32* %size73, align 4
  %add74 = add nsw i32 %63, %65
  %idxprom75 = sext i32 %add74 to i64
  %66 = load %struct.quantum_reg_struct** %reg.addr, align 8
  %node76 = getelementptr inbounds %struct.quantum_reg_struct* %66, i32 0, i32 3
  %67 = load %struct.quantum_reg_node_struct** %node76, align 8
  %arrayidx77 = getelementptr inbounds %struct.quantum_reg_node_struct* %67, i64 %idxprom75
  %state78 = getelementptr inbounds %struct.quantum_reg_node_struct* %arrayidx77, i32 0, i32 1
  store i64 0, i64* %state78, align 8
  %68 = load i32* %i, align 4
  %69 = load %struct.quantum_reg_struct** %reg.addr, align 8
  %size79 = getelementptr inbounds %struct.quantum_reg_struct* %69, i32 0, i32 1
  %70 = load i32* %size79, align 4
  %add80 = add nsw i32 %68, %70
  %idxprom81 = sext i32 %add80 to i64
  %71 = load %struct.quantum_reg_struct** %reg.addr, align 8
  %node82 = getelementptr inbounds %struct.quantum_reg_struct* %71, i32 0, i32 3
  %72 = load %struct.quantum_reg_node_struct** %node82, align 8
  %arrayidx83 = getelementptr inbounds %struct.quantum_reg_node_struct* %72, i64 %idxprom81
  %amplitude = getelementptr inbounds %struct.quantum_reg_node_struct* %arrayidx83, i32 0, i32 0
  %real84 = getelementptr inbounds { float, float }* %amplitude, i32 0, i32 0
  %imag85 = getelementptr inbounds { float, float }* %amplitude, i32 0, i32 1
  store float 0.000000e+00, float* %real84, align 4
  store float 0.000000e+00, float* %imag85, align 4
  br label %for.inc86

for.inc86:                                        ; preds = %for.body72
  %73 = load i32* %i, align 4
  %inc87 = add nsw i32 %73, 1
  store i32 %inc87, i32* %i, align 4
  br label %for.cond69

for.end88:                                        ; preds = %for.cond69
  %74 = load %struct.quantum_reg_struct** %reg.addr, align 8
  %size89 = getelementptr inbounds %struct.quantum_reg_struct* %74, i32 0, i32 1
  %75 = load i32* %size89, align 4
  %76 = load i32* %addsize, align 4
  %add90 = add nsw i32 %75, %76
  %conv91 = sext i32 %add90 to i64
  %call92 = call noalias i8* @calloc(i64 %conv91, i64 1) #6
  store i8* %call92, i8** %done, align 8
  %77 = load i8** %done, align 8
  %tobool93 = icmp ne i8* %77, null
  br i1 %tobool93, label %if.end100, label %if.then94

if.then94:                                        ; preds = %for.end88
  %78 = load %struct.quantum_reg_struct** %reg.addr, align 8
  %size95 = getelementptr inbounds %struct.quantum_reg_struct* %78, i32 0, i32 1
  %79 = load i32* %size95, align 4
  %80 = load i32* %addsize, align 4
  %add96 = add nsw i32 %79, %80
  %conv97 = sext i32 %add96 to i64
  %mul98 = mul i64 %conv97, 1
  %call99 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([39 x i8]* @.str3, i32 0, i32 0), i64 %mul98)
  call void @exit(i32 1) #9
  unreachable

if.end100:                                        ; preds = %for.end88
  %81 = load %struct.quantum_reg_struct** %reg.addr, align 8
  %size101 = getelementptr inbounds %struct.quantum_reg_struct* %81, i32 0, i32 1
  %82 = load i32* %size101, align 4
  %conv102 = sext i32 %82 to i64
  %83 = load i32* %addsize, align 4
  %conv103 = sext i32 %83 to i64
  %mul104 = mul i64 %conv103, 1
  %add105 = add i64 %conv102, %mul104
  %call106 = call i64 @quantum_memman(i64 %add105)
  %84 = load %struct.quantum_reg_struct** %reg.addr, align 8
  %size107 = getelementptr inbounds %struct.quantum_reg_struct* %84, i32 0, i32 1
  %85 = load i32* %size107, align 4
  store i32 %85, i32* %k, align 4
  %86 = load %struct.quantum_reg_struct** %reg.addr, align 8
  %width = getelementptr inbounds %struct.quantum_reg_struct* %86, i32 0, i32 0
  %87 = load i32* %width, align 4
  %sh_prom108 = zext i32 %87 to i64
  %shl109 = shl i64 1, %sh_prom108
  %conv110 = uitofp i64 %shl109 to double
  %div = fdiv double 1.000000e+00, %conv110
  %div111 = fdiv double %div, 1.000000e+06
  %conv112 = fptrunc double %div111 to float
  store float %conv112, float* %limit, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond113

for.cond113:                                      ; preds = %for.inc358, %if.end100
  %88 = load i32* %i, align 4
  %89 = load %struct.quantum_reg_struct** %reg.addr, align 8
  %size114 = getelementptr inbounds %struct.quantum_reg_struct* %89, i32 0, i32 1
  %90 = load i32* %size114, align 4
  %cmp115 = icmp slt i32 %88, %90
  br i1 %cmp115, label %for.body117, label %for.end360

for.body117:                                      ; preds = %for.cond113
  %91 = load i32* %i, align 4
  %idxprom118 = sext i32 %91 to i64
  %92 = load i8** %done, align 8
  %arrayidx119 = getelementptr inbounds i8* %92, i64 %idxprom118
  %93 = load i8* %arrayidx119, align 1
  %tobool120 = icmp ne i8 %93, 0
  br i1 %tobool120, label %if.end357, label %if.then121

if.then121:                                       ; preds = %for.body117
  %94 = load i32* %i, align 4
  %idxprom122 = sext i32 %94 to i64
  %95 = load %struct.quantum_reg_struct** %reg.addr, align 8
  %node123 = getelementptr inbounds %struct.quantum_reg_struct* %95, i32 0, i32 3
  %96 = load %struct.quantum_reg_node_struct** %node123, align 8
  %arrayidx124 = getelementptr inbounds %struct.quantum_reg_node_struct* %96, i64 %idxprom122
  %state125 = getelementptr inbounds %struct.quantum_reg_node_struct* %arrayidx124, i32 0, i32 1
  %97 = load i64* %state125, align 8
  %98 = load i32* %target.addr, align 4
  %sh_prom126 = zext i32 %98 to i64
  %shl127 = shl i64 1, %sh_prom126
  %and128 = and i64 %97, %shl127
  %conv129 = trunc i64 %and128 to i32
  store i32 %conv129, i32* %iset, align 4
  %real130 = getelementptr inbounds { float, float }* %tnot, i32 0, i32 0
  %imag131 = getelementptr inbounds { float, float }* %tnot, i32 0, i32 1
  store float 0.000000e+00, float* %real130, align 4
  store float 0.000000e+00, float* %imag131, align 4
  %99 = load i32* %i, align 4
  %idxprom132 = sext i32 %99 to i64
  %100 = load %struct.quantum_reg_struct** %reg.addr, align 8
  %node133 = getelementptr inbounds %struct.quantum_reg_struct* %100, i32 0, i32 3
  %101 = load %struct.quantum_reg_node_struct** %node133, align 8
  %arrayidx134 = getelementptr inbounds %struct.quantum_reg_node_struct* %101, i64 %idxprom132
  %state135 = getelementptr inbounds %struct.quantum_reg_node_struct* %arrayidx134, i32 0, i32 1
  %102 = load i64* %state135, align 8
  %103 = load i32* %target.addr, align 4
  %sh_prom136 = zext i32 %103 to i64
  %shl137 = shl i64 1, %sh_prom136
  %xor138 = xor i64 %102, %shl137
  %104 = load %struct.quantum_reg_struct** %reg.addr, align 8
  %call139 = call i32 @quantum_get_state(i64 %xor138, %struct.quantum_reg_struct* byval align 8 %104)
  store i32 %call139, i32* %j, align 4
  %105 = load i32* %i, align 4
  %idxprom140 = sext i32 %105 to i64
  %106 = load %struct.quantum_reg_struct** %reg.addr, align 8
  %node141 = getelementptr inbounds %struct.quantum_reg_struct* %106, i32 0, i32 3
  %107 = load %struct.quantum_reg_node_struct** %node141, align 8
  %arrayidx142 = getelementptr inbounds %struct.quantum_reg_node_struct* %107, i64 %idxprom140
  %amplitude143 = getelementptr inbounds %struct.quantum_reg_node_struct* %arrayidx142, i32 0, i32 0
  %amplitude143.realp = getelementptr inbounds { float, float }* %amplitude143, i32 0, i32 0
  %amplitude143.real = load float* %amplitude143.realp, align 4
  %amplitude143.imagp = getelementptr inbounds { float, float }* %amplitude143, i32 0, i32 1
  %amplitude143.imag = load float* %amplitude143.imagp, align 4
  %real144 = getelementptr inbounds { float, float }* %t, i32 0, i32 0
  %imag145 = getelementptr inbounds { float, float }* %t, i32 0, i32 1
  store float %amplitude143.real, float* %real144, align 4
  store float %amplitude143.imag, float* %imag145, align 4
  %108 = load i32* %j, align 4
  %cmp146 = icmp sge i32 %108, 0
  br i1 %cmp146, label %if.then148, label %if.end155

if.then148:                                       ; preds = %if.then121
  %109 = load i32* %j, align 4
  %idxprom149 = sext i32 %109 to i64
  %110 = load %struct.quantum_reg_struct** %reg.addr, align 8
  %node150 = getelementptr inbounds %struct.quantum_reg_struct* %110, i32 0, i32 3
  %111 = load %struct.quantum_reg_node_struct** %node150, align 8
  %arrayidx151 = getelementptr inbounds %struct.quantum_reg_node_struct* %111, i64 %idxprom149
  %amplitude152 = getelementptr inbounds %struct.quantum_reg_node_struct* %arrayidx151, i32 0, i32 0
  %amplitude152.realp = getelementptr inbounds { float, float }* %amplitude152, i32 0, i32 0
  %amplitude152.real = load float* %amplitude152.realp, align 4
  %amplitude152.imagp = getelementptr inbounds { float, float }* %amplitude152, i32 0, i32 1
  %amplitude152.imag = load float* %amplitude152.imagp, align 4
  %real153 = getelementptr inbounds { float, float }* %tnot, i32 0, i32 0
  %imag154 = getelementptr inbounds { float, float }* %tnot, i32 0, i32 1
  store float %amplitude152.real, float* %real153, align 4
  store float %amplitude152.imag, float* %imag154, align 4
  br label %if.end155

if.end155:                                        ; preds = %if.then148, %if.then121
  %112 = load i32* %iset, align 4
  %tobool156 = icmp ne i32 %112, 0
  br i1 %tobool156, label %if.then157, label %if.else

if.then157:                                       ; preds = %if.end155
  %t158 = getelementptr inbounds %struct.quantum_matrix_struct* %m, i32 0, i32 2
  %113 = load { float, float }** %t158, align 8
  %arrayidx159 = getelementptr inbounds { float, float }* %113, i64 2
  %arrayidx159.realp = getelementptr inbounds { float, float }* %arrayidx159, i32 0, i32 0
  %arrayidx159.real = load float* %arrayidx159.realp, align 4
  %arrayidx159.imagp = getelementptr inbounds { float, float }* %arrayidx159, i32 0, i32 1
  %arrayidx159.imag = load float* %arrayidx159.imagp, align 4
  %tnot.realp = getelementptr inbounds { float, float }* %tnot, i32 0, i32 0
  %tnot.real = load float* %tnot.realp, align 4
  %tnot.imagp = getelementptr inbounds { float, float }* %tnot, i32 0, i32 1
  %tnot.imag = load float* %tnot.imagp, align 4
  %mul.rl = fmul float %arrayidx159.real, %tnot.real
  %mul.rr = fmul float %arrayidx159.imag, %tnot.imag
  %mul.r = fsub float %mul.rl, %mul.rr
  %mul.il = fmul float %arrayidx159.imag, %tnot.real
  %mul.ir = fmul float %arrayidx159.real, %tnot.imag
  %mul.i = fadd float %mul.il, %mul.ir
  %t160 = getelementptr inbounds %struct.quantum_matrix_struct* %m, i32 0, i32 2
  %114 = load { float, float }** %t160, align 8
  %arrayidx161 = getelementptr inbounds { float, float }* %114, i64 3
  %arrayidx161.realp = getelementptr inbounds { float, float }* %arrayidx161, i32 0, i32 0
  %arrayidx161.real = load float* %arrayidx161.realp, align 4
  %arrayidx161.imagp = getelementptr inbounds { float, float }* %arrayidx161, i32 0, i32 1
  %arrayidx161.imag = load float* %arrayidx161.imagp, align 4
  %t.realp = getelementptr inbounds { float, float }* %t, i32 0, i32 0
  %t.real = load float* %t.realp, align 4
  %t.imagp = getelementptr inbounds { float, float }* %t, i32 0, i32 1
  %t.imag = load float* %t.imagp, align 4
  %mul.rl162 = fmul float %arrayidx161.real, %t.real
  %mul.rr163 = fmul float %arrayidx161.imag, %t.imag
  %mul.r164 = fsub float %mul.rl162, %mul.rr163
  %mul.il165 = fmul float %arrayidx161.imag, %t.real
  %mul.ir166 = fmul float %arrayidx161.real, %t.imag
  %mul.i167 = fadd float %mul.il165, %mul.ir166
  %add.r = fadd float %mul.r, %mul.r164
  %add.i = fadd float %mul.i, %mul.i167
  %115 = load i32* %i, align 4
  %idxprom168 = sext i32 %115 to i64
  %116 = load %struct.quantum_reg_struct** %reg.addr, align 8
  %node169 = getelementptr inbounds %struct.quantum_reg_struct* %116, i32 0, i32 3
  %117 = load %struct.quantum_reg_node_struct** %node169, align 8
  %arrayidx170 = getelementptr inbounds %struct.quantum_reg_node_struct* %117, i64 %idxprom168
  %amplitude171 = getelementptr inbounds %struct.quantum_reg_node_struct* %arrayidx170, i32 0, i32 0
  %real172 = getelementptr inbounds { float, float }* %amplitude171, i32 0, i32 0
  %imag173 = getelementptr inbounds { float, float }* %amplitude171, i32 0, i32 1
  store float %add.r, float* %real172, align 4
  store float %add.i, float* %imag173, align 4
  br label %if.end206

if.else:                                          ; preds = %if.end155
  %t174 = getelementptr inbounds %struct.quantum_matrix_struct* %m, i32 0, i32 2
  %118 = load { float, float }** %t174, align 8
  %arrayidx175 = getelementptr inbounds { float, float }* %118, i64 0
  %arrayidx175.realp = getelementptr inbounds { float, float }* %arrayidx175, i32 0, i32 0
  %arrayidx175.real = load float* %arrayidx175.realp, align 4
  %arrayidx175.imagp = getelementptr inbounds { float, float }* %arrayidx175, i32 0, i32 1
  %arrayidx175.imag = load float* %arrayidx175.imagp, align 4
  %t.realp176 = getelementptr inbounds { float, float }* %t, i32 0, i32 0
  %t.real177 = load float* %t.realp176, align 4
  %t.imagp178 = getelementptr inbounds { float, float }* %t, i32 0, i32 1
  %t.imag179 = load float* %t.imagp178, align 4
  %mul.rl180 = fmul float %arrayidx175.real, %t.real177
  %mul.rr181 = fmul float %arrayidx175.imag, %t.imag179
  %mul.r182 = fsub float %mul.rl180, %mul.rr181
  %mul.il183 = fmul float %arrayidx175.imag, %t.real177
  %mul.ir184 = fmul float %arrayidx175.real, %t.imag179
  %mul.i185 = fadd float %mul.il183, %mul.ir184
  %t186 = getelementptr inbounds %struct.quantum_matrix_struct* %m, i32 0, i32 2
  %119 = load { float, float }** %t186, align 8
  %arrayidx187 = getelementptr inbounds { float, float }* %119, i64 1
  %arrayidx187.realp = getelementptr inbounds { float, float }* %arrayidx187, i32 0, i32 0
  %arrayidx187.real = load float* %arrayidx187.realp, align 4
  %arrayidx187.imagp = getelementptr inbounds { float, float }* %arrayidx187, i32 0, i32 1
  %arrayidx187.imag = load float* %arrayidx187.imagp, align 4
  %tnot.realp188 = getelementptr inbounds { float, float }* %tnot, i32 0, i32 0
  %tnot.real189 = load float* %tnot.realp188, align 4
  %tnot.imagp190 = getelementptr inbounds { float, float }* %tnot, i32 0, i32 1
  %tnot.imag191 = load float* %tnot.imagp190, align 4
  %mul.rl192 = fmul float %arrayidx187.real, %tnot.real189
  %mul.rr193 = fmul float %arrayidx187.imag, %tnot.imag191
  %mul.r194 = fsub float %mul.rl192, %mul.rr193
  %mul.il195 = fmul float %arrayidx187.imag, %tnot.real189
  %mul.ir196 = fmul float %arrayidx187.real, %tnot.imag191
  %mul.i197 = fadd float %mul.il195, %mul.ir196
  %add.r198 = fadd float %mul.r182, %mul.r194
  %add.i199 = fadd float %mul.i185, %mul.i197
  %120 = load i32* %i, align 4
  %idxprom200 = sext i32 %120 to i64
  %121 = load %struct.quantum_reg_struct** %reg.addr, align 8
  %node201 = getelementptr inbounds %struct.quantum_reg_struct* %121, i32 0, i32 3
  %122 = load %struct.quantum_reg_node_struct** %node201, align 8
  %arrayidx202 = getelementptr inbounds %struct.quantum_reg_node_struct* %122, i64 %idxprom200
  %amplitude203 = getelementptr inbounds %struct.quantum_reg_node_struct* %arrayidx202, i32 0, i32 0
  %real204 = getelementptr inbounds { float, float }* %amplitude203, i32 0, i32 0
  %imag205 = getelementptr inbounds { float, float }* %amplitude203, i32 0, i32 1
  store float %add.r198, float* %real204, align 4
  store float %add.i199, float* %imag205, align 4
  br label %if.end206

if.end206:                                        ; preds = %if.else, %if.then157
  %123 = load i32* %j, align 4
  %cmp207 = icmp sge i32 %123, 0
  br i1 %cmp207, label %if.then209, label %if.else278

if.then209:                                       ; preds = %if.end206
  %124 = load i32* %iset, align 4
  %tobool210 = icmp ne i32 %124, 0
  br i1 %tobool210, label %if.then211, label %if.else244

if.then211:                                       ; preds = %if.then209
  %t212 = getelementptr inbounds %struct.quantum_matrix_struct* %m, i32 0, i32 2
  %125 = load { float, float }** %t212, align 8
  %arrayidx213 = getelementptr inbounds { float, float }* %125, i64 0
  %arrayidx213.realp = getelementptr inbounds { float, float }* %arrayidx213, i32 0, i32 0
  %arrayidx213.real = load float* %arrayidx213.realp, align 4
  %arrayidx213.imagp = getelementptr inbounds { float, float }* %arrayidx213, i32 0, i32 1
  %arrayidx213.imag = load float* %arrayidx213.imagp, align 4
  %tnot.realp214 = getelementptr inbounds { float, float }* %tnot, i32 0, i32 0
  %tnot.real215 = load float* %tnot.realp214, align 4
  %tnot.imagp216 = getelementptr inbounds { float, float }* %tnot, i32 0, i32 1
  %tnot.imag217 = load float* %tnot.imagp216, align 4
  %mul.rl218 = fmul float %arrayidx213.real, %tnot.real215
  %mul.rr219 = fmul float %arrayidx213.imag, %tnot.imag217
  %mul.r220 = fsub float %mul.rl218, %mul.rr219
  %mul.il221 = fmul float %arrayidx213.imag, %tnot.real215
  %mul.ir222 = fmul float %arrayidx213.real, %tnot.imag217
  %mul.i223 = fadd float %mul.il221, %mul.ir222
  %t224 = getelementptr inbounds %struct.quantum_matrix_struct* %m, i32 0, i32 2
  %126 = load { float, float }** %t224, align 8
  %arrayidx225 = getelementptr inbounds { float, float }* %126, i64 1
  %arrayidx225.realp = getelementptr inbounds { float, float }* %arrayidx225, i32 0, i32 0
  %arrayidx225.real = load float* %arrayidx225.realp, align 4
  %arrayidx225.imagp = getelementptr inbounds { float, float }* %arrayidx225, i32 0, i32 1
  %arrayidx225.imag = load float* %arrayidx225.imagp, align 4
  %t.realp226 = getelementptr inbounds { float, float }* %t, i32 0, i32 0
  %t.real227 = load float* %t.realp226, align 4
  %t.imagp228 = getelementptr inbounds { float, float }* %t, i32 0, i32 1
  %t.imag229 = load float* %t.imagp228, align 4
  %mul.rl230 = fmul float %arrayidx225.real, %t.real227
  %mul.rr231 = fmul float %arrayidx225.imag, %t.imag229
  %mul.r232 = fsub float %mul.rl230, %mul.rr231
  %mul.il233 = fmul float %arrayidx225.imag, %t.real227
  %mul.ir234 = fmul float %arrayidx225.real, %t.imag229
  %mul.i235 = fadd float %mul.il233, %mul.ir234
  %add.r236 = fadd float %mul.r220, %mul.r232
  %add.i237 = fadd float %mul.i223, %mul.i235
  %127 = load i32* %j, align 4
  %idxprom238 = sext i32 %127 to i64
  %128 = load %struct.quantum_reg_struct** %reg.addr, align 8
  %node239 = getelementptr inbounds %struct.quantum_reg_struct* %128, i32 0, i32 3
  %129 = load %struct.quantum_reg_node_struct** %node239, align 8
  %arrayidx240 = getelementptr inbounds %struct.quantum_reg_node_struct* %129, i64 %idxprom238
  %amplitude241 = getelementptr inbounds %struct.quantum_reg_node_struct* %arrayidx240, i32 0, i32 0
  %real242 = getelementptr inbounds { float, float }* %amplitude241, i32 0, i32 0
  %imag243 = getelementptr inbounds { float, float }* %amplitude241, i32 0, i32 1
  store float %add.r236, float* %real242, align 4
  store float %add.i237, float* %imag243, align 4
  br label %if.end277

if.else244:                                       ; preds = %if.then209
  %t245 = getelementptr inbounds %struct.quantum_matrix_struct* %m, i32 0, i32 2
  %130 = load { float, float }** %t245, align 8
  %arrayidx246 = getelementptr inbounds { float, float }* %130, i64 2
  %arrayidx246.realp = getelementptr inbounds { float, float }* %arrayidx246, i32 0, i32 0
  %arrayidx246.real = load float* %arrayidx246.realp, align 4
  %arrayidx246.imagp = getelementptr inbounds { float, float }* %arrayidx246, i32 0, i32 1
  %arrayidx246.imag = load float* %arrayidx246.imagp, align 4
  %t.realp247 = getelementptr inbounds { float, float }* %t, i32 0, i32 0
  %t.real248 = load float* %t.realp247, align 4
  %t.imagp249 = getelementptr inbounds { float, float }* %t, i32 0, i32 1
  %t.imag250 = load float* %t.imagp249, align 4
  %mul.rl251 = fmul float %arrayidx246.real, %t.real248
  %mul.rr252 = fmul float %arrayidx246.imag, %t.imag250
  %mul.r253 = fsub float %mul.rl251, %mul.rr252
  %mul.il254 = fmul float %arrayidx246.imag, %t.real248
  %mul.ir255 = fmul float %arrayidx246.real, %t.imag250
  %mul.i256 = fadd float %mul.il254, %mul.ir255
  %t257 = getelementptr inbounds %struct.quantum_matrix_struct* %m, i32 0, i32 2
  %131 = load { float, float }** %t257, align 8
  %arrayidx258 = getelementptr inbounds { float, float }* %131, i64 3
  %arrayidx258.realp = getelementptr inbounds { float, float }* %arrayidx258, i32 0, i32 0
  %arrayidx258.real = load float* %arrayidx258.realp, align 4
  %arrayidx258.imagp = getelementptr inbounds { float, float }* %arrayidx258, i32 0, i32 1
  %arrayidx258.imag = load float* %arrayidx258.imagp, align 4
  %tnot.realp259 = getelementptr inbounds { float, float }* %tnot, i32 0, i32 0
  %tnot.real260 = load float* %tnot.realp259, align 4
  %tnot.imagp261 = getelementptr inbounds { float, float }* %tnot, i32 0, i32 1
  %tnot.imag262 = load float* %tnot.imagp261, align 4
  %mul.rl263 = fmul float %arrayidx258.real, %tnot.real260
  %mul.rr264 = fmul float %arrayidx258.imag, %tnot.imag262
  %mul.r265 = fsub float %mul.rl263, %mul.rr264
  %mul.il266 = fmul float %arrayidx258.imag, %tnot.real260
  %mul.ir267 = fmul float %arrayidx258.real, %tnot.imag262
  %mul.i268 = fadd float %mul.il266, %mul.ir267
  %add.r269 = fadd float %mul.r253, %mul.r265
  %add.i270 = fadd float %mul.i256, %mul.i268
  %132 = load i32* %j, align 4
  %idxprom271 = sext i32 %132 to i64
  %133 = load %struct.quantum_reg_struct** %reg.addr, align 8
  %node272 = getelementptr inbounds %struct.quantum_reg_struct* %133, i32 0, i32 3
  %134 = load %struct.quantum_reg_node_struct** %node272, align 8
  %arrayidx273 = getelementptr inbounds %struct.quantum_reg_node_struct* %134, i64 %idxprom271
  %amplitude274 = getelementptr inbounds %struct.quantum_reg_node_struct* %arrayidx273, i32 0, i32 0
  %real275 = getelementptr inbounds { float, float }* %amplitude274, i32 0, i32 0
  %imag276 = getelementptr inbounds { float, float }* %amplitude274, i32 0, i32 1
  store float %add.r269, float* %real275, align 4
  store float %add.i270, float* %imag276, align 4
  br label %if.end277

if.end277:                                        ; preds = %if.else244, %if.then211
  br label %if.end350

if.else278:                                       ; preds = %if.end206
  %t279 = getelementptr inbounds %struct.quantum_matrix_struct* %m, i32 0, i32 2
  %135 = load { float, float }** %t279, align 8
  %arrayidx280 = getelementptr inbounds { float, float }* %135, i64 1
  %arrayidx280.realp = getelementptr inbounds { float, float }* %arrayidx280, i32 0, i32 0
  %arrayidx280.real = load float* %arrayidx280.realp, align 4
  %arrayidx280.imagp = getelementptr inbounds { float, float }* %arrayidx280, i32 0, i32 1
  %arrayidx280.imag = load float* %arrayidx280.imagp, align 4
  %cmp.r281 = fcmp oeq float %arrayidx280.real, 0.000000e+00
  %cmp.i282 = fcmp oeq float %arrayidx280.imag, 0.000000e+00
  %and.ri = and i1 %cmp.r281, %cmp.i282
  br i1 %and.ri, label %land.lhs.true284, label %if.end287

land.lhs.true284:                                 ; preds = %if.else278
  %136 = load i32* %iset, align 4
  %tobool285 = icmp ne i32 %136, 0
  br i1 %tobool285, label %if.then286, label %if.end287

if.then286:                                       ; preds = %land.lhs.true284
  br label %for.end360

if.end287:                                        ; preds = %land.lhs.true284, %if.else278
  %t288 = getelementptr inbounds %struct.quantum_matrix_struct* %m, i32 0, i32 2
  %137 = load { float, float }** %t288, align 8
  %arrayidx289 = getelementptr inbounds { float, float }* %137, i64 2
  %arrayidx289.realp = getelementptr inbounds { float, float }* %arrayidx289, i32 0, i32 0
  %arrayidx289.real = load float* %arrayidx289.realp, align 4
  %arrayidx289.imagp = getelementptr inbounds { float, float }* %arrayidx289, i32 0, i32 1
  %arrayidx289.imag = load float* %arrayidx289.imagp, align 4
  %cmp.r290 = fcmp oeq float %arrayidx289.real, 0.000000e+00
  %cmp.i291 = fcmp oeq float %arrayidx289.imag, 0.000000e+00
  %and.ri292 = and i1 %cmp.r290, %cmp.i291
  br i1 %and.ri292, label %land.lhs.true294, label %if.end297

land.lhs.true294:                                 ; preds = %if.end287
  %138 = load i32* %iset, align 4
  %tobool295 = icmp ne i32 %138, 0
  br i1 %tobool295, label %if.end297, label %if.then296

if.then296:                                       ; preds = %land.lhs.true294
  br label %for.end360

if.end297:                                        ; preds = %land.lhs.true294, %if.end287
  %139 = load i32* %i, align 4
  %idxprom298 = sext i32 %139 to i64
  %140 = load %struct.quantum_reg_struct** %reg.addr, align 8
  %node299 = getelementptr inbounds %struct.quantum_reg_struct* %140, i32 0, i32 3
  %141 = load %struct.quantum_reg_node_struct** %node299, align 8
  %arrayidx300 = getelementptr inbounds %struct.quantum_reg_node_struct* %141, i64 %idxprom298
  %state301 = getelementptr inbounds %struct.quantum_reg_node_struct* %arrayidx300, i32 0, i32 1
  %142 = load i64* %state301, align 8
  %143 = load i32* %target.addr, align 4
  %sh_prom302 = zext i32 %143 to i64
  %shl303 = shl i64 1, %sh_prom302
  %xor304 = xor i64 %142, %shl303
  %144 = load i32* %k, align 4
  %idxprom305 = sext i32 %144 to i64
  %145 = load %struct.quantum_reg_struct** %reg.addr, align 8
  %node306 = getelementptr inbounds %struct.quantum_reg_struct* %145, i32 0, i32 3
  %146 = load %struct.quantum_reg_node_struct** %node306, align 8
  %arrayidx307 = getelementptr inbounds %struct.quantum_reg_node_struct* %146, i64 %idxprom305
  %state308 = getelementptr inbounds %struct.quantum_reg_node_struct* %arrayidx307, i32 0, i32 1
  store i64 %xor304, i64* %state308, align 8
  %147 = load i32* %iset, align 4
  %tobool309 = icmp ne i32 %147, 0
  br i1 %tobool309, label %if.then310, label %if.else329

if.then310:                                       ; preds = %if.end297
  %t311 = getelementptr inbounds %struct.quantum_matrix_struct* %m, i32 0, i32 2
  %148 = load { float, float }** %t311, align 8
  %arrayidx312 = getelementptr inbounds { float, float }* %148, i64 1
  %arrayidx312.realp = getelementptr inbounds { float, float }* %arrayidx312, i32 0, i32 0
  %arrayidx312.real = load float* %arrayidx312.realp, align 4
  %arrayidx312.imagp = getelementptr inbounds { float, float }* %arrayidx312, i32 0, i32 1
  %arrayidx312.imag = load float* %arrayidx312.imagp, align 4
  %t.realp313 = getelementptr inbounds { float, float }* %t, i32 0, i32 0
  %t.real314 = load float* %t.realp313, align 4
  %t.imagp315 = getelementptr inbounds { float, float }* %t, i32 0, i32 1
  %t.imag316 = load float* %t.imagp315, align 4
  %mul.rl317 = fmul float %arrayidx312.real, %t.real314
  %mul.rr318 = fmul float %arrayidx312.imag, %t.imag316
  %mul.r319 = fsub float %mul.rl317, %mul.rr318
  %mul.il320 = fmul float %arrayidx312.imag, %t.real314
  %mul.ir321 = fmul float %arrayidx312.real, %t.imag316
  %mul.i322 = fadd float %mul.il320, %mul.ir321
  %149 = load i32* %k, align 4
  %idxprom323 = sext i32 %149 to i64
  %150 = load %struct.quantum_reg_struct** %reg.addr, align 8
  %node324 = getelementptr inbounds %struct.quantum_reg_struct* %150, i32 0, i32 3
  %151 = load %struct.quantum_reg_node_struct** %node324, align 8
  %arrayidx325 = getelementptr inbounds %struct.quantum_reg_node_struct* %151, i64 %idxprom323
  %amplitude326 = getelementptr inbounds %struct.quantum_reg_node_struct* %arrayidx325, i32 0, i32 0
  %real327 = getelementptr inbounds { float, float }* %amplitude326, i32 0, i32 0
  %imag328 = getelementptr inbounds { float, float }* %amplitude326, i32 0, i32 1
  store float %mul.r319, float* %real327, align 4
  store float %mul.i322, float* %imag328, align 4
  br label %if.end348

if.else329:                                       ; preds = %if.end297
  %t330 = getelementptr inbounds %struct.quantum_matrix_struct* %m, i32 0, i32 2
  %152 = load { float, float }** %t330, align 8
  %arrayidx331 = getelementptr inbounds { float, float }* %152, i64 2
  %arrayidx331.realp = getelementptr inbounds { float, float }* %arrayidx331, i32 0, i32 0
  %arrayidx331.real = load float* %arrayidx331.realp, align 4
  %arrayidx331.imagp = getelementptr inbounds { float, float }* %arrayidx331, i32 0, i32 1
  %arrayidx331.imag = load float* %arrayidx331.imagp, align 4
  %t.realp332 = getelementptr inbounds { float, float }* %t, i32 0, i32 0
  %t.real333 = load float* %t.realp332, align 4
  %t.imagp334 = getelementptr inbounds { float, float }* %t, i32 0, i32 1
  %t.imag335 = load float* %t.imagp334, align 4
  %mul.rl336 = fmul float %arrayidx331.real, %t.real333
  %mul.rr337 = fmul float %arrayidx331.imag, %t.imag335
  %mul.r338 = fsub float %mul.rl336, %mul.rr337
  %mul.il339 = fmul float %arrayidx331.imag, %t.real333
  %mul.ir340 = fmul float %arrayidx331.real, %t.imag335
  %mul.i341 = fadd float %mul.il339, %mul.ir340
  %153 = load i32* %k, align 4
  %idxprom342 = sext i32 %153 to i64
  %154 = load %struct.quantum_reg_struct** %reg.addr, align 8
  %node343 = getelementptr inbounds %struct.quantum_reg_struct* %154, i32 0, i32 3
  %155 = load %struct.quantum_reg_node_struct** %node343, align 8
  %arrayidx344 = getelementptr inbounds %struct.quantum_reg_node_struct* %155, i64 %idxprom342
  %amplitude345 = getelementptr inbounds %struct.quantum_reg_node_struct* %arrayidx344, i32 0, i32 0
  %real346 = getelementptr inbounds { float, float }* %amplitude345, i32 0, i32 0
  %imag347 = getelementptr inbounds { float, float }* %amplitude345, i32 0, i32 1
  store float %mul.r338, float* %real346, align 4
  store float %mul.i341, float* %imag347, align 4
  br label %if.end348

if.end348:                                        ; preds = %if.else329, %if.then310
  %156 = load i32* %k, align 4
  %inc349 = add nsw i32 %156, 1
  store i32 %inc349, i32* %k, align 4
  br label %if.end350

if.end350:                                        ; preds = %if.end348, %if.end277
  %157 = load i32* %j, align 4
  %cmp351 = icmp sge i32 %157, 0
  br i1 %cmp351, label %if.then353, label %if.end356

if.then353:                                       ; preds = %if.end350
  %158 = load i32* %j, align 4
  %idxprom354 = sext i32 %158 to i64
  %159 = load i8** %done, align 8
  %arrayidx355 = getelementptr inbounds i8* %159, i64 %idxprom354
  store i8 1, i8* %arrayidx355, align 1
  br label %if.end356

if.end356:                                        ; preds = %if.then353, %if.end350
  br label %if.end357

if.end357:                                        ; preds = %if.end356, %for.body117
  br label %for.inc358

for.inc358:                                       ; preds = %if.end357
  %160 = load i32* %i, align 4
  %inc359 = add nsw i32 %160, 1
  store i32 %inc359, i32* %i, align 4
  br label %for.cond113

for.end360:                                       ; preds = %if.then296, %if.then286, %for.cond113
  %161 = load i32* %addsize, align 4
  %162 = load %struct.quantum_reg_struct** %reg.addr, align 8
  %size361 = getelementptr inbounds %struct.quantum_reg_struct* %162, i32 0, i32 1
  %163 = load i32* %size361, align 4
  %add362 = add nsw i32 %163, %161
  store i32 %add362, i32* %size361, align 4
  %164 = load i8** %done, align 8
  call void @free(i8* %164) #6
  %165 = load %struct.quantum_reg_struct** %reg.addr, align 8
  %size363 = getelementptr inbounds %struct.quantum_reg_struct* %165, i32 0, i32 1
  %166 = load i32* %size363, align 4
  %sub = sub nsw i32 0, %166
  %conv364 = sext i32 %sub to i64
  %mul365 = mul i64 %conv364, 1
  %call366 = call i64 @quantum_memman(i64 %mul365)
  store i32 0, i32* %i, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond367

for.cond367:                                      ; preds = %for.inc409, %for.end360
  %167 = load i32* %i, align 4
  %168 = load %struct.quantum_reg_struct** %reg.addr, align 8
  %size368 = getelementptr inbounds %struct.quantum_reg_struct* %168, i32 0, i32 1
  %169 = load i32* %size368, align 4
  %cmp369 = icmp slt i32 %167, %169
  br i1 %cmp369, label %for.body371, label %for.end411

for.body371:                                      ; preds = %for.cond367
  %170 = load i32* %i, align 4
  %idxprom372 = sext i32 %170 to i64
  %171 = load %struct.quantum_reg_struct** %reg.addr, align 8
  %node373 = getelementptr inbounds %struct.quantum_reg_struct* %171, i32 0, i32 3
  %172 = load %struct.quantum_reg_node_struct** %node373, align 8
  %arrayidx374 = getelementptr inbounds %struct.quantum_reg_node_struct* %172, i64 %idxprom372
  %amplitude375 = getelementptr inbounds %struct.quantum_reg_node_struct* %arrayidx374, i32 0, i32 0
  %amplitude375.realp = getelementptr inbounds { float, float }* %amplitude375, i32 0, i32 0
  %amplitude375.real = load float* %amplitude375.realp, align 4
  %amplitude375.imagp = getelementptr inbounds { float, float }* %amplitude375, i32 0, i32 1
  %amplitude375.imag = load float* %amplitude375.imagp, align 4
  %real376 = getelementptr inbounds { float, float }* %coerce, i32 0, i32 0
  %imag377 = getelementptr inbounds { float, float }* %coerce, i32 0, i32 1
  store float %amplitude375.real, float* %real376, align 4
  store float %amplitude375.imag, float* %imag377, align 4
  %173 = bitcast { float, float }* %coerce to <2 x float>*
  %174 = load <2 x float>* %173, align 1
  %call378 = call float @quantum_prob_inline7(<2 x float> %174)
  %175 = load float* %limit, align 4
  %cmp379 = fcmp olt float %call378, %175
  br i1 %cmp379, label %if.then381, label %if.else384

if.then381:                                       ; preds = %for.body371
  %176 = load i32* %j, align 4
  %inc382 = add nsw i32 %176, 1
  store i32 %inc382, i32* %j, align 4
  %177 = load i32* %decsize, align 4
  %inc383 = add nsw i32 %177, 1
  store i32 %inc383, i32* %decsize, align 4
  br label %if.end408

if.else384:                                       ; preds = %for.body371
  %178 = load i32* %j, align 4
  %tobool385 = icmp ne i32 %178, 0
  br i1 %tobool385, label %if.then386, label %if.end407

if.then386:                                       ; preds = %if.else384
  %179 = load i32* %i, align 4
  %idxprom387 = sext i32 %179 to i64
  %180 = load %struct.quantum_reg_struct** %reg.addr, align 8
  %node388 = getelementptr inbounds %struct.quantum_reg_struct* %180, i32 0, i32 3
  %181 = load %struct.quantum_reg_node_struct** %node388, align 8
  %arrayidx389 = getelementptr inbounds %struct.quantum_reg_node_struct* %181, i64 %idxprom387
  %state390 = getelementptr inbounds %struct.quantum_reg_node_struct* %arrayidx389, i32 0, i32 1
  %182 = load i64* %state390, align 8
  %183 = load i32* %i, align 4
  %184 = load i32* %j, align 4
  %sub391 = sub nsw i32 %183, %184
  %idxprom392 = sext i32 %sub391 to i64
  %185 = load %struct.quantum_reg_struct** %reg.addr, align 8
  %node393 = getelementptr inbounds %struct.quantum_reg_struct* %185, i32 0, i32 3
  %186 = load %struct.quantum_reg_node_struct** %node393, align 8
  %arrayidx394 = getelementptr inbounds %struct.quantum_reg_node_struct* %186, i64 %idxprom392
  %state395 = getelementptr inbounds %struct.quantum_reg_node_struct* %arrayidx394, i32 0, i32 1
  store i64 %182, i64* %state395, align 8
  %187 = load i32* %i, align 4
  %idxprom396 = sext i32 %187 to i64
  %188 = load %struct.quantum_reg_struct** %reg.addr, align 8
  %node397 = getelementptr inbounds %struct.quantum_reg_struct* %188, i32 0, i32 3
  %189 = load %struct.quantum_reg_node_struct** %node397, align 8
  %arrayidx398 = getelementptr inbounds %struct.quantum_reg_node_struct* %189, i64 %idxprom396
  %amplitude399 = getelementptr inbounds %struct.quantum_reg_node_struct* %arrayidx398, i32 0, i32 0
  %amplitude399.realp = getelementptr inbounds { float, float }* %amplitude399, i32 0, i32 0
  %amplitude399.real = load float* %amplitude399.realp, align 4
  %amplitude399.imagp = getelementptr inbounds { float, float }* %amplitude399, i32 0, i32 1
  %amplitude399.imag = load float* %amplitude399.imagp, align 4
  %190 = load i32* %i, align 4
  %191 = load i32* %j, align 4
  %sub400 = sub nsw i32 %190, %191
  %idxprom401 = sext i32 %sub400 to i64
  %192 = load %struct.quantum_reg_struct** %reg.addr, align 8
  %node402 = getelementptr inbounds %struct.quantum_reg_struct* %192, i32 0, i32 3
  %193 = load %struct.quantum_reg_node_struct** %node402, align 8
  %arrayidx403 = getelementptr inbounds %struct.quantum_reg_node_struct* %193, i64 %idxprom401
  %amplitude404 = getelementptr inbounds %struct.quantum_reg_node_struct* %arrayidx403, i32 0, i32 0
  %real405 = getelementptr inbounds { float, float }* %amplitude404, i32 0, i32 0
  %imag406 = getelementptr inbounds { float, float }* %amplitude404, i32 0, i32 1
  store float %amplitude399.real, float* %real405, align 4
  store float %amplitude399.imag, float* %imag406, align 4
  br label %if.end407

if.end407:                                        ; preds = %if.then386, %if.else384
  br label %if.end408

if.end408:                                        ; preds = %if.end407, %if.then381
  br label %for.inc409

for.inc409:                                       ; preds = %if.end408
  %194 = load i32* %i, align 4
  %inc410 = add nsw i32 %194, 1
  store i32 %inc410, i32* %i, align 4
  br label %for.cond367

for.end411:                                       ; preds = %for.cond367
  %195 = load i32* %decsize, align 4
  %tobool412 = icmp ne i32 %195, 0
  br i1 %tobool412, label %if.then413, label %if.end433

if.then413:                                       ; preds = %for.end411
  %196 = load i32* %decsize, align 4
  %197 = load %struct.quantum_reg_struct** %reg.addr, align 8
  %size414 = getelementptr inbounds %struct.quantum_reg_struct* %197, i32 0, i32 1
  %198 = load i32* %size414, align 4
  %sub415 = sub nsw i32 %198, %196
  store i32 %sub415, i32* %size414, align 4
  %199 = load %struct.quantum_reg_struct** %reg.addr, align 8
  %node416 = getelementptr inbounds %struct.quantum_reg_struct* %199, i32 0, i32 3
  %200 = load %struct.quantum_reg_node_struct** %node416, align 8
  %201 = bitcast %struct.quantum_reg_node_struct* %200 to i8*
  %202 = load %struct.quantum_reg_struct** %reg.addr, align 8
  %size417 = getelementptr inbounds %struct.quantum_reg_struct* %202, i32 0, i32 1
  %203 = load i32* %size417, align 4
  %conv418 = sext i32 %203 to i64
  %mul419 = mul i64 %conv418, 16
  %call420 = call i8* @realloc(i8* %201, i64 %mul419) #6
  %204 = bitcast i8* %call420 to %struct.quantum_reg_node_struct*
  %205 = load %struct.quantum_reg_struct** %reg.addr, align 8
  %node421 = getelementptr inbounds %struct.quantum_reg_struct* %205, i32 0, i32 3
  store %struct.quantum_reg_node_struct* %204, %struct.quantum_reg_node_struct** %node421, align 8
  %206 = load %struct.quantum_reg_struct** %reg.addr, align 8
  %node422 = getelementptr inbounds %struct.quantum_reg_struct* %206, i32 0, i32 3
  %207 = load %struct.quantum_reg_node_struct** %node422, align 8
  %tobool423 = icmp ne %struct.quantum_reg_node_struct* %207, null
  br i1 %tobool423, label %if.end428, label %if.then424

if.then424:                                       ; preds = %if.then413
  %208 = load %struct.quantum_reg_struct** %reg.addr, align 8
  %size425 = getelementptr inbounds %struct.quantum_reg_struct* %208, i32 0, i32 1
  %209 = load i32* %size425, align 4
  %210 = load i32* %addsize, align 4
  %add426 = add nsw i32 %209, %210
  %call427 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([39 x i8]* @.str2, i32 0, i32 0), i32 %add426)
  call void @exit(i32 1) #9
  unreachable

if.end428:                                        ; preds = %if.then413
  %211 = load i32* %decsize, align 4
  %sub429 = sub nsw i32 0, %211
  %conv430 = sext i32 %sub429 to i64
  %mul431 = mul i64 %conv430, 16
  %call432 = call i64 @quantum_memman(i64 %mul431)
  br label %if.end433

if.end433:                                        ; preds = %if.end428, %for.end411
  %212 = load %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_decohere(%struct.quantum_reg_struct* %212)
  ret void
}

; Function Attrs: nounwind uwtable
define void @quantum_hadamard(i32 %target, %struct.quantum_reg_struct* %reg) #0 {
entry:
  %target.addr = alloca i32, align 4
  %reg.addr = alloca %struct.quantum_reg_struct*, align 8
  %m = alloca %struct.quantum_matrix_struct, align 8
  %coerce = alloca %struct.quantum_matrix_struct, align 8
  store i32 %target, i32* %target.addr, align 4
  store %struct.quantum_reg_struct* %reg, %struct.quantum_reg_struct** %reg.addr, align 8
  %0 = load i32* %target.addr, align 4
  %call = call i32 (i8, ...)* @quantum_objcode_put(i8 zeroext 6, i32 %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %call1 = call { i64, { float, float }* } @quantum_new_matrix(i32 2, i32 2)
  %1 = bitcast %struct.quantum_matrix_struct* %coerce to { i64, { float, float }* }*
  %2 = getelementptr { i64, { float, float }* }* %1, i32 0, i32 0
  %3 = extractvalue { i64, { float, float }* } %call1, 0
  store i64 %3, i64* %2, align 1
  %4 = getelementptr { i64, { float, float }* }* %1, i32 0, i32 1
  %5 = extractvalue { i64, { float, float }* } %call1, 1
  store { float, float }* %5, { float, float }** %4, align 1
  %6 = bitcast %struct.quantum_matrix_struct* %m to i8*
  %7 = bitcast %struct.quantum_matrix_struct* %coerce to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* %7, i64 16, i32 8, i1 false)
  %call2 = call double @sqrt(double 5.000000e-01) #6
  %conv = fptrunc double %call2 to float
  %t = getelementptr inbounds %struct.quantum_matrix_struct* %m, i32 0, i32 2
  %8 = load { float, float }** %t, align 8
  %arrayidx = getelementptr inbounds { float, float }* %8, i64 0
  %real = getelementptr inbounds { float, float }* %arrayidx, i32 0, i32 0
  %imag = getelementptr inbounds { float, float }* %arrayidx, i32 0, i32 1
  store float %conv, float* %real, align 4
  store float 0.000000e+00, float* %imag, align 4
  %call3 = call double @sqrt(double 5.000000e-01) #6
  %conv4 = fptrunc double %call3 to float
  %t5 = getelementptr inbounds %struct.quantum_matrix_struct* %m, i32 0, i32 2
  %9 = load { float, float }** %t5, align 8
  %arrayidx6 = getelementptr inbounds { float, float }* %9, i64 1
  %real7 = getelementptr inbounds { float, float }* %arrayidx6, i32 0, i32 0
  %imag8 = getelementptr inbounds { float, float }* %arrayidx6, i32 0, i32 1
  store float %conv4, float* %real7, align 4
  store float 0.000000e+00, float* %imag8, align 4
  %call9 = call double @sqrt(double 5.000000e-01) #6
  %conv10 = fptrunc double %call9 to float
  %t11 = getelementptr inbounds %struct.quantum_matrix_struct* %m, i32 0, i32 2
  %10 = load { float, float }** %t11, align 8
  %arrayidx12 = getelementptr inbounds { float, float }* %10, i64 2
  %real13 = getelementptr inbounds { float, float }* %arrayidx12, i32 0, i32 0
  %imag14 = getelementptr inbounds { float, float }* %arrayidx12, i32 0, i32 1
  store float %conv10, float* %real13, align 4
  store float 0.000000e+00, float* %imag14, align 4
  %call15 = call double @sqrt(double 5.000000e-01) #6
  %sub = fsub double -0.000000e+00, %call15
  %conv16 = fptrunc double %sub to float
  %t17 = getelementptr inbounds %struct.quantum_matrix_struct* %m, i32 0, i32 2
  %11 = load { float, float }** %t17, align 8
  %arrayidx18 = getelementptr inbounds { float, float }* %11, i64 3
  %real19 = getelementptr inbounds { float, float }* %arrayidx18, i32 0, i32 0
  %imag20 = getelementptr inbounds { float, float }* %arrayidx18, i32 0, i32 1
  store float %conv16, float* %real19, align 4
  store float 0.000000e+00, float* %imag20, align 4
  %12 = load i32* %target.addr, align 4
  %13 = load %struct.quantum_reg_struct** %reg.addr, align 8
  %14 = bitcast %struct.quantum_matrix_struct* %m to { i64, { float, float }* }*
  %15 = getelementptr { i64, { float, float }* }* %14, i32 0, i32 0
  %16 = load i64* %15, align 1
  %17 = getelementptr { i64, { float, float }* }* %14, i32 0, i32 1
  %18 = load { float, float }** %17, align 1
  call void @quantum_gate1(i32 %12, i64 %16, { float, float }* %18, %struct.quantum_reg_struct* %13)
  call void @quantum_delete_matrix(%struct.quantum_matrix_struct* %m)
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #6

; Function Attrs: nounwind uwtable
define void @quantum_walsh(i32 %width, %struct.quantum_reg_struct* %reg) #0 {
entry:
  %width.addr = alloca i32, align 4
  %reg.addr = alloca %struct.quantum_reg_struct*, align 8
  %i = alloca i32, align 4
  store i32 %width, i32* %width.addr, align 4
  store %struct.quantum_reg_struct* %reg, %struct.quantum_reg_struct** %reg.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32* %i, align 4
  %1 = load i32* %width.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32* %i, align 4
  %3 = load %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_hadamard(i32 %2, %struct.quantum_reg_struct* %3)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load i32* %i, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @quantum_r_x(i32 %target, float %gamma, %struct.quantum_reg_struct* %reg) #0 {
entry:
  %target.addr = alloca i32, align 4
  %gamma.addr = alloca float, align 4
  %reg.addr = alloca %struct.quantum_reg_struct*, align 8
  %m = alloca %struct.quantum_matrix_struct, align 8
  %coerce = alloca %struct.quantum_matrix_struct, align 8
  store i32 %target, i32* %target.addr, align 4
  store float %gamma, float* %gamma.addr, align 4
  store %struct.quantum_reg_struct* %reg, %struct.quantum_reg_struct** %reg.addr, align 8
  %0 = load i32* %target.addr, align 4
  %1 = load float* %gamma.addr, align 4
  %conv = fpext float %1 to double
  %call = call i32 (i8, ...)* @quantum_objcode_put(i8 zeroext 7, i32 %0, double %conv)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %call1 = call { i64, { float, float }* } @quantum_new_matrix(i32 2, i32 2)
  %2 = bitcast %struct.quantum_matrix_struct* %coerce to { i64, { float, float }* }*
  %3 = getelementptr { i64, { float, float }* }* %2, i32 0, i32 0
  %4 = extractvalue { i64, { float, float }* } %call1, 0
  store i64 %4, i64* %3, align 1
  %5 = getelementptr { i64, { float, float }* }* %2, i32 0, i32 1
  %6 = extractvalue { i64, { float, float }* } %call1, 1
  store { float, float }* %6, { float, float }** %5, align 1
  %7 = bitcast %struct.quantum_matrix_struct* %m to i8*
  %8 = bitcast %struct.quantum_matrix_struct* %coerce to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %7, i8* %8, i64 16, i32 8, i1 false)
  %9 = load float* %gamma.addr, align 4
  %div = fdiv float %9, 2.000000e+00
  %conv2 = fpext float %div to double
  %call3 = call double @cos(double %conv2) #6
  %conv4 = fptrunc double %call3 to float
  %t = getelementptr inbounds %struct.quantum_matrix_struct* %m, i32 0, i32 2
  %10 = load { float, float }** %t, align 8
  %arrayidx = getelementptr inbounds { float, float }* %10, i64 0
  %real = getelementptr inbounds { float, float }* %arrayidx, i32 0, i32 0
  %imag = getelementptr inbounds { float, float }* %arrayidx, i32 0, i32 1
  store float %conv4, float* %real, align 4
  store float 0.000000e+00, float* %imag, align 4
  %11 = load float* %gamma.addr, align 4
  %div5 = fdiv float %11, 2.000000e+00
  %conv6 = fpext float %div5 to double
  %call7 = call double @sin(double %conv6) #6
  %mul.rl = fmul double -0.000000e+00, %call7
  %mul.r = fsub double %mul.rl, -0.000000e+00
  %mul.il = fmul double -1.000000e+00, %call7
  %mul.i = fadd double %mul.il, -0.000000e+00
  %conv8 = fptrunc double %mul.r to float
  %conv9 = fptrunc double %mul.i to float
  %t10 = getelementptr inbounds %struct.quantum_matrix_struct* %m, i32 0, i32 2
  %12 = load { float, float }** %t10, align 8
  %arrayidx11 = getelementptr inbounds { float, float }* %12, i64 1
  %real12 = getelementptr inbounds { float, float }* %arrayidx11, i32 0, i32 0
  %imag13 = getelementptr inbounds { float, float }* %arrayidx11, i32 0, i32 1
  store float %conv8, float* %real12, align 4
  store float %conv9, float* %imag13, align 4
  %13 = load float* %gamma.addr, align 4
  %div14 = fdiv float %13, 2.000000e+00
  %conv15 = fpext float %div14 to double
  %call16 = call double @sin(double %conv15) #6
  %mul.rl17 = fmul double -0.000000e+00, %call16
  %mul.r18 = fsub double %mul.rl17, -0.000000e+00
  %mul.il19 = fmul double -1.000000e+00, %call16
  %mul.i20 = fadd double %mul.il19, -0.000000e+00
  %conv21 = fptrunc double %mul.r18 to float
  %conv22 = fptrunc double %mul.i20 to float
  %t23 = getelementptr inbounds %struct.quantum_matrix_struct* %m, i32 0, i32 2
  %14 = load { float, float }** %t23, align 8
  %arrayidx24 = getelementptr inbounds { float, float }* %14, i64 2
  %real25 = getelementptr inbounds { float, float }* %arrayidx24, i32 0, i32 0
  %imag26 = getelementptr inbounds { float, float }* %arrayidx24, i32 0, i32 1
  store float %conv21, float* %real25, align 4
  store float %conv22, float* %imag26, align 4
  %15 = load float* %gamma.addr, align 4
  %div27 = fdiv float %15, 2.000000e+00
  %conv28 = fpext float %div27 to double
  %call29 = call double @cos(double %conv28) #6
  %conv30 = fptrunc double %call29 to float
  %t31 = getelementptr inbounds %struct.quantum_matrix_struct* %m, i32 0, i32 2
  %16 = load { float, float }** %t31, align 8
  %arrayidx32 = getelementptr inbounds { float, float }* %16, i64 3
  %real33 = getelementptr inbounds { float, float }* %arrayidx32, i32 0, i32 0
  %imag34 = getelementptr inbounds { float, float }* %arrayidx32, i32 0, i32 1
  store float %conv30, float* %real33, align 4
  store float 0.000000e+00, float* %imag34, align 4
  %17 = load i32* %target.addr, align 4
  %18 = load %struct.quantum_reg_struct** %reg.addr, align 8
  %19 = bitcast %struct.quantum_matrix_struct* %m to { i64, { float, float }* }*
  %20 = getelementptr { i64, { float, float }* }* %19, i32 0, i32 0
  %21 = load i64* %20, align 1
  %22 = getelementptr { i64, { float, float }* }* %19, i32 0, i32 1
  %23 = load { float, float }** %22, align 1
  call void @quantum_gate1(i32 %17, i64 %21, { float, float }* %23, %struct.quantum_reg_struct* %18)
  call void @quantum_delete_matrix(%struct.quantum_matrix_struct* %m)
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define void @quantum_r_y(i32 %target, float %gamma, %struct.quantum_reg_struct* %reg) #0 {
entry:
  %target.addr = alloca i32, align 4
  %gamma.addr = alloca float, align 4
  %reg.addr = alloca %struct.quantum_reg_struct*, align 8
  %m = alloca %struct.quantum_matrix_struct, align 8
  %coerce = alloca %struct.quantum_matrix_struct, align 8
  store i32 %target, i32* %target.addr, align 4
  store float %gamma, float* %gamma.addr, align 4
  store %struct.quantum_reg_struct* %reg, %struct.quantum_reg_struct** %reg.addr, align 8
  %0 = load i32* %target.addr, align 4
  %1 = load float* %gamma.addr, align 4
  %conv = fpext float %1 to double
  %call = call i32 (i8, ...)* @quantum_objcode_put(i8 zeroext 8, i32 %0, double %conv)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %call1 = call { i64, { float, float }* } @quantum_new_matrix(i32 2, i32 2)
  %2 = bitcast %struct.quantum_matrix_struct* %coerce to { i64, { float, float }* }*
  %3 = getelementptr { i64, { float, float }* }* %2, i32 0, i32 0
  %4 = extractvalue { i64, { float, float }* } %call1, 0
  store i64 %4, i64* %3, align 1
  %5 = getelementptr { i64, { float, float }* }* %2, i32 0, i32 1
  %6 = extractvalue { i64, { float, float }* } %call1, 1
  store { float, float }* %6, { float, float }** %5, align 1
  %7 = bitcast %struct.quantum_matrix_struct* %m to i8*
  %8 = bitcast %struct.quantum_matrix_struct* %coerce to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %7, i8* %8, i64 16, i32 8, i1 false)
  %9 = load float* %gamma.addr, align 4
  %div = fdiv float %9, 2.000000e+00
  %conv2 = fpext float %div to double
  %call3 = call double @cos(double %conv2) #6
  %conv4 = fptrunc double %call3 to float
  %t = getelementptr inbounds %struct.quantum_matrix_struct* %m, i32 0, i32 2
  %10 = load { float, float }** %t, align 8
  %arrayidx = getelementptr inbounds { float, float }* %10, i64 0
  %real = getelementptr inbounds { float, float }* %arrayidx, i32 0, i32 0
  %imag = getelementptr inbounds { float, float }* %arrayidx, i32 0, i32 1
  store float %conv4, float* %real, align 4
  store float 0.000000e+00, float* %imag, align 4
  %11 = load float* %gamma.addr, align 4
  %div5 = fdiv float %11, 2.000000e+00
  %conv6 = fpext float %div5 to double
  %call7 = call double @sin(double %conv6) #6
  %sub = fsub double -0.000000e+00, %call7
  %conv8 = fptrunc double %sub to float
  %t9 = getelementptr inbounds %struct.quantum_matrix_struct* %m, i32 0, i32 2
  %12 = load { float, float }** %t9, align 8
  %arrayidx10 = getelementptr inbounds { float, float }* %12, i64 1
  %real11 = getelementptr inbounds { float, float }* %arrayidx10, i32 0, i32 0
  %imag12 = getelementptr inbounds { float, float }* %arrayidx10, i32 0, i32 1
  store float %conv8, float* %real11, align 4
  store float 0.000000e+00, float* %imag12, align 4
  %13 = load float* %gamma.addr, align 4
  %div13 = fdiv float %13, 2.000000e+00
  %conv14 = fpext float %div13 to double
  %call15 = call double @sin(double %conv14) #6
  %conv16 = fptrunc double %call15 to float
  %t17 = getelementptr inbounds %struct.quantum_matrix_struct* %m, i32 0, i32 2
  %14 = load { float, float }** %t17, align 8
  %arrayidx18 = getelementptr inbounds { float, float }* %14, i64 2
  %real19 = getelementptr inbounds { float, float }* %arrayidx18, i32 0, i32 0
  %imag20 = getelementptr inbounds { float, float }* %arrayidx18, i32 0, i32 1
  store float %conv16, float* %real19, align 4
  store float 0.000000e+00, float* %imag20, align 4
  %15 = load float* %gamma.addr, align 4
  %div21 = fdiv float %15, 2.000000e+00
  %conv22 = fpext float %div21 to double
  %call23 = call double @cos(double %conv22) #6
  %conv24 = fptrunc double %call23 to float
  %t25 = getelementptr inbounds %struct.quantum_matrix_struct* %m, i32 0, i32 2
  %16 = load { float, float }** %t25, align 8
  %arrayidx26 = getelementptr inbounds { float, float }* %16, i64 3
  %real27 = getelementptr inbounds { float, float }* %arrayidx26, i32 0, i32 0
  %imag28 = getelementptr inbounds { float, float }* %arrayidx26, i32 0, i32 1
  store float %conv24, float* %real27, align 4
  store float 0.000000e+00, float* %imag28, align 4
  %17 = load i32* %target.addr, align 4
  %18 = load %struct.quantum_reg_struct** %reg.addr, align 8
  %19 = bitcast %struct.quantum_matrix_struct* %m to { i64, { float, float }* }*
  %20 = getelementptr { i64, { float, float }* }* %19, i32 0, i32 0
  %21 = load i64* %20, align 1
  %22 = getelementptr { i64, { float, float }* }* %19, i32 0, i32 1
  %23 = load { float, float }** %22, align 1
  call void @quantum_gate1(i32 %17, i64 %21, { float, float }* %23, %struct.quantum_reg_struct* %18)
  call void @quantum_delete_matrix(%struct.quantum_matrix_struct* %m)
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define void @quantum_r_z(i32 %target, float %gamma, %struct.quantum_reg_struct* %reg) #0 {
entry:
  %target.addr = alloca i32, align 4
  %gamma.addr = alloca float, align 4
  %reg.addr = alloca %struct.quantum_reg_struct*, align 8
  %i = alloca i32, align 4
  %z = alloca { float, float }, align 4
  %coerce = alloca { float, float }, align 4
  store i32 %target, i32* %target.addr, align 4
  store float %gamma, float* %gamma.addr, align 4
  store %struct.quantum_reg_struct* %reg, %struct.quantum_reg_struct** %reg.addr, align 8
  %0 = load i32* %target.addr, align 4
  %1 = load float* %gamma.addr, align 4
  %conv = fpext float %1 to double
  %call = call i32 (i8, ...)* @quantum_objcode_put(i8 zeroext 9, i32 %0, double %conv)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %2 = load float* %gamma.addr, align 4
  %div = fdiv float %2, 2.000000e+00
  %call1 = call <2 x float> @quantum_cexp(float %div)
  %3 = bitcast { float, float }* %coerce to <2 x float>*
  store <2 x float> %call1, <2 x float>* %3, align 1
  %coerce.realp = getelementptr inbounds { float, float }* %coerce, i32 0, i32 0
  %coerce.real = load float* %coerce.realp, align 4
  %coerce.imagp = getelementptr inbounds { float, float }* %coerce, i32 0, i32 1
  %coerce.imag = load float* %coerce.imagp, align 4
  %real = getelementptr inbounds { float, float }* %z, i32 0, i32 0
  %imag = getelementptr inbounds { float, float }* %z, i32 0, i32 1
  store float %coerce.real, float* %real, align 4
  store float %coerce.imag, float* %imag, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %4 = load i32* %i, align 4
  %5 = load %struct.quantum_reg_struct** %reg.addr, align 8
  %size = getelementptr inbounds %struct.quantum_reg_struct* %5, i32 0, i32 1
  %6 = load i32* %size, align 4
  %cmp = icmp slt i32 %4, %6
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i32* %i, align 4
  %idxprom = sext i32 %7 to i64
  %8 = load %struct.quantum_reg_struct** %reg.addr, align 8
  %node = getelementptr inbounds %struct.quantum_reg_struct* %8, i32 0, i32 3
  %9 = load %struct.quantum_reg_node_struct** %node, align 8
  %arrayidx = getelementptr inbounds %struct.quantum_reg_node_struct* %9, i64 %idxprom
  %state = getelementptr inbounds %struct.quantum_reg_node_struct* %arrayidx, i32 0, i32 1
  %10 = load i64* %state, align 8
  %11 = load i32* %target.addr, align 4
  %sh_prom = zext i32 %11 to i64
  %shl = shl i64 1, %sh_prom
  %and = and i64 %10, %shl
  %tobool3 = icmp ne i64 %and, 0
  br i1 %tobool3, label %if.then4, label %if.else

if.then4:                                         ; preds = %for.body
  %z.realp = getelementptr inbounds { float, float }* %z, i32 0, i32 0
  %z.real = load float* %z.realp, align 4
  %z.imagp = getelementptr inbounds { float, float }* %z, i32 0, i32 1
  %z.imag = load float* %z.imagp, align 4
  %12 = load i32* %i, align 4
  %idxprom5 = sext i32 %12 to i64
  %13 = load %struct.quantum_reg_struct** %reg.addr, align 8
  %node6 = getelementptr inbounds %struct.quantum_reg_struct* %13, i32 0, i32 3
  %14 = load %struct.quantum_reg_node_struct** %node6, align 8
  %arrayidx7 = getelementptr inbounds %struct.quantum_reg_node_struct* %14, i64 %idxprom5
  %amplitude = getelementptr inbounds %struct.quantum_reg_node_struct* %arrayidx7, i32 0, i32 0
  %amplitude.realp = getelementptr inbounds { float, float }* %amplitude, i32 0, i32 0
  %amplitude.real = load float* %amplitude.realp, align 4
  %amplitude.imagp = getelementptr inbounds { float, float }* %amplitude, i32 0, i32 1
  %amplitude.imag = load float* %amplitude.imagp, align 4
  %mul.rl = fmul float %amplitude.real, %z.real
  %mul.rr = fmul float %amplitude.imag, %z.imag
  %mul.r = fsub float %mul.rl, %mul.rr
  %mul.il = fmul float %amplitude.imag, %z.real
  %mul.ir = fmul float %amplitude.real, %z.imag
  %mul.i = fadd float %mul.il, %mul.ir
  %real8 = getelementptr inbounds { float, float }* %amplitude, i32 0, i32 0
  %imag9 = getelementptr inbounds { float, float }* %amplitude, i32 0, i32 1
  store float %mul.r, float* %real8, align 4
  store float %mul.i, float* %imag9, align 4
  br label %if.end20

if.else:                                          ; preds = %for.body
  %z.realp10 = getelementptr inbounds { float, float }* %z, i32 0, i32 0
  %z.real11 = load float* %z.realp10, align 4
  %z.imagp12 = getelementptr inbounds { float, float }* %z, i32 0, i32 1
  %z.imag13 = load float* %z.imagp12, align 4
  %15 = load i32* %i, align 4
  %idxprom14 = sext i32 %15 to i64
  %16 = load %struct.quantum_reg_struct** %reg.addr, align 8
  %node15 = getelementptr inbounds %struct.quantum_reg_struct* %16, i32 0, i32 3
  %17 = load %struct.quantum_reg_node_struct** %node15, align 8
  %arrayidx16 = getelementptr inbounds %struct.quantum_reg_node_struct* %17, i64 %idxprom14
  %amplitude17 = getelementptr inbounds %struct.quantum_reg_node_struct* %arrayidx16, i32 0, i32 0
  %amplitude17.realp = getelementptr inbounds { float, float }* %amplitude17, i32 0, i32 0
  %amplitude17.real = load float* %amplitude17.realp, align 4
  %amplitude17.imagp = getelementptr inbounds { float, float }* %amplitude17, i32 0, i32 1
  %amplitude17.imag = load float* %amplitude17.imagp, align 4
  %18 = fmul float %amplitude17.real, %z.real11
  %19 = fmul float %amplitude17.imag, %z.imag13
  %20 = fadd float %18, %19
  %21 = fmul float %z.real11, %z.real11
  %22 = fmul float %z.imag13, %z.imag13
  %23 = fadd float %21, %22
  %24 = fmul float %amplitude17.imag, %z.real11
  %25 = fmul float %amplitude17.real, %z.imag13
  %26 = fsub float %24, %25
  %27 = fdiv float %20, %23
  %28 = fdiv float %26, %23
  %real18 = getelementptr inbounds { float, float }* %amplitude17, i32 0, i32 0
  %imag19 = getelementptr inbounds { float, float }* %amplitude17, i32 0, i32 1
  store float %27, float* %real18, align 4
  store float %28, float* %imag19, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.else, %if.then4
  br label %for.inc

for.inc:                                          ; preds = %if.end20
  %29 = load i32* %i, align 4
  %inc = add nsw i32 %29, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %30 = load %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_decohere(%struct.quantum_reg_struct* %30)
  br label %return

return:                                           ; preds = %for.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define void @quantum_phase_scale(i32 %target, float %gamma, %struct.quantum_reg_struct* %reg) #0 {
entry:
  %target.addr = alloca i32, align 4
  %gamma.addr = alloca float, align 4
  %reg.addr = alloca %struct.quantum_reg_struct*, align 8
  %i = alloca i32, align 4
  %z = alloca { float, float }, align 4
  %coerce = alloca { float, float }, align 4
  store i32 %target, i32* %target.addr, align 4
  store float %gamma, float* %gamma.addr, align 4
  store %struct.quantum_reg_struct* %reg, %struct.quantum_reg_struct** %reg.addr, align 8
  %0 = load i32* %target.addr, align 4
  %1 = load float* %gamma.addr, align 4
  %conv = fpext float %1 to double
  %call = call i32 (i8, ...)* @quantum_objcode_put(i8 zeroext 11, i32 %0, double %conv)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %2 = load float* %gamma.addr, align 4
  %call1 = call <2 x float> @quantum_cexp(float %2)
  %3 = bitcast { float, float }* %coerce to <2 x float>*
  store <2 x float> %call1, <2 x float>* %3, align 1
  %coerce.realp = getelementptr inbounds { float, float }* %coerce, i32 0, i32 0
  %coerce.real = load float* %coerce.realp, align 4
  %coerce.imagp = getelementptr inbounds { float, float }* %coerce, i32 0, i32 1
  %coerce.imag = load float* %coerce.imagp, align 4
  %real = getelementptr inbounds { float, float }* %z, i32 0, i32 0
  %imag = getelementptr inbounds { float, float }* %z, i32 0, i32 1
  store float %coerce.real, float* %real, align 4
  store float %coerce.imag, float* %imag, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %4 = load i32* %i, align 4
  %5 = load %struct.quantum_reg_struct** %reg.addr, align 8
  %size = getelementptr inbounds %struct.quantum_reg_struct* %5, i32 0, i32 1
  %6 = load i32* %size, align 4
  %cmp = icmp slt i32 %4, %6
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %z.realp = getelementptr inbounds { float, float }* %z, i32 0, i32 0
  %z.real = load float* %z.realp, align 4
  %z.imagp = getelementptr inbounds { float, float }* %z, i32 0, i32 1
  %z.imag = load float* %z.imagp, align 4
  %7 = load i32* %i, align 4
  %idxprom = sext i32 %7 to i64
  %8 = load %struct.quantum_reg_struct** %reg.addr, align 8
  %node = getelementptr inbounds %struct.quantum_reg_struct* %8, i32 0, i32 3
  %9 = load %struct.quantum_reg_node_struct** %node, align 8
  %arrayidx = getelementptr inbounds %struct.quantum_reg_node_struct* %9, i64 %idxprom
  %amplitude = getelementptr inbounds %struct.quantum_reg_node_struct* %arrayidx, i32 0, i32 0
  %amplitude.realp = getelementptr inbounds { float, float }* %amplitude, i32 0, i32 0
  %amplitude.real = load float* %amplitude.realp, align 4
  %amplitude.imagp = getelementptr inbounds { float, float }* %amplitude, i32 0, i32 1
  %amplitude.imag = load float* %amplitude.imagp, align 4
  %mul.rl = fmul float %amplitude.real, %z.real
  %mul.rr = fmul float %amplitude.imag, %z.imag
  %mul.r = fsub float %mul.rl, %mul.rr
  %mul.il = fmul float %amplitude.imag, %z.real
  %mul.ir = fmul float %amplitude.real, %z.imag
  %mul.i = fadd float %mul.il, %mul.ir
  %real3 = getelementptr inbounds { float, float }* %amplitude, i32 0, i32 0
  %imag4 = getelementptr inbounds { float, float }* %amplitude, i32 0, i32 1
  store float %mul.r, float* %real3, align 4
  store float %mul.i, float* %imag4, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load i32* %i, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %11 = load %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_decohere(%struct.quantum_reg_struct* %11)
  br label %return

return:                                           ; preds = %for.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define void @quantum_phase_kick(i32 %target, float %gamma, %struct.quantum_reg_struct* %reg) #0 {
entry:
  %target.addr = alloca i32, align 4
  %gamma.addr = alloca float, align 4
  %reg.addr = alloca %struct.quantum_reg_struct*, align 8
  %i = alloca i32, align 4
  %z = alloca { float, float }, align 4
  %coerce = alloca { float, float }, align 4
  store i32 %target, i32* %target.addr, align 4
  store float %gamma, float* %gamma.addr, align 4
  store %struct.quantum_reg_struct* %reg, %struct.quantum_reg_struct** %reg.addr, align 8
  %0 = load i32* %target.addr, align 4
  %1 = load float* %gamma.addr, align 4
  %conv = fpext float %1 to double
  %call = call i32 (i8, ...)* @quantum_objcode_put(i8 zeroext 10, i32 %0, double %conv)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %2 = load float* %gamma.addr, align 4
  %call1 = call <2 x float> @quantum_cexp(float %2)
  %3 = bitcast { float, float }* %coerce to <2 x float>*
  store <2 x float> %call1, <2 x float>* %3, align 1
  %coerce.realp = getelementptr inbounds { float, float }* %coerce, i32 0, i32 0
  %coerce.real = load float* %coerce.realp, align 4
  %coerce.imagp = getelementptr inbounds { float, float }* %coerce, i32 0, i32 1
  %coerce.imag = load float* %coerce.imagp, align 4
  %real = getelementptr inbounds { float, float }* %z, i32 0, i32 0
  %imag = getelementptr inbounds { float, float }* %z, i32 0, i32 1
  store float %coerce.real, float* %real, align 4
  store float %coerce.imag, float* %imag, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %4 = load i32* %i, align 4
  %5 = load %struct.quantum_reg_struct** %reg.addr, align 8
  %size = getelementptr inbounds %struct.quantum_reg_struct* %5, i32 0, i32 1
  %6 = load i32* %size, align 4
  %cmp = icmp slt i32 %4, %6
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i32* %i, align 4
  %idxprom = sext i32 %7 to i64
  %8 = load %struct.quantum_reg_struct** %reg.addr, align 8
  %node = getelementptr inbounds %struct.quantum_reg_struct* %8, i32 0, i32 3
  %9 = load %struct.quantum_reg_node_struct** %node, align 8
  %arrayidx = getelementptr inbounds %struct.quantum_reg_node_struct* %9, i64 %idxprom
  %state = getelementptr inbounds %struct.quantum_reg_node_struct* %arrayidx, i32 0, i32 1
  %10 = load i64* %state, align 8
  %11 = load i32* %target.addr, align 4
  %sh_prom = zext i32 %11 to i64
  %shl = shl i64 1, %sh_prom
  %and = and i64 %10, %shl
  %tobool3 = icmp ne i64 %and, 0
  br i1 %tobool3, label %if.then4, label %if.end10

if.then4:                                         ; preds = %for.body
  %z.realp = getelementptr inbounds { float, float }* %z, i32 0, i32 0
  %z.real = load float* %z.realp, align 4
  %z.imagp = getelementptr inbounds { float, float }* %z, i32 0, i32 1
  %z.imag = load float* %z.imagp, align 4
  %12 = load i32* %i, align 4
  %idxprom5 = sext i32 %12 to i64
  %13 = load %struct.quantum_reg_struct** %reg.addr, align 8
  %node6 = getelementptr inbounds %struct.quantum_reg_struct* %13, i32 0, i32 3
  %14 = load %struct.quantum_reg_node_struct** %node6, align 8
  %arrayidx7 = getelementptr inbounds %struct.quantum_reg_node_struct* %14, i64 %idxprom5
  %amplitude = getelementptr inbounds %struct.quantum_reg_node_struct* %arrayidx7, i32 0, i32 0
  %amplitude.realp = getelementptr inbounds { float, float }* %amplitude, i32 0, i32 0
  %amplitude.real = load float* %amplitude.realp, align 4
  %amplitude.imagp = getelementptr inbounds { float, float }* %amplitude, i32 0, i32 1
  %amplitude.imag = load float* %amplitude.imagp, align 4
  %mul.rl = fmul float %amplitude.real, %z.real
  %mul.rr = fmul float %amplitude.imag, %z.imag
  %mul.r = fsub float %mul.rl, %mul.rr
  %mul.il = fmul float %amplitude.imag, %z.real
  %mul.ir = fmul float %amplitude.real, %z.imag
  %mul.i = fadd float %mul.il, %mul.ir
  %real8 = getelementptr inbounds { float, float }* %amplitude, i32 0, i32 0
  %imag9 = getelementptr inbounds { float, float }* %amplitude, i32 0, i32 1
  store float %mul.r, float* %real8, align 4
  store float %mul.i, float* %imag9, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.then4, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end10
  %15 = load i32* %i, align 4
  %inc = add nsw i32 %15, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %16 = load %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_decohere(%struct.quantum_reg_struct* %16)
  br label %return

return:                                           ; preds = %for.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define void @quantum_cond_phase(i32 %control, i32 %target, %struct.quantum_reg_struct* %reg) #0 {
entry:
  %control.addr = alloca i32, align 4
  %target.addr = alloca i32, align 4
  %reg.addr = alloca %struct.quantum_reg_struct*, align 8
  %i = alloca i32, align 4
  %z = alloca { float, float }, align 4
  %coerce = alloca { float, float }, align 4
  store i32 %control, i32* %control.addr, align 4
  store i32 %target, i32* %target.addr, align 4
  store %struct.quantum_reg_struct* %reg, %struct.quantum_reg_struct** %reg.addr, align 8
  %0 = load i32* %control.addr, align 4
  %1 = load i32* %target.addr, align 4
  %call = call i32 (i8, ...)* @quantum_objcode_put(i8 zeroext 12, i32 %0, i32 %1)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32* %control.addr, align 4
  %3 = load i32* %target.addr, align 4
  %sub = sub nsw i32 %2, %3
  %sh_prom = zext i32 %sub to i64
  %shl = shl i64 1, %sh_prom
  %conv = uitofp i64 %shl to double
  %div = fdiv double 0x400921FB54524550, %conv
  %conv1 = fptrunc double %div to float
  %call2 = call <2 x float> @quantum_cexp(float %conv1)
  %4 = bitcast { float, float }* %coerce to <2 x float>*
  store <2 x float> %call2, <2 x float>* %4, align 1
  %coerce.realp = getelementptr inbounds { float, float }* %coerce, i32 0, i32 0
  %coerce.real = load float* %coerce.realp, align 4
  %coerce.imagp = getelementptr inbounds { float, float }* %coerce, i32 0, i32 1
  %coerce.imag = load float* %coerce.imagp, align 4
  %real = getelementptr inbounds { float, float }* %z, i32 0, i32 0
  %imag = getelementptr inbounds { float, float }* %z, i32 0, i32 1
  store float %coerce.real, float* %real, align 4
  store float %coerce.imag, float* %imag, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %5 = load i32* %i, align 4
  %6 = load %struct.quantum_reg_struct** %reg.addr, align 8
  %size = getelementptr inbounds %struct.quantum_reg_struct* %6, i32 0, i32 1
  %7 = load i32* %size, align 4
  %cmp = icmp slt i32 %5, %7
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load i32* %i, align 4
  %idxprom = sext i32 %8 to i64
  %9 = load %struct.quantum_reg_struct** %reg.addr, align 8
  %node = getelementptr inbounds %struct.quantum_reg_struct* %9, i32 0, i32 3
  %10 = load %struct.quantum_reg_node_struct** %node, align 8
  %arrayidx = getelementptr inbounds %struct.quantum_reg_node_struct* %10, i64 %idxprom
  %state = getelementptr inbounds %struct.quantum_reg_node_struct* %arrayidx, i32 0, i32 1
  %11 = load i64* %state, align 8
  %12 = load i32* %control.addr, align 4
  %sh_prom4 = zext i32 %12 to i64
  %shl5 = shl i64 1, %sh_prom4
  %and = and i64 %11, %shl5
  %tobool6 = icmp ne i64 %and, 0
  br i1 %tobool6, label %if.then7, label %if.end23

if.then7:                                         ; preds = %for.body
  %13 = load i32* %i, align 4
  %idxprom8 = sext i32 %13 to i64
  %14 = load %struct.quantum_reg_struct** %reg.addr, align 8
  %node9 = getelementptr inbounds %struct.quantum_reg_struct* %14, i32 0, i32 3
  %15 = load %struct.quantum_reg_node_struct** %node9, align 8
  %arrayidx10 = getelementptr inbounds %struct.quantum_reg_node_struct* %15, i64 %idxprom8
  %state11 = getelementptr inbounds %struct.quantum_reg_node_struct* %arrayidx10, i32 0, i32 1
  %16 = load i64* %state11, align 8
  %17 = load i32* %target.addr, align 4
  %sh_prom12 = zext i32 %17 to i64
  %shl13 = shl i64 1, %sh_prom12
  %and14 = and i64 %16, %shl13
  %tobool15 = icmp ne i64 %and14, 0
  br i1 %tobool15, label %if.then16, label %if.end22

if.then16:                                        ; preds = %if.then7
  %z.realp = getelementptr inbounds { float, float }* %z, i32 0, i32 0
  %z.real = load float* %z.realp, align 4
  %z.imagp = getelementptr inbounds { float, float }* %z, i32 0, i32 1
  %z.imag = load float* %z.imagp, align 4
  %18 = load i32* %i, align 4
  %idxprom17 = sext i32 %18 to i64
  %19 = load %struct.quantum_reg_struct** %reg.addr, align 8
  %node18 = getelementptr inbounds %struct.quantum_reg_struct* %19, i32 0, i32 3
  %20 = load %struct.quantum_reg_node_struct** %node18, align 8
  %arrayidx19 = getelementptr inbounds %struct.quantum_reg_node_struct* %20, i64 %idxprom17
  %amplitude = getelementptr inbounds %struct.quantum_reg_node_struct* %arrayidx19, i32 0, i32 0
  %amplitude.realp = getelementptr inbounds { float, float }* %amplitude, i32 0, i32 0
  %amplitude.real = load float* %amplitude.realp, align 4
  %amplitude.imagp = getelementptr inbounds { float, float }* %amplitude, i32 0, i32 1
  %amplitude.imag = load float* %amplitude.imagp, align 4
  %mul.rl = fmul float %amplitude.real, %z.real
  %mul.rr = fmul float %amplitude.imag, %z.imag
  %mul.r = fsub float %mul.rl, %mul.rr
  %mul.il = fmul float %amplitude.imag, %z.real
  %mul.ir = fmul float %amplitude.real, %z.imag
  %mul.i = fadd float %mul.il, %mul.ir
  %real20 = getelementptr inbounds { float, float }* %amplitude, i32 0, i32 0
  %imag21 = getelementptr inbounds { float, float }* %amplitude, i32 0, i32 1
  store float %mul.r, float* %real20, align 4
  store float %mul.i, float* %imag21, align 4
  br label %if.end22

if.end22:                                         ; preds = %if.then16, %if.then7
  br label %if.end23

if.end23:                                         ; preds = %if.end22, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end23
  %21 = load i32* %i, align 4
  %inc = add nsw i32 %21, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %22 = load %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_decohere(%struct.quantum_reg_struct* %22)
  br label %return

return:                                           ; preds = %for.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define void @quantum_cond_phase_inv(i32 %control, i32 %target, %struct.quantum_reg_struct* %reg) #0 {
entry:
  %control.addr = alloca i32, align 4
  %target.addr = alloca i32, align 4
  %reg.addr = alloca %struct.quantum_reg_struct*, align 8
  %i = alloca i32, align 4
  %z = alloca { float, float }, align 4
  %coerce = alloca { float, float }, align 4
  store i32 %control, i32* %control.addr, align 4
  store i32 %target, i32* %target.addr, align 4
  store %struct.quantum_reg_struct* %reg, %struct.quantum_reg_struct** %reg.addr, align 8
  %0 = load i32* %control.addr, align 4
  %1 = load i32* %target.addr, align 4
  %sub = sub nsw i32 %0, %1
  %sh_prom = zext i32 %sub to i64
  %shl = shl i64 1, %sh_prom
  %conv = uitofp i64 %shl to double
  %div = fdiv double 0xC00921FB54524550, %conv
  %conv1 = fptrunc double %div to float
  %call = call <2 x float> @quantum_cexp(float %conv1)
  %2 = bitcast { float, float }* %coerce to <2 x float>*
  store <2 x float> %call, <2 x float>* %2, align 1
  %coerce.realp = getelementptr inbounds { float, float }* %coerce, i32 0, i32 0
  %coerce.real = load float* %coerce.realp, align 4
  %coerce.imagp = getelementptr inbounds { float, float }* %coerce, i32 0, i32 1
  %coerce.imag = load float* %coerce.imagp, align 4
  %real = getelementptr inbounds { float, float }* %z, i32 0, i32 0
  %imag = getelementptr inbounds { float, float }* %z, i32 0, i32 1
  store float %coerce.real, float* %real, align 4
  store float %coerce.imag, float* %imag, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32* %i, align 4
  %4 = load %struct.quantum_reg_struct** %reg.addr, align 8
  %size = getelementptr inbounds %struct.quantum_reg_struct* %4, i32 0, i32 1
  %5 = load i32* %size, align 4
  %cmp = icmp slt i32 %3, %5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i32* %i, align 4
  %idxprom = sext i32 %6 to i64
  %7 = load %struct.quantum_reg_struct** %reg.addr, align 8
  %node = getelementptr inbounds %struct.quantum_reg_struct* %7, i32 0, i32 3
  %8 = load %struct.quantum_reg_node_struct** %node, align 8
  %arrayidx = getelementptr inbounds %struct.quantum_reg_node_struct* %8, i64 %idxprom
  %state = getelementptr inbounds %struct.quantum_reg_node_struct* %arrayidx, i32 0, i32 1
  %9 = load i64* %state, align 8
  %10 = load i32* %control.addr, align 4
  %sh_prom3 = zext i32 %10 to i64
  %shl4 = shl i64 1, %sh_prom3
  %and = and i64 %9, %shl4
  %tobool = icmp ne i64 %and, 0
  br i1 %tobool, label %if.then, label %if.end19

if.then:                                          ; preds = %for.body
  %11 = load i32* %i, align 4
  %idxprom5 = sext i32 %11 to i64
  %12 = load %struct.quantum_reg_struct** %reg.addr, align 8
  %node6 = getelementptr inbounds %struct.quantum_reg_struct* %12, i32 0, i32 3
  %13 = load %struct.quantum_reg_node_struct** %node6, align 8
  %arrayidx7 = getelementptr inbounds %struct.quantum_reg_node_struct* %13, i64 %idxprom5
  %state8 = getelementptr inbounds %struct.quantum_reg_node_struct* %arrayidx7, i32 0, i32 1
  %14 = load i64* %state8, align 8
  %15 = load i32* %target.addr, align 4
  %sh_prom9 = zext i32 %15 to i64
  %shl10 = shl i64 1, %sh_prom9
  %and11 = and i64 %14, %shl10
  %tobool12 = icmp ne i64 %and11, 0
  br i1 %tobool12, label %if.then13, label %if.end

if.then13:                                        ; preds = %if.then
  %z.realp = getelementptr inbounds { float, float }* %z, i32 0, i32 0
  %z.real = load float* %z.realp, align 4
  %z.imagp = getelementptr inbounds { float, float }* %z, i32 0, i32 1
  %z.imag = load float* %z.imagp, align 4
  %16 = load i32* %i, align 4
  %idxprom14 = sext i32 %16 to i64
  %17 = load %struct.quantum_reg_struct** %reg.addr, align 8
  %node15 = getelementptr inbounds %struct.quantum_reg_struct* %17, i32 0, i32 3
  %18 = load %struct.quantum_reg_node_struct** %node15, align 8
  %arrayidx16 = getelementptr inbounds %struct.quantum_reg_node_struct* %18, i64 %idxprom14
  %amplitude = getelementptr inbounds %struct.quantum_reg_node_struct* %arrayidx16, i32 0, i32 0
  %amplitude.realp = getelementptr inbounds { float, float }* %amplitude, i32 0, i32 0
  %amplitude.real = load float* %amplitude.realp, align 4
  %amplitude.imagp = getelementptr inbounds { float, float }* %amplitude, i32 0, i32 1
  %amplitude.imag = load float* %amplitude.imagp, align 4
  %mul.rl = fmul float %amplitude.real, %z.real
  %mul.rr = fmul float %amplitude.imag, %z.imag
  %mul.r = fsub float %mul.rl, %mul.rr
  %mul.il = fmul float %amplitude.imag, %z.real
  %mul.ir = fmul float %amplitude.real, %z.imag
  %mul.i = fadd float %mul.il, %mul.ir
  %real17 = getelementptr inbounds { float, float }* %amplitude, i32 0, i32 0
  %imag18 = getelementptr inbounds { float, float }* %amplitude, i32 0, i32 1
  store float %mul.r, float* %real17, align 4
  store float %mul.i, float* %imag18, align 4
  br label %if.end

if.end:                                           ; preds = %if.then13, %if.then
  br label %if.end19

if.end19:                                         ; preds = %if.end, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end19
  %19 = load i32* %i, align 4
  %inc = add nsw i32 %19, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %20 = load %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_decohere(%struct.quantum_reg_struct* %20)
  ret void
}

; Function Attrs: nounwind uwtable
define void @quantum_cond_phase_kick(i32 %control, i32 %target, float %gamma, %struct.quantum_reg_struct* %reg) #0 {
entry:
  %control.addr = alloca i32, align 4
  %target.addr = alloca i32, align 4
  %gamma.addr = alloca float, align 4
  %reg.addr = alloca %struct.quantum_reg_struct*, align 8
  %i = alloca i32, align 4
  %z = alloca { float, float }, align 4
  %coerce = alloca { float, float }, align 4
  store i32 %control, i32* %control.addr, align 4
  store i32 %target, i32* %target.addr, align 4
  store float %gamma, float* %gamma.addr, align 4
  store %struct.quantum_reg_struct* %reg, %struct.quantum_reg_struct** %reg.addr, align 8
  %0 = load i32* %control.addr, align 4
  %1 = load i32* %target.addr, align 4
  %2 = load float* %gamma.addr, align 4
  %conv = fpext float %2 to double
  %call = call i32 (i8, ...)* @quantum_objcode_put(i8 zeroext 12, i32 %0, i32 %1, double %conv)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %3 = load float* %gamma.addr, align 4
  %call1 = call <2 x float> @quantum_cexp(float %3)
  %4 = bitcast { float, float }* %coerce to <2 x float>*
  store <2 x float> %call1, <2 x float>* %4, align 1
  %coerce.realp = getelementptr inbounds { float, float }* %coerce, i32 0, i32 0
  %coerce.real = load float* %coerce.realp, align 4
  %coerce.imagp = getelementptr inbounds { float, float }* %coerce, i32 0, i32 1
  %coerce.imag = load float* %coerce.imagp, align 4
  %real = getelementptr inbounds { float, float }* %z, i32 0, i32 0
  %imag = getelementptr inbounds { float, float }* %z, i32 0, i32 1
  store float %coerce.real, float* %real, align 4
  store float %coerce.imag, float* %imag, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %5 = load i32* %i, align 4
  %6 = load %struct.quantum_reg_struct** %reg.addr, align 8
  %size = getelementptr inbounds %struct.quantum_reg_struct* %6, i32 0, i32 1
  %7 = load i32* %size, align 4
  %cmp = icmp slt i32 %5, %7
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load i32* %i, align 4
  %idxprom = sext i32 %8 to i64
  %9 = load %struct.quantum_reg_struct** %reg.addr, align 8
  %node = getelementptr inbounds %struct.quantum_reg_struct* %9, i32 0, i32 3
  %10 = load %struct.quantum_reg_node_struct** %node, align 8
  %arrayidx = getelementptr inbounds %struct.quantum_reg_node_struct* %10, i64 %idxprom
  %state = getelementptr inbounds %struct.quantum_reg_node_struct* %arrayidx, i32 0, i32 1
  %11 = load i64* %state, align 8
  %12 = load i32* %control.addr, align 4
  %sh_prom = zext i32 %12 to i64
  %shl = shl i64 1, %sh_prom
  %and = and i64 %11, %shl
  %tobool3 = icmp ne i64 %and, 0
  br i1 %tobool3, label %if.then4, label %if.end20

if.then4:                                         ; preds = %for.body
  %13 = load i32* %i, align 4
  %idxprom5 = sext i32 %13 to i64
  %14 = load %struct.quantum_reg_struct** %reg.addr, align 8
  %node6 = getelementptr inbounds %struct.quantum_reg_struct* %14, i32 0, i32 3
  %15 = load %struct.quantum_reg_node_struct** %node6, align 8
  %arrayidx7 = getelementptr inbounds %struct.quantum_reg_node_struct* %15, i64 %idxprom5
  %state8 = getelementptr inbounds %struct.quantum_reg_node_struct* %arrayidx7, i32 0, i32 1
  %16 = load i64* %state8, align 8
  %17 = load i32* %target.addr, align 4
  %sh_prom9 = zext i32 %17 to i64
  %shl10 = shl i64 1, %sh_prom9
  %and11 = and i64 %16, %shl10
  %tobool12 = icmp ne i64 %and11, 0
  br i1 %tobool12, label %if.then13, label %if.end19

if.then13:                                        ; preds = %if.then4
  %z.realp = getelementptr inbounds { float, float }* %z, i32 0, i32 0
  %z.real = load float* %z.realp, align 4
  %z.imagp = getelementptr inbounds { float, float }* %z, i32 0, i32 1
  %z.imag = load float* %z.imagp, align 4
  %18 = load i32* %i, align 4
  %idxprom14 = sext i32 %18 to i64
  %19 = load %struct.quantum_reg_struct** %reg.addr, align 8
  %node15 = getelementptr inbounds %struct.quantum_reg_struct* %19, i32 0, i32 3
  %20 = load %struct.quantum_reg_node_struct** %node15, align 8
  %arrayidx16 = getelementptr inbounds %struct.quantum_reg_node_struct* %20, i64 %idxprom14
  %amplitude = getelementptr inbounds %struct.quantum_reg_node_struct* %arrayidx16, i32 0, i32 0
  %amplitude.realp = getelementptr inbounds { float, float }* %amplitude, i32 0, i32 0
  %amplitude.real = load float* %amplitude.realp, align 4
  %amplitude.imagp = getelementptr inbounds { float, float }* %amplitude, i32 0, i32 1
  %amplitude.imag = load float* %amplitude.imagp, align 4
  %mul.rl = fmul float %amplitude.real, %z.real
  %mul.rr = fmul float %amplitude.imag, %z.imag
  %mul.r = fsub float %mul.rl, %mul.rr
  %mul.il = fmul float %amplitude.imag, %z.real
  %mul.ir = fmul float %amplitude.real, %z.imag
  %mul.i = fadd float %mul.il, %mul.ir
  %real17 = getelementptr inbounds { float, float }* %amplitude, i32 0, i32 0
  %imag18 = getelementptr inbounds { float, float }* %amplitude, i32 0, i32 1
  store float %mul.r, float* %real17, align 4
  store float %mul.i, float* %imag18, align 4
  br label %if.end19

if.end19:                                         ; preds = %if.then13, %if.then4
  br label %if.end20

if.end20:                                         ; preds = %if.end19, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end20
  %21 = load i32* %i, align 4
  %inc = add nsw i32 %21, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %22 = load %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_decohere(%struct.quantum_reg_struct* %22)
  br label %return

return:                                           ; preds = %for.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @quantum_gate_counter(i32 %inc) #0 {
entry:
  %inc.addr = alloca i32, align 4
  store i32 %inc, i32* %inc.addr, align 4
  %0 = load i32* %inc.addr, align 4
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i32* %inc.addr, align 4
  %2 = load i32* @quantum_gate_counter.counter, align 4
  %add = add nsw i32 %2, %1
  store i32 %add, i32* @quantum_gate_counter.counter, align 4
  br label %if.end3

if.else:                                          ; preds = %entry
  %3 = load i32* %inc.addr, align 4
  %cmp1 = icmp slt i32 %3, 0
  br i1 %cmp1, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.else
  store i32 0, i32* @quantum_gate_counter.counter, align 4
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.else
  br label %if.end3

if.end3:                                          ; preds = %if.end, %if.then
  %4 = load i32* @quantum_gate_counter.counter, align 4
  ret i32 %4
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @quantum_add_hash(i64 %a, i32 %pos, %struct.quantum_reg_struct* %reg) #3 {
entry:
  %a.addr = alloca i64, align 8
  %pos.addr = alloca i32, align 4
  %reg.addr = alloca %struct.quantum_reg_struct*, align 8
  %i = alloca i32, align 4
  store i64 %a, i64* %a.addr, align 8
  store i32 %pos, i32* %pos.addr, align 4
  store %struct.quantum_reg_struct* %reg, %struct.quantum_reg_struct** %reg.addr, align 8
  %0 = load i64* %a.addr, align 8
  %1 = load %struct.quantum_reg_struct** %reg.addr, align 8
  %hashw = getelementptr inbounds %struct.quantum_reg_struct* %1, i32 0, i32 2
  %2 = load i32* %hashw, align 4
  %call = call i32 @quantum_hash64(i64 %0, i32 %2)
  store i32 %call, i32* %i, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %3 = load i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load %struct.quantum_reg_struct** %reg.addr, align 8
  %hash = getelementptr inbounds %struct.quantum_reg_struct* %4, i32 0, i32 4
  %5 = load i32** %hash, align 8
  %arrayidx = getelementptr inbounds i32* %5, i64 %idxprom
  %6 = load i32* %arrayidx, align 4
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %7 = load i32* %i, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %i, align 4
  %8 = load i32* %i, align 4
  %9 = load %struct.quantum_reg_struct** %reg.addr, align 8
  %hashw1 = getelementptr inbounds %struct.quantum_reg_struct* %9, i32 0, i32 2
  %10 = load i32* %hashw1, align 4
  %shl = shl i32 1, %10
  %cmp = icmp eq i32 %8, %shl
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  store i32 0, i32* %i, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %11 = load i32* %pos.addr, align 4
  %add = add nsw i32 %11, 1
  %12 = load i32* %i, align 4
  %idxprom2 = sext i32 %12 to i64
  %13 = load %struct.quantum_reg_struct** %reg.addr, align 8
  %hash3 = getelementptr inbounds %struct.quantum_reg_struct* %13, i32 0, i32 4
  %14 = load i32** %hash3, align 8
  %arrayidx4 = getelementptr inbounds i32* %14, i64 %idxprom2
  store i32 %add, i32* %arrayidx4, align 4
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @quantum_get_state(i64 %a, %struct.quantum_reg_struct* byval align 8 %reg) #3 {
entry:
  %retval = alloca i32, align 4
  %a.addr = alloca i64, align 8
  %i = alloca i32, align 4
  store i64 %a, i64* %a.addr, align 8
  %0 = load i64* %a.addr, align 8
  %hashw = getelementptr inbounds %struct.quantum_reg_struct* %reg, i32 0, i32 2
  %1 = load i32* %hashw, align 4
  %call = call i32 @quantum_hash64(i64 %0, i32 %1)
  store i32 %call, i32* %i, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end13, %entry
  %2 = load i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %hash = getelementptr inbounds %struct.quantum_reg_struct* %reg, i32 0, i32 4
  %3 = load i32** %hash, align 8
  %arrayidx = getelementptr inbounds i32* %3, i64 %idxprom
  %4 = load i32* %arrayidx, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %5 = load i32* %i, align 4
  %idxprom1 = sext i32 %5 to i64
  %hash2 = getelementptr inbounds %struct.quantum_reg_struct* %reg, i32 0, i32 4
  %6 = load i32** %hash2, align 8
  %arrayidx3 = getelementptr inbounds i32* %6, i64 %idxprom1
  %7 = load i32* %arrayidx3, align 4
  %sub = sub nsw i32 %7, 1
  %idxprom4 = sext i32 %sub to i64
  %node = getelementptr inbounds %struct.quantum_reg_struct* %reg, i32 0, i32 3
  %8 = load %struct.quantum_reg_node_struct** %node, align 8
  %arrayidx5 = getelementptr inbounds %struct.quantum_reg_node_struct* %8, i64 %idxprom4
  %state = getelementptr inbounds %struct.quantum_reg_node_struct* %arrayidx5, i32 0, i32 1
  %9 = load i64* %state, align 8
  %10 = load i64* %a.addr, align 8
  %cmp = icmp eq i64 %9, %10
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %11 = load i32* %i, align 4
  %idxprom6 = sext i32 %11 to i64
  %hash7 = getelementptr inbounds %struct.quantum_reg_struct* %reg, i32 0, i32 4
  %12 = load i32** %hash7, align 8
  %arrayidx8 = getelementptr inbounds i32* %12, i64 %idxprom6
  %13 = load i32* %arrayidx8, align 4
  %sub9 = sub nsw i32 %13, 1
  store i32 %sub9, i32* %retval
  br label %return

if.end:                                           ; preds = %while.body
  %14 = load i32* %i, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* %i, align 4
  %15 = load i32* %i, align 4
  %hashw10 = getelementptr inbounds %struct.quantum_reg_struct* %reg, i32 0, i32 2
  %16 = load i32* %hashw10, align 4
  %shl = shl i32 1, %16
  %cmp11 = icmp eq i32 %15, %shl
  br i1 %cmp11, label %if.then12, label %if.end13

if.then12:                                        ; preds = %if.end
  store i32 0, i32* %i, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.then12, %if.end
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i32 -1, i32* %retval
  br label %return

return:                                           ; preds = %while.end, %if.then
  %17 = load i32* %retval
  ret i32 %17
}

; Function Attrs: inlinehint nounwind uwtable
define internal float @quantum_prob_inline7(<2 x float> %a.coerce) #3 {
entry:
  %a = alloca { float, float }, align 8
  %r = alloca float, align 4
  %i = alloca float, align 4
  %coerce = alloca { float, float }, align 4
  %coerce5 = alloca { float, float }, align 4
  %0 = bitcast { float, float }* %a to <2 x float>*
  store <2 x float> %a.coerce, <2 x float>* %0, align 1
  %a.realp = getelementptr inbounds { float, float }* %a, i32 0, i32 0
  %a.real = load float* %a.realp, align 4
  %a.imagp = getelementptr inbounds { float, float }* %a, i32 0, i32 1
  %a.imag = load float* %a.imagp, align 4
  %real = getelementptr inbounds { float, float }* %coerce, i32 0, i32 0
  %imag = getelementptr inbounds { float, float }* %coerce, i32 0, i32 1
  store float %a.real, float* %real, align 4
  store float %a.imag, float* %imag, align 4
  %1 = bitcast { float, float }* %coerce to <2 x float>*
  %2 = load <2 x float>* %1, align 1
  %call = call float @quantum_real8(<2 x float> %2)
  store float %call, float* %r, align 4
  %a.realp1 = getelementptr inbounds { float, float }* %a, i32 0, i32 0
  %a.real2 = load float* %a.realp1, align 4
  %a.imagp3 = getelementptr inbounds { float, float }* %a, i32 0, i32 1
  %a.imag4 = load float* %a.imagp3, align 4
  %real6 = getelementptr inbounds { float, float }* %coerce5, i32 0, i32 0
  %imag7 = getelementptr inbounds { float, float }* %coerce5, i32 0, i32 1
  store float %a.real2, float* %real6, align 4
  store float %a.imag4, float* %imag7, align 4
  %3 = bitcast { float, float }* %coerce5 to <2 x float>*
  %4 = load <2 x float>* %3, align 1
  %call8 = call float @quantum_imag9(<2 x float> %4)
  store float %call8, float* %i, align 4
  %5 = load float* %r, align 4
  %6 = load float* %r, align 4
  %mul = fmul float %5, %6
  %7 = load float* %i, align 4
  %8 = load float* %i, align 4
  %mul9 = fmul float %7, %8
  %add = fadd float %mul, %mul9
  ret float %add
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @quantum_hash64(i64 %key, i32 %width) #3 {
entry:
  %key.addr = alloca i64, align 8
  %width.addr = alloca i32, align 4
  %k32 = alloca i32, align 4
  store i64 %key, i64* %key.addr, align 8
  store i32 %width, i32* %width.addr, align 4
  %0 = load i64* %key.addr, align 8
  %and = and i64 %0, 4294967295
  %1 = load i64* %key.addr, align 8
  %shr = lshr i64 %1, 32
  %xor = xor i64 %and, %shr
  %conv = trunc i64 %xor to i32
  store i32 %conv, i32* %k32, align 4
  %2 = load i32* %k32, align 4
  %conv1 = zext i32 %2 to i64
  %mul = mul i64 %conv1, 2654404609
  %conv2 = trunc i64 %mul to i32
  store i32 %conv2, i32* %k32, align 4
  %3 = load i32* %k32, align 4
  %4 = load i32* %width.addr, align 4
  %sub = sub nsw i32 32, %4
  %shr3 = lshr i32 %3, %sub
  store i32 %shr3, i32* %k32, align 4
  %5 = load i32* %k32, align 4
  ret i32 %5
}

; Function Attrs: inlinehint nounwind uwtable
define internal float @quantum_real8(<2 x float> %a.coerce) #3 {
entry:
  %a = alloca { float, float }, align 8
  %p = alloca float*, align 8
  %0 = bitcast { float, float }* %a to <2 x float>*
  store <2 x float> %a.coerce, <2 x float>* %0, align 1
  %1 = bitcast { float, float }* %a to float*
  store float* %1, float** %p, align 8
  %2 = load float** %p, align 8
  %arrayidx = getelementptr inbounds float* %2, i64 0
  %3 = load float* %arrayidx, align 4
  ret float %3
}

; Function Attrs: inlinehint nounwind uwtable
define internal float @quantum_imag9(<2 x float> %a.coerce) #3 {
entry:
  %a = alloca { float, float }, align 8
  %p = alloca float*, align 8
  %0 = bitcast { float, float }* %a to <2 x float>*
  store <2 x float> %a.coerce, <2 x float>* %0, align 1
  %1 = bitcast { float, float }* %a to float*
  store float* %1, float** %p, align 8
  %2 = load float** %p, align 8
  %arrayidx = getelementptr inbounds float* %2, i64 1
  %3 = load float* %arrayidx, align 4
  ret float %3
}

; Function Attrs: nounwind uwtable
define i64 @quantum_memman(i64 %change) #0 {
entry:
  %change.addr = alloca i64, align 8
  store i64 %change, i64* %change.addr, align 8
  %0 = load i64* %change.addr, align 8
  %1 = load i64* @quantum_memman.mem, align 8
  %add = add nsw i64 %1, %0
  store i64 %add, i64* @quantum_memman.mem, align 8
  %2 = load i64* @quantum_memman.mem, align 8
  %3 = load i64* @quantum_memman.max, align 8
  %cmp = icmp sgt i64 %2, %3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load i64* @quantum_memman.mem, align 8
  store i64 %4, i64* @quantum_memman.max, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load i64* @quantum_memman.mem, align 8
  ret i64 %5
}

; Function Attrs: nounwind uwtable
define { i64, { float, float }* } @quantum_new_matrix(i32 %cols, i32 %rows) #0 {
entry:
  %retval = alloca %struct.quantum_matrix_struct, align 8
  %cols.addr = alloca i32, align 4
  %rows.addr = alloca i32, align 4
  %m = alloca %struct.quantum_matrix_struct, align 8
  store i32 %cols, i32* %cols.addr, align 4
  store i32 %rows, i32* %rows.addr, align 4
  %0 = load i32* %rows.addr, align 4
  %rows1 = getelementptr inbounds %struct.quantum_matrix_struct* %m, i32 0, i32 0
  store i32 %0, i32* %rows1, align 4
  %1 = load i32* %cols.addr, align 4
  %cols2 = getelementptr inbounds %struct.quantum_matrix_struct* %m, i32 0, i32 1
  store i32 %1, i32* %cols2, align 4
  %2 = load i32* %cols.addr, align 4
  %3 = load i32* %rows.addr, align 4
  %mul = mul nsw i32 %2, %3
  %conv = sext i32 %mul to i64
  %call = call noalias i8* @calloc(i64 %conv, i64 8) #6
  %4 = bitcast i8* %call to { float, float }*
  %t = getelementptr inbounds %struct.quantum_matrix_struct* %m, i32 0, i32 2
  store { float, float }* %4, { float, float }** %t, align 8
  %t3 = getelementptr inbounds %struct.quantum_matrix_struct* %m, i32 0, i32 2
  %5 = load { float, float }** %t3, align 8
  %tobool = icmp ne { float, float }* %5, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %6 = load i32* %rows.addr, align 4
  %7 = load i32* %cols.addr, align 4
  %call4 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([35 x i8]* @.str10, i32 0, i32 0), i32 %6, i32 %7)
  call void @exit(i32 1) #9
  unreachable

if.end:                                           ; preds = %entry
  %8 = load i32* %cols.addr, align 4
  %conv5 = sext i32 %8 to i64
  %mul6 = mul i64 8, %conv5
  %9 = load i32* %rows.addr, align 4
  %conv7 = sext i32 %9 to i64
  %mul8 = mul i64 %mul6, %conv7
  %call9 = call i64 @quantum_memman(i64 %mul8)
  %10 = bitcast %struct.quantum_matrix_struct* %retval to i8*
  %11 = bitcast %struct.quantum_matrix_struct* %m to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %10, i8* %11, i64 16, i32 8, i1 false)
  %12 = bitcast %struct.quantum_matrix_struct* %retval to { i64, { float, float }* }*
  %13 = load { i64, { float, float }* }* %12, align 1
  ret { i64, { float, float }* } %13
}

; Function Attrs: nounwind uwtable
define void @quantum_delete_matrix(%struct.quantum_matrix_struct* %m) #0 {
entry:
  %m.addr = alloca %struct.quantum_matrix_struct*, align 8
  store %struct.quantum_matrix_struct* %m, %struct.quantum_matrix_struct** %m.addr, align 8
  %0 = load %struct.quantum_matrix_struct** %m.addr, align 8
  %t = getelementptr inbounds %struct.quantum_matrix_struct* %0, i32 0, i32 2
  %1 = load { float, float }** %t, align 8
  %2 = bitcast { float, float }* %1 to i8*
  call void @free(i8* %2) #6
  %3 = load %struct.quantum_matrix_struct** %m.addr, align 8
  %cols = getelementptr inbounds %struct.quantum_matrix_struct* %3, i32 0, i32 1
  %4 = load i32* %cols, align 4
  %conv = sext i32 %4 to i64
  %mul = mul i64 -8, %conv
  %5 = load %struct.quantum_matrix_struct** %m.addr, align 8
  %rows = getelementptr inbounds %struct.quantum_matrix_struct* %5, i32 0, i32 0
  %6 = load i32* %rows, align 4
  %conv1 = sext i32 %6 to i64
  %mul2 = mul i64 %mul, %conv1
  %call = call i64 @quantum_memman(i64 %mul2)
  %7 = load %struct.quantum_matrix_struct** %m.addr, align 8
  %t3 = getelementptr inbounds %struct.quantum_matrix_struct* %7, i32 0, i32 2
  store { float, float }* null, { float, float }** %t3, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @quantum_print_matrix(i64 %m.coerce0, { float, float }* %m.coerce1) #0 {
entry:
  %m = alloca %struct.quantum_matrix_struct, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %z = alloca i32, align 4
  %coerce = alloca { float, float }, align 4
  %coerce13 = alloca { float, float }, align 4
  %0 = bitcast %struct.quantum_matrix_struct* %m to { i64, { float, float }* }*
  %1 = getelementptr { i64, { float, float }* }* %0, i32 0, i32 0
  store i64 %m.coerce0, i64* %1
  %2 = getelementptr { i64, { float, float }* }* %0, i32 0, i32 1
  store { float, float }* %m.coerce1, { float, float }** %2
  store i32 0, i32* %z, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %3 = load i32* %z, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, i32* %z, align 4
  %shl = shl i32 1, %3
  %rows = getelementptr inbounds %struct.quantum_matrix_struct* %m, i32 0, i32 0
  %4 = load i32* %rows, align 4
  %cmp = icmp slt i32 %shl, %4
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %5 = load i32* %z, align 4
  %dec = add nsw i32 %5, -1
  store i32 %dec, i32* %z, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc21, %while.end
  %6 = load i32* %i, align 4
  %rows1 = getelementptr inbounds %struct.quantum_matrix_struct* %m, i32 0, i32 0
  %7 = load i32* %rows1, align 4
  %cmp2 = icmp slt i32 %6, %7
  br i1 %cmp2, label %for.body, label %for.end23

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc, %for.body
  %8 = load i32* %j, align 4
  %cols = getelementptr inbounds %struct.quantum_matrix_struct* %m, i32 0, i32 1
  %9 = load i32* %cols, align 4
  %cmp4 = icmp slt i32 %8, %9
  br i1 %cmp4, label %for.body5, label %for.end

for.body5:                                        ; preds = %for.cond3
  %10 = load i32* %j, align 4
  %11 = load i32* %i, align 4
  %cols6 = getelementptr inbounds %struct.quantum_matrix_struct* %m, i32 0, i32 1
  %12 = load i32* %cols6, align 4
  %mul = mul nsw i32 %11, %12
  %add = add nsw i32 %10, %mul
  %idxprom = sext i32 %add to i64
  %t = getelementptr inbounds %struct.quantum_matrix_struct* %m, i32 0, i32 2
  %13 = load { float, float }** %t, align 8
  %arrayidx = getelementptr inbounds { float, float }* %13, i64 %idxprom
  %arrayidx.realp = getelementptr inbounds { float, float }* %arrayidx, i32 0, i32 0
  %arrayidx.real = load float* %arrayidx.realp, align 4
  %arrayidx.imagp = getelementptr inbounds { float, float }* %arrayidx, i32 0, i32 1
  %arrayidx.imag = load float* %arrayidx.imagp, align 4
  %real = getelementptr inbounds { float, float }* %coerce, i32 0, i32 0
  %imag = getelementptr inbounds { float, float }* %coerce, i32 0, i32 1
  store float %arrayidx.real, float* %real, align 4
  store float %arrayidx.imag, float* %imag, align 4
  %14 = bitcast { float, float }* %coerce to <2 x float>*
  %15 = load <2 x float>* %14, align 1
  %call = call float @quantum_real19(<2 x float> %15)
  %conv = fpext float %call to double
  %16 = load i32* %j, align 4
  %17 = load i32* %i, align 4
  %cols7 = getelementptr inbounds %struct.quantum_matrix_struct* %m, i32 0, i32 1
  %18 = load i32* %cols7, align 4
  %mul8 = mul nsw i32 %17, %18
  %add9 = add nsw i32 %16, %mul8
  %idxprom10 = sext i32 %add9 to i64
  %t11 = getelementptr inbounds %struct.quantum_matrix_struct* %m, i32 0, i32 2
  %19 = load { float, float }** %t11, align 8
  %arrayidx12 = getelementptr inbounds { float, float }* %19, i64 %idxprom10
  %arrayidx12.realp = getelementptr inbounds { float, float }* %arrayidx12, i32 0, i32 0
  %arrayidx12.real = load float* %arrayidx12.realp, align 4
  %arrayidx12.imagp = getelementptr inbounds { float, float }* %arrayidx12, i32 0, i32 1
  %arrayidx12.imag = load float* %arrayidx12.imagp, align 4
  %real14 = getelementptr inbounds { float, float }* %coerce13, i32 0, i32 0
  %imag15 = getelementptr inbounds { float, float }* %coerce13, i32 0, i32 1
  store float %arrayidx12.real, float* %real14, align 4
  store float %arrayidx12.imag, float* %imag15, align 4
  %20 = bitcast { float, float }* %coerce13 to <2 x float>*
  %21 = load <2 x float>* %20, align 1
  %call16 = call float @quantum_imag20(<2 x float> %21)
  %conv17 = fpext float %call16 to double
  %call18 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([10 x i8]* @.str111, i32 0, i32 0), double %conv, double %conv17)
  br label %for.inc

for.inc:                                          ; preds = %for.body5
  %22 = load i32* %j, align 4
  %inc19 = add nsw i32 %22, 1
  store i32 %inc19, i32* %j, align 4
  br label %for.cond3

for.end:                                          ; preds = %for.cond3
  %call20 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([2 x i8]* @.str212, i32 0, i32 0))
  br label %for.inc21

for.inc21:                                        ; preds = %for.end
  %23 = load i32* %i, align 4
  %inc22 = add nsw i32 %23, 1
  store i32 %inc22, i32* %i, align 4
  br label %for.cond

for.end23:                                        ; preds = %for.cond
  %call24 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([2 x i8]* @.str212, i32 0, i32 0))
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal float @quantum_real19(<2 x float> %a.coerce) #3 {
entry:
  %a = alloca { float, float }, align 8
  %p = alloca float*, align 8
  %0 = bitcast { float, float }* %a to <2 x float>*
  store <2 x float> %a.coerce, <2 x float>* %0, align 1
  %1 = bitcast { float, float }* %a to float*
  store float* %1, float** %p, align 8
  %2 = load float** %p, align 8
  %arrayidx = getelementptr inbounds float* %2, i64 0
  %3 = load float* %arrayidx, align 4
  ret float %3
}

; Function Attrs: inlinehint nounwind uwtable
define internal float @quantum_imag20(<2 x float> %a.coerce) #3 {
entry:
  %a = alloca { float, float }, align 8
  %p = alloca float*, align 8
  %0 = bitcast { float, float }* %a to <2 x float>*
  store <2 x float> %a.coerce, <2 x float>* %0, align 1
  %1 = bitcast { float, float }* %a to float*
  store float* %1, float** %p, align 8
  %2 = load float** %p, align 8
  %arrayidx = getelementptr inbounds float* %2, i64 1
  %3 = load float* %arrayidx, align 4
  ret float %3
}

; Function Attrs: nounwind uwtable
define double @quantum_frand() #0 {
entry:
  %call = call double @spec_rand()
  ret double %call
}

; Function Attrs: nounwind uwtable
define i64 @quantum_measure(%struct.quantum_reg_struct* byval align 8 %reg) #0 {
entry:
  %retval = alloca i64, align 8
  %r = alloca double, align 8
  %i = alloca i32, align 4
  %coerce = alloca { float, float }, align 4
  %call = call i32 (i8, ...)* @quantum_objcode_put(i8 zeroext -128)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i64 0, i64* %retval
  br label %return

if.end:                                           ; preds = %entry
  %call1 = call double @quantum_frand()
  store double %call1, double* %r, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %0 = load i32* %i, align 4
  %size = getelementptr inbounds %struct.quantum_reg_struct* %reg, i32 0, i32 1
  %1 = load i32* %size, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %node = getelementptr inbounds %struct.quantum_reg_struct* %reg, i32 0, i32 3
  %3 = load %struct.quantum_reg_node_struct** %node, align 8
  %arrayidx = getelementptr inbounds %struct.quantum_reg_node_struct* %3, i64 %idxprom
  %amplitude = getelementptr inbounds %struct.quantum_reg_node_struct* %arrayidx, i32 0, i32 0
  %amplitude.realp = getelementptr inbounds { float, float }* %amplitude, i32 0, i32 0
  %amplitude.real = load float* %amplitude.realp, align 4
  %amplitude.imagp = getelementptr inbounds { float, float }* %amplitude, i32 0, i32 1
  %amplitude.imag = load float* %amplitude.imagp, align 4
  %real = getelementptr inbounds { float, float }* %coerce, i32 0, i32 0
  %imag = getelementptr inbounds { float, float }* %coerce, i32 0, i32 1
  store float %amplitude.real, float* %real, align 4
  store float %amplitude.imag, float* %imag, align 4
  %4 = bitcast { float, float }* %coerce to <2 x float>*
  %5 = load <2 x float>* %4, align 1
  %call2 = call float @quantum_prob_inline24(<2 x float> %5)
  %conv = fpext float %call2 to double
  %6 = load double* %r, align 8
  %sub = fsub double %6, %conv
  store double %sub, double* %r, align 8
  %7 = load double* %r, align 8
  %cmp3 = fcmp oge double 0.000000e+00, %7
  br i1 %cmp3, label %if.then5, label %if.end9

if.then5:                                         ; preds = %for.body
  %8 = load i32* %i, align 4
  %idxprom6 = sext i32 %8 to i64
  %node7 = getelementptr inbounds %struct.quantum_reg_struct* %reg, i32 0, i32 3
  %9 = load %struct.quantum_reg_node_struct** %node7, align 8
  %arrayidx8 = getelementptr inbounds %struct.quantum_reg_node_struct* %9, i64 %idxprom6
  %state = getelementptr inbounds %struct.quantum_reg_node_struct* %arrayidx8, i32 0, i32 1
  %10 = load i64* %state, align 8
  store i64 %10, i64* %retval
  br label %return

if.end9:                                          ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end9
  %11 = load i32* %i, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i64 -1, i64* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then5, %if.then
  %12 = load i64* %retval
  ret i64 %12
}

; Function Attrs: nounwind uwtable
define i32 @quantum_bmeasure(i32 %pos, %struct.quantum_reg_struct* %reg) #0 {
entry:
  %retval = alloca i32, align 4
  %pos.addr = alloca i32, align 4
  %reg.addr = alloca %struct.quantum_reg_struct*, align 8
  %i = alloca i32, align 4
  %result = alloca i32, align 4
  %pa = alloca double, align 8
  %r = alloca double, align 8
  %pos2 = alloca i64, align 8
  %out = alloca %struct.quantum_reg_struct, align 8
  %coerce = alloca { float, float }, align 4
  %tmp = alloca %struct.quantum_reg_struct, align 8
  store i32 %pos, i32* %pos.addr, align 4
  store %struct.quantum_reg_struct* %reg, %struct.quantum_reg_struct** %reg.addr, align 8
  store i32 0, i32* %result, align 4
  store double 0.000000e+00, double* %pa, align 8
  %0 = load i32* %pos.addr, align 4
  %call = call i32 (i8, ...)* @quantum_objcode_put(i8 zeroext -127, i32 %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32* %pos.addr, align 4
  %sh_prom = zext i32 %1 to i64
  %shl = shl i64 1, %sh_prom
  store i64 %shl, i64* %pos2, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %2 = load i32* %i, align 4
  %3 = load %struct.quantum_reg_struct** %reg.addr, align 8
  %size = getelementptr inbounds %struct.quantum_reg_struct* %3, i32 0, i32 1
  %4 = load i32* %size, align 4
  %cmp = icmp slt i32 %2, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32* %i, align 4
  %idxprom = sext i32 %5 to i64
  %6 = load %struct.quantum_reg_struct** %reg.addr, align 8
  %node = getelementptr inbounds %struct.quantum_reg_struct* %6, i32 0, i32 3
  %7 = load %struct.quantum_reg_node_struct** %node, align 8
  %arrayidx = getelementptr inbounds %struct.quantum_reg_node_struct* %7, i64 %idxprom
  %state = getelementptr inbounds %struct.quantum_reg_node_struct* %arrayidx, i32 0, i32 1
  %8 = load i64* %state, align 8
  %9 = load i64* %pos2, align 8
  %and = and i64 %8, %9
  %tobool1 = icmp ne i64 %and, 0
  br i1 %tobool1, label %if.end7, label %if.then2

if.then2:                                         ; preds = %for.body
  %10 = load i32* %i, align 4
  %idxprom3 = sext i32 %10 to i64
  %11 = load %struct.quantum_reg_struct** %reg.addr, align 8
  %node4 = getelementptr inbounds %struct.quantum_reg_struct* %11, i32 0, i32 3
  %12 = load %struct.quantum_reg_node_struct** %node4, align 8
  %arrayidx5 = getelementptr inbounds %struct.quantum_reg_node_struct* %12, i64 %idxprom3
  %amplitude = getelementptr inbounds %struct.quantum_reg_node_struct* %arrayidx5, i32 0, i32 0
  %amplitude.realp = getelementptr inbounds { float, float }* %amplitude, i32 0, i32 0
  %amplitude.real = load float* %amplitude.realp, align 4
  %amplitude.imagp = getelementptr inbounds { float, float }* %amplitude, i32 0, i32 1
  %amplitude.imag = load float* %amplitude.imagp, align 4
  %real = getelementptr inbounds { float, float }* %coerce, i32 0, i32 0
  %imag = getelementptr inbounds { float, float }* %coerce, i32 0, i32 1
  store float %amplitude.real, float* %real, align 4
  store float %amplitude.imag, float* %imag, align 4
  %13 = bitcast { float, float }* %coerce to <2 x float>*
  %14 = load <2 x float>* %13, align 1
  %call6 = call float @quantum_prob_inline24(<2 x float> %14)
  %conv = fpext float %call6 to double
  %15 = load double* %pa, align 8
  %add = fadd double %15, %conv
  store double %add, double* %pa, align 8
  br label %if.end7

if.end7:                                          ; preds = %if.then2, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end7
  %16 = load i32* %i, align 4
  %inc = add nsw i32 %16, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %call8 = call double @quantum_frand()
  store double %call8, double* %r, align 8
  %17 = load double* %r, align 8
  %18 = load double* %pa, align 8
  %cmp9 = fcmp ogt double %17, %18
  br i1 %cmp9, label %if.then11, label %if.end12

if.then11:                                        ; preds = %for.end
  store i32 1, i32* %result, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %for.end
  %19 = load i32* %pos.addr, align 4
  %20 = load i32* %result, align 4
  %21 = load %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_state_collapse(%struct.quantum_reg_struct* sret %tmp, i32 %19, i32 %20, %struct.quantum_reg_struct* byval align 8 %21)
  %22 = bitcast %struct.quantum_reg_struct* %out to i8*
  %23 = bitcast %struct.quantum_reg_struct* %tmp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %22, i8* %23, i64 32, i32 8, i1 false)
  %24 = load %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_delete_qureg_hashpreserve(%struct.quantum_reg_struct* %24)
  %25 = load %struct.quantum_reg_struct** %reg.addr, align 8
  %26 = bitcast %struct.quantum_reg_struct* %25 to i8*
  %27 = bitcast %struct.quantum_reg_struct* %out to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %26, i8* %27, i64 32, i32 8, i1 false)
  %28 = load i32* %result, align 4
  store i32 %28, i32* %retval
  br label %return

return:                                           ; preds = %if.end12, %if.then
  %29 = load i32* %retval
  ret i32 %29
}

; Function Attrs: nounwind uwtable
define i32 @quantum_bmeasure_bitpreserve(i32 %pos, %struct.quantum_reg_struct* %reg) #0 {
entry:
  %retval = alloca i32, align 4
  %pos.addr = alloca i32, align 4
  %reg.addr = alloca %struct.quantum_reg_struct*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %size = alloca i32, align 4
  %result = alloca i32, align 4
  %d = alloca double, align 8
  %pa = alloca double, align 8
  %r = alloca double, align 8
  %pos2 = alloca i64, align 8
  %out = alloca %struct.quantum_reg_struct, align 8
  %coerce = alloca { float, float }, align 4
  %coerce38 = alloca { float, float }, align 4
  %coerce60 = alloca { float, float }, align 4
  store i32 %pos, i32* %pos.addr, align 4
  store %struct.quantum_reg_struct* %reg, %struct.quantum_reg_struct** %reg.addr, align 8
  store i32 0, i32* %size, align 4
  store i32 0, i32* %result, align 4
  store double 0.000000e+00, double* %d, align 8
  store double 0.000000e+00, double* %pa, align 8
  %0 = load i32* %pos.addr, align 4
  %call = call i32 (i8, ...)* @quantum_objcode_put(i8 zeroext -126, i32 %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32* %pos.addr, align 4
  %sh_prom = zext i32 %1 to i64
  %shl = shl i64 1, %sh_prom
  store i64 %shl, i64* %pos2, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %2 = load i32* %i, align 4
  %3 = load %struct.quantum_reg_struct** %reg.addr, align 8
  %size1 = getelementptr inbounds %struct.quantum_reg_struct* %3, i32 0, i32 1
  %4 = load i32* %size1, align 4
  %cmp = icmp slt i32 %2, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32* %i, align 4
  %idxprom = sext i32 %5 to i64
  %6 = load %struct.quantum_reg_struct** %reg.addr, align 8
  %node = getelementptr inbounds %struct.quantum_reg_struct* %6, i32 0, i32 3
  %7 = load %struct.quantum_reg_node_struct** %node, align 8
  %arrayidx = getelementptr inbounds %struct.quantum_reg_node_struct* %7, i64 %idxprom
  %state = getelementptr inbounds %struct.quantum_reg_node_struct* %arrayidx, i32 0, i32 1
  %8 = load i64* %state, align 8
  %9 = load i64* %pos2, align 8
  %and = and i64 %8, %9
  %tobool2 = icmp ne i64 %and, 0
  br i1 %tobool2, label %if.end8, label %if.then3

if.then3:                                         ; preds = %for.body
  %10 = load i32* %i, align 4
  %idxprom4 = sext i32 %10 to i64
  %11 = load %struct.quantum_reg_struct** %reg.addr, align 8
  %node5 = getelementptr inbounds %struct.quantum_reg_struct* %11, i32 0, i32 3
  %12 = load %struct.quantum_reg_node_struct** %node5, align 8
  %arrayidx6 = getelementptr inbounds %struct.quantum_reg_node_struct* %12, i64 %idxprom4
  %amplitude = getelementptr inbounds %struct.quantum_reg_node_struct* %arrayidx6, i32 0, i32 0
  %amplitude.realp = getelementptr inbounds { float, float }* %amplitude, i32 0, i32 0
  %amplitude.real = load float* %amplitude.realp, align 4
  %amplitude.imagp = getelementptr inbounds { float, float }* %amplitude, i32 0, i32 1
  %amplitude.imag = load float* %amplitude.imagp, align 4
  %real = getelementptr inbounds { float, float }* %coerce, i32 0, i32 0
  %imag = getelementptr inbounds { float, float }* %coerce, i32 0, i32 1
  store float %amplitude.real, float* %real, align 4
  store float %amplitude.imag, float* %imag, align 4
  %13 = bitcast { float, float }* %coerce to <2 x float>*
  %14 = load <2 x float>* %13, align 1
  %call7 = call float @quantum_prob_inline24(<2 x float> %14)
  %conv = fpext float %call7 to double
  %15 = load double* %pa, align 8
  %add = fadd double %15, %conv
  store double %add, double* %pa, align 8
  br label %if.end8

if.end8:                                          ; preds = %if.then3, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end8
  %16 = load i32* %i, align 4
  %inc = add nsw i32 %16, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %call9 = call double @quantum_frand()
  store double %call9, double* %r, align 8
  %17 = load double* %r, align 8
  %18 = load double* %pa, align 8
  %cmp10 = fcmp ogt double %17, %18
  br i1 %cmp10, label %if.then12, label %if.end13

if.then12:                                        ; preds = %for.end
  store i32 1, i32* %result, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.then12, %for.end
  store i32 0, i32* %i, align 4
  br label %for.cond14

for.cond14:                                       ; preds = %for.inc69, %if.end13
  %19 = load i32* %i, align 4
  %20 = load %struct.quantum_reg_struct** %reg.addr, align 8
  %size15 = getelementptr inbounds %struct.quantum_reg_struct* %20, i32 0, i32 1
  %21 = load i32* %size15, align 4
  %cmp16 = icmp slt i32 %19, %21
  br i1 %cmp16, label %for.body18, label %for.end71

for.body18:                                       ; preds = %for.cond14
  %22 = load i32* %i, align 4
  %idxprom19 = sext i32 %22 to i64
  %23 = load %struct.quantum_reg_struct** %reg.addr, align 8
  %node20 = getelementptr inbounds %struct.quantum_reg_struct* %23, i32 0, i32 3
  %24 = load %struct.quantum_reg_node_struct** %node20, align 8
  %arrayidx21 = getelementptr inbounds %struct.quantum_reg_node_struct* %24, i64 %idxprom19
  %state22 = getelementptr inbounds %struct.quantum_reg_node_struct* %arrayidx21, i32 0, i32 1
  %25 = load i64* %state22, align 8
  %26 = load i64* %pos2, align 8
  %and23 = and i64 %25, %26
  %tobool24 = icmp ne i64 %and23, 0
  br i1 %tobool24, label %if.then25, label %if.else46

if.then25:                                        ; preds = %for.body18
  %27 = load i32* %result, align 4
  %tobool26 = icmp ne i32 %27, 0
  br i1 %tobool26, label %if.else, label %if.then27

if.then27:                                        ; preds = %if.then25
  %28 = load i32* %i, align 4
  %idxprom28 = sext i32 %28 to i64
  %29 = load %struct.quantum_reg_struct** %reg.addr, align 8
  %node29 = getelementptr inbounds %struct.quantum_reg_struct* %29, i32 0, i32 3
  %30 = load %struct.quantum_reg_node_struct** %node29, align 8
  %arrayidx30 = getelementptr inbounds %struct.quantum_reg_node_struct* %30, i64 %idxprom28
  %amplitude31 = getelementptr inbounds %struct.quantum_reg_node_struct* %arrayidx30, i32 0, i32 0
  %real32 = getelementptr inbounds { float, float }* %amplitude31, i32 0, i32 0
  %imag33 = getelementptr inbounds { float, float }* %amplitude31, i32 0, i32 1
  store float 0.000000e+00, float* %real32, align 4
  store float 0.000000e+00, float* %imag33, align 4
  br label %if.end45

if.else:                                          ; preds = %if.then25
  %31 = load i32* %i, align 4
  %idxprom34 = sext i32 %31 to i64
  %32 = load %struct.quantum_reg_struct** %reg.addr, align 8
  %node35 = getelementptr inbounds %struct.quantum_reg_struct* %32, i32 0, i32 3
  %33 = load %struct.quantum_reg_node_struct** %node35, align 8
  %arrayidx36 = getelementptr inbounds %struct.quantum_reg_node_struct* %33, i64 %idxprom34
  %amplitude37 = getelementptr inbounds %struct.quantum_reg_node_struct* %arrayidx36, i32 0, i32 0
  %amplitude37.realp = getelementptr inbounds { float, float }* %amplitude37, i32 0, i32 0
  %amplitude37.real = load float* %amplitude37.realp, align 4
  %amplitude37.imagp = getelementptr inbounds { float, float }* %amplitude37, i32 0, i32 1
  %amplitude37.imag = load float* %amplitude37.imagp, align 4
  %real39 = getelementptr inbounds { float, float }* %coerce38, i32 0, i32 0
  %imag40 = getelementptr inbounds { float, float }* %coerce38, i32 0, i32 1
  store float %amplitude37.real, float* %real39, align 4
  store float %amplitude37.imag, float* %imag40, align 4
  %34 = bitcast { float, float }* %coerce38 to <2 x float>*
  %35 = load <2 x float>* %34, align 1
  %call41 = call float @quantum_prob_inline24(<2 x float> %35)
  %conv42 = fpext float %call41 to double
  %36 = load double* %d, align 8
  %add43 = fadd double %36, %conv42
  store double %add43, double* %d, align 8
  %37 = load i32* %size, align 4
  %inc44 = add nsw i32 %37, 1
  store i32 %inc44, i32* %size, align 4
  br label %if.end45

if.end45:                                         ; preds = %if.else, %if.then27
  br label %if.end68

if.else46:                                        ; preds = %for.body18
  %38 = load i32* %result, align 4
  %tobool47 = icmp ne i32 %38, 0
  br i1 %tobool47, label %if.then48, label %if.else55

if.then48:                                        ; preds = %if.else46
  %39 = load i32* %i, align 4
  %idxprom49 = sext i32 %39 to i64
  %40 = load %struct.quantum_reg_struct** %reg.addr, align 8
  %node50 = getelementptr inbounds %struct.quantum_reg_struct* %40, i32 0, i32 3
  %41 = load %struct.quantum_reg_node_struct** %node50, align 8
  %arrayidx51 = getelementptr inbounds %struct.quantum_reg_node_struct* %41, i64 %idxprom49
  %amplitude52 = getelementptr inbounds %struct.quantum_reg_node_struct* %arrayidx51, i32 0, i32 0
  %real53 = getelementptr inbounds { float, float }* %amplitude52, i32 0, i32 0
  %imag54 = getelementptr inbounds { float, float }* %amplitude52, i32 0, i32 1
  store float 0.000000e+00, float* %real53, align 4
  store float 0.000000e+00, float* %imag54, align 4
  br label %if.end67

if.else55:                                        ; preds = %if.else46
  %42 = load i32* %i, align 4
  %idxprom56 = sext i32 %42 to i64
  %43 = load %struct.quantum_reg_struct** %reg.addr, align 8
  %node57 = getelementptr inbounds %struct.quantum_reg_struct* %43, i32 0, i32 3
  %44 = load %struct.quantum_reg_node_struct** %node57, align 8
  %arrayidx58 = getelementptr inbounds %struct.quantum_reg_node_struct* %44, i64 %idxprom56
  %amplitude59 = getelementptr inbounds %struct.quantum_reg_node_struct* %arrayidx58, i32 0, i32 0
  %amplitude59.realp = getelementptr inbounds { float, float }* %amplitude59, i32 0, i32 0
  %amplitude59.real = load float* %amplitude59.realp, align 4
  %amplitude59.imagp = getelementptr inbounds { float, float }* %amplitude59, i32 0, i32 1
  %amplitude59.imag = load float* %amplitude59.imagp, align 4
  %real61 = getelementptr inbounds { float, float }* %coerce60, i32 0, i32 0
  %imag62 = getelementptr inbounds { float, float }* %coerce60, i32 0, i32 1
  store float %amplitude59.real, float* %real61, align 4
  store float %amplitude59.imag, float* %imag62, align 4
  %45 = bitcast { float, float }* %coerce60 to <2 x float>*
  %46 = load <2 x float>* %45, align 1
  %call63 = call float @quantum_prob_inline24(<2 x float> %46)
  %conv64 = fpext float %call63 to double
  %47 = load double* %d, align 8
  %add65 = fadd double %47, %conv64
  store double %add65, double* %d, align 8
  %48 = load i32* %size, align 4
  %inc66 = add nsw i32 %48, 1
  store i32 %inc66, i32* %size, align 4
  br label %if.end67

if.end67:                                         ; preds = %if.else55, %if.then48
  br label %if.end68

if.end68:                                         ; preds = %if.end67, %if.end45
  br label %for.inc69

for.inc69:                                        ; preds = %if.end68
  %49 = load i32* %i, align 4
  %inc70 = add nsw i32 %49, 1
  store i32 %inc70, i32* %i, align 4
  br label %for.cond14

for.end71:                                        ; preds = %for.cond14
  %50 = load i32* %size, align 4
  %size72 = getelementptr inbounds %struct.quantum_reg_struct* %out, i32 0, i32 1
  store i32 %50, i32* %size72, align 4
  %51 = load i32* %size, align 4
  %conv73 = sext i32 %51 to i64
  %call74 = call noalias i8* @calloc(i64 %conv73, i64 16) #6
  %52 = bitcast i8* %call74 to %struct.quantum_reg_node_struct*
  %node75 = getelementptr inbounds %struct.quantum_reg_struct* %out, i32 0, i32 3
  store %struct.quantum_reg_node_struct* %52, %struct.quantum_reg_node_struct** %node75, align 8
  %node76 = getelementptr inbounds %struct.quantum_reg_struct* %out, i32 0, i32 3
  %53 = load %struct.quantum_reg_node_struct** %node76, align 8
  %tobool77 = icmp ne %struct.quantum_reg_node_struct* %53, null
  br i1 %tobool77, label %if.end80, label %if.then78

if.then78:                                        ; preds = %for.end71
  %54 = load i32* %size, align 4
  %call79 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([39 x i8]* @.str21, i32 0, i32 0), i32 %54)
  call void @exit(i32 1) #9
  unreachable

if.end80:                                         ; preds = %for.end71
  %55 = load i32* %size, align 4
  %conv81 = sext i32 %55 to i64
  %mul = mul i64 %conv81, 16
  %call82 = call i64 @quantum_memman(i64 %mul)
  %56 = load %struct.quantum_reg_struct** %reg.addr, align 8
  %hashw = getelementptr inbounds %struct.quantum_reg_struct* %56, i32 0, i32 2
  %57 = load i32* %hashw, align 4
  %hashw83 = getelementptr inbounds %struct.quantum_reg_struct* %out, i32 0, i32 2
  store i32 %57, i32* %hashw83, align 4
  %58 = load %struct.quantum_reg_struct** %reg.addr, align 8
  %hash = getelementptr inbounds %struct.quantum_reg_struct* %58, i32 0, i32 4
  %59 = load i32** %hash, align 8
  %hash84 = getelementptr inbounds %struct.quantum_reg_struct* %out, i32 0, i32 4
  store i32* %59, i32** %hash84, align 8
  %60 = load %struct.quantum_reg_struct** %reg.addr, align 8
  %width = getelementptr inbounds %struct.quantum_reg_struct* %60, i32 0, i32 0
  %61 = load i32* %width, align 4
  %width85 = getelementptr inbounds %struct.quantum_reg_struct* %out, i32 0, i32 0
  store i32 %61, i32* %width85, align 4
  store i32 0, i32* %i, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond86

for.cond86:                                       ; preds = %for.inc121, %if.end80
  %62 = load i32* %i, align 4
  %63 = load %struct.quantum_reg_struct** %reg.addr, align 8
  %size87 = getelementptr inbounds %struct.quantum_reg_struct* %63, i32 0, i32 1
  %64 = load i32* %size87, align 4
  %cmp88 = icmp slt i32 %62, %64
  br i1 %cmp88, label %for.body90, label %for.end123

for.body90:                                       ; preds = %for.cond86
  %65 = load i32* %i, align 4
  %idxprom91 = sext i32 %65 to i64
  %66 = load %struct.quantum_reg_struct** %reg.addr, align 8
  %node92 = getelementptr inbounds %struct.quantum_reg_struct* %66, i32 0, i32 3
  %67 = load %struct.quantum_reg_node_struct** %node92, align 8
  %arrayidx93 = getelementptr inbounds %struct.quantum_reg_node_struct* %67, i64 %idxprom91
  %amplitude94 = getelementptr inbounds %struct.quantum_reg_node_struct* %arrayidx93, i32 0, i32 0
  %amplitude94.realp = getelementptr inbounds { float, float }* %amplitude94, i32 0, i32 0
  %amplitude94.real = load float* %amplitude94.realp, align 4
  %amplitude94.imagp = getelementptr inbounds { float, float }* %amplitude94, i32 0, i32 1
  %amplitude94.imag = load float* %amplitude94.imagp, align 4
  %tobool95 = fcmp une float %amplitude94.real, 0.000000e+00
  %tobool96 = fcmp une float %amplitude94.imag, 0.000000e+00
  %tobool97 = or i1 %tobool95, %tobool96
  br i1 %tobool97, label %if.then98, label %if.end120

if.then98:                                        ; preds = %for.body90
  %68 = load i32* %i, align 4
  %idxprom99 = sext i32 %68 to i64
  %69 = load %struct.quantum_reg_struct** %reg.addr, align 8
  %node100 = getelementptr inbounds %struct.quantum_reg_struct* %69, i32 0, i32 3
  %70 = load %struct.quantum_reg_node_struct** %node100, align 8
  %arrayidx101 = getelementptr inbounds %struct.quantum_reg_node_struct* %70, i64 %idxprom99
  %state102 = getelementptr inbounds %struct.quantum_reg_node_struct* %arrayidx101, i32 0, i32 1
  %71 = load i64* %state102, align 8
  %72 = load i32* %j, align 4
  %idxprom103 = sext i32 %72 to i64
  %node104 = getelementptr inbounds %struct.quantum_reg_struct* %out, i32 0, i32 3
  %73 = load %struct.quantum_reg_node_struct** %node104, align 8
  %arrayidx105 = getelementptr inbounds %struct.quantum_reg_node_struct* %73, i64 %idxprom103
  %state106 = getelementptr inbounds %struct.quantum_reg_node_struct* %arrayidx105, i32 0, i32 1
  store i64 %71, i64* %state106, align 8
  %74 = load i32* %i, align 4
  %idxprom107 = sext i32 %74 to i64
  %75 = load %struct.quantum_reg_struct** %reg.addr, align 8
  %node108 = getelementptr inbounds %struct.quantum_reg_struct* %75, i32 0, i32 3
  %76 = load %struct.quantum_reg_node_struct** %node108, align 8
  %arrayidx109 = getelementptr inbounds %struct.quantum_reg_node_struct* %76, i64 %idxprom107
  %amplitude110 = getelementptr inbounds %struct.quantum_reg_node_struct* %arrayidx109, i32 0, i32 0
  %amplitude110.realp = getelementptr inbounds { float, float }* %amplitude110, i32 0, i32 0
  %amplitude110.real = load float* %amplitude110.realp, align 4
  %amplitude110.imagp = getelementptr inbounds { float, float }* %amplitude110, i32 0, i32 1
  %amplitude110.imag = load float* %amplitude110.imagp, align 4
  %mul.rl = fmul float %amplitude110.real, 1.000000e+00
  %mul.rr = fmul float %amplitude110.imag, 0.000000e+00
  %mul.r = fsub float %mul.rl, %mul.rr
  %mul.il = fmul float %amplitude110.imag, 1.000000e+00
  %mul.ir = fmul float %amplitude110.real, 0.000000e+00
  %mul.i = fadd float %mul.il, %mul.ir
  %77 = load double* %d, align 8
  %call111 = call double @sqrt(double %77) #6
  %conv112 = fptrunc double %call111 to float
  %78 = fmul float %mul.r, %conv112
  %79 = fmul float %mul.i, 0.000000e+00
  %80 = fadd float %78, %79
  %81 = fmul float %conv112, %conv112
  %82 = fadd float %81, 0.000000e+00
  %83 = fmul float %mul.i, %conv112
  %84 = fmul float %mul.r, 0.000000e+00
  %85 = fsub float %83, %84
  %86 = fdiv float %80, %82
  %87 = fdiv float %85, %82
  %88 = load i32* %j, align 4
  %idxprom113 = sext i32 %88 to i64
  %node114 = getelementptr inbounds %struct.quantum_reg_struct* %out, i32 0, i32 3
  %89 = load %struct.quantum_reg_node_struct** %node114, align 8
  %arrayidx115 = getelementptr inbounds %struct.quantum_reg_node_struct* %89, i64 %idxprom113
  %amplitude116 = getelementptr inbounds %struct.quantum_reg_node_struct* %arrayidx115, i32 0, i32 0
  %real117 = getelementptr inbounds { float, float }* %amplitude116, i32 0, i32 0
  %imag118 = getelementptr inbounds { float, float }* %amplitude116, i32 0, i32 1
  store float %86, float* %real117, align 4
  store float %87, float* %imag118, align 4
  %90 = load i32* %j, align 4
  %inc119 = add nsw i32 %90, 1
  store i32 %inc119, i32* %j, align 4
  br label %if.end120

if.end120:                                        ; preds = %if.then98, %for.body90
  br label %for.inc121

for.inc121:                                       ; preds = %if.end120
  %91 = load i32* %i, align 4
  %inc122 = add nsw i32 %91, 1
  store i32 %inc122, i32* %i, align 4
  br label %for.cond86

for.end123:                                       ; preds = %for.cond86
  %92 = load %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_delete_qureg_hashpreserve(%struct.quantum_reg_struct* %92)
  %93 = load %struct.quantum_reg_struct** %reg.addr, align 8
  %94 = bitcast %struct.quantum_reg_struct* %93 to i8*
  %95 = bitcast %struct.quantum_reg_struct* %out to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %94, i8* %95, i64 32, i32 8, i1 false)
  %96 = load i32* %result, align 4
  store i32 %96, i32* %retval
  br label %return

return:                                           ; preds = %for.end123, %if.then
  %97 = load i32* %retval
  ret i32 %97
}

; Function Attrs: inlinehint nounwind uwtable
define internal float @quantum_prob_inline24(<2 x float> %a.coerce) #3 {
entry:
  %a = alloca { float, float }, align 8
  %r = alloca float, align 4
  %i = alloca float, align 4
  %coerce = alloca { float, float }, align 4
  %coerce5 = alloca { float, float }, align 4
  %0 = bitcast { float, float }* %a to <2 x float>*
  store <2 x float> %a.coerce, <2 x float>* %0, align 1
  %a.realp = getelementptr inbounds { float, float }* %a, i32 0, i32 0
  %a.real = load float* %a.realp, align 4
  %a.imagp = getelementptr inbounds { float, float }* %a, i32 0, i32 1
  %a.imag = load float* %a.imagp, align 4
  %real = getelementptr inbounds { float, float }* %coerce, i32 0, i32 0
  %imag = getelementptr inbounds { float, float }* %coerce, i32 0, i32 1
  store float %a.real, float* %real, align 4
  store float %a.imag, float* %imag, align 4
  %1 = bitcast { float, float }* %coerce to <2 x float>*
  %2 = load <2 x float>* %1, align 1
  %call = call float @quantum_real25(<2 x float> %2)
  store float %call, float* %r, align 4
  %a.realp1 = getelementptr inbounds { float, float }* %a, i32 0, i32 0
  %a.real2 = load float* %a.realp1, align 4
  %a.imagp3 = getelementptr inbounds { float, float }* %a, i32 0, i32 1
  %a.imag4 = load float* %a.imagp3, align 4
  %real6 = getelementptr inbounds { float, float }* %coerce5, i32 0, i32 0
  %imag7 = getelementptr inbounds { float, float }* %coerce5, i32 0, i32 1
  store float %a.real2, float* %real6, align 4
  store float %a.imag4, float* %imag7, align 4
  %3 = bitcast { float, float }* %coerce5 to <2 x float>*
  %4 = load <2 x float>* %3, align 1
  %call8 = call float @quantum_imag26(<2 x float> %4)
  store float %call8, float* %i, align 4
  %5 = load float* %r, align 4
  %6 = load float* %r, align 4
  %mul = fmul float %5, %6
  %7 = load float* %i, align 4
  %8 = load float* %i, align 4
  %mul9 = fmul float %7, %8
  %add = fadd float %mul, %mul9
  ret float %add
}

; Function Attrs: inlinehint nounwind uwtable
define internal float @quantum_real25(<2 x float> %a.coerce) #3 {
entry:
  %a = alloca { float, float }, align 8
  %p = alloca float*, align 8
  %0 = bitcast { float, float }* %a to <2 x float>*
  store <2 x float> %a.coerce, <2 x float>* %0, align 1
  %1 = bitcast { float, float }* %a to float*
  store float* %1, float** %p, align 8
  %2 = load float** %p, align 8
  %arrayidx = getelementptr inbounds float* %2, i64 0
  %3 = load float* %arrayidx, align 4
  ret float %3
}

; Function Attrs: inlinehint nounwind uwtable
define internal float @quantum_imag26(<2 x float> %a.coerce) #3 {
entry:
  %a = alloca { float, float }, align 8
  %p = alloca float*, align 8
  %0 = bitcast { float, float }* %a to <2 x float>*
  store <2 x float> %a.coerce, <2 x float>* %0, align 1
  %1 = bitcast { float, float }* %a to float*
  store float* %1, float** %p, align 8
  %2 = load float** %p, align 8
  %arrayidx = getelementptr inbounds float* %2, i64 1
  %3 = load float* %arrayidx, align 4
  ret float %3
}

; Function Attrs: nounwind uwtable
define void @test_sum(i32 %compare, i32 %width, %struct.quantum_reg_struct* %reg) #0 {
entry:
  %compare.addr = alloca i32, align 4
  %width.addr = alloca i32, align 4
  %reg.addr = alloca %struct.quantum_reg_struct*, align 8
  %i = alloca i32, align 4
  store i32 %compare, i32* %compare.addr, align 4
  store i32 %width, i32* %width.addr, align 4
  store %struct.quantum_reg_struct* %reg, %struct.quantum_reg_struct** %reg.addr, align 8
  %0 = load i32* %compare.addr, align 4
  %conv = sext i32 %0 to i64
  %1 = load i32* %width.addr, align 4
  %sub = sub nsw i32 %1, 1
  %sh_prom = zext i32 %sub to i64
  %shl = shl i64 1, %sh_prom
  %and = and i64 %conv, %shl
  %tobool = icmp ne i64 %and, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load i32* %width.addr, align 4
  %mul = mul nsw i32 2, %2
  %sub1 = sub nsw i32 %mul, 1
  %3 = load i32* %width.addr, align 4
  %sub2 = sub nsw i32 %3, 1
  %4 = load %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_cnot(i32 %sub1, i32 %sub2, %struct.quantum_reg_struct* %4)
  %5 = load i32* %width.addr, align 4
  %mul3 = mul nsw i32 2, %5
  %sub4 = sub nsw i32 %mul3, 1
  %6 = load %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_sigma_x(i32 %sub4, %struct.quantum_reg_struct* %6)
  %7 = load i32* %width.addr, align 4
  %mul5 = mul nsw i32 2, %7
  %sub6 = sub nsw i32 %mul5, 1
  %8 = load %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_cnot(i32 %sub6, i32 0, %struct.quantum_reg_struct* %8)
  br label %if.end

if.else:                                          ; preds = %entry
  %9 = load i32* %width.addr, align 4
  %mul7 = mul nsw i32 2, %9
  %sub8 = sub nsw i32 %mul7, 1
  %10 = load %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_sigma_x(i32 %sub8, %struct.quantum_reg_struct* %10)
  %11 = load i32* %width.addr, align 4
  %mul9 = mul nsw i32 2, %11
  %sub10 = sub nsw i32 %mul9, 1
  %12 = load i32* %width.addr, align 4
  %sub11 = sub nsw i32 %12, 1
  %13 = load %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_cnot(i32 %sub10, i32 %sub11, %struct.quantum_reg_struct* %13)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %14 = load i32* %width.addr, align 4
  %sub12 = sub nsw i32 %14, 2
  store i32 %sub12, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %15 = load i32* %i, align 4
  %cmp = icmp sgt i32 %15, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %16 = load i32* %compare.addr, align 4
  %17 = load i32* %i, align 4
  %shl14 = shl i32 1, %17
  %and15 = and i32 %16, %shl14
  %tobool16 = icmp ne i32 %and15, 0
  br i1 %tobool16, label %if.then17, label %if.else22

if.then17:                                        ; preds = %for.body
  %18 = load i32* %i, align 4
  %add = add nsw i32 %18, 1
  %19 = load i32* %width.addr, align 4
  %20 = load i32* %i, align 4
  %add18 = add nsw i32 %19, %20
  %21 = load i32* %i, align 4
  %22 = load %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_toffoli(i32 %add, i32 %add18, i32 %21, %struct.quantum_reg_struct* %22)
  %23 = load i32* %width.addr, align 4
  %24 = load i32* %i, align 4
  %add19 = add nsw i32 %23, %24
  %25 = load %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_sigma_x(i32 %add19, %struct.quantum_reg_struct* %25)
  %26 = load i32* %i, align 4
  %add20 = add nsw i32 %26, 1
  %27 = load i32* %width.addr, align 4
  %28 = load i32* %i, align 4
  %add21 = add nsw i32 %27, %28
  %29 = load %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_toffoli(i32 %add20, i32 %add21, i32 0, %struct.quantum_reg_struct* %29)
  br label %if.end26

if.else22:                                        ; preds = %for.body
  %30 = load i32* %width.addr, align 4
  %31 = load i32* %i, align 4
  %add23 = add nsw i32 %30, %31
  %32 = load %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_sigma_x(i32 %add23, %struct.quantum_reg_struct* %32)
  %33 = load i32* %i, align 4
  %add24 = add nsw i32 %33, 1
  %34 = load i32* %width.addr, align 4
  %35 = load i32* %i, align 4
  %add25 = add nsw i32 %34, %35
  %36 = load i32* %i, align 4
  %37 = load %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_toffoli(i32 %add24, i32 %add25, i32 %36, %struct.quantum_reg_struct* %37)
  br label %if.end26

if.end26:                                         ; preds = %if.else22, %if.then17
  br label %for.inc

for.inc:                                          ; preds = %if.end26
  %38 = load i32* %i, align 4
  %dec = add nsw i32 %38, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %39 = load i32* %compare.addr, align 4
  %and27 = and i32 %39, 1
  %tobool28 = icmp ne i32 %and27, 0
  br i1 %tobool28, label %if.then29, label %if.end30

if.then29:                                        ; preds = %for.end
  %40 = load i32* %width.addr, align 4
  %41 = load %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_sigma_x(i32 %40, %struct.quantum_reg_struct* %41)
  %42 = load i32* %width.addr, align 4
  %43 = load %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_toffoli(i32 %42, i32 1, i32 0, %struct.quantum_reg_struct* %43)
  br label %if.end30

if.end30:                                         ; preds = %if.then29, %for.end
  %44 = load i32* %width.addr, align 4
  %mul31 = mul nsw i32 2, %44
  %add32 = add nsw i32 %mul31, 1
  %45 = load i32* %width.addr, align 4
  %mul33 = mul nsw i32 2, %45
  %46 = load %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_toffoli(i32 %add32, i32 0, i32 %mul33, %struct.quantum_reg_struct* %46)
  %47 = load i32* %compare.addr, align 4
  %and34 = and i32 %47, 1
  %tobool35 = icmp ne i32 %and34, 0
  br i1 %tobool35, label %if.then36, label %if.end37

if.then36:                                        ; preds = %if.end30
  %48 = load i32* %width.addr, align 4
  %49 = load %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_toffoli(i32 %48, i32 1, i32 0, %struct.quantum_reg_struct* %49)
  %50 = load i32* %width.addr, align 4
  %51 = load %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_sigma_x(i32 %50, %struct.quantum_reg_struct* %51)
  br label %if.end37

if.end37:                                         ; preds = %if.then36, %if.end30
  store i32 1, i32* %i, align 4
  br label %for.cond38

for.cond38:                                       ; preds = %for.inc57, %if.end37
  %52 = load i32* %i, align 4
  %53 = load i32* %width.addr, align 4
  %sub39 = sub nsw i32 %53, 2
  %cmp40 = icmp sle i32 %52, %sub39
  br i1 %cmp40, label %for.body42, label %for.end58

for.body42:                                       ; preds = %for.cond38
  %54 = load i32* %compare.addr, align 4
  %55 = load i32* %i, align 4
  %shl43 = shl i32 1, %55
  %and44 = and i32 %54, %shl43
  %tobool45 = icmp ne i32 %and44, 0
  br i1 %tobool45, label %if.then46, label %if.else52

if.then46:                                        ; preds = %for.body42
  %56 = load i32* %i, align 4
  %add47 = add nsw i32 %56, 1
  %57 = load i32* %width.addr, align 4
  %58 = load i32* %i, align 4
  %add48 = add nsw i32 %57, %58
  %59 = load %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_toffoli(i32 %add47, i32 %add48, i32 0, %struct.quantum_reg_struct* %59)
  %60 = load i32* %width.addr, align 4
  %61 = load i32* %i, align 4
  %add49 = add nsw i32 %60, %61
  %62 = load %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_sigma_x(i32 %add49, %struct.quantum_reg_struct* %62)
  %63 = load i32* %i, align 4
  %add50 = add nsw i32 %63, 1
  %64 = load i32* %width.addr, align 4
  %65 = load i32* %i, align 4
  %add51 = add nsw i32 %64, %65
  %66 = load i32* %i, align 4
  %67 = load %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_toffoli(i32 %add50, i32 %add51, i32 %66, %struct.quantum_reg_struct* %67)
  br label %if.end56

if.else52:                                        ; preds = %for.body42
  %68 = load i32* %i, align 4
  %add53 = add nsw i32 %68, 1
  %69 = load i32* %width.addr, align 4
  %70 = load i32* %i, align 4
  %add54 = add nsw i32 %69, %70
  %71 = load i32* %i, align 4
  %72 = load %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_toffoli(i32 %add53, i32 %add54, i32 %71, %struct.quantum_reg_struct* %72)
  %73 = load i32* %width.addr, align 4
  %74 = load i32* %i, align 4
  %add55 = add nsw i32 %73, %74
  %75 = load %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_sigma_x(i32 %add55, %struct.quantum_reg_struct* %75)
  br label %if.end56

if.end56:                                         ; preds = %if.else52, %if.then46
  br label %for.inc57

for.inc57:                                        ; preds = %if.end56
  %76 = load i32* %i, align 4
  %inc = add nsw i32 %76, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond38

for.end58:                                        ; preds = %for.cond38
  %77 = load i32* %compare.addr, align 4
  %78 = load i32* %width.addr, align 4
  %sub59 = sub nsw i32 %78, 1
  %shl60 = shl i32 1, %sub59
  %and61 = and i32 %77, %shl60
  %tobool62 = icmp ne i32 %and61, 0
  br i1 %tobool62, label %if.then63, label %if.else71

if.then63:                                        ; preds = %for.end58
  %79 = load i32* %width.addr, align 4
  %mul64 = mul nsw i32 2, %79
  %sub65 = sub nsw i32 %mul64, 1
  %80 = load %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_cnot(i32 %sub65, i32 0, %struct.quantum_reg_struct* %80)
  %81 = load i32* %width.addr, align 4
  %mul66 = mul nsw i32 2, %81
  %sub67 = sub nsw i32 %mul66, 1
  %82 = load %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_sigma_x(i32 %sub67, %struct.quantum_reg_struct* %82)
  %83 = load i32* %width.addr, align 4
  %mul68 = mul nsw i32 2, %83
  %sub69 = sub nsw i32 %mul68, 1
  %84 = load i32* %width.addr, align 4
  %sub70 = sub nsw i32 %84, 1
  %85 = load %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_cnot(i32 %sub69, i32 %sub70, %struct.quantum_reg_struct* %85)
  br label %if.end77

if.else71:                                        ; preds = %for.end58
  %86 = load i32* %width.addr, align 4
  %mul72 = mul nsw i32 2, %86
  %sub73 = sub nsw i32 %mul72, 1
  %87 = load i32* %width.addr, align 4
  %sub74 = sub nsw i32 %87, 1
  %88 = load %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_cnot(i32 %sub73, i32 %sub74, %struct.quantum_reg_struct* %88)
  %89 = load i32* %width.addr, align 4
  %mul75 = mul nsw i32 2, %89
  %sub76 = sub nsw i32 %mul75, 1
  %90 = load %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_sigma_x(i32 %sub76, %struct.quantum_reg_struct* %90)
  br label %if.end77

if.end77:                                         ; preds = %if.else71, %if.then63
  ret void
}

; Function Attrs: nounwind uwtable
define void @muxfa(i32 %a, i32 %b_in, i32 %c_in, i32 %c_out, i32 %xlt_l, i32 %L, i32 %total, %struct.quantum_reg_struct* %reg) #0 {
entry:
  %a.addr = alloca i32, align 4
  %b_in.addr = alloca i32, align 4
  %c_in.addr = alloca i32, align 4
  %c_out.addr = alloca i32, align 4
  %xlt_l.addr = alloca i32, align 4
  %L.addr = alloca i32, align 4
  %total.addr = alloca i32, align 4
  %reg.addr = alloca %struct.quantum_reg_struct*, align 8
  store i32 %a, i32* %a.addr, align 4
  store i32 %b_in, i32* %b_in.addr, align 4
  store i32 %c_in, i32* %c_in.addr, align 4
  store i32 %c_out, i32* %c_out.addr, align 4
  store i32 %xlt_l, i32* %xlt_l.addr, align 4
  store i32 %L, i32* %L.addr, align 4
  store i32 %total, i32* %total.addr, align 4
  store %struct.quantum_reg_struct* %reg, %struct.quantum_reg_struct** %reg.addr, align 8
  %0 = load i32* %a.addr, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32* %b_in.addr, align 4
  %2 = load i32* %c_in.addr, align 4
  %3 = load i32* %c_out.addr, align 4
  %4 = load %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_toffoli(i32 %1, i32 %2, i32 %3, %struct.quantum_reg_struct* %4)
  %5 = load i32* %b_in.addr, align 4
  %6 = load i32* %c_in.addr, align 4
  %7 = load %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_cnot(i32 %5, i32 %6, %struct.quantum_reg_struct* %7)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load i32* %a.addr, align 4
  %cmp1 = icmp eq i32 %8, 3
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  %9 = load i32* %L.addr, align 4
  %10 = load i32* %c_in.addr, align 4
  %11 = load i32* %c_out.addr, align 4
  %12 = load %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_toffoli(i32 %9, i32 %10, i32 %11, %struct.quantum_reg_struct* %12)
  %13 = load i32* %L.addr, align 4
  %14 = load i32* %c_in.addr, align 4
  %15 = load %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_cnot(i32 %13, i32 %14, %struct.quantum_reg_struct* %15)
  %16 = load i32* %b_in.addr, align 4
  %17 = load i32* %c_in.addr, align 4
  %18 = load i32* %c_out.addr, align 4
  %19 = load %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_toffoli(i32 %16, i32 %17, i32 %18, %struct.quantum_reg_struct* %19)
  %20 = load i32* %b_in.addr, align 4
  %21 = load i32* %c_in.addr, align 4
  %22 = load %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_cnot(i32 %20, i32 %21, %struct.quantum_reg_struct* %22)
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end
  %23 = load i32* %a.addr, align 4
  %cmp4 = icmp eq i32 %23, 1
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end3
  %24 = load i32* %L.addr, align 4
  %25 = load i32* %xlt_l.addr, align 4
  %26 = load i32* %b_in.addr, align 4
  %27 = load %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_toffoli(i32 %24, i32 %25, i32 %26, %struct.quantum_reg_struct* %27)
  %28 = load i32* %b_in.addr, align 4
  %29 = load i32* %c_in.addr, align 4
  %30 = load i32* %c_out.addr, align 4
  %31 = load %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_toffoli(i32 %28, i32 %29, i32 %30, %struct.quantum_reg_struct* %31)
  %32 = load i32* %L.addr, align 4
  %33 = load i32* %xlt_l.addr, align 4
  %34 = load i32* %b_in.addr, align 4
  %35 = load %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_toffoli(i32 %32, i32 %33, i32 %34, %struct.quantum_reg_struct* %35)
  %36 = load i32* %b_in.addr, align 4
  %37 = load i32* %c_in.addr, align 4
  %38 = load i32* %c_out.addr, align 4
  %39 = load %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_toffoli(i32 %36, i32 %37, i32 %38, %struct.quantum_reg_struct* %39)
  %40 = load i32* %L.addr, align 4
  %41 = load i32* %xlt_l.addr, align 4
  %42 = load i32* %c_in.addr, align 4
  %43 = load %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_toffoli(i32 %40, i32 %41, i32 %42, %struct.quantum_reg_struct* %43)
  %44 = load i32* %b_in.addr, align 4
  %45 = load i32* %c_in.addr, align 4
  %46 = load i32* %c_out.addr, align 4
  %47 = load %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_toffoli(i32 %44, i32 %45, i32 %46, %struct.quantum_reg_struct* %47)
  %48 = load i32* %b_in.addr, align 4
  %49 = load i32* %c_in.addr, align 4
  %50 = load %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_cnot(i32 %48, i32 %49, %struct.quantum_reg_struct* %50)
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end3
  %51 = load i32* %a.addr, align 4
  %cmp7 = icmp eq i32 %51, 2
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end6
  %52 = load i32* %xlt_l.addr, align 4
  %53 = load %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_sigma_x(i32 %52, %struct.quantum_reg_struct* %53)
  %54 = load i32* %L.addr, align 4
  %55 = load i32* %xlt_l.addr, align 4
  %56 = load i32* %b_in.addr, align 4
  %57 = load %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_toffoli(i32 %54, i32 %55, i32 %56, %struct.quantum_reg_struct* %57)
  %58 = load i32* %b_in.addr, align 4
  %59 = load i32* %c_in.addr, align 4
  %60 = load i32* %c_out.addr, align 4
  %61 = load %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_toffoli(i32 %58, i32 %59, i32 %60, %struct.quantum_reg_struct* %61)
  %62 = load i32* %L.addr, align 4
  %63 = load i32* %xlt_l.addr, align 4
  %64 = load i32* %b_in.addr, align 4
  %65 = load %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_toffoli(i32 %62, i32 %63, i32 %64, %struct.quantum_reg_struct* %65)
  %66 = load i32* %b_in.addr, align 4
  %67 = load i32* %c_in.addr, align 4
  %68 = load i32* %c_out.addr, align 4
  %69 = load %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_toffoli(i32 %66, i32 %67, i32 %68, %struct.quantum_reg_struct* %69)
  %70 = load i32* %L.addr, align 4
  %71 = load i32* %xlt_l.addr, align 4
  %72 = load i32* %c_in.addr, align 4
  %73 = load %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_toffoli(i32 %70, i32 %71, i32 %72, %struct.quantum_reg_struct* %73)
  %74 = load i32* %b_in.addr, align 4
  %75 = load i32* %c_in.addr, align 4
  %76 = load i32* %c_out.addr, align 4
  %77 = load %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_toffoli(i32 %74, i32 %75, i32 %76, %struct.quantum_reg_struct* %77)
  %78 = load i32* %b_in.addr, align 4
  %79 = load i32* %c_in.addr, align 4
  %80 = load %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_cnot(i32 %78, i32 %79, %struct.quantum_reg_struct* %80)
  %81 = load i32* %xlt_l.addr, align 4
  %82 = load %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_sigma_x(i32 %81, %struct.quantum_reg_struct* %82)
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %if.end6
  ret void
}

; Function Attrs: nounwind uwtable
define void @muxfa_inv(i32 %a, i32 %b_in, i32 %c_in, i32 %c_out, i32 %xlt_l, i32 %L, i32 %total, %struct.quantum_reg_struct* %reg) #0 {
entry:
  %a.addr = alloca i32, align 4
  %b_in.addr = alloca i32, align 4
  %c_in.addr = alloca i32, align 4
  %c_out.addr = alloca i32, align 4
  %xlt_l.addr = alloca i32, align 4
  %L.addr = alloca i32, align 4
  %total.addr = alloca i32, align 4
  %reg.addr = alloca %struct.quantum_reg_struct*, align 8
  store i32 %a, i32* %a.addr, align 4
  store i32 %b_in, i32* %b_in.addr, align 4
  store i32 %c_in, i32* %c_in.addr, align 4
  store i32 %c_out, i32* %c_out.addr, align 4
  store i32 %xlt_l, i32* %xlt_l.addr, align 4
  store i32 %L, i32* %L.addr, align 4
  store i32 %total, i32* %total.addr, align 4
  store %struct.quantum_reg_struct* %reg, %struct.quantum_reg_struct** %reg.addr, align 8
  %0 = load i32* %a.addr, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32* %b_in.addr, align 4
  %2 = load i32* %c_in.addr, align 4
  %3 = load %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_cnot(i32 %1, i32 %2, %struct.quantum_reg_struct* %3)
  %4 = load i32* %b_in.addr, align 4
  %5 = load i32* %c_in.addr, align 4
  %6 = load i32* %c_out.addr, align 4
  %7 = load %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_toffoli(i32 %4, i32 %5, i32 %6, %struct.quantum_reg_struct* %7)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load i32* %a.addr, align 4
  %cmp1 = icmp eq i32 %8, 3
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  %9 = load i32* %b_in.addr, align 4
  %10 = load i32* %c_in.addr, align 4
  %11 = load %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_cnot(i32 %9, i32 %10, %struct.quantum_reg_struct* %11)
  %12 = load i32* %b_in.addr, align 4
  %13 = load i32* %c_in.addr, align 4
  %14 = load i32* %c_out.addr, align 4
  %15 = load %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_toffoli(i32 %12, i32 %13, i32 %14, %struct.quantum_reg_struct* %15)
  %16 = load i32* %L.addr, align 4
  %17 = load i32* %c_in.addr, align 4
  %18 = load %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_cnot(i32 %16, i32 %17, %struct.quantum_reg_struct* %18)
  %19 = load i32* %L.addr, align 4
  %20 = load i32* %c_in.addr, align 4
  %21 = load i32* %c_out.addr, align 4
  %22 = load %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_toffoli(i32 %19, i32 %20, i32 %21, %struct.quantum_reg_struct* %22)
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end
  %23 = load i32* %a.addr, align 4
  %cmp4 = icmp eq i32 %23, 1
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end3
  %24 = load i32* %b_in.addr, align 4
  %25 = load i32* %c_in.addr, align 4
  %26 = load %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_cnot(i32 %24, i32 %25, %struct.quantum_reg_struct* %26)
  %27 = load i32* %b_in.addr, align 4
  %28 = load i32* %c_in.addr, align 4
  %29 = load i32* %c_out.addr, align 4
  %30 = load %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_toffoli(i32 %27, i32 %28, i32 %29, %struct.quantum_reg_struct* %30)
  %31 = load i32* %L.addr, align 4
  %32 = load i32* %xlt_l.addr, align 4
  %33 = load i32* %c_in.addr, align 4
  %34 = load %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_toffoli(i32 %31, i32 %32, i32 %33, %struct.quantum_reg_struct* %34)
  %35 = load i32* %b_in.addr, align 4
  %36 = load i32* %c_in.addr, align 4
  %37 = load i32* %c_out.addr, align 4
  %38 = load %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_toffoli(i32 %35, i32 %36, i32 %37, %struct.quantum_reg_struct* %38)
  %39 = load i32* %L.addr, align 4
  %40 = load i32* %xlt_l.addr, align 4
  %41 = load i32* %b_in.addr, align 4
  %42 = load %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_toffoli(i32 %39, i32 %40, i32 %41, %struct.quantum_reg_struct* %42)
  %43 = load i32* %b_in.addr, align 4
  %44 = load i32* %c_in.addr, align 4
  %45 = load i32* %c_out.addr, align 4
  %46 = load %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_toffoli(i32 %43, i32 %44, i32 %45, %struct.quantum_reg_struct* %46)
  %47 = load i32* %L.addr, align 4
  %48 = load i32* %xlt_l.addr, align 4
  %49 = load i32* %b_in.addr, align 4
  %50 = load %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_toffoli(i32 %47, i32 %48, i32 %49, %struct.quantum_reg_struct* %50)
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end3
  %51 = load i32* %a.addr, align 4
  %cmp7 = icmp eq i32 %51, 2
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end6
  %52 = load i32* %xlt_l.addr, align 4
  %53 = load %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_sigma_x(i32 %52, %struct.quantum_reg_struct* %53)
  %54 = load i32* %b_in.addr, align 4
  %55 = load i32* %c_in.addr, align 4
  %56 = load %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_cnot(i32 %54, i32 %55, %struct.quantum_reg_struct* %56)
  %57 = load i32* %b_in.addr, align 4
  %58 = load i32* %c_in.addr, align 4
  %59 = load i32* %c_out.addr, align 4
  %60 = load %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_toffoli(i32 %57, i32 %58, i32 %59, %struct.quantum_reg_struct* %60)
  %61 = load i32* %L.addr, align 4
  %62 = load i32* %xlt_l.addr, align 4
  %63 = load i32* %c_in.addr, align 4
  %64 = load %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_toffoli(i32 %61, i32 %62, i32 %63, %struct.quantum_reg_struct* %64)
  %65 = load i32* %b_in.addr, align 4
  %66 = load i32* %c_in.addr, align 4
  %67 = load i32* %c_out.addr, align 4
  %68 = load %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_toffoli(i32 %65, i32 %66, i32 %67, %struct.quantum_reg_struct* %68)
  %69 = load i32* %L.addr, align 4
  %70 = load i32* %xlt_l.addr, align 4
  %71 = load i32* %b_in.addr, align 4
  %72 = load %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_toffoli(i32 %69, i32 %70, i32 %71, %struct.quantum_reg_struct* %72)
  %73 = load i32* %b_in.addr, align 4
  %74 = load i32* %c_in.addr, align 4
  %75 = load i32* %c_out.addr, align 4
  %76 = load %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_toffoli(i32 %73, i32 %74, i32 %75, %struct.quantum_reg_struct* %76)
  %77 = load i32* %L.addr, align 4
  %78 = load i32* %xlt_l.addr, align 4
  %79 = load i32* %b_in.addr, align 4
  %80 = load %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_toffoli(i32 %77, i32 %78, i32 %79, %struct.quantum_reg_struct* %80)
  %81 = load i32* %xlt_l.addr, align 4
  %82 = load %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_sigma_x(i32 %81, %struct.quantum_reg_struct* %82)
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %if.end6
  ret void
}

; Function Attrs: nounwind uwtable
define void @muxha(i32 %a, i32 %b_in, i32 %c_in, i32 %xlt_l, i32 %L, i32 %total, %struct.quantum_reg_struct* %reg) #0 {
entry:
  %a.addr = alloca i32, align 4
  %b_in.addr = alloca i32, align 4
  %c_in.addr = alloca i32, align 4
  %xlt_l.addr = alloca i32, align 4
  %L.addr = alloca i32, align 4
  %total.addr = alloca i32, align 4
  %reg.addr = alloca %struct.quantum_reg_struct*, align 8
  store i32 %a, i32* %a.addr, align 4
  store i32 %b_in, i32* %b_in.addr, align 4
  store i32 %c_in, i32* %c_in.addr, align 4
  store i32 %xlt_l, i32* %xlt_l.addr, align 4
  store i32 %L, i32* %L.addr, align 4
  store i32 %total, i32* %total.addr, align 4
  store %struct.quantum_reg_struct* %reg, %struct.quantum_reg_struct** %reg.addr, align 8
  %0 = load i32* %a.addr, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32* %b_in.addr, align 4
  %2 = load i32* %c_in.addr, align 4
  %3 = load %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_cnot(i32 %1, i32 %2, %struct.quantum_reg_struct* %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load i32* %a.addr, align 4
  %cmp1 = icmp eq i32 %4, 3
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  %5 = load i32* %L.addr, align 4
  %6 = load i32* %c_in.addr, align 4
  %7 = load %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_cnot(i32 %5, i32 %6, %struct.quantum_reg_struct* %7)
  %8 = load i32* %b_in.addr, align 4
  %9 = load i32* %c_in.addr, align 4
  %10 = load %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_cnot(i32 %8, i32 %9, %struct.quantum_reg_struct* %10)
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end
  %11 = load i32* %a.addr, align 4
  %cmp4 = icmp eq i32 %11, 1
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end3
  %12 = load i32* %L.addr, align 4
  %13 = load i32* %xlt_l.addr, align 4
  %14 = load i32* %c_in.addr, align 4
  %15 = load %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_toffoli(i32 %12, i32 %13, i32 %14, %struct.quantum_reg_struct* %15)
  %16 = load i32* %b_in.addr, align 4
  %17 = load i32* %c_in.addr, align 4
  %18 = load %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_cnot(i32 %16, i32 %17, %struct.quantum_reg_struct* %18)
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end3
  %19 = load i32* %a.addr, align 4
  %cmp7 = icmp eq i32 %19, 2
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end6
  %20 = load i32* %xlt_l.addr, align 4
  %21 = load %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_sigma_x(i32 %20, %struct.quantum_reg_struct* %21)
  %22 = load i32* %L.addr, align 4
  %23 = load i32* %xlt_l.addr, align 4
  %24 = load i32* %c_in.addr, align 4
  %25 = load %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_toffoli(i32 %22, i32 %23, i32 %24, %struct.quantum_reg_struct* %25)
  %26 = load i32* %b_in.addr, align 4
  %27 = load i32* %c_in.addr, align 4
  %28 = load %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_cnot(i32 %26, i32 %27, %struct.quantum_reg_struct* %28)
  %29 = load i32* %xlt_l.addr, align 4
  %30 = load %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_sigma_x(i32 %29, %struct.quantum_reg_struct* %30)
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %if.end6
  ret void
}

; Function Attrs: nounwind uwtable
define void @muxha_inv(i32 %a, i32 %b_in, i32 %c_in, i32 %xlt_l, i32 %L, i32 %total, %struct.quantum_reg_struct* %reg) #0 {
entry:
  %a.addr = alloca i32, align 4
  %b_in.addr = alloca i32, align 4
  %c_in.addr = alloca i32, align 4
  %xlt_l.addr = alloca i32, align 4
  %L.addr = alloca i32, align 4
  %total.addr = alloca i32, align 4
  %reg.addr = alloca %struct.quantum_reg_struct*, align 8
  store i32 %a, i32* %a.addr, align 4
  store i32 %b_in, i32* %b_in.addr, align 4
  store i32 %c_in, i32* %c_in.addr, align 4
  store i32 %xlt_l, i32* %xlt_l.addr, align 4
  store i32 %L, i32* %L.addr, align 4
  store i32 %total, i32* %total.addr, align 4
  store %struct.quantum_reg_struct* %reg, %struct.quantum_reg_struct** %reg.addr, align 8
  %0 = load i32* %a.addr, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32* %b_in.addr, align 4
  %2 = load i32* %c_in.addr, align 4
  %3 = load %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_cnot(i32 %1, i32 %2, %struct.quantum_reg_struct* %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load i32* %a.addr, align 4
  %cmp1 = icmp eq i32 %4, 3
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  %5 = load i32* %b_in.addr, align 4
  %6 = load i32* %c_in.addr, align 4
  %7 = load %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_cnot(i32 %5, i32 %6, %struct.quantum_reg_struct* %7)
  %8 = load i32* %L.addr, align 4
  %9 = load i32* %c_in.addr, align 4
  %10 = load %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_cnot(i32 %8, i32 %9, %struct.quantum_reg_struct* %10)
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end
  %11 = load i32* %a.addr, align 4
  %cmp4 = icmp eq i32 %11, 1
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end3
  %12 = load i32* %b_in.addr, align 4
  %13 = load i32* %c_in.addr, align 4
  %14 = load %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_cnot(i32 %12, i32 %13, %struct.quantum_reg_struct* %14)
  %15 = load i32* %L.addr, align 4
  %16 = load i32* %xlt_l.addr, align 4
  %17 = load i32* %c_in.addr, align 4
  %18 = load %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_toffoli(i32 %15, i32 %16, i32 %17, %struct.quantum_reg_struct* %18)
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end3
  %19 = load i32* %a.addr, align 4
  %cmp7 = icmp eq i32 %19, 2
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end6
  %20 = load i32* %xlt_l.addr, align 4
  %21 = load %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_sigma_x(i32 %20, %struct.quantum_reg_struct* %21)
  %22 = load i32* %b_in.addr, align 4
  %23 = load i32* %c_in.addr, align 4
  %24 = load %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_cnot(i32 %22, i32 %23, %struct.quantum_reg_struct* %24)
  %25 = load i32* %L.addr, align 4
  %26 = load i32* %xlt_l.addr, align 4
  %27 = load i32* %c_in.addr, align 4
  %28 = load %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_toffoli(i32 %25, i32 %26, i32 %27, %struct.quantum_reg_struct* %28)
  %29 = load i32* %xlt_l.addr, align 4
  %30 = load %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_sigma_x(i32 %29, %struct.quantum_reg_struct* %30)
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %if.end6
  ret void
}

; Function Attrs: nounwind uwtable
define void @madd(i32 %a, i32 %a_inv, i32 %width, %struct.quantum_reg_struct* %reg) #0 {
entry:
  %a.addr = alloca i32, align 4
  %a_inv.addr = alloca i32, align 4
  %width.addr = alloca i32, align 4
  %reg.addr = alloca %struct.quantum_reg_struct*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %total = alloca i32, align 4
  store i32 %a, i32* %a.addr, align 4
  store i32 %a_inv, i32* %a_inv.addr, align 4
  store i32 %width, i32* %width.addr, align 4
  store %struct.quantum_reg_struct* %reg, %struct.quantum_reg_struct** %reg.addr, align 8
  %0 = load i32* %width.addr, align 4
  %mul = mul nsw i32 4, %0
  %add = add nsw i32 %mul, 2
  store i32 %add, i32* %total, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32* %i, align 4
  %2 = load i32* %width.addr, align 4
  %sub = sub nsw i32 %2, 1
  %cmp = icmp slt i32 %1, %sub
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32* %i, align 4
  %shl = shl i32 1, %3
  %4 = load i32* %a.addr, align 4
  %and = and i32 %shl, %4
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  store i32 2, i32* %j, align 4
  br label %if.end

if.else:                                          ; preds = %for.body
  store i32 0, i32* %j, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %5 = load i32* %i, align 4
  %shl1 = shl i32 1, %5
  %6 = load i32* %a_inv.addr, align 4
  %and2 = and i32 %shl1, %6
  %tobool3 = icmp ne i32 %and2, 0
  br i1 %tobool3, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  %7 = load i32* %j, align 4
  %add5 = add nsw i32 %7, 1
  store i32 %add5, i32* %j, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.end
  %8 = load i32* %j, align 4
  %9 = load i32* %width.addr, align 4
  %10 = load i32* %i, align 4
  %add7 = add nsw i32 %9, %10
  %11 = load i32* %i, align 4
  %12 = load i32* %i, align 4
  %add8 = add nsw i32 %12, 1
  %13 = load i32* %width.addr, align 4
  %mul9 = mul nsw i32 2, %13
  %14 = load i32* %width.addr, align 4
  %mul10 = mul nsw i32 2, %14
  %add11 = add nsw i32 %mul10, 1
  %15 = load i32* %total, align 4
  %16 = load %struct.quantum_reg_struct** %reg.addr, align 8
  call void @muxfa(i32 %8, i32 %add7, i32 %11, i32 %add8, i32 %mul9, i32 %add11, i32 %15, %struct.quantum_reg_struct* %16)
  br label %for.inc

for.inc:                                          ; preds = %if.end6
  %17 = load i32* %i, align 4
  %inc = add nsw i32 %17, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %j, align 4
  %18 = load i32* %width.addr, align 4
  %sub12 = sub nsw i32 %18, 1
  %shl13 = shl i32 1, %sub12
  %19 = load i32* %a.addr, align 4
  %and14 = and i32 %shl13, %19
  %tobool15 = icmp ne i32 %and14, 0
  br i1 %tobool15, label %if.then16, label %if.end17

if.then16:                                        ; preds = %for.end
  store i32 2, i32* %j, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.then16, %for.end
  %20 = load i32* %width.addr, align 4
  %sub18 = sub nsw i32 %20, 1
  %shl19 = shl i32 1, %sub18
  %21 = load i32* %a_inv.addr, align 4
  %and20 = and i32 %shl19, %21
  %tobool21 = icmp ne i32 %and20, 0
  br i1 %tobool21, label %if.then22, label %if.end24

if.then22:                                        ; preds = %if.end17
  %22 = load i32* %j, align 4
  %add23 = add nsw i32 %22, 1
  store i32 %add23, i32* %j, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.then22, %if.end17
  %23 = load i32* %j, align 4
  %24 = load i32* %width.addr, align 4
  %mul25 = mul nsw i32 2, %24
  %sub26 = sub nsw i32 %mul25, 1
  %25 = load i32* %width.addr, align 4
  %sub27 = sub nsw i32 %25, 1
  %26 = load i32* %width.addr, align 4
  %mul28 = mul nsw i32 2, %26
  %27 = load i32* %width.addr, align 4
  %mul29 = mul nsw i32 2, %27
  %add30 = add nsw i32 %mul29, 1
  %28 = load i32* %total, align 4
  %29 = load %struct.quantum_reg_struct** %reg.addr, align 8
  call void @muxha(i32 %23, i32 %sub26, i32 %sub27, i32 %mul28, i32 %add30, i32 %28, %struct.quantum_reg_struct* %29)
  ret void
}

; Function Attrs: nounwind uwtable
define void @madd_inv(i32 %a, i32 %a_inv, i32 %width, %struct.quantum_reg_struct* %reg) #0 {
entry:
  %a.addr = alloca i32, align 4
  %a_inv.addr = alloca i32, align 4
  %width.addr = alloca i32, align 4
  %reg.addr = alloca %struct.quantum_reg_struct*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %total = alloca i32, align 4
  store i32 %a, i32* %a.addr, align 4
  store i32 %a_inv, i32* %a_inv.addr, align 4
  store i32 %width, i32* %width.addr, align 4
  store %struct.quantum_reg_struct* %reg, %struct.quantum_reg_struct** %reg.addr, align 8
  %0 = load i32* %width.addr, align 4
  %mul = mul nsw i32 4, %0
  %add = add nsw i32 %mul, 2
  store i32 %add, i32* %total, align 4
  store i32 0, i32* %j, align 4
  %1 = load i32* %width.addr, align 4
  %sub = sub nsw i32 %1, 1
  %shl = shl i32 1, %sub
  %2 = load i32* %a.addr, align 4
  %and = and i32 %shl, %2
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 2, i32* %j, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i32* %width.addr, align 4
  %sub1 = sub nsw i32 %3, 1
  %shl2 = shl i32 1, %sub1
  %4 = load i32* %a_inv.addr, align 4
  %and3 = and i32 %shl2, %4
  %tobool4 = icmp ne i32 %and3, 0
  br i1 %tobool4, label %if.then5, label %if.end7

if.then5:                                         ; preds = %if.end
  %5 = load i32* %j, align 4
  %add6 = add nsw i32 %5, 1
  store i32 %add6, i32* %j, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %if.end
  %6 = load i32* %j, align 4
  %7 = load i32* %width.addr, align 4
  %sub8 = sub nsw i32 %7, 1
  %8 = load i32* %width.addr, align 4
  %mul9 = mul nsw i32 2, %8
  %sub10 = sub nsw i32 %mul9, 1
  %9 = load i32* %width.addr, align 4
  %mul11 = mul nsw i32 2, %9
  %10 = load i32* %width.addr, align 4
  %mul12 = mul nsw i32 2, %10
  %add13 = add nsw i32 %mul12, 1
  %11 = load i32* %total, align 4
  %12 = load %struct.quantum_reg_struct** %reg.addr, align 8
  call void @muxha_inv(i32 %6, i32 %sub8, i32 %sub10, i32 %mul11, i32 %add13, i32 %11, %struct.quantum_reg_struct* %12)
  %13 = load i32* %width.addr, align 4
  %sub14 = sub nsw i32 %13, 2
  store i32 %sub14, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end7
  %14 = load i32* %i, align 4
  %cmp = icmp sge i32 %14, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %15 = load i32* %i, align 4
  %shl15 = shl i32 1, %15
  %16 = load i32* %a.addr, align 4
  %and16 = and i32 %shl15, %16
  %tobool17 = icmp ne i32 %and16, 0
  br i1 %tobool17, label %if.then18, label %if.else

if.then18:                                        ; preds = %for.body
  store i32 2, i32* %j, align 4
  br label %if.end19

if.else:                                          ; preds = %for.body
  store i32 0, i32* %j, align 4
  br label %if.end19

if.end19:                                         ; preds = %if.else, %if.then18
  %17 = load i32* %i, align 4
  %shl20 = shl i32 1, %17
  %18 = load i32* %a_inv.addr, align 4
  %and21 = and i32 %shl20, %18
  %tobool22 = icmp ne i32 %and21, 0
  br i1 %tobool22, label %if.then23, label %if.end25

if.then23:                                        ; preds = %if.end19
  %19 = load i32* %j, align 4
  %add24 = add nsw i32 %19, 1
  store i32 %add24, i32* %j, align 4
  br label %if.end25

if.end25:                                         ; preds = %if.then23, %if.end19
  %20 = load i32* %j, align 4
  %21 = load i32* %i, align 4
  %22 = load i32* %width.addr, align 4
  %23 = load i32* %i, align 4
  %add26 = add nsw i32 %22, %23
  %24 = load i32* %width.addr, align 4
  %add27 = add nsw i32 %24, 1
  %25 = load i32* %i, align 4
  %add28 = add nsw i32 %add27, %25
  %26 = load i32* %width.addr, align 4
  %mul29 = mul nsw i32 2, %26
  %27 = load i32* %width.addr, align 4
  %mul30 = mul nsw i32 2, %27
  %add31 = add nsw i32 %mul30, 1
  %28 = load i32* %total, align 4
  %29 = load %struct.quantum_reg_struct** %reg.addr, align 8
  call void @muxfa_inv(i32 %20, i32 %21, i32 %add26, i32 %add28, i32 %mul29, i32 %add31, i32 %28, %struct.quantum_reg_struct* %29)
  br label %for.inc

for.inc:                                          ; preds = %if.end25
  %30 = load i32* %i, align 4
  %dec = add nsw i32 %30, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @addn(i32 %N, i32 %a, i32 %width, %struct.quantum_reg_struct* %reg) #0 {
entry:
  %N.addr = alloca i32, align 4
  %a.addr = alloca i32, align 4
  %width.addr = alloca i32, align 4
  %reg.addr = alloca %struct.quantum_reg_struct*, align 8
  store i32 %N, i32* %N.addr, align 4
  store i32 %a, i32* %a.addr, align 4
  store i32 %width, i32* %width.addr, align 4
  store %struct.quantum_reg_struct* %reg, %struct.quantum_reg_struct** %reg.addr, align 8
  %0 = load i32* %N.addr, align 4
  %1 = load i32* %a.addr, align 4
  %sub = sub nsw i32 %0, %1
  %2 = load i32* %width.addr, align 4
  %3 = load %struct.quantum_reg_struct** %reg.addr, align 8
  call void @test_sum(i32 %sub, i32 %2, %struct.quantum_reg_struct* %3)
  %4 = load i32* %width.addr, align 4
  %shl = shl i32 1, %4
  %5 = load i32* %a.addr, align 4
  %add = add nsw i32 %shl, %5
  %6 = load i32* %N.addr, align 4
  %sub1 = sub nsw i32 %add, %6
  %7 = load i32* %a.addr, align 4
  %8 = load i32* %width.addr, align 4
  %9 = load %struct.quantum_reg_struct** %reg.addr, align 8
  call void @madd(i32 %sub1, i32 %7, i32 %8, %struct.quantum_reg_struct* %9)
  ret void
}

; Function Attrs: nounwind uwtable
define void @addn_inv(i32 %N, i32 %a, i32 %width, %struct.quantum_reg_struct* %reg) #0 {
entry:
  %N.addr = alloca i32, align 4
  %a.addr = alloca i32, align 4
  %width.addr = alloca i32, align 4
  %reg.addr = alloca %struct.quantum_reg_struct*, align 8
  store i32 %N, i32* %N.addr, align 4
  store i32 %a, i32* %a.addr, align 4
  store i32 %width, i32* %width.addr, align 4
  store %struct.quantum_reg_struct* %reg, %struct.quantum_reg_struct** %reg.addr, align 8
  %0 = load i32* %width.addr, align 4
  %mul = mul nsw i32 2, %0
  %add = add nsw i32 %mul, 1
  %1 = load i32* %width.addr, align 4
  %mul1 = mul nsw i32 2, %1
  %2 = load %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_cnot(i32 %add, i32 %mul1, %struct.quantum_reg_struct* %2)
  %3 = load i32* %width.addr, align 4
  %shl = shl i32 1, %3
  %4 = load i32* %a.addr, align 4
  %sub = sub nsw i32 %shl, %4
  %5 = load i32* %N.addr, align 4
  %6 = load i32* %a.addr, align 4
  %sub2 = sub nsw i32 %5, %6
  %7 = load i32* %width.addr, align 4
  %8 = load %struct.quantum_reg_struct** %reg.addr, align 8
  call void @madd_inv(i32 %sub, i32 %sub2, i32 %7, %struct.quantum_reg_struct* %8)
  %9 = load i32* %width.addr, align 4
  %10 = load %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_swaptheleads(i32 %9, %struct.quantum_reg_struct* %10)
  %11 = load i32* %a.addr, align 4
  %12 = load i32* %width.addr, align 4
  %13 = load %struct.quantum_reg_struct** %reg.addr, align 8
  call void @test_sum(i32 %11, i32 %12, %struct.quantum_reg_struct* %13)
  ret void
}

; Function Attrs: nounwind uwtable
define void @add_mod_n(i32 %N, i32 %a, i32 %width, %struct.quantum_reg_struct* %reg) #0 {
entry:
  %N.addr = alloca i32, align 4
  %a.addr = alloca i32, align 4
  %width.addr = alloca i32, align 4
  %reg.addr = alloca %struct.quantum_reg_struct*, align 8
  store i32 %N, i32* %N.addr, align 4
  store i32 %a, i32* %a.addr, align 4
  store i32 %width, i32* %width.addr, align 4
  store %struct.quantum_reg_struct* %reg, %struct.quantum_reg_struct** %reg.addr, align 8
  %0 = load i32* %N.addr, align 4
  %1 = load i32* %a.addr, align 4
  %2 = load i32* %width.addr, align 4
  %3 = load %struct.quantum_reg_struct** %reg.addr, align 8
  call void @addn(i32 %0, i32 %1, i32 %2, %struct.quantum_reg_struct* %3)
  %4 = load i32* %N.addr, align 4
  %5 = load i32* %a.addr, align 4
  %6 = load i32* %width.addr, align 4
  %7 = load %struct.quantum_reg_struct** %reg.addr, align 8
  call void @addn_inv(i32 %4, i32 %5, i32 %6, %struct.quantum_reg_struct* %7)
  ret void
}

; Function Attrs: nounwind uwtable
define void @quantum_mu2char(i64 %mu, i8* %buf) #0 {
entry:
  %mu.addr = alloca i64, align 8
  %buf.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %size = alloca i32, align 4
  store i64 %mu, i64* %mu.addr, align 8
  store i8* %buf, i8** %buf.addr, align 8
  store i32 8, i32* %size, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32* %i, align 4
  %1 = load i32* %size, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i64* %mu.addr, align 8
  %3 = load i32* %size, align 4
  %4 = load i32* %i, align 4
  %sub = sub nsw i32 %3, %4
  %sub1 = sub nsw i32 %sub, 1
  %mul = mul nsw i32 %sub1, 8
  %sh_prom = zext i32 %mul to i64
  %shl = shl i64 1, %sh_prom
  %div = udiv i64 %2, %shl
  %conv = trunc i64 %div to i8
  %5 = load i32* %i, align 4
  %idxprom = sext i32 %5 to i64
  %6 = load i8** %buf.addr, align 8
  %arrayidx = getelementptr inbounds i8* %6, i64 %idxprom
  store i8 %conv, i8* %arrayidx, align 1
  %7 = load i32* %size, align 4
  %8 = load i32* %i, align 4
  %sub2 = sub nsw i32 %7, %8
  %sub3 = sub nsw i32 %sub2, 1
  %mul4 = mul nsw i32 %sub3, 8
  %sh_prom5 = zext i32 %mul4 to i64
  %shl6 = shl i64 1, %sh_prom5
  %9 = load i64* %mu.addr, align 8
  %rem = urem i64 %9, %shl6
  store i64 %rem, i64* %mu.addr, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load i32* %i, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @quantum_int2char(i32 %j, i8* %buf) #0 {
entry:
  %j.addr = alloca i32, align 4
  %buf.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %size = alloca i32, align 4
  store i32 %j, i32* %j.addr, align 4
  store i8* %buf, i8** %buf.addr, align 8
  store i32 4, i32* %size, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32* %i, align 4
  %1 = load i32* %size, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32* %j.addr, align 4
  %3 = load i32* %size, align 4
  %4 = load i32* %i, align 4
  %sub = sub nsw i32 %3, %4
  %sub1 = sub nsw i32 %sub, 1
  %mul = mul nsw i32 %sub1, 8
  %shl = shl i32 1, %mul
  %div = sdiv i32 %2, %shl
  %conv = trunc i32 %div to i8
  %5 = load i32* %i, align 4
  %idxprom = sext i32 %5 to i64
  %6 = load i8** %buf.addr, align 8
  %arrayidx = getelementptr inbounds i8* %6, i64 %idxprom
  store i8 %conv, i8* %arrayidx, align 1
  %7 = load i32* %size, align 4
  %8 = load i32* %i, align 4
  %sub2 = sub nsw i32 %7, %8
  %sub3 = sub nsw i32 %sub2, 1
  %mul4 = mul nsw i32 %sub3, 8
  %shl5 = shl i32 1, %mul4
  %9 = load i32* %j.addr, align 4
  %rem = srem i32 %9, %shl5
  store i32 %rem, i32* %j.addr, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load i32* %i, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @quantum_double2char(double %d, i8* %buf) #0 {
entry:
  %d.addr = alloca double, align 8
  %buf.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %p = alloca i8*, align 8
  store double %d, double* %d.addr, align 8
  store i8* %buf, i8** %buf.addr, align 8
  %0 = bitcast double* %d.addr to i8*
  store i8* %0, i8** %p, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32* %i, align 4
  %conv = sext i32 %1 to i64
  %cmp = icmp ult i64 %conv, 8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load i8** %p, align 8
  %arrayidx = getelementptr inbounds i8* %3, i64 %idxprom
  %4 = load i8* %arrayidx, align 1
  %5 = load i32* %i, align 4
  %idxprom2 = sext i32 %5 to i64
  %6 = load i8** %buf.addr, align 8
  %arrayidx3 = getelementptr inbounds i8* %6, i64 %idxprom2
  store i8 %4, i8* %arrayidx3, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32* %i, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define i64 @quantum_char2mu(i8* %buf) #0 {
entry:
  %buf.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %size = alloca i32, align 4
  %mu = alloca i64, align 8
  store i8* %buf, i8** %buf.addr, align 8
  store i64 0, i64* %mu, align 8
  store i32 8, i32* %size, align 4
  %0 = load i32* %size, align 4
  %sub = sub nsw i32 %0, 1
  store i32 %sub, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32* %i, align 4
  %cmp = icmp sge i32 %1, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load i8** %buf.addr, align 8
  %arrayidx = getelementptr inbounds i8* %3, i64 %idxprom
  %4 = load i8* %arrayidx, align 1
  %conv = zext i8 %4 to i64
  %5 = load i32* %size, align 4
  %6 = load i32* %i, align 4
  %sub1 = sub nsw i32 %5, %6
  %sub2 = sub nsw i32 %sub1, 1
  %mul = mul nsw i32 8, %sub2
  %sh_prom = zext i32 %mul to i64
  %shl = shl i64 1, %sh_prom
  %mul3 = mul i64 %conv, %shl
  %7 = load i64* %mu, align 8
  %add = add i64 %7, %mul3
  store i64 %add, i64* %mu, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i32* %i, align 4
  %dec = add nsw i32 %8, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %9 = load i64* %mu, align 8
  ret i64 %9
}

; Function Attrs: nounwind uwtable
define i32 @quantum_char2int(i8* %buf) #0 {
entry:
  %buf.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %size = alloca i32, align 4
  %j = alloca i32, align 4
  store i8* %buf, i8** %buf.addr, align 8
  store i32 0, i32* %j, align 4
  store i32 4, i32* %size, align 4
  %0 = load i32* %size, align 4
  %sub = sub nsw i32 %0, 1
  store i32 %sub, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32* %i, align 4
  %cmp = icmp sge i32 %1, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load i8** %buf.addr, align 8
  %arrayidx = getelementptr inbounds i8* %3, i64 %idxprom
  %4 = load i8* %arrayidx, align 1
  %conv = zext i8 %4 to i32
  %5 = load i32* %size, align 4
  %6 = load i32* %i, align 4
  %sub1 = sub nsw i32 %5, %6
  %sub2 = sub nsw i32 %sub1, 1
  %mul = mul nsw i32 8, %sub2
  %shl = shl i32 1, %mul
  %mul3 = mul nsw i32 %conv, %shl
  %7 = load i32* %j, align 4
  %add = add nsw i32 %7, %mul3
  store i32 %add, i32* %j, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i32* %i, align 4
  %dec = add nsw i32 %8, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %9 = load i32* %j, align 4
  ret i32 %9
}

; Function Attrs: nounwind uwtable
define double @quantum_char2double(i8* %buf) #0 {
entry:
  %buf.addr = alloca i8*, align 8
  %d = alloca double*, align 8
  store i8* %buf, i8** %buf.addr, align 8
  %0 = load i8** %buf.addr, align 8
  %1 = bitcast i8* %0 to double*
  store double* %1, double** %d, align 8
  %2 = load double** %d, align 8
  %3 = load double* %2, align 8
  ret double %3
}

; Function Attrs: nounwind uwtable
define void @quantum_objcode_start() #0 {
entry:
  store i32 1, i32* @opstatus, align 4
  store i64 1, i64* @allocated, align 8
  %call = call noalias i8* @malloc(i64 65536) #6
  store i8* %call, i8** @objcode, align 8
  %0 = load i8** @objcode, align 8
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call1 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([43 x i8]* @.str27, i32 0, i32 0))
  call void @exit(i32 1) #9
  unreachable

if.end:                                           ; preds = %entry
  %call2 = call i64 @quantum_memman(i64 65536)
  ret void
}

; Function Attrs: nounwind uwtable
define void @quantum_objcode_stop() #0 {
entry:
  store i32 0, i32* @opstatus, align 4
  %0 = load i8** @objcode, align 8
  call void @free(i8* %0) #6
  store i8* null, i8** @objcode, align 8
  %1 = load i64* @allocated, align 8
  %sub = sub i64 0, %1
  %mul = mul i64 %sub, 65536
  %mul1 = mul i64 %mul, 1
  %call = call i64 @quantum_memman(i64 %mul1)
  store i64 0, i64* @allocated, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @quantum_objcode_put(i8 zeroext %operation, ...) #0 {
entry:
  %retval = alloca i32, align 4
  %operation.addr = alloca i8, align 1
  %i = alloca i32, align 4
  %size = alloca i32, align 4
  %args = alloca [1 x %struct.__va_list_tag], align 16
  %buf = alloca [80 x i8], align 16
  %d = alloca double, align 8
  %mu = alloca i64, align 8
  store i8 %operation, i8* %operation.addr, align 1
  %0 = load i32* @opstatus, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %1 = load i8* %operation.addr, align 1
  %arrayidx = getelementptr inbounds [80 x i8]* %buf, i32 0, i64 0
  store i8 %1, i8* %arrayidx, align 1
  %2 = load i8* %operation.addr, align 1
  %conv = zext i8 %2 to i32
  switch i32 %conv, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb4
    i32 12, label %sw.bb4
    i32 2, label %sw.bb31
    i32 3, label %sw.bb71
    i32 4, label %sw.bb71
    i32 5, label %sw.bb71
    i32 6, label %sw.bb71
    i32 129, label %sw.bb71
    i32 130, label %sw.bb71
    i32 14, label %sw.bb71
    i32 7, label %sw.bb85
    i32 8, label %sw.bb85
    i32 9, label %sw.bb85
    i32 10, label %sw.bb85
    i32 11, label %sw.bb85
    i32 13, label %sw.bb109
    i32 128, label %sw.bb149
    i32 255, label %sw.bb149
  ]

sw.bb:                                            ; preds = %if.end
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %gp_offset_p = getelementptr inbounds %struct.__va_list_tag* %arraydecay2, i32 0, i32 0
  %gp_offset = load i32* %gp_offset_p
  %fits_in_gp = icmp ule i32 %gp_offset, 40
  br i1 %fits_in_gp, label %vaarg.in_reg, label %vaarg.in_mem

vaarg.in_reg:                                     ; preds = %sw.bb
  %3 = getelementptr inbounds %struct.__va_list_tag* %arraydecay2, i32 0, i32 3
  %reg_save_area = load i8** %3
  %4 = getelementptr i8* %reg_save_area, i32 %gp_offset
  %5 = bitcast i8* %4 to i64*
  %6 = add i32 %gp_offset, 8
  store i32 %6, i32* %gp_offset_p
  br label %vaarg.end

vaarg.in_mem:                                     ; preds = %sw.bb
  %overflow_arg_area_p = getelementptr inbounds %struct.__va_list_tag* %arraydecay2, i32 0, i32 2
  %overflow_arg_area = load i8** %overflow_arg_area_p
  %7 = bitcast i8* %overflow_arg_area to i64*
  %overflow_arg_area.next = getelementptr i8* %overflow_arg_area, i32 8
  store i8* %overflow_arg_area.next, i8** %overflow_arg_area_p
  br label %vaarg.end

vaarg.end:                                        ; preds = %vaarg.in_mem, %vaarg.in_reg
  %vaarg.addr = phi i64* [ %5, %vaarg.in_reg ], [ %7, %vaarg.in_mem ]
  %8 = load i64* %vaarg.addr
  store i64 %8, i64* %mu, align 8
  %9 = load i64* %mu, align 8
  %arrayidx3 = getelementptr inbounds [80 x i8]* %buf, i32 0, i64 1
  call void @quantum_mu2char(i64 %9, i8* %arrayidx3)
  store i32 9, i32* %size, align 4
  br label %sw.epilog

sw.bb4:                                           ; preds = %if.end, %if.end
  %arraydecay5 = getelementptr inbounds [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %gp_offset_p6 = getelementptr inbounds %struct.__va_list_tag* %arraydecay5, i32 0, i32 0
  %gp_offset7 = load i32* %gp_offset_p6
  %fits_in_gp8 = icmp ule i32 %gp_offset7, 40
  br i1 %fits_in_gp8, label %vaarg.in_reg9, label %vaarg.in_mem11

vaarg.in_reg9:                                    ; preds = %sw.bb4
  %10 = getelementptr inbounds %struct.__va_list_tag* %arraydecay5, i32 0, i32 3
  %reg_save_area10 = load i8** %10
  %11 = getelementptr i8* %reg_save_area10, i32 %gp_offset7
  %12 = bitcast i8* %11 to i32*
  %13 = add i32 %gp_offset7, 8
  store i32 %13, i32* %gp_offset_p6
  br label %vaarg.end15

vaarg.in_mem11:                                   ; preds = %sw.bb4
  %overflow_arg_area_p12 = getelementptr inbounds %struct.__va_list_tag* %arraydecay5, i32 0, i32 2
  %overflow_arg_area13 = load i8** %overflow_arg_area_p12
  %14 = bitcast i8* %overflow_arg_area13 to i32*
  %overflow_arg_area.next14 = getelementptr i8* %overflow_arg_area13, i32 8
  store i8* %overflow_arg_area.next14, i8** %overflow_arg_area_p12
  br label %vaarg.end15

vaarg.end15:                                      ; preds = %vaarg.in_mem11, %vaarg.in_reg9
  %vaarg.addr16 = phi i32* [ %12, %vaarg.in_reg9 ], [ %14, %vaarg.in_mem11 ]
  %15 = load i32* %vaarg.addr16
  store i32 %15, i32* %i, align 4
  %16 = load i32* %i, align 4
  %arrayidx17 = getelementptr inbounds [80 x i8]* %buf, i32 0, i64 1
  call void @quantum_int2char(i32 %16, i8* %arrayidx17)
  %arraydecay18 = getelementptr inbounds [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %gp_offset_p19 = getelementptr inbounds %struct.__va_list_tag* %arraydecay18, i32 0, i32 0
  %gp_offset20 = load i32* %gp_offset_p19
  %fits_in_gp21 = icmp ule i32 %gp_offset20, 40
  br i1 %fits_in_gp21, label %vaarg.in_reg22, label %vaarg.in_mem24

vaarg.in_reg22:                                   ; preds = %vaarg.end15
  %17 = getelementptr inbounds %struct.__va_list_tag* %arraydecay18, i32 0, i32 3
  %reg_save_area23 = load i8** %17
  %18 = getelementptr i8* %reg_save_area23, i32 %gp_offset20
  %19 = bitcast i8* %18 to i32*
  %20 = add i32 %gp_offset20, 8
  store i32 %20, i32* %gp_offset_p19
  br label %vaarg.end28

vaarg.in_mem24:                                   ; preds = %vaarg.end15
  %overflow_arg_area_p25 = getelementptr inbounds %struct.__va_list_tag* %arraydecay18, i32 0, i32 2
  %overflow_arg_area26 = load i8** %overflow_arg_area_p25
  %21 = bitcast i8* %overflow_arg_area26 to i32*
  %overflow_arg_area.next27 = getelementptr i8* %overflow_arg_area26, i32 8
  store i8* %overflow_arg_area.next27, i8** %overflow_arg_area_p25
  br label %vaarg.end28

vaarg.end28:                                      ; preds = %vaarg.in_mem24, %vaarg.in_reg22
  %vaarg.addr29 = phi i32* [ %19, %vaarg.in_reg22 ], [ %21, %vaarg.in_mem24 ]
  %22 = load i32* %vaarg.addr29
  store i32 %22, i32* %i, align 4
  %23 = load i32* %i, align 4
  %arrayidx30 = getelementptr inbounds [80 x i8]* %buf, i32 0, i64 5
  call void @quantum_int2char(i32 %23, i8* %arrayidx30)
  store i32 9, i32* %size, align 4
  br label %sw.epilog

sw.bb31:                                          ; preds = %if.end
  %arraydecay32 = getelementptr inbounds [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %gp_offset_p33 = getelementptr inbounds %struct.__va_list_tag* %arraydecay32, i32 0, i32 0
  %gp_offset34 = load i32* %gp_offset_p33
  %fits_in_gp35 = icmp ule i32 %gp_offset34, 40
  br i1 %fits_in_gp35, label %vaarg.in_reg36, label %vaarg.in_mem38

vaarg.in_reg36:                                   ; preds = %sw.bb31
  %24 = getelementptr inbounds %struct.__va_list_tag* %arraydecay32, i32 0, i32 3
  %reg_save_area37 = load i8** %24
  %25 = getelementptr i8* %reg_save_area37, i32 %gp_offset34
  %26 = bitcast i8* %25 to i32*
  %27 = add i32 %gp_offset34, 8
  store i32 %27, i32* %gp_offset_p33
  br label %vaarg.end42

vaarg.in_mem38:                                   ; preds = %sw.bb31
  %overflow_arg_area_p39 = getelementptr inbounds %struct.__va_list_tag* %arraydecay32, i32 0, i32 2
  %overflow_arg_area40 = load i8** %overflow_arg_area_p39
  %28 = bitcast i8* %overflow_arg_area40 to i32*
  %overflow_arg_area.next41 = getelementptr i8* %overflow_arg_area40, i32 8
  store i8* %overflow_arg_area.next41, i8** %overflow_arg_area_p39
  br label %vaarg.end42

vaarg.end42:                                      ; preds = %vaarg.in_mem38, %vaarg.in_reg36
  %vaarg.addr43 = phi i32* [ %26, %vaarg.in_reg36 ], [ %28, %vaarg.in_mem38 ]
  %29 = load i32* %vaarg.addr43
  store i32 %29, i32* %i, align 4
  %30 = load i32* %i, align 4
  %arrayidx44 = getelementptr inbounds [80 x i8]* %buf, i32 0, i64 1
  call void @quantum_int2char(i32 %30, i8* %arrayidx44)
  %arraydecay45 = getelementptr inbounds [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %gp_offset_p46 = getelementptr inbounds %struct.__va_list_tag* %arraydecay45, i32 0, i32 0
  %gp_offset47 = load i32* %gp_offset_p46
  %fits_in_gp48 = icmp ule i32 %gp_offset47, 40
  br i1 %fits_in_gp48, label %vaarg.in_reg49, label %vaarg.in_mem51

vaarg.in_reg49:                                   ; preds = %vaarg.end42
  %31 = getelementptr inbounds %struct.__va_list_tag* %arraydecay45, i32 0, i32 3
  %reg_save_area50 = load i8** %31
  %32 = getelementptr i8* %reg_save_area50, i32 %gp_offset47
  %33 = bitcast i8* %32 to i32*
  %34 = add i32 %gp_offset47, 8
  store i32 %34, i32* %gp_offset_p46
  br label %vaarg.end55

vaarg.in_mem51:                                   ; preds = %vaarg.end42
  %overflow_arg_area_p52 = getelementptr inbounds %struct.__va_list_tag* %arraydecay45, i32 0, i32 2
  %overflow_arg_area53 = load i8** %overflow_arg_area_p52
  %35 = bitcast i8* %overflow_arg_area53 to i32*
  %overflow_arg_area.next54 = getelementptr i8* %overflow_arg_area53, i32 8
  store i8* %overflow_arg_area.next54, i8** %overflow_arg_area_p52
  br label %vaarg.end55

vaarg.end55:                                      ; preds = %vaarg.in_mem51, %vaarg.in_reg49
  %vaarg.addr56 = phi i32* [ %33, %vaarg.in_reg49 ], [ %35, %vaarg.in_mem51 ]
  %36 = load i32* %vaarg.addr56
  store i32 %36, i32* %i, align 4
  %37 = load i32* %i, align 4
  %arrayidx57 = getelementptr inbounds [80 x i8]* %buf, i32 0, i64 5
  call void @quantum_int2char(i32 %37, i8* %arrayidx57)
  %arraydecay58 = getelementptr inbounds [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %gp_offset_p59 = getelementptr inbounds %struct.__va_list_tag* %arraydecay58, i32 0, i32 0
  %gp_offset60 = load i32* %gp_offset_p59
  %fits_in_gp61 = icmp ule i32 %gp_offset60, 40
  br i1 %fits_in_gp61, label %vaarg.in_reg62, label %vaarg.in_mem64

vaarg.in_reg62:                                   ; preds = %vaarg.end55
  %38 = getelementptr inbounds %struct.__va_list_tag* %arraydecay58, i32 0, i32 3
  %reg_save_area63 = load i8** %38
  %39 = getelementptr i8* %reg_save_area63, i32 %gp_offset60
  %40 = bitcast i8* %39 to i32*
  %41 = add i32 %gp_offset60, 8
  store i32 %41, i32* %gp_offset_p59
  br label %vaarg.end68

vaarg.in_mem64:                                   ; preds = %vaarg.end55
  %overflow_arg_area_p65 = getelementptr inbounds %struct.__va_list_tag* %arraydecay58, i32 0, i32 2
  %overflow_arg_area66 = load i8** %overflow_arg_area_p65
  %42 = bitcast i8* %overflow_arg_area66 to i32*
  %overflow_arg_area.next67 = getelementptr i8* %overflow_arg_area66, i32 8
  store i8* %overflow_arg_area.next67, i8** %overflow_arg_area_p65
  br label %vaarg.end68

vaarg.end68:                                      ; preds = %vaarg.in_mem64, %vaarg.in_reg62
  %vaarg.addr69 = phi i32* [ %40, %vaarg.in_reg62 ], [ %42, %vaarg.in_mem64 ]
  %43 = load i32* %vaarg.addr69
  store i32 %43, i32* %i, align 4
  %44 = load i32* %i, align 4
  %arrayidx70 = getelementptr inbounds [80 x i8]* %buf, i32 0, i64 9
  call void @quantum_int2char(i32 %44, i8* %arrayidx70)
  store i32 13, i32* %size, align 4
  br label %sw.epilog

sw.bb71:                                          ; preds = %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end
  %arraydecay72 = getelementptr inbounds [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %gp_offset_p73 = getelementptr inbounds %struct.__va_list_tag* %arraydecay72, i32 0, i32 0
  %gp_offset74 = load i32* %gp_offset_p73
  %fits_in_gp75 = icmp ule i32 %gp_offset74, 40
  br i1 %fits_in_gp75, label %vaarg.in_reg76, label %vaarg.in_mem78

vaarg.in_reg76:                                   ; preds = %sw.bb71
  %45 = getelementptr inbounds %struct.__va_list_tag* %arraydecay72, i32 0, i32 3
  %reg_save_area77 = load i8** %45
  %46 = getelementptr i8* %reg_save_area77, i32 %gp_offset74
  %47 = bitcast i8* %46 to i32*
  %48 = add i32 %gp_offset74, 8
  store i32 %48, i32* %gp_offset_p73
  br label %vaarg.end82

vaarg.in_mem78:                                   ; preds = %sw.bb71
  %overflow_arg_area_p79 = getelementptr inbounds %struct.__va_list_tag* %arraydecay72, i32 0, i32 2
  %overflow_arg_area80 = load i8** %overflow_arg_area_p79
  %49 = bitcast i8* %overflow_arg_area80 to i32*
  %overflow_arg_area.next81 = getelementptr i8* %overflow_arg_area80, i32 8
  store i8* %overflow_arg_area.next81, i8** %overflow_arg_area_p79
  br label %vaarg.end82

vaarg.end82:                                      ; preds = %vaarg.in_mem78, %vaarg.in_reg76
  %vaarg.addr83 = phi i32* [ %47, %vaarg.in_reg76 ], [ %49, %vaarg.in_mem78 ]
  %50 = load i32* %vaarg.addr83
  store i32 %50, i32* %i, align 4
  %51 = load i32* %i, align 4
  %arrayidx84 = getelementptr inbounds [80 x i8]* %buf, i32 0, i64 1
  call void @quantum_int2char(i32 %51, i8* %arrayidx84)
  store i32 5, i32* %size, align 4
  br label %sw.epilog

sw.bb85:                                          ; preds = %if.end, %if.end, %if.end, %if.end, %if.end
  %arraydecay86 = getelementptr inbounds [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %gp_offset_p87 = getelementptr inbounds %struct.__va_list_tag* %arraydecay86, i32 0, i32 0
  %gp_offset88 = load i32* %gp_offset_p87
  %fits_in_gp89 = icmp ule i32 %gp_offset88, 40
  br i1 %fits_in_gp89, label %vaarg.in_reg90, label %vaarg.in_mem92

vaarg.in_reg90:                                   ; preds = %sw.bb85
  %52 = getelementptr inbounds %struct.__va_list_tag* %arraydecay86, i32 0, i32 3
  %reg_save_area91 = load i8** %52
  %53 = getelementptr i8* %reg_save_area91, i32 %gp_offset88
  %54 = bitcast i8* %53 to i32*
  %55 = add i32 %gp_offset88, 8
  store i32 %55, i32* %gp_offset_p87
  br label %vaarg.end96

vaarg.in_mem92:                                   ; preds = %sw.bb85
  %overflow_arg_area_p93 = getelementptr inbounds %struct.__va_list_tag* %arraydecay86, i32 0, i32 2
  %overflow_arg_area94 = load i8** %overflow_arg_area_p93
  %56 = bitcast i8* %overflow_arg_area94 to i32*
  %overflow_arg_area.next95 = getelementptr i8* %overflow_arg_area94, i32 8
  store i8* %overflow_arg_area.next95, i8** %overflow_arg_area_p93
  br label %vaarg.end96

vaarg.end96:                                      ; preds = %vaarg.in_mem92, %vaarg.in_reg90
  %vaarg.addr97 = phi i32* [ %54, %vaarg.in_reg90 ], [ %56, %vaarg.in_mem92 ]
  %57 = load i32* %vaarg.addr97
  store i32 %57, i32* %i, align 4
  %arraydecay98 = getelementptr inbounds [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %fp_offset_p = getelementptr inbounds %struct.__va_list_tag* %arraydecay98, i32 0, i32 1
  %fp_offset = load i32* %fp_offset_p
  %fits_in_fp = icmp ule i32 %fp_offset, 160
  br i1 %fits_in_fp, label %vaarg.in_reg99, label %vaarg.in_mem101

vaarg.in_reg99:                                   ; preds = %vaarg.end96
  %58 = getelementptr inbounds %struct.__va_list_tag* %arraydecay98, i32 0, i32 3
  %reg_save_area100 = load i8** %58
  %59 = getelementptr i8* %reg_save_area100, i32 %fp_offset
  %60 = bitcast i8* %59 to double*
  %61 = add i32 %fp_offset, 16
  store i32 %61, i32* %fp_offset_p
  br label %vaarg.end105

vaarg.in_mem101:                                  ; preds = %vaarg.end96
  %overflow_arg_area_p102 = getelementptr inbounds %struct.__va_list_tag* %arraydecay98, i32 0, i32 2
  %overflow_arg_area103 = load i8** %overflow_arg_area_p102
  %62 = bitcast i8* %overflow_arg_area103 to double*
  %overflow_arg_area.next104 = getelementptr i8* %overflow_arg_area103, i32 8
  store i8* %overflow_arg_area.next104, i8** %overflow_arg_area_p102
  br label %vaarg.end105

vaarg.end105:                                     ; preds = %vaarg.in_mem101, %vaarg.in_reg99
  %vaarg.addr106 = phi double* [ %60, %vaarg.in_reg99 ], [ %62, %vaarg.in_mem101 ]
  %63 = load double* %vaarg.addr106
  store double %63, double* %d, align 8
  %64 = load i32* %i, align 4
  %arrayidx107 = getelementptr inbounds [80 x i8]* %buf, i32 0, i64 1
  call void @quantum_int2char(i32 %64, i8* %arrayidx107)
  %65 = load double* %d, align 8
  %arrayidx108 = getelementptr inbounds [80 x i8]* %buf, i32 0, i64 5
  call void @quantum_double2char(double %65, i8* %arrayidx108)
  store i32 13, i32* %size, align 4
  br label %sw.epilog

sw.bb109:                                         ; preds = %if.end
  %arraydecay110 = getelementptr inbounds [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %gp_offset_p111 = getelementptr inbounds %struct.__va_list_tag* %arraydecay110, i32 0, i32 0
  %gp_offset112 = load i32* %gp_offset_p111
  %fits_in_gp113 = icmp ule i32 %gp_offset112, 40
  br i1 %fits_in_gp113, label %vaarg.in_reg114, label %vaarg.in_mem116

vaarg.in_reg114:                                  ; preds = %sw.bb109
  %66 = getelementptr inbounds %struct.__va_list_tag* %arraydecay110, i32 0, i32 3
  %reg_save_area115 = load i8** %66
  %67 = getelementptr i8* %reg_save_area115, i32 %gp_offset112
  %68 = bitcast i8* %67 to i32*
  %69 = add i32 %gp_offset112, 8
  store i32 %69, i32* %gp_offset_p111
  br label %vaarg.end120

vaarg.in_mem116:                                  ; preds = %sw.bb109
  %overflow_arg_area_p117 = getelementptr inbounds %struct.__va_list_tag* %arraydecay110, i32 0, i32 2
  %overflow_arg_area118 = load i8** %overflow_arg_area_p117
  %70 = bitcast i8* %overflow_arg_area118 to i32*
  %overflow_arg_area.next119 = getelementptr i8* %overflow_arg_area118, i32 8
  store i8* %overflow_arg_area.next119, i8** %overflow_arg_area_p117
  br label %vaarg.end120

vaarg.end120:                                     ; preds = %vaarg.in_mem116, %vaarg.in_reg114
  %vaarg.addr121 = phi i32* [ %68, %vaarg.in_reg114 ], [ %70, %vaarg.in_mem116 ]
  %71 = load i32* %vaarg.addr121
  store i32 %71, i32* %i, align 4
  %72 = load i32* %i, align 4
  %arrayidx122 = getelementptr inbounds [80 x i8]* %buf, i32 0, i64 1
  call void @quantum_int2char(i32 %72, i8* %arrayidx122)
  %arraydecay123 = getelementptr inbounds [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %gp_offset_p124 = getelementptr inbounds %struct.__va_list_tag* %arraydecay123, i32 0, i32 0
  %gp_offset125 = load i32* %gp_offset_p124
  %fits_in_gp126 = icmp ule i32 %gp_offset125, 40
  br i1 %fits_in_gp126, label %vaarg.in_reg127, label %vaarg.in_mem129

vaarg.in_reg127:                                  ; preds = %vaarg.end120
  %73 = getelementptr inbounds %struct.__va_list_tag* %arraydecay123, i32 0, i32 3
  %reg_save_area128 = load i8** %73
  %74 = getelementptr i8* %reg_save_area128, i32 %gp_offset125
  %75 = bitcast i8* %74 to i32*
  %76 = add i32 %gp_offset125, 8
  store i32 %76, i32* %gp_offset_p124
  br label %vaarg.end133

vaarg.in_mem129:                                  ; preds = %vaarg.end120
  %overflow_arg_area_p130 = getelementptr inbounds %struct.__va_list_tag* %arraydecay123, i32 0, i32 2
  %overflow_arg_area131 = load i8** %overflow_arg_area_p130
  %77 = bitcast i8* %overflow_arg_area131 to i32*
  %overflow_arg_area.next132 = getelementptr i8* %overflow_arg_area131, i32 8
  store i8* %overflow_arg_area.next132, i8** %overflow_arg_area_p130
  br label %vaarg.end133

vaarg.end133:                                     ; preds = %vaarg.in_mem129, %vaarg.in_reg127
  %vaarg.addr134 = phi i32* [ %75, %vaarg.in_reg127 ], [ %77, %vaarg.in_mem129 ]
  %78 = load i32* %vaarg.addr134
  store i32 %78, i32* %i, align 4
  %79 = load i32* %i, align 4
  %arrayidx135 = getelementptr inbounds [80 x i8]* %buf, i32 0, i64 5
  call void @quantum_int2char(i32 %79, i8* %arrayidx135)
  %arraydecay136 = getelementptr inbounds [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %fp_offset_p137 = getelementptr inbounds %struct.__va_list_tag* %arraydecay136, i32 0, i32 1
  %fp_offset138 = load i32* %fp_offset_p137
  %fits_in_fp139 = icmp ule i32 %fp_offset138, 160
  br i1 %fits_in_fp139, label %vaarg.in_reg140, label %vaarg.in_mem142

vaarg.in_reg140:                                  ; preds = %vaarg.end133
  %80 = getelementptr inbounds %struct.__va_list_tag* %arraydecay136, i32 0, i32 3
  %reg_save_area141 = load i8** %80
  %81 = getelementptr i8* %reg_save_area141, i32 %fp_offset138
  %82 = bitcast i8* %81 to double*
  %83 = add i32 %fp_offset138, 16
  store i32 %83, i32* %fp_offset_p137
  br label %vaarg.end146

vaarg.in_mem142:                                  ; preds = %vaarg.end133
  %overflow_arg_area_p143 = getelementptr inbounds %struct.__va_list_tag* %arraydecay136, i32 0, i32 2
  %overflow_arg_area144 = load i8** %overflow_arg_area_p143
  %84 = bitcast i8* %overflow_arg_area144 to double*
  %overflow_arg_area.next145 = getelementptr i8* %overflow_arg_area144, i32 8
  store i8* %overflow_arg_area.next145, i8** %overflow_arg_area_p143
  br label %vaarg.end146

vaarg.end146:                                     ; preds = %vaarg.in_mem142, %vaarg.in_reg140
  %vaarg.addr147 = phi double* [ %82, %vaarg.in_reg140 ], [ %84, %vaarg.in_mem142 ]
  %85 = load double* %vaarg.addr147
  store double %85, double* %d, align 8
  %86 = load double* %d, align 8
  %arrayidx148 = getelementptr inbounds [80 x i8]* %buf, i32 0, i64 9
  call void @quantum_double2char(double %86, i8* %arrayidx148)
  store i32 17, i32* %size, align 4
  br label %sw.epilog

sw.bb149:                                         ; preds = %if.end, %if.end
  store i32 1, i32* %size, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  %87 = load i8* %operation.addr, align 1
  %conv150 = zext i8 %87 to i32
  %call = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([24 x i8]* @.str128, i32 0, i32 0), i32 %conv150)
  call void @exit(i32 1) #9
  unreachable

sw.epilog:                                        ; preds = %sw.bb149, %vaarg.end146, %vaarg.end105, %vaarg.end82, %vaarg.end68, %vaarg.end28, %vaarg.end
  %88 = load i64* @position, align 8
  %89 = load i32* %size, align 4
  %conv151 = sext i32 %89 to i64
  %add = add i64 %88, %conv151
  %div = udiv i64 %add, 65536
  %90 = load i64* @position, align 8
  %div152 = udiv i64 %90, 65536
  %cmp = icmp ugt i64 %div, %div152
  br i1 %cmp, label %if.then154, label %if.end161

if.then154:                                       ; preds = %sw.epilog
  %91 = load i64* @allocated, align 8
  %inc = add i64 %91, 1
  store i64 %inc, i64* @allocated, align 8
  %92 = load i8** @objcode, align 8
  %93 = load i64* @allocated, align 8
  %mul = mul i64 %93, 65536
  %call155 = call i8* @realloc(i8* %92, i64 %mul) #6
  store i8* %call155, i8** @objcode, align 8
  %94 = load i8** @objcode, align 8
  %tobool156 = icmp ne i8* %94, null
  br i1 %tobool156, label %if.end159, label %if.then157

if.then157:                                       ; preds = %if.then154
  %call158 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([45 x i8]* @.str229, i32 0, i32 0))
  call void @exit(i32 1) #9
  unreachable

if.end159:                                        ; preds = %if.then154
  %call160 = call i64 @quantum_memman(i64 65536)
  br label %if.end161

if.end161:                                        ; preds = %if.end159, %sw.epilog
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end161
  %95 = load i32* %i, align 4
  %96 = load i32* %size, align 4
  %cmp162 = icmp slt i32 %95, %96
  br i1 %cmp162, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %97 = load i32* %i, align 4
  %idxprom = sext i32 %97 to i64
  %arrayidx164 = getelementptr inbounds [80 x i8]* %buf, i32 0, i64 %idxprom
  %98 = load i8* %arrayidx164, align 1
  %99 = load i64* @position, align 8
  %100 = load i8** @objcode, align 8
  %arrayidx165 = getelementptr inbounds i8* %100, i64 %99
  store i8 %98, i8* %arrayidx165, align 1
  %101 = load i64* @position, align 8
  %inc166 = add i64 %101, 1
  store i64 %inc166, i64* @position, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %102 = load i32* %i, align 4
  %inc167 = add nsw i32 %102, 1
  store i32 %inc167, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %103 = load i32* %retval
  ret i32 %103
}

; Function Attrs: nounwind uwtable
define i32 @quantum_objcode_write(i8* %file) #0 {
entry:
  %retval = alloca i32, align 4
  %file.addr = alloca i8*, align 8
  %fhd = alloca %struct._IO_FILE*, align 8
  store i8* %file, i8** %file.addr, align 8
  %0 = load i32* @opstatus, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE** @stderr, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([74 x i8]* @.str330, i32 0, i32 0))
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i8** %file.addr, align 8
  %tobool1 = icmp ne i8* %2, null
  br i1 %tobool1, label %if.end3, label %if.then2

if.then2:                                         ; preds = %if.end
  %3 = load i8** @globalfile, align 8
  store i8* %3, i8** %file.addr, align 8
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end
  %4 = load i8** %file.addr, align 8
  %call4 = call %struct._IO_FILE* @fopen(i8* %4, i8* getelementptr inbounds ([2 x i8]* @.str431, i32 0, i32 0))
  store %struct._IO_FILE* %call4, %struct._IO_FILE** %fhd, align 8
  %5 = load %struct._IO_FILE** %fhd, align 8
  %cmp = icmp eq %struct._IO_FILE* %5, null
  br i1 %cmp, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end3
  store i32 -1, i32* %retval
  br label %return

if.end6:                                          ; preds = %if.end3
  %6 = load i8** @objcode, align 8
  %7 = load i64* @position, align 8
  %8 = load %struct._IO_FILE** %fhd, align 8
  %call7 = call i64 @fwrite(i8* %6, i64 %7, i64 1, %struct._IO_FILE* %8)
  %9 = load %struct._IO_FILE** %fhd, align 8
  %call8 = call i32 @fclose(%struct._IO_FILE* %9)
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end6, %if.then5, %if.then
  %10 = load i32* %retval
  ret i32 %10
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #4

declare %struct._IO_FILE* @fopen(i8*, i8*) #4

declare i64 @fwrite(i8*, i64, i64, %struct._IO_FILE*) #4

declare i32 @fclose(%struct._IO_FILE*) #4

; Function Attrs: nounwind uwtable
define void @quantum_objcode_file(i8* %file) #0 {
entry:
  %file.addr = alloca i8*, align 8
  store i8* %file, i8** %file.addr, align 8
  %0 = load i8** %file.addr, align 8
  store i8* %0, i8** @globalfile, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @quantum_objcode_exit(i8* %file) #0 {
entry:
  %file.addr = alloca i8*, align 8
  store i8* %file, i8** %file.addr, align 8
  %call = call i32 @quantum_objcode_write(i8* null)
  call void @quantum_objcode_stop()
  ret void
}

; Function Attrs: nounwind uwtable
define void @quantum_objcode_run(i8* %file, %struct.quantum_reg_struct* %reg) #0 {
entry:
  %file.addr = alloca i8*, align 8
  %reg.addr = alloca %struct.quantum_reg_struct*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %l = alloca i32, align 4
  %fhd = alloca %struct._IO_FILE*, align 8
  %operation = alloca i8, align 1
  %buf = alloca [80 x i8], align 16
  %mu = alloca i64, align 8
  %d = alloca double, align 8
  %tmp = alloca %struct.quantum_reg_struct, align 8
  store i8* %file, i8** %file.addr, align 8
  store %struct.quantum_reg_struct* %reg, %struct.quantum_reg_struct** %reg.addr, align 8
  %0 = load i8** %file.addr, align 8
  %call = call %struct._IO_FILE* @fopen(i8* %0, i8* getelementptr inbounds ([2 x i8]* @.str5, i32 0, i32 0))
  store %struct._IO_FILE* %call, %struct._IO_FILE** %fhd, align 8
  %1 = load %struct._IO_FILE** %fhd, align 8
  %tobool = icmp ne %struct._IO_FILE* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %2 = load %struct._IO_FILE** @stderr, align 8
  %3 = load i8** %file.addr, align 8
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([41 x i8]* @.str6, i32 0, i32 0), i8* %3)
  call void @perror(i8* null)
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc93, %if.end
  %4 = load %struct._IO_FILE** %fhd, align 8
  %call2 = call i32 @feof(%struct._IO_FILE* %4) #6
  %tobool3 = icmp ne i32 %call2, 0
  %lnot = xor i1 %tobool3, true
  br i1 %lnot, label %for.body, label %for.end95

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc, %for.body
  %5 = load i32* %j, align 4
  %cmp = icmp slt i32 %5, 80
  br i1 %cmp, label %for.body5, label %for.end

for.body5:                                        ; preds = %for.cond4
  %6 = load i32* %j, align 4
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds [80 x i8]* %buf, i32 0, i64 %idxprom
  store i8 0, i8* %arrayidx, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body5
  %7 = load i32* %j, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond4

for.end:                                          ; preds = %for.cond4
  %8 = load %struct._IO_FILE** %fhd, align 8
  %call6 = call i32 @fgetc(%struct._IO_FILE* %8)
  %conv = trunc i32 %call6 to i8
  store i8 %conv, i8* %operation, align 1
  %9 = load i8* %operation, align 1
  %conv7 = zext i8 %9 to i32
  switch i32 %conv7, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb11
    i32 12, label %sw.bb11
    i32 2, label %sw.bb23
    i32 3, label %sw.bb36
    i32 4, label %sw.bb36
    i32 5, label %sw.bb36
    i32 6, label %sw.bb36
    i32 129, label %sw.bb36
    i32 130, label %sw.bb36
    i32 14, label %sw.bb36
    i32 7, label %sw.bb52
    i32 8, label %sw.bb52
    i32 9, label %sw.bb52
    i32 10, label %sw.bb52
    i32 11, label %sw.bb52
    i32 13, label %sw.bb73
    i32 128, label %sw.bb87
    i32 255, label %sw.bb89
  ]

sw.bb:                                            ; preds = %for.end
  %arraydecay = getelementptr inbounds [80 x i8]* %buf, i32 0, i32 0
  %10 = load %struct._IO_FILE** %fhd, align 8
  %call8 = call i64 @fread(i8* %arraydecay, i64 8, i64 1, %struct._IO_FILE* %10)
  %arraydecay9 = getelementptr inbounds [80 x i8]* %buf, i32 0, i32 0
  %call10 = call i64 @quantum_char2mu(i8* %arraydecay9)
  store i64 %call10, i64* %mu, align 8
  %11 = load %struct.quantum_reg_struct** %reg.addr, align 8
  %12 = load i64* %mu, align 8
  call void @quantum_new_qureg(%struct.quantum_reg_struct* sret %tmp, i64 %12, i32 12)
  %13 = bitcast %struct.quantum_reg_struct* %11 to i8*
  %14 = bitcast %struct.quantum_reg_struct* %tmp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* %14, i64 32, i32 8, i1 false)
  br label %sw.epilog92

sw.bb11:                                          ; preds = %for.end, %for.end
  %arraydecay12 = getelementptr inbounds [80 x i8]* %buf, i32 0, i32 0
  %15 = load %struct._IO_FILE** %fhd, align 8
  %call13 = call i64 @fread(i8* %arraydecay12, i64 4, i64 1, %struct._IO_FILE* %15)
  %arraydecay14 = getelementptr inbounds [80 x i8]* %buf, i32 0, i32 0
  %call15 = call i32 @quantum_char2int(i8* %arraydecay14)
  store i32 %call15, i32* %j, align 4
  %arraydecay16 = getelementptr inbounds [80 x i8]* %buf, i32 0, i32 0
  %16 = load %struct._IO_FILE** %fhd, align 8
  %call17 = call i64 @fread(i8* %arraydecay16, i64 4, i64 1, %struct._IO_FILE* %16)
  %arraydecay18 = getelementptr inbounds [80 x i8]* %buf, i32 0, i32 0
  %call19 = call i32 @quantum_char2int(i8* %arraydecay18)
  store i32 %call19, i32* %k, align 4
  %17 = load i8* %operation, align 1
  %conv20 = zext i8 %17 to i32
  switch i32 %conv20, label %sw.epilog [
    i32 1, label %sw.bb21
    i32 12, label %sw.bb22
  ]

sw.bb21:                                          ; preds = %sw.bb11
  %18 = load i32* %j, align 4
  %19 = load i32* %k, align 4
  %20 = load %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_cnot(i32 %18, i32 %19, %struct.quantum_reg_struct* %20)
  br label %sw.epilog

sw.bb22:                                          ; preds = %sw.bb11
  %21 = load i32* %j, align 4
  %22 = load i32* %k, align 4
  %23 = load %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_cond_phase(i32 %21, i32 %22, %struct.quantum_reg_struct* %23)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb22, %sw.bb21, %sw.bb11
  br label %sw.epilog92

sw.bb23:                                          ; preds = %for.end
  %arraydecay24 = getelementptr inbounds [80 x i8]* %buf, i32 0, i32 0
  %24 = load %struct._IO_FILE** %fhd, align 8
  %call25 = call i64 @fread(i8* %arraydecay24, i64 4, i64 1, %struct._IO_FILE* %24)
  %arraydecay26 = getelementptr inbounds [80 x i8]* %buf, i32 0, i32 0
  %call27 = call i32 @quantum_char2int(i8* %arraydecay26)
  store i32 %call27, i32* %j, align 4
  %arraydecay28 = getelementptr inbounds [80 x i8]* %buf, i32 0, i32 0
  %25 = load %struct._IO_FILE** %fhd, align 8
  %call29 = call i64 @fread(i8* %arraydecay28, i64 4, i64 1, %struct._IO_FILE* %25)
  %arraydecay30 = getelementptr inbounds [80 x i8]* %buf, i32 0, i32 0
  %call31 = call i32 @quantum_char2int(i8* %arraydecay30)
  store i32 %call31, i32* %k, align 4
  %arraydecay32 = getelementptr inbounds [80 x i8]* %buf, i32 0, i32 0
  %26 = load %struct._IO_FILE** %fhd, align 8
  %call33 = call i64 @fread(i8* %arraydecay32, i64 4, i64 1, %struct._IO_FILE* %26)
  %arraydecay34 = getelementptr inbounds [80 x i8]* %buf, i32 0, i32 0
  %call35 = call i32 @quantum_char2int(i8* %arraydecay34)
  store i32 %call35, i32* %l, align 4
  %27 = load i32* %j, align 4
  %28 = load i32* %k, align 4
  %29 = load i32* %l, align 4
  %30 = load %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_toffoli(i32 %27, i32 %28, i32 %29, %struct.quantum_reg_struct* %30)
  br label %sw.epilog92

sw.bb36:                                          ; preds = %for.end, %for.end, %for.end, %for.end, %for.end, %for.end, %for.end
  %arraydecay37 = getelementptr inbounds [80 x i8]* %buf, i32 0, i32 0
  %31 = load %struct._IO_FILE** %fhd, align 8
  %call38 = call i64 @fread(i8* %arraydecay37, i64 4, i64 1, %struct._IO_FILE* %31)
  %arraydecay39 = getelementptr inbounds [80 x i8]* %buf, i32 0, i32 0
  %call40 = call i32 @quantum_char2int(i8* %arraydecay39)
  store i32 %call40, i32* %j, align 4
  %32 = load i8* %operation, align 1
  %conv41 = zext i8 %32 to i32
  switch i32 %conv41, label %sw.epilog51 [
    i32 3, label %sw.bb42
    i32 4, label %sw.bb43
    i32 5, label %sw.bb44
    i32 6, label %sw.bb45
    i32 129, label %sw.bb46
    i32 130, label %sw.bb48
    i32 14, label %sw.bb50
  ]

sw.bb42:                                          ; preds = %sw.bb36
  %33 = load i32* %j, align 4
  %34 = load %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_sigma_x(i32 %33, %struct.quantum_reg_struct* %34)
  br label %sw.epilog51

sw.bb43:                                          ; preds = %sw.bb36
  %35 = load i32* %j, align 4
  %36 = load %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_sigma_y(i32 %35, %struct.quantum_reg_struct* %36)
  br label %sw.epilog51

sw.bb44:                                          ; preds = %sw.bb36
  %37 = load i32* %j, align 4
  %38 = load %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_sigma_z(i32 %37, %struct.quantum_reg_struct* %38)
  br label %sw.epilog51

sw.bb45:                                          ; preds = %sw.bb36
  %39 = load i32* %j, align 4
  %40 = load %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_hadamard(i32 %39, %struct.quantum_reg_struct* %40)
  br label %sw.epilog51

sw.bb46:                                          ; preds = %sw.bb36
  %41 = load i32* %j, align 4
  %42 = load %struct.quantum_reg_struct** %reg.addr, align 8
  %call47 = call i32 @quantum_bmeasure(i32 %41, %struct.quantum_reg_struct* %42)
  br label %sw.epilog51

sw.bb48:                                          ; preds = %sw.bb36
  %43 = load i32* %j, align 4
  %44 = load %struct.quantum_reg_struct** %reg.addr, align 8
  %call49 = call i32 @quantum_bmeasure_bitpreserve(i32 %43, %struct.quantum_reg_struct* %44)
  br label %sw.epilog51

sw.bb50:                                          ; preds = %sw.bb36
  %45 = load i32* %j, align 4
  %46 = load %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_swaptheleads(i32 %45, %struct.quantum_reg_struct* %46)
  br label %sw.epilog51

sw.epilog51:                                      ; preds = %sw.bb50, %sw.bb48, %sw.bb46, %sw.bb45, %sw.bb44, %sw.bb43, %sw.bb42, %sw.bb36
  br label %sw.epilog92

sw.bb52:                                          ; preds = %for.end, %for.end, %for.end, %for.end, %for.end
  %arraydecay53 = getelementptr inbounds [80 x i8]* %buf, i32 0, i32 0
  %47 = load %struct._IO_FILE** %fhd, align 8
  %call54 = call i64 @fread(i8* %arraydecay53, i64 4, i64 1, %struct._IO_FILE* %47)
  %arraydecay55 = getelementptr inbounds [80 x i8]* %buf, i32 0, i32 0
  %call56 = call i32 @quantum_char2int(i8* %arraydecay55)
  store i32 %call56, i32* %j, align 4
  %arraydecay57 = getelementptr inbounds [80 x i8]* %buf, i32 0, i32 0
  %48 = load %struct._IO_FILE** %fhd, align 8
  %call58 = call i64 @fread(i8* %arraydecay57, i64 8, i64 1, %struct._IO_FILE* %48)
  %arraydecay59 = getelementptr inbounds [80 x i8]* %buf, i32 0, i32 0
  %call60 = call double @quantum_char2double(i8* %arraydecay59)
  store double %call60, double* %d, align 8
  %49 = load i8* %operation, align 1
  %conv61 = zext i8 %49 to i32
  switch i32 %conv61, label %sw.epilog72 [
    i32 7, label %sw.bb62
    i32 8, label %sw.bb64
    i32 9, label %sw.bb66
    i32 10, label %sw.bb68
    i32 11, label %sw.bb70
  ]

sw.bb62:                                          ; preds = %sw.bb52
  %50 = load i32* %j, align 4
  %51 = load double* %d, align 8
  %conv63 = fptrunc double %51 to float
  %52 = load %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_r_x(i32 %50, float %conv63, %struct.quantum_reg_struct* %52)
  br label %sw.epilog72

sw.bb64:                                          ; preds = %sw.bb52
  %53 = load i32* %j, align 4
  %54 = load double* %d, align 8
  %conv65 = fptrunc double %54 to float
  %55 = load %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_r_y(i32 %53, float %conv65, %struct.quantum_reg_struct* %55)
  br label %sw.epilog72

sw.bb66:                                          ; preds = %sw.bb52
  %56 = load i32* %j, align 4
  %57 = load double* %d, align 8
  %conv67 = fptrunc double %57 to float
  %58 = load %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_r_z(i32 %56, float %conv67, %struct.quantum_reg_struct* %58)
  br label %sw.epilog72

sw.bb68:                                          ; preds = %sw.bb52
  %59 = load i32* %j, align 4
  %60 = load double* %d, align 8
  %conv69 = fptrunc double %60 to float
  %61 = load %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_phase_kick(i32 %59, float %conv69, %struct.quantum_reg_struct* %61)
  br label %sw.epilog72

sw.bb70:                                          ; preds = %sw.bb52
  %62 = load i32* %j, align 4
  %63 = load double* %d, align 8
  %conv71 = fptrunc double %63 to float
  %64 = load %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_phase_scale(i32 %62, float %conv71, %struct.quantum_reg_struct* %64)
  br label %sw.epilog72

sw.epilog72:                                      ; preds = %sw.bb70, %sw.bb68, %sw.bb66, %sw.bb64, %sw.bb62, %sw.bb52
  br label %sw.epilog92

sw.bb73:                                          ; preds = %for.end
  %arraydecay74 = getelementptr inbounds [80 x i8]* %buf, i32 0, i32 0
  %65 = load %struct._IO_FILE** %fhd, align 8
  %call75 = call i64 @fread(i8* %arraydecay74, i64 4, i64 1, %struct._IO_FILE* %65)
  %arraydecay76 = getelementptr inbounds [80 x i8]* %buf, i32 0, i32 0
  %call77 = call i32 @quantum_char2int(i8* %arraydecay76)
  store i32 %call77, i32* %j, align 4
  %arraydecay78 = getelementptr inbounds [80 x i8]* %buf, i32 0, i32 0
  %66 = load %struct._IO_FILE** %fhd, align 8
  %call79 = call i64 @fread(i8* %arraydecay78, i64 4, i64 1, %struct._IO_FILE* %66)
  %arraydecay80 = getelementptr inbounds [80 x i8]* %buf, i32 0, i32 0
  %call81 = call i32 @quantum_char2int(i8* %arraydecay80)
  store i32 %call81, i32* %k, align 4
  %arraydecay82 = getelementptr inbounds [80 x i8]* %buf, i32 0, i32 0
  %67 = load %struct._IO_FILE** %fhd, align 8
  %call83 = call i64 @fread(i8* %arraydecay82, i64 8, i64 1, %struct._IO_FILE* %67)
  %arraydecay84 = getelementptr inbounds [80 x i8]* %buf, i32 0, i32 0
  %call85 = call double @quantum_char2double(i8* %arraydecay84)
  store double %call85, double* %d, align 8
  %68 = load i32* %j, align 4
  %69 = load i32* %k, align 4
  %70 = load double* %d, align 8
  %conv86 = fptrunc double %70 to float
  %71 = load %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_cond_phase_kick(i32 %68, i32 %69, float %conv86, %struct.quantum_reg_struct* %71)
  br label %sw.epilog92

sw.bb87:                                          ; preds = %for.end
  %72 = load %struct.quantum_reg_struct** %reg.addr, align 8
  %call88 = call i64 @quantum_measure(%struct.quantum_reg_struct* byval align 8 %72)
  br label %sw.epilog92

sw.bb89:                                          ; preds = %for.end
  br label %sw.epilog92

sw.default:                                       ; preds = %for.end
  %73 = load %struct._IO_FILE** @stderr, align 8
  %74 = load i32* %i, align 4
  %75 = load i8* %operation, align 1
  %conv90 = zext i8 %75 to i32
  %call91 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %73, i8* getelementptr inbounds ([28 x i8]* @.str7, i32 0, i32 0), i32 %74, i32 %conv90)
  br label %return

sw.epilog92:                                      ; preds = %sw.bb89, %sw.bb87, %sw.bb73, %sw.epilog72, %sw.epilog51, %sw.bb23, %sw.epilog, %sw.bb
  br label %for.inc93

for.inc93:                                        ; preds = %sw.epilog92
  %76 = load i32* %i, align 4
  %inc94 = add nsw i32 %76, 1
  store i32 %inc94, i32* %i, align 4
  br label %for.cond

for.end95:                                        ; preds = %for.cond
  %77 = load %struct._IO_FILE** %fhd, align 8
  %call96 = call i32 @fclose(%struct._IO_FILE* %77)
  br label %return

return:                                           ; preds = %for.end95, %sw.default, %if.then
  ret void
}

declare void @perror(i8*) #4

; Function Attrs: nounwind
declare i32 @feof(%struct._IO_FILE*) #2

declare i32 @fgetc(%struct._IO_FILE*) #4

declare i64 @fread(i8*, i64, i64, %struct._IO_FILE*) #4

; Function Attrs: nounwind uwtable
define void @emul(i32 %a, i32 %L, i32 %width, %struct.quantum_reg_struct* %reg) #0 {
entry:
  %a.addr = alloca i32, align 4
  %L.addr = alloca i32, align 4
  %width.addr = alloca i32, align 4
  %reg.addr = alloca %struct.quantum_reg_struct*, align 8
  %i = alloca i32, align 4
  store i32 %a, i32* %a.addr, align 4
  store i32 %L, i32* %L.addr, align 4
  store i32 %width, i32* %width.addr, align 4
  store %struct.quantum_reg_struct* %reg, %struct.quantum_reg_struct** %reg.addr, align 8
  %0 = load i32* %width.addr, align 4
  %sub = sub nsw i32 %0, 1
  store i32 %sub, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32* %i, align 4
  %cmp = icmp sge i32 %1, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32* %a.addr, align 4
  %3 = load i32* %i, align 4
  %shr = ashr i32 %2, %3
  %and = and i32 %shr, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %4 = load i32* %width.addr, align 4
  %mul = mul nsw i32 2, %4
  %add = add nsw i32 %mul, 2
  %5 = load i32* %L.addr, align 4
  %6 = load i32* %width.addr, align 4
  %7 = load i32* %i, align 4
  %add1 = add nsw i32 %6, %7
  %8 = load %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_toffoli(i32 %add, i32 %5, i32 %add1, %struct.quantum_reg_struct* %8)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %9 = load i32* %i, align 4
  %dec = add nsw i32 %9, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @muln(i32 %N, i32 %a, i32 %ctl, i32 %width, %struct.quantum_reg_struct* %reg) #0 {
entry:
  %N.addr = alloca i32, align 4
  %a.addr = alloca i32, align 4
  %ctl.addr = alloca i32, align 4
  %width.addr = alloca i32, align 4
  %reg.addr = alloca %struct.quantum_reg_struct*, align 8
  %i = alloca i32, align 4
  %L = alloca i32, align 4
  store i32 %N, i32* %N.addr, align 4
  store i32 %a, i32* %a.addr, align 4
  store i32 %ctl, i32* %ctl.addr, align 4
  store i32 %width, i32* %width.addr, align 4
  store %struct.quantum_reg_struct* %reg, %struct.quantum_reg_struct** %reg.addr, align 8
  %0 = load i32* %width.addr, align 4
  %mul = mul nsw i32 2, %0
  %add = add nsw i32 %mul, 1
  store i32 %add, i32* %L, align 4
  %1 = load i32* %ctl.addr, align 4
  %2 = load i32* %width.addr, align 4
  %mul1 = mul nsw i32 2, %2
  %add2 = add nsw i32 %mul1, 2
  %3 = load i32* %L, align 4
  %4 = load %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_toffoli(i32 %1, i32 %add2, i32 %3, %struct.quantum_reg_struct* %4)
  %5 = load i32* %a.addr, align 4
  %6 = load i32* %N.addr, align 4
  %rem = srem i32 %5, %6
  %7 = load i32* %L, align 4
  %8 = load i32* %width.addr, align 4
  %9 = load %struct.quantum_reg_struct** %reg.addr, align 8
  call void @emul(i32 %rem, i32 %7, i32 %8, %struct.quantum_reg_struct* %9)
  %10 = load i32* %ctl.addr, align 4
  %11 = load i32* %width.addr, align 4
  %mul3 = mul nsw i32 2, %11
  %add4 = add nsw i32 %mul3, 2
  %12 = load i32* %L, align 4
  %13 = load %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_toffoli(i32 %10, i32 %add4, i32 %12, %struct.quantum_reg_struct* %13)
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %14 = load i32* %i, align 4
  %15 = load i32* %width.addr, align 4
  %cmp = icmp slt i32 %14, %15
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %16 = load i32* %ctl.addr, align 4
  %17 = load i32* %width.addr, align 4
  %mul5 = mul nsw i32 2, %17
  %add6 = add nsw i32 %mul5, 2
  %18 = load i32* %i, align 4
  %add7 = add nsw i32 %add6, %18
  %19 = load i32* %L, align 4
  %20 = load %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_toffoli(i32 %16, i32 %add7, i32 %19, %struct.quantum_reg_struct* %20)
  %21 = load i32* %N.addr, align 4
  %22 = load i32* %i, align 4
  %shl = shl i32 1, %22
  %23 = load i32* %a.addr, align 4
  %mul8 = mul nsw i32 %shl, %23
  %24 = load i32* %N.addr, align 4
  %rem9 = srem i32 %mul8, %24
  %25 = load i32* %width.addr, align 4
  %26 = load %struct.quantum_reg_struct** %reg.addr, align 8
  call void @add_mod_n(i32 %21, i32 %rem9, i32 %25, %struct.quantum_reg_struct* %26)
  %27 = load i32* %ctl.addr, align 4
  %28 = load i32* %width.addr, align 4
  %mul10 = mul nsw i32 2, %28
  %add11 = add nsw i32 %mul10, 2
  %29 = load i32* %i, align 4
  %add12 = add nsw i32 %add11, %29
  %30 = load i32* %L, align 4
  %31 = load %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_toffoli(i32 %27, i32 %add12, i32 %30, %struct.quantum_reg_struct* %31)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %32 = load i32* %i, align 4
  %inc = add nsw i32 %32, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @muln_inv(i32 %N, i32 %a, i32 %ctl, i32 %width, %struct.quantum_reg_struct* %reg) #0 {
entry:
  %N.addr = alloca i32, align 4
  %a.addr = alloca i32, align 4
  %ctl.addr = alloca i32, align 4
  %width.addr = alloca i32, align 4
  %reg.addr = alloca %struct.quantum_reg_struct*, align 8
  %i = alloca i32, align 4
  %L = alloca i32, align 4
  store i32 %N, i32* %N.addr, align 4
  store i32 %a, i32* %a.addr, align 4
  store i32 %ctl, i32* %ctl.addr, align 4
  store i32 %width, i32* %width.addr, align 4
  store %struct.quantum_reg_struct* %reg, %struct.quantum_reg_struct** %reg.addr, align 8
  %0 = load i32* %width.addr, align 4
  %mul = mul nsw i32 2, %0
  %add = add nsw i32 %mul, 1
  store i32 %add, i32* %L, align 4
  %1 = load i32* %N.addr, align 4
  %2 = load i32* %a.addr, align 4
  %call = call i32 @quantum_inverse_mod(i32 %1, i32 %2)
  store i32 %call, i32* %a.addr, align 4
  %3 = load i32* %width.addr, align 4
  %sub = sub nsw i32 %3, 1
  store i32 %sub, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32* %i, align 4
  %cmp = icmp sgt i32 %4, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32* %ctl.addr, align 4
  %6 = load i32* %width.addr, align 4
  %mul1 = mul nsw i32 2, %6
  %add2 = add nsw i32 %mul1, 2
  %7 = load i32* %i, align 4
  %add3 = add nsw i32 %add2, %7
  %8 = load i32* %L, align 4
  %9 = load %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_toffoli(i32 %5, i32 %add3, i32 %8, %struct.quantum_reg_struct* %9)
  %10 = load i32* %N.addr, align 4
  %11 = load i32* %N.addr, align 4
  %12 = load i32* %i, align 4
  %shl = shl i32 1, %12
  %13 = load i32* %a.addr, align 4
  %mul4 = mul nsw i32 %shl, %13
  %14 = load i32* %N.addr, align 4
  %rem = srem i32 %mul4, %14
  %sub5 = sub nsw i32 %11, %rem
  %15 = load i32* %width.addr, align 4
  %16 = load %struct.quantum_reg_struct** %reg.addr, align 8
  call void @add_mod_n(i32 %10, i32 %sub5, i32 %15, %struct.quantum_reg_struct* %16)
  %17 = load i32* %ctl.addr, align 4
  %18 = load i32* %width.addr, align 4
  %mul6 = mul nsw i32 2, %18
  %add7 = add nsw i32 %mul6, 2
  %19 = load i32* %i, align 4
  %add8 = add nsw i32 %add7, %19
  %20 = load i32* %L, align 4
  %21 = load %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_toffoli(i32 %17, i32 %add8, i32 %20, %struct.quantum_reg_struct* %21)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %22 = load i32* %i, align 4
  %dec = add nsw i32 %22, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %23 = load i32* %ctl.addr, align 4
  %24 = load i32* %width.addr, align 4
  %mul9 = mul nsw i32 2, %24
  %add10 = add nsw i32 %mul9, 2
  %25 = load i32* %L, align 4
  %26 = load %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_toffoli(i32 %23, i32 %add10, i32 %25, %struct.quantum_reg_struct* %26)
  %27 = load i32* %a.addr, align 4
  %28 = load i32* %N.addr, align 4
  %rem11 = srem i32 %27, %28
  %29 = load i32* %L, align 4
  %30 = load i32* %width.addr, align 4
  %31 = load %struct.quantum_reg_struct** %reg.addr, align 8
  call void @emul(i32 %rem11, i32 %29, i32 %30, %struct.quantum_reg_struct* %31)
  %32 = load i32* %ctl.addr, align 4
  %33 = load i32* %width.addr, align 4
  %mul12 = mul nsw i32 2, %33
  %add13 = add nsw i32 %mul12, 2
  %34 = load i32* %L, align 4
  %35 = load %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_toffoli(i32 %32, i32 %add13, i32 %34, %struct.quantum_reg_struct* %35)
  ret void
}

; Function Attrs: nounwind uwtable
define void @mul_mod_n(i32 %N, i32 %a, i32 %ctl, i32 %width, %struct.quantum_reg_struct* %reg) #0 {
entry:
  %N.addr = alloca i32, align 4
  %a.addr = alloca i32, align 4
  %ctl.addr = alloca i32, align 4
  %width.addr = alloca i32, align 4
  %reg.addr = alloca %struct.quantum_reg_struct*, align 8
  store i32 %N, i32* %N.addr, align 4
  store i32 %a, i32* %a.addr, align 4
  store i32 %ctl, i32* %ctl.addr, align 4
  store i32 %width, i32* %width.addr, align 4
  store %struct.quantum_reg_struct* %reg, %struct.quantum_reg_struct** %reg.addr, align 8
  %0 = load i32* %N.addr, align 4
  %1 = load i32* %a.addr, align 4
  %2 = load i32* %ctl.addr, align 4
  %3 = load i32* %width.addr, align 4
  %4 = load %struct.quantum_reg_struct** %reg.addr, align 8
  call void @muln(i32 %0, i32 %1, i32 %2, i32 %3, %struct.quantum_reg_struct* %4)
  %5 = load i32* %ctl.addr, align 4
  %6 = load i32* %width.addr, align 4
  %7 = load %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_swaptheleads_omuln_controlled(i32 %5, i32 %6, %struct.quantum_reg_struct* %7)
  %8 = load i32* %N.addr, align 4
  %9 = load i32* %a.addr, align 4
  %10 = load i32* %ctl.addr, align 4
  %11 = load i32* %width.addr, align 4
  %12 = load %struct.quantum_reg_struct** %reg.addr, align 8
  call void @muln_inv(i32 %8, i32 %9, i32 %10, i32 %11, %struct.quantum_reg_struct* %12)
  ret void
}

; Function Attrs: nounwind uwtable
define void @quantum_qec_set_status(i32 %stype, i32 %swidth) #0 {
entry:
  %stype.addr = alloca i32, align 4
  %swidth.addr = alloca i32, align 4
  store i32 %stype, i32* %stype.addr, align 4
  store i32 %swidth, i32* %swidth.addr, align 4
  %0 = load i32* %stype.addr, align 4
  store i32 %0, i32* @type, align 4
  %1 = load i32* %swidth.addr, align 4
  store i32 %1, i32* @width, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @quantum_qec_get_status(i32* %ptype, i32* %pwidth) #0 {
entry:
  %ptype.addr = alloca i32*, align 8
  %pwidth.addr = alloca i32*, align 8
  store i32* %ptype, i32** %ptype.addr, align 8
  store i32* %pwidth, i32** %pwidth.addr, align 8
  %0 = load i32** %ptype.addr, align 8
  %tobool = icmp ne i32* %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32* @type, align 4
  %2 = load i32** %ptype.addr, align 8
  store i32 %1, i32* %2, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i32** %pwidth.addr, align 8
  %tobool1 = icmp ne i32* %3, null
  br i1 %tobool1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  %4 = load i32* @width, align 4
  %5 = load i32** %pwidth.addr, align 8
  store i32 %4, i32* %5, align 4
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end
  ret void
}

; Function Attrs: nounwind uwtable
define void @quantum_qec_encode(i32 %type, i32 %width, %struct.quantum_reg_struct* %reg) #0 {
entry:
  %type.addr = alloca i32, align 4
  %width.addr = alloca i32, align 4
  %reg.addr = alloca %struct.quantum_reg_struct*, align 8
  %i = alloca i32, align 4
  %lambda = alloca float, align 4
  store i32 %type, i32* %type.addr, align 4
  store i32 %width, i32* %width.addr, align 4
  store %struct.quantum_reg_struct* %reg, %struct.quantum_reg_struct** %reg.addr, align 8
  %call = call float (...)* bitcast (float ()* @quantum_get_decoherence to float (...)*)()
  store float %call, float* %lambda, align 4
  call void @quantum_set_decoherence(float 0.000000e+00)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32* %i, align 4
  %1 = load %struct.quantum_reg_struct** %reg.addr, align 8
  %width1 = getelementptr inbounds %struct.quantum_reg_struct* %1, i32 0, i32 0
  %2 = load i32* %width1, align 4
  %cmp = icmp slt i32 %0, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32* %i, align 4
  %4 = load %struct.quantum_reg_struct** %reg.addr, align 8
  %width2 = getelementptr inbounds %struct.quantum_reg_struct* %4, i32 0, i32 0
  %5 = load i32* %width2, align 4
  %sub = sub nsw i32 %5, 1
  %cmp3 = icmp eq i32 %3, %sub
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %6 = load float* %lambda, align 4
  call void @quantum_set_decoherence(float %6)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %7 = load i32* %i, align 4
  %8 = load i32* %width.addr, align 4
  %cmp4 = icmp slt i32 %7, %8
  br i1 %cmp4, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.end
  %9 = load %struct.quantum_reg_struct** %reg.addr, align 8
  %width6 = getelementptr inbounds %struct.quantum_reg_struct* %9, i32 0, i32 0
  %10 = load i32* %width6, align 4
  %11 = load i32* %i, align 4
  %add = add nsw i32 %10, %11
  %12 = load %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_hadamard(i32 %add, %struct.quantum_reg_struct* %12)
  %13 = load %struct.quantum_reg_struct** %reg.addr, align 8
  %width7 = getelementptr inbounds %struct.quantum_reg_struct* %13, i32 0, i32 0
  %14 = load i32* %width7, align 4
  %mul = mul nsw i32 2, %14
  %15 = load i32* %i, align 4
  %add8 = add nsw i32 %mul, %15
  %16 = load %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_hadamard(i32 %add8, %struct.quantum_reg_struct* %16)
  %17 = load %struct.quantum_reg_struct** %reg.addr, align 8
  %width9 = getelementptr inbounds %struct.quantum_reg_struct* %17, i32 0, i32 0
  %18 = load i32* %width9, align 4
  %19 = load i32* %i, align 4
  %add10 = add nsw i32 %18, %19
  %20 = load i32* %i, align 4
  %21 = load %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_cnot(i32 %add10, i32 %20, %struct.quantum_reg_struct* %21)
  %22 = load %struct.quantum_reg_struct** %reg.addr, align 8
  %width11 = getelementptr inbounds %struct.quantum_reg_struct* %22, i32 0, i32 0
  %23 = load i32* %width11, align 4
  %mul12 = mul nsw i32 2, %23
  %24 = load i32* %i, align 4
  %add13 = add nsw i32 %mul12, %24
  %25 = load i32* %i, align 4
  %26 = load %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_cnot(i32 %add13, i32 %25, %struct.quantum_reg_struct* %26)
  br label %if.end19

if.else:                                          ; preds = %if.end
  %27 = load i32* %i, align 4
  %28 = load %struct.quantum_reg_struct** %reg.addr, align 8
  %width14 = getelementptr inbounds %struct.quantum_reg_struct* %28, i32 0, i32 0
  %29 = load i32* %width14, align 4
  %30 = load i32* %i, align 4
  %add15 = add nsw i32 %29, %30
  %31 = load %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_cnot(i32 %27, i32 %add15, %struct.quantum_reg_struct* %31)
  %32 = load i32* %i, align 4
  %33 = load %struct.quantum_reg_struct** %reg.addr, align 8
  %width16 = getelementptr inbounds %struct.quantum_reg_struct* %33, i32 0, i32 0
  %34 = load i32* %width16, align 4
  %mul17 = mul nsw i32 2, %34
  %35 = load i32* %i, align 4
  %add18 = add nsw i32 %mul17, %35
  %36 = load %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_cnot(i32 %32, i32 %add18, %struct.quantum_reg_struct* %36)
  br label %if.end19

if.end19:                                         ; preds = %if.else, %if.then5
  br label %for.inc

for.inc:                                          ; preds = %if.end19
  %37 = load i32* %i, align 4
  %inc = add nsw i32 %37, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %38 = load %struct.quantum_reg_struct** %reg.addr, align 8
  %width20 = getelementptr inbounds %struct.quantum_reg_struct* %38, i32 0, i32 0
  %39 = load i32* %width20, align 4
  call void @quantum_qec_set_status(i32 1, i32 %39)
  %40 = load %struct.quantum_reg_struct** %reg.addr, align 8
  %width21 = getelementptr inbounds %struct.quantum_reg_struct* %40, i32 0, i32 0
  %41 = load i32* %width21, align 4
  %mul22 = mul nsw i32 %41, 3
  store i32 %mul22, i32* %width21, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @quantum_qec_decode(i32 %type, i32 %width, %struct.quantum_reg_struct* %reg) #0 {
entry:
  %type.addr = alloca i32, align 4
  %width.addr = alloca i32, align 4
  %reg.addr = alloca %struct.quantum_reg_struct*, align 8
  %i = alloca i32, align 4
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %swidth = alloca i32, align 4
  %lambda = alloca float, align 4
  store i32 %type, i32* %type.addr, align 4
  store i32 %width, i32* %width.addr, align 4
  store %struct.quantum_reg_struct* %reg, %struct.quantum_reg_struct** %reg.addr, align 8
  %call = call float (...)* bitcast (float ()* @quantum_get_decoherence to float (...)*)()
  store float %call, float* %lambda, align 4
  call void @quantum_set_decoherence(float 0.000000e+00)
  %0 = load %struct.quantum_reg_struct** %reg.addr, align 8
  %width1 = getelementptr inbounds %struct.quantum_reg_struct* %0, i32 0, i32 0
  %1 = load i32* %width1, align 4
  %div = sdiv i32 %1, 3
  store i32 %div, i32* %swidth, align 4
  call void @quantum_qec_set_status(i32 0, i32 0)
  %2 = load %struct.quantum_reg_struct** %reg.addr, align 8
  %width2 = getelementptr inbounds %struct.quantum_reg_struct* %2, i32 0, i32 0
  %3 = load i32* %width2, align 4
  %div3 = sdiv i32 %3, 3
  %sub = sub nsw i32 %div3, 1
  store i32 %sub, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32* %i, align 4
  %cmp = icmp sge i32 %4, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32* %i, align 4
  %cmp4 = icmp eq i32 %5, 0
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %6 = load float* %lambda, align 4
  call void @quantum_set_decoherence(float %6)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %7 = load i32* %i, align 4
  %8 = load i32* %width.addr, align 4
  %cmp5 = icmp slt i32 %7, %8
  br i1 %cmp5, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.end
  %9 = load i32* %swidth, align 4
  %mul = mul nsw i32 2, %9
  %10 = load i32* %i, align 4
  %add = add nsw i32 %mul, %10
  %11 = load i32* %i, align 4
  %12 = load %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_cnot(i32 %add, i32 %11, %struct.quantum_reg_struct* %12)
  %13 = load i32* %swidth, align 4
  %14 = load i32* %i, align 4
  %add7 = add nsw i32 %13, %14
  %15 = load i32* %i, align 4
  %16 = load %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_cnot(i32 %add7, i32 %15, %struct.quantum_reg_struct* %16)
  %17 = load i32* %swidth, align 4
  %mul8 = mul nsw i32 2, %17
  %18 = load i32* %i, align 4
  %add9 = add nsw i32 %mul8, %18
  %19 = load %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_hadamard(i32 %add9, %struct.quantum_reg_struct* %19)
  %20 = load i32* %swidth, align 4
  %21 = load i32* %i, align 4
  %add10 = add nsw i32 %20, %21
  %22 = load %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_hadamard(i32 %add10, %struct.quantum_reg_struct* %22)
  br label %if.end14

if.else:                                          ; preds = %if.end
  %23 = load i32* %i, align 4
  %24 = load i32* %swidth, align 4
  %mul11 = mul nsw i32 2, %24
  %25 = load i32* %i, align 4
  %add12 = add nsw i32 %mul11, %25
  %26 = load %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_cnot(i32 %23, i32 %add12, %struct.quantum_reg_struct* %26)
  %27 = load i32* %i, align 4
  %28 = load i32* %swidth, align 4
  %29 = load i32* %i, align 4
  %add13 = add nsw i32 %28, %29
  %30 = load %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_cnot(i32 %27, i32 %add13, %struct.quantum_reg_struct* %30)
  br label %if.end14

if.end14:                                         ; preds = %if.else, %if.then6
  br label %for.inc

for.inc:                                          ; preds = %if.end14
  %31 = load i32* %i, align 4
  %dec = add nsw i32 %31, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 1, i32* %i, align 4
  br label %for.cond15

for.cond15:                                       ; preds = %for.inc30, %for.end
  %32 = load i32* %i, align 4
  %33 = load i32* %swidth, align 4
  %cmp16 = icmp sle i32 %32, %33
  br i1 %cmp16, label %for.body17, label %for.end31

for.body17:                                       ; preds = %for.cond15
  %34 = load i32* %swidth, align 4
  %35 = load %struct.quantum_reg_struct** %reg.addr, align 8
  %call18 = call i32 @quantum_bmeasure(i32 %34, %struct.quantum_reg_struct* %35)
  store i32 %call18, i32* %a, align 4
  %36 = load i32* %swidth, align 4
  %mul19 = mul nsw i32 2, %36
  %37 = load i32* %i, align 4
  %sub20 = sub nsw i32 %mul19, %37
  %38 = load %struct.quantum_reg_struct** %reg.addr, align 8
  %call21 = call i32 @quantum_bmeasure(i32 %sub20, %struct.quantum_reg_struct* %38)
  store i32 %call21, i32* %b, align 4
  %39 = load i32* %a, align 4
  %cmp22 = icmp eq i32 %39, 1
  br i1 %cmp22, label %land.lhs.true, label %if.end29

land.lhs.true:                                    ; preds = %for.body17
  %40 = load i32* %b, align 4
  %cmp23 = icmp eq i32 %40, 1
  br i1 %cmp23, label %land.lhs.true24, label %if.end29

land.lhs.true24:                                  ; preds = %land.lhs.true
  %41 = load i32* %i, align 4
  %sub25 = sub nsw i32 %41, 1
  %42 = load i32* %width.addr, align 4
  %cmp26 = icmp slt i32 %sub25, %42
  br i1 %cmp26, label %if.then27, label %if.end29

if.then27:                                        ; preds = %land.lhs.true24
  %43 = load i32* %i, align 4
  %sub28 = sub nsw i32 %43, 1
  %44 = load %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_sigma_z(i32 %sub28, %struct.quantum_reg_struct* %44)
  br label %if.end29

if.end29:                                         ; preds = %if.then27, %land.lhs.true24, %land.lhs.true, %for.body17
  br label %for.inc30

for.inc30:                                        ; preds = %if.end29
  %45 = load i32* %i, align 4
  %inc = add nsw i32 %45, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond15

for.end31:                                        ; preds = %for.cond15
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @quantum_qec_counter(i32 %inc, i32 %frequency, %struct.quantum_reg_struct* %reg) #0 {
entry:
  %inc.addr = alloca i32, align 4
  %frequency.addr = alloca i32, align 4
  %reg.addr = alloca %struct.quantum_reg_struct*, align 8
  store i32 %inc, i32* %inc.addr, align 4
  store i32 %frequency, i32* %frequency.addr, align 4
  store %struct.quantum_reg_struct* %reg, %struct.quantum_reg_struct** %reg.addr, align 8
  %0 = load i32* %inc.addr, align 4
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i32* %inc.addr, align 4
  %2 = load i32* @quantum_qec_counter.counter, align 4
  %add = add nsw i32 %2, %1
  store i32 %add, i32* @quantum_qec_counter.counter, align 4
  br label %if.end3

if.else:                                          ; preds = %entry
  %3 = load i32* %inc.addr, align 4
  %cmp1 = icmp slt i32 %3, 0
  br i1 %cmp1, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.else
  store i32 0, i32* @quantum_qec_counter.counter, align 4
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.else
  br label %if.end3

if.end3:                                          ; preds = %if.end, %if.then
  %4 = load i32* %frequency.addr, align 4
  %cmp4 = icmp sgt i32 %4, 0
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end3
  %5 = load i32* %frequency.addr, align 4
  store i32 %5, i32* @quantum_qec_counter.freq, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end3
  %6 = load i32* @quantum_qec_counter.counter, align 4
  %7 = load i32* @quantum_qec_counter.freq, align 4
  %cmp7 = icmp sge i32 %6, %7
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end6
  store i32 0, i32* @quantum_qec_counter.counter, align 4
  %8 = load i32* @type, align 4
  %9 = load i32* @width, align 4
  %10 = load %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_qec_decode(i32 %8, i32 %9, %struct.quantum_reg_struct* %10)
  %11 = load i32* @type, align 4
  %12 = load i32* @width, align 4
  %13 = load %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_qec_encode(i32 %11, i32 %12, %struct.quantum_reg_struct* %13)
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %if.end6
  %14 = load i32* @quantum_qec_counter.counter, align 4
  ret i32 %14
}

; Function Attrs: nounwind uwtable
define void @quantum_sigma_x_ft(i32 %target, %struct.quantum_reg_struct* %reg) #0 {
entry:
  %target.addr = alloca i32, align 4
  %reg.addr = alloca %struct.quantum_reg_struct*, align 8
  %tmp = alloca i32, align 4
  %lambda = alloca float, align 4
  store i32 %target, i32* %target.addr, align 4
  store %struct.quantum_reg_struct* %reg, %struct.quantum_reg_struct** %reg.addr, align 8
  %0 = load i32* @type, align 4
  store i32 %0, i32* %tmp, align 4
  store i32 0, i32* @type, align 4
  %call = call float (...)* bitcast (float ()* @quantum_get_decoherence to float (...)*)()
  store float %call, float* %lambda, align 4
  call void @quantum_set_decoherence(float 0.000000e+00)
  %1 = load i32* %target.addr, align 4
  %2 = load %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_sigma_x(i32 %1, %struct.quantum_reg_struct* %2)
  %3 = load i32* %target.addr, align 4
  %4 = load i32* @width, align 4
  %add = add nsw i32 %3, %4
  %5 = load %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_sigma_x(i32 %add, %struct.quantum_reg_struct* %5)
  %6 = load float* %lambda, align 4
  call void @quantum_set_decoherence(float %6)
  %7 = load i32* %target.addr, align 4
  %8 = load i32* @width, align 4
  %mul = mul nsw i32 2, %8
  %add2 = add nsw i32 %7, %mul
  %9 = load %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_sigma_x(i32 %add2, %struct.quantum_reg_struct* %9)
  %10 = load %struct.quantum_reg_struct** %reg.addr, align 8
  %call3 = call i32 @quantum_qec_counter(i32 1, i32 0, %struct.quantum_reg_struct* %10)
  %11 = load i32* %tmp, align 4
  store i32 %11, i32* @type, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @quantum_cnot_ft(i32 %control, i32 %target, %struct.quantum_reg_struct* %reg) #0 {
entry:
  %control.addr = alloca i32, align 4
  %target.addr = alloca i32, align 4
  %reg.addr = alloca %struct.quantum_reg_struct*, align 8
  %tmp = alloca i32, align 4
  %lambda = alloca float, align 4
  store i32 %control, i32* %control.addr, align 4
  store i32 %target, i32* %target.addr, align 4
  store %struct.quantum_reg_struct* %reg, %struct.quantum_reg_struct** %reg.addr, align 8
  %0 = load i32* @type, align 4
  store i32 %0, i32* %tmp, align 4
  store i32 0, i32* @type, align 4
  %call = call float (...)* bitcast (float ()* @quantum_get_decoherence to float (...)*)()
  store float %call, float* %lambda, align 4
  call void @quantum_set_decoherence(float 0.000000e+00)
  %1 = load i32* %control.addr, align 4
  %2 = load i32* %target.addr, align 4
  %3 = load %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_cnot(i32 %1, i32 %2, %struct.quantum_reg_struct* %3)
  %4 = load i32* %control.addr, align 4
  %5 = load i32* @width, align 4
  %add = add nsw i32 %4, %5
  %6 = load i32* %target.addr, align 4
  %7 = load i32* @width, align 4
  %add2 = add nsw i32 %6, %7
  %8 = load %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_cnot(i32 %add, i32 %add2, %struct.quantum_reg_struct* %8)
  %9 = load float* %lambda, align 4
  call void @quantum_set_decoherence(float %9)
  %10 = load i32* %control.addr, align 4
  %11 = load i32* @width, align 4
  %mul = mul nsw i32 2, %11
  %add3 = add nsw i32 %10, %mul
  %12 = load i32* %target.addr, align 4
  %13 = load i32* @width, align 4
  %mul4 = mul nsw i32 2, %13
  %add5 = add nsw i32 %12, %mul4
  %14 = load %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_cnot(i32 %add3, i32 %add5, %struct.quantum_reg_struct* %14)
  %15 = load %struct.quantum_reg_struct** %reg.addr, align 8
  %call6 = call i32 @quantum_qec_counter(i32 1, i32 0, %struct.quantum_reg_struct* %15)
  %16 = load i32* %tmp, align 4
  store i32 %16, i32* @type, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @quantum_toffoli_ft(i32 %control1, i32 %control2, i32 %target, %struct.quantum_reg_struct* %reg) #0 {
entry:
  %control1.addr = alloca i32, align 4
  %control2.addr = alloca i32, align 4
  %target.addr = alloca i32, align 4
  %reg.addr = alloca %struct.quantum_reg_struct*, align 8
  %i = alloca i32, align 4
  %c1 = alloca i32, align 4
  %c2 = alloca i32, align 4
  %mask = alloca i64, align 8
  store i32 %control1, i32* %control1.addr, align 4
  store i32 %control2, i32* %control2.addr, align 4
  store i32 %target, i32* %target.addr, align 4
  store %struct.quantum_reg_struct* %reg, %struct.quantum_reg_struct** %reg.addr, align 8
  %0 = load i32* %target.addr, align 4
  %sh_prom = zext i32 %0 to i64
  %shl = shl i64 1, %sh_prom
  %1 = load i32* %target.addr, align 4
  %2 = load i32* @width, align 4
  %add = add nsw i32 %1, %2
  %sh_prom1 = zext i32 %add to i64
  %shl2 = shl i64 1, %sh_prom1
  %add3 = add i64 %shl, %shl2
  %3 = load i32* %target.addr, align 4
  %4 = load i32* @width, align 4
  %mul = mul nsw i32 2, %4
  %add4 = add nsw i32 %3, %mul
  %sh_prom5 = zext i32 %add4 to i64
  %shl6 = shl i64 1, %sh_prom5
  %add7 = add i64 %add3, %shl6
  store i64 %add7, i64* %mask, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load i32* %i, align 4
  %6 = load %struct.quantum_reg_struct** %reg.addr, align 8
  %size = getelementptr inbounds %struct.quantum_reg_struct* %6, i32 0, i32 1
  %7 = load i32* %size, align 4
  %cmp = icmp slt i32 %5, %7
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %c1, align 4
  store i32 0, i32* %c2, align 4
  %8 = load i32* %i, align 4
  %idxprom = sext i32 %8 to i64
  %9 = load %struct.quantum_reg_struct** %reg.addr, align 8
  %node = getelementptr inbounds %struct.quantum_reg_struct* %9, i32 0, i32 3
  %10 = load %struct.quantum_reg_node_struct** %node, align 8
  %arrayidx = getelementptr inbounds %struct.quantum_reg_node_struct* %10, i64 %idxprom
  %state = getelementptr inbounds %struct.quantum_reg_node_struct* %arrayidx, i32 0, i32 1
  %11 = load i64* %state, align 8
  %12 = load i32* %control1.addr, align 4
  %sh_prom8 = zext i32 %12 to i64
  %shl9 = shl i64 1, %sh_prom8
  %and = and i64 %11, %shl9
  %tobool = icmp ne i64 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store i32 1, i32* %c1, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %13 = load i32* %i, align 4
  %idxprom10 = sext i32 %13 to i64
  %14 = load %struct.quantum_reg_struct** %reg.addr, align 8
  %node11 = getelementptr inbounds %struct.quantum_reg_struct* %14, i32 0, i32 3
  %15 = load %struct.quantum_reg_node_struct** %node11, align 8
  %arrayidx12 = getelementptr inbounds %struct.quantum_reg_node_struct* %15, i64 %idxprom10
  %state13 = getelementptr inbounds %struct.quantum_reg_node_struct* %arrayidx12, i32 0, i32 1
  %16 = load i64* %state13, align 8
  %17 = load i32* %control1.addr, align 4
  %18 = load i32* @width, align 4
  %add14 = add nsw i32 %17, %18
  %sh_prom15 = zext i32 %add14 to i64
  %shl16 = shl i64 1, %sh_prom15
  %and17 = and i64 %16, %shl16
  %tobool18 = icmp ne i64 %and17, 0
  br i1 %tobool18, label %if.then19, label %if.end20

if.then19:                                        ; preds = %if.end
  %19 = load i32* %c1, align 4
  %xor = xor i32 %19, 1
  store i32 %xor, i32* %c1, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.then19, %if.end
  %20 = load i32* %i, align 4
  %idxprom21 = sext i32 %20 to i64
  %21 = load %struct.quantum_reg_struct** %reg.addr, align 8
  %node22 = getelementptr inbounds %struct.quantum_reg_struct* %21, i32 0, i32 3
  %22 = load %struct.quantum_reg_node_struct** %node22, align 8
  %arrayidx23 = getelementptr inbounds %struct.quantum_reg_node_struct* %22, i64 %idxprom21
  %state24 = getelementptr inbounds %struct.quantum_reg_node_struct* %arrayidx23, i32 0, i32 1
  %23 = load i64* %state24, align 8
  %24 = load i32* %control1.addr, align 4
  %25 = load i32* @width, align 4
  %mul25 = mul nsw i32 2, %25
  %add26 = add nsw i32 %24, %mul25
  %sh_prom27 = zext i32 %add26 to i64
  %shl28 = shl i64 1, %sh_prom27
  %and29 = and i64 %23, %shl28
  %tobool30 = icmp ne i64 %and29, 0
  br i1 %tobool30, label %if.then31, label %if.end33

if.then31:                                        ; preds = %if.end20
  %26 = load i32* %c1, align 4
  %xor32 = xor i32 %26, 1
  store i32 %xor32, i32* %c1, align 4
  br label %if.end33

if.end33:                                         ; preds = %if.then31, %if.end20
  %27 = load i32* %i, align 4
  %idxprom34 = sext i32 %27 to i64
  %28 = load %struct.quantum_reg_struct** %reg.addr, align 8
  %node35 = getelementptr inbounds %struct.quantum_reg_struct* %28, i32 0, i32 3
  %29 = load %struct.quantum_reg_node_struct** %node35, align 8
  %arrayidx36 = getelementptr inbounds %struct.quantum_reg_node_struct* %29, i64 %idxprom34
  %state37 = getelementptr inbounds %struct.quantum_reg_node_struct* %arrayidx36, i32 0, i32 1
  %30 = load i64* %state37, align 8
  %31 = load i32* %control2.addr, align 4
  %sh_prom38 = zext i32 %31 to i64
  %shl39 = shl i64 1, %sh_prom38
  %and40 = and i64 %30, %shl39
  %tobool41 = icmp ne i64 %and40, 0
  br i1 %tobool41, label %if.then42, label %if.end43

if.then42:                                        ; preds = %if.end33
  store i32 1, i32* %c2, align 4
  br label %if.end43

if.end43:                                         ; preds = %if.then42, %if.end33
  %32 = load i32* %i, align 4
  %idxprom44 = sext i32 %32 to i64
  %33 = load %struct.quantum_reg_struct** %reg.addr, align 8
  %node45 = getelementptr inbounds %struct.quantum_reg_struct* %33, i32 0, i32 3
  %34 = load %struct.quantum_reg_node_struct** %node45, align 8
  %arrayidx46 = getelementptr inbounds %struct.quantum_reg_node_struct* %34, i64 %idxprom44
  %state47 = getelementptr inbounds %struct.quantum_reg_node_struct* %arrayidx46, i32 0, i32 1
  %35 = load i64* %state47, align 8
  %36 = load i32* %control2.addr, align 4
  %37 = load i32* @width, align 4
  %add48 = add nsw i32 %36, %37
  %sh_prom49 = zext i32 %add48 to i64
  %shl50 = shl i64 1, %sh_prom49
  %and51 = and i64 %35, %shl50
  %tobool52 = icmp ne i64 %and51, 0
  br i1 %tobool52, label %if.then53, label %if.end55

if.then53:                                        ; preds = %if.end43
  %38 = load i32* %c2, align 4
  %xor54 = xor i32 %38, 1
  store i32 %xor54, i32* %c2, align 4
  br label %if.end55

if.end55:                                         ; preds = %if.then53, %if.end43
  %39 = load i32* %i, align 4
  %idxprom56 = sext i32 %39 to i64
  %40 = load %struct.quantum_reg_struct** %reg.addr, align 8
  %node57 = getelementptr inbounds %struct.quantum_reg_struct* %40, i32 0, i32 3
  %41 = load %struct.quantum_reg_node_struct** %node57, align 8
  %arrayidx58 = getelementptr inbounds %struct.quantum_reg_node_struct* %41, i64 %idxprom56
  %state59 = getelementptr inbounds %struct.quantum_reg_node_struct* %arrayidx58, i32 0, i32 1
  %42 = load i64* %state59, align 8
  %43 = load i32* %control2.addr, align 4
  %44 = load i32* @width, align 4
  %mul60 = mul nsw i32 2, %44
  %add61 = add nsw i32 %43, %mul60
  %sh_prom62 = zext i32 %add61 to i64
  %shl63 = shl i64 1, %sh_prom62
  %and64 = and i64 %42, %shl63
  %tobool65 = icmp ne i64 %and64, 0
  br i1 %tobool65, label %if.then66, label %if.end68

if.then66:                                        ; preds = %if.end55
  %45 = load i32* %c2, align 4
  %xor67 = xor i32 %45, 1
  store i32 %xor67, i32* %c2, align 4
  br label %if.end68

if.end68:                                         ; preds = %if.then66, %if.end55
  %46 = load i32* %c1, align 4
  %cmp69 = icmp eq i32 %46, 1
  br i1 %cmp69, label %land.lhs.true, label %if.end81

land.lhs.true:                                    ; preds = %if.end68
  %47 = load i32* %c2, align 4
  %cmp70 = icmp eq i32 %47, 1
  br i1 %cmp70, label %if.then71, label %if.end81

if.then71:                                        ; preds = %land.lhs.true
  %48 = load i32* %i, align 4
  %idxprom72 = sext i32 %48 to i64
  %49 = load %struct.quantum_reg_struct** %reg.addr, align 8
  %node73 = getelementptr inbounds %struct.quantum_reg_struct* %49, i32 0, i32 3
  %50 = load %struct.quantum_reg_node_struct** %node73, align 8
  %arrayidx74 = getelementptr inbounds %struct.quantum_reg_node_struct* %50, i64 %idxprom72
  %state75 = getelementptr inbounds %struct.quantum_reg_node_struct* %arrayidx74, i32 0, i32 1
  %51 = load i64* %state75, align 8
  %52 = load i64* %mask, align 8
  %xor76 = xor i64 %51, %52
  %53 = load i32* %i, align 4
  %idxprom77 = sext i32 %53 to i64
  %54 = load %struct.quantum_reg_struct** %reg.addr, align 8
  %node78 = getelementptr inbounds %struct.quantum_reg_struct* %54, i32 0, i32 3
  %55 = load %struct.quantum_reg_node_struct** %node78, align 8
  %arrayidx79 = getelementptr inbounds %struct.quantum_reg_node_struct* %55, i64 %idxprom77
  %state80 = getelementptr inbounds %struct.quantum_reg_node_struct* %arrayidx79, i32 0, i32 1
  store i64 %xor76, i64* %state80, align 8
  br label %if.end81

if.end81:                                         ; preds = %if.then71, %land.lhs.true, %if.end68
  br label %for.inc

for.inc:                                          ; preds = %if.end81
  %56 = load i32* %i, align 4
  %inc = add nsw i32 %56, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %57 = load %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_decohere(%struct.quantum_reg_struct* %57)
  %58 = load %struct.quantum_reg_struct** %reg.addr, align 8
  %call = call i32 @quantum_qec_counter(i32 1, i32 0, %struct.quantum_reg_struct* %58)
  ret void
}

; Function Attrs: nounwind uwtable
define void @quantum_qft(i32 %width, %struct.quantum_reg_struct* %reg) #0 {
entry:
  %width.addr = alloca i32, align 4
  %reg.addr = alloca %struct.quantum_reg_struct*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 %width, i32* %width.addr, align 4
  store %struct.quantum_reg_struct* %reg, %struct.quantum_reg_struct** %reg.addr, align 8
  %0 = load i32* %width.addr, align 4
  %sub = sub nsw i32 %0, 1
  store i32 %sub, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc5, %entry
  %1 = load i32* %i, align 4
  %cmp = icmp sge i32 %1, 0
  br i1 %cmp, label %for.body, label %for.end7

for.body:                                         ; preds = %for.cond
  %2 = load i32* %width.addr, align 4
  %sub1 = sub nsw i32 %2, 1
  store i32 %sub1, i32* %j, align 4
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc, %for.body
  %3 = load i32* %j, align 4
  %4 = load i32* %i, align 4
  %cmp3 = icmp sgt i32 %3, %4
  br i1 %cmp3, label %for.body4, label %for.end

for.body4:                                        ; preds = %for.cond2
  %5 = load i32* %j, align 4
  %6 = load i32* %i, align 4
  %7 = load %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_cond_phase(i32 %5, i32 %6, %struct.quantum_reg_struct* %7)
  br label %for.inc

for.inc:                                          ; preds = %for.body4
  %8 = load i32* %j, align 4
  %dec = add nsw i32 %8, -1
  store i32 %dec, i32* %j, align 4
  br label %for.cond2

for.end:                                          ; preds = %for.cond2
  %9 = load i32* %i, align 4
  %10 = load %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_hadamard(i32 %9, %struct.quantum_reg_struct* %10)
  br label %for.inc5

for.inc5:                                         ; preds = %for.end
  %11 = load i32* %i, align 4
  %dec6 = add nsw i32 %11, -1
  store i32 %dec6, i32* %i, align 4
  br label %for.cond

for.end7:                                         ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @quantum_qft_inv(i32 %width, %struct.quantum_reg_struct* %reg) #0 {
entry:
  %width.addr = alloca i32, align 4
  %reg.addr = alloca %struct.quantum_reg_struct*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 %width, i32* %width.addr, align 4
  store %struct.quantum_reg_struct* %reg, %struct.quantum_reg_struct** %reg.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc4, %entry
  %0 = load i32* %i, align 4
  %1 = load i32* %width.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end6

for.body:                                         ; preds = %for.cond
  %2 = load i32* %i, align 4
  %3 = load %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_hadamard(i32 %2, %struct.quantum_reg_struct* %3)
  %4 = load i32* %i, align 4
  %add = add nsw i32 %4, 1
  store i32 %add, i32* %j, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %5 = load i32* %j, align 4
  %6 = load i32* %width.addr, align 4
  %cmp2 = icmp slt i32 %5, %6
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %7 = load i32* %j, align 4
  %8 = load i32* %i, align 4
  %9 = load %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_cond_phase_inv(i32 %7, i32 %8, %struct.quantum_reg_struct* %9)
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %10 = load i32* %j, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond1

for.end:                                          ; preds = %for.cond1
  br label %for.inc4

for.inc4:                                         ; preds = %for.end
  %11 = load i32* %i, align 4
  %inc5 = add nsw i32 %11, 1
  store i32 %inc5, i32* %i, align 4
  br label %for.cond

for.end6:                                         ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @quantum_matrix2qureg(%struct.quantum_reg_struct* noalias sret %agg.result, %struct.quantum_matrix_struct* %m, i32 %width) #0 {
entry:
  %m.addr = alloca %struct.quantum_matrix_struct*, align 8
  %width.addr = alloca i32, align 4
  %reg = alloca %struct.quantum_reg_struct, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %size = alloca i32, align 4
  store %struct.quantum_matrix_struct* %m, %struct.quantum_matrix_struct** %m.addr, align 8
  store i32 %width, i32* %width.addr, align 4
  store i32 0, i32* %size, align 4
  %0 = load %struct.quantum_matrix_struct** %m.addr, align 8
  %cols = getelementptr inbounds %struct.quantum_matrix_struct* %0, i32 0, i32 1
  %1 = load i32* %cols, align 4
  %cmp = icmp ne i32 %1, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.quantum_matrix_struct** %m.addr, align 8
  %cols1 = getelementptr inbounds %struct.quantum_matrix_struct* %2, i32 0, i32 1
  %3 = load i32* %cols1, align 4
  %call = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([51 x i8]* @.str44, i32 0, i32 0), i32 %3)
  call void @exit(i32 1) #9
  unreachable

if.end:                                           ; preds = %entry
  %4 = load i32* %width.addr, align 4
  %width2 = getelementptr inbounds %struct.quantum_reg_struct* %reg, i32 0, i32 0
  store i32 %4, i32* %width2, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %5 = load i32* %i, align 4
  %6 = load %struct.quantum_matrix_struct** %m.addr, align 8
  %rows = getelementptr inbounds %struct.quantum_matrix_struct* %6, i32 0, i32 0
  %7 = load i32* %rows, align 4
  %cmp3 = icmp slt i32 %5, %7
  br i1 %cmp3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load i32* %i, align 4
  %idxprom = sext i32 %8 to i64
  %9 = load %struct.quantum_matrix_struct** %m.addr, align 8
  %t = getelementptr inbounds %struct.quantum_matrix_struct* %9, i32 0, i32 2
  %10 = load { float, float }** %t, align 8
  %arrayidx = getelementptr inbounds { float, float }* %10, i64 %idxprom
  %arrayidx.realp = getelementptr inbounds { float, float }* %arrayidx, i32 0, i32 0
  %arrayidx.real = load float* %arrayidx.realp, align 4
  %arrayidx.imagp = getelementptr inbounds { float, float }* %arrayidx, i32 0, i32 1
  %arrayidx.imag = load float* %arrayidx.imagp, align 4
  %tobool = fcmp une float %arrayidx.real, 0.000000e+00
  %tobool4 = fcmp une float %arrayidx.imag, 0.000000e+00
  %tobool5 = or i1 %tobool, %tobool4
  br i1 %tobool5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %for.body
  %11 = load i32* %size, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %size, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end7
  %12 = load i32* %i, align 4
  %inc8 = add nsw i32 %12, 1
  store i32 %inc8, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %13 = load i32* %size, align 4
  %size9 = getelementptr inbounds %struct.quantum_reg_struct* %reg, i32 0, i32 1
  store i32 %13, i32* %size9, align 4
  %14 = load i32* %width.addr, align 4
  %add = add nsw i32 %14, 2
  %hashw = getelementptr inbounds %struct.quantum_reg_struct* %reg, i32 0, i32 2
  store i32 %add, i32* %hashw, align 4
  %15 = load i32* %size, align 4
  %conv = sext i32 %15 to i64
  %call10 = call noalias i8* @calloc(i64 %conv, i64 16) #6
  %16 = bitcast i8* %call10 to %struct.quantum_reg_node_struct*
  %node = getelementptr inbounds %struct.quantum_reg_struct* %reg, i32 0, i32 3
  store %struct.quantum_reg_node_struct* %16, %struct.quantum_reg_node_struct** %node, align 8
  %node11 = getelementptr inbounds %struct.quantum_reg_struct* %reg, i32 0, i32 3
  %17 = load %struct.quantum_reg_node_struct** %node11, align 8
  %tobool12 = icmp ne %struct.quantum_reg_node_struct* %17, null
  br i1 %tobool12, label %if.end15, label %if.then13

if.then13:                                        ; preds = %for.end
  %18 = load i32* %size, align 4
  %call14 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([39 x i8]* @.str145, i32 0, i32 0), i32 %18)
  call void @exit(i32 1) #9
  unreachable

if.end15:                                         ; preds = %for.end
  %19 = load i32* %size, align 4
  %conv16 = sext i32 %19 to i64
  %mul = mul i64 %conv16, 16
  %call17 = call i64 @quantum_memman(i64 %mul)
  %hashw18 = getelementptr inbounds %struct.quantum_reg_struct* %reg, i32 0, i32 2
  %20 = load i32* %hashw18, align 4
  %shl = shl i32 1, %20
  %conv19 = sext i32 %shl to i64
  %call20 = call noalias i8* @calloc(i64 %conv19, i64 4) #6
  %21 = bitcast i8* %call20 to i32*
  %hash = getelementptr inbounds %struct.quantum_reg_struct* %reg, i32 0, i32 4
  store i32* %21, i32** %hash, align 8
  %hash21 = getelementptr inbounds %struct.quantum_reg_struct* %reg, i32 0, i32 4
  %22 = load i32** %hash21, align 8
  %tobool22 = icmp ne i32* %22, null
  br i1 %tobool22, label %if.end27, label %if.then23

if.then23:                                        ; preds = %if.end15
  %hashw24 = getelementptr inbounds %struct.quantum_reg_struct* %reg, i32 0, i32 2
  %23 = load i32* %hashw24, align 4
  %shl25 = shl i32 1, %23
  %call26 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([38 x i8]* @.str246, i32 0, i32 0), i32 %shl25)
  call void @exit(i32 1) #9
  unreachable

if.end27:                                         ; preds = %if.end15
  %hashw28 = getelementptr inbounds %struct.quantum_reg_struct* %reg, i32 0, i32 2
  %24 = load i32* %hashw28, align 4
  %shl29 = shl i32 1, %24
  %conv30 = sext i32 %shl29 to i64
  %mul31 = mul i64 %conv30, 4
  %call32 = call i64 @quantum_memman(i64 %mul31)
  store i32 0, i32* %i, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond33

for.cond33:                                       ; preds = %for.inc57, %if.end27
  %25 = load i32* %i, align 4
  %26 = load %struct.quantum_matrix_struct** %m.addr, align 8
  %rows34 = getelementptr inbounds %struct.quantum_matrix_struct* %26, i32 0, i32 0
  %27 = load i32* %rows34, align 4
  %cmp35 = icmp slt i32 %25, %27
  br i1 %cmp35, label %for.body37, label %for.end59

for.body37:                                       ; preds = %for.cond33
  %28 = load i32* %i, align 4
  %idxprom38 = sext i32 %28 to i64
  %29 = load %struct.quantum_matrix_struct** %m.addr, align 8
  %t39 = getelementptr inbounds %struct.quantum_matrix_struct* %29, i32 0, i32 2
  %30 = load { float, float }** %t39, align 8
  %arrayidx40 = getelementptr inbounds { float, float }* %30, i64 %idxprom38
  %arrayidx40.realp = getelementptr inbounds { float, float }* %arrayidx40, i32 0, i32 0
  %arrayidx40.real = load float* %arrayidx40.realp, align 4
  %arrayidx40.imagp = getelementptr inbounds { float, float }* %arrayidx40, i32 0, i32 1
  %arrayidx40.imag = load float* %arrayidx40.imagp, align 4
  %tobool41 = fcmp une float %arrayidx40.real, 0.000000e+00
  %tobool42 = fcmp une float %arrayidx40.imag, 0.000000e+00
  %tobool43 = or i1 %tobool41, %tobool42
  br i1 %tobool43, label %if.then44, label %if.end56

if.then44:                                        ; preds = %for.body37
  %31 = load i32* %i, align 4
  %conv45 = sext i32 %31 to i64
  %32 = load i32* %j, align 4
  %idxprom46 = sext i32 %32 to i64
  %node47 = getelementptr inbounds %struct.quantum_reg_struct* %reg, i32 0, i32 3
  %33 = load %struct.quantum_reg_node_struct** %node47, align 8
  %arrayidx48 = getelementptr inbounds %struct.quantum_reg_node_struct* %33, i64 %idxprom46
  %state = getelementptr inbounds %struct.quantum_reg_node_struct* %arrayidx48, i32 0, i32 1
  store i64 %conv45, i64* %state, align 8
  %34 = load i32* %i, align 4
  %idxprom49 = sext i32 %34 to i64
  %35 = load %struct.quantum_matrix_struct** %m.addr, align 8
  %t50 = getelementptr inbounds %struct.quantum_matrix_struct* %35, i32 0, i32 2
  %36 = load { float, float }** %t50, align 8
  %arrayidx51 = getelementptr inbounds { float, float }* %36, i64 %idxprom49
  %arrayidx51.realp = getelementptr inbounds { float, float }* %arrayidx51, i32 0, i32 0
  %arrayidx51.real = load float* %arrayidx51.realp, align 4
  %arrayidx51.imagp = getelementptr inbounds { float, float }* %arrayidx51, i32 0, i32 1
  %arrayidx51.imag = load float* %arrayidx51.imagp, align 4
  %37 = load i32* %j, align 4
  %idxprom52 = sext i32 %37 to i64
  %node53 = getelementptr inbounds %struct.quantum_reg_struct* %reg, i32 0, i32 3
  %38 = load %struct.quantum_reg_node_struct** %node53, align 8
  %arrayidx54 = getelementptr inbounds %struct.quantum_reg_node_struct* %38, i64 %idxprom52
  %amplitude = getelementptr inbounds %struct.quantum_reg_node_struct* %arrayidx54, i32 0, i32 0
  %real = getelementptr inbounds { float, float }* %amplitude, i32 0, i32 0
  %imag = getelementptr inbounds { float, float }* %amplitude, i32 0, i32 1
  store float %arrayidx51.real, float* %real, align 4
  store float %arrayidx51.imag, float* %imag, align 4
  %39 = load i32* %j, align 4
  %inc55 = add nsw i32 %39, 1
  store i32 %inc55, i32* %j, align 4
  br label %if.end56

if.end56:                                         ; preds = %if.then44, %for.body37
  br label %for.inc57

for.inc57:                                        ; preds = %if.end56
  %40 = load i32* %i, align 4
  %inc58 = add nsw i32 %40, 1
  store i32 %inc58, i32* %i, align 4
  br label %for.cond33

for.end59:                                        ; preds = %for.cond33
  %41 = bitcast %struct.quantum_reg_struct* %agg.result to i8*
  %42 = bitcast %struct.quantum_reg_struct* %reg to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %41, i8* %42, i64 32, i32 8, i1 false)
  ret void
}

; Function Attrs: nounwind uwtable
define void @quantum_new_qureg(%struct.quantum_reg_struct* noalias sret %agg.result, i64 %initval, i32 %width) #0 {
entry:
  %initval.addr = alloca i64, align 8
  %width.addr = alloca i32, align 4
  %reg = alloca %struct.quantum_reg_struct, align 8
  %c = alloca i8*, align 8
  store i64 %initval, i64* %initval.addr, align 8
  store i32 %width, i32* %width.addr, align 4
  %0 = load i32* %width.addr, align 4
  %width1 = getelementptr inbounds %struct.quantum_reg_struct* %reg, i32 0, i32 0
  store i32 %0, i32* %width1, align 4
  %size = getelementptr inbounds %struct.quantum_reg_struct* %reg, i32 0, i32 1
  store i32 1, i32* %size, align 4
  %1 = load i32* %width.addr, align 4
  %add = add nsw i32 %1, 2
  %hashw = getelementptr inbounds %struct.quantum_reg_struct* %reg, i32 0, i32 2
  store i32 %add, i32* %hashw, align 4
  %call = call noalias i8* @calloc(i64 1, i64 16) #6
  %2 = bitcast i8* %call to %struct.quantum_reg_node_struct*
  %node = getelementptr inbounds %struct.quantum_reg_struct* %reg, i32 0, i32 3
  store %struct.quantum_reg_node_struct* %2, %struct.quantum_reg_node_struct** %node, align 8
  %node2 = getelementptr inbounds %struct.quantum_reg_struct* %reg, i32 0, i32 3
  %3 = load %struct.quantum_reg_node_struct** %node2, align 8
  %tobool = icmp ne %struct.quantum_reg_node_struct* %3, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call3 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([39 x i8]* @.str145, i32 0, i32 0), i32 1)
  call void @exit(i32 1) #9
  unreachable

if.end:                                           ; preds = %entry
  %call4 = call i64 @quantum_memman(i64 16)
  %hashw5 = getelementptr inbounds %struct.quantum_reg_struct* %reg, i32 0, i32 2
  %4 = load i32* %hashw5, align 4
  %shl = shl i32 1, %4
  %conv = sext i32 %shl to i64
  %call6 = call noalias i8* @calloc(i64 %conv, i64 4) #6
  %5 = bitcast i8* %call6 to i32*
  %hash = getelementptr inbounds %struct.quantum_reg_struct* %reg, i32 0, i32 4
  store i32* %5, i32** %hash, align 8
  %hash7 = getelementptr inbounds %struct.quantum_reg_struct* %reg, i32 0, i32 4
  %6 = load i32** %hash7, align 8
  %tobool8 = icmp ne i32* %6, null
  br i1 %tobool8, label %if.end13, label %if.then9

if.then9:                                         ; preds = %if.end
  %hashw10 = getelementptr inbounds %struct.quantum_reg_struct* %reg, i32 0, i32 2
  %7 = load i32* %hashw10, align 4
  %shl11 = shl i32 1, %7
  %call12 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([38 x i8]* @.str246, i32 0, i32 0), i32 %shl11)
  call void @exit(i32 1) #9
  unreachable

if.end13:                                         ; preds = %if.end
  %hashw14 = getelementptr inbounds %struct.quantum_reg_struct* %reg, i32 0, i32 2
  %8 = load i32* %hashw14, align 4
  %shl15 = shl i32 1, %8
  %conv16 = sext i32 %shl15 to i64
  %mul = mul i64 %conv16, 4
  %call17 = call i64 @quantum_memman(i64 %mul)
  %9 = load i64* %initval.addr, align 8
  %node18 = getelementptr inbounds %struct.quantum_reg_struct* %reg, i32 0, i32 3
  %10 = load %struct.quantum_reg_node_struct** %node18, align 8
  %arrayidx = getelementptr inbounds %struct.quantum_reg_node_struct* %10, i64 0
  %state = getelementptr inbounds %struct.quantum_reg_node_struct* %arrayidx, i32 0, i32 1
  store i64 %9, i64* %state, align 8
  %node19 = getelementptr inbounds %struct.quantum_reg_struct* %reg, i32 0, i32 3
  %11 = load %struct.quantum_reg_node_struct** %node19, align 8
  %arrayidx20 = getelementptr inbounds %struct.quantum_reg_node_struct* %11, i64 0
  %amplitude = getelementptr inbounds %struct.quantum_reg_node_struct* %arrayidx20, i32 0, i32 0
  %real = getelementptr inbounds { float, float }* %amplitude, i32 0, i32 0
  %imag = getelementptr inbounds { float, float }* %amplitude, i32 0, i32 1
  store float 1.000000e+00, float* %real, align 4
  store float 0.000000e+00, float* %imag, align 4
  %call21 = call i8* @getenv(i8* getelementptr inbounds ([9 x i8]* @.str347, i32 0, i32 0)) #6
  store i8* %call21, i8** %c, align 8
  %12 = load i8** %c, align 8
  %tobool22 = icmp ne i8* %12, null
  br i1 %tobool22, label %if.then23, label %if.end25

if.then23:                                        ; preds = %if.end13
  call void (...)* bitcast (void ()* @quantum_objcode_start to void (...)*)()
  %13 = load i8** %c, align 8
  call void @quantum_objcode_file(i8* %13)
  %call24 = call i32 @atexit(void ()* bitcast (void (i8*)* @quantum_objcode_exit to void ()*)) #6
  br label %if.end25

if.end25:                                         ; preds = %if.then23, %if.end13
  %14 = load i64* %initval.addr, align 8
  %call26 = call i32 (i8, ...)* @quantum_objcode_put(i8 zeroext 0, i64 %14)
  %15 = bitcast %struct.quantum_reg_struct* %agg.result to i8*
  %16 = bitcast %struct.quantum_reg_struct* %reg to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* %16, i64 32, i32 8, i1 false)
  ret void
}

; Function Attrs: nounwind
declare i8* @getenv(i8*) #2

; Function Attrs: nounwind
declare i32 @atexit(void ()*) #2

; Function Attrs: nounwind uwtable
define { i64, { float, float }* } @quantum_qureg2matrix(%struct.quantum_reg_struct* byval align 8 %reg) #0 {
entry:
  %retval = alloca %struct.quantum_matrix_struct, align 8
  %m = alloca %struct.quantum_matrix_struct, align 8
  %i = alloca i32, align 4
  %coerce = alloca %struct.quantum_matrix_struct, align 8
  %width = getelementptr inbounds %struct.quantum_reg_struct* %reg, i32 0, i32 0
  %0 = load i32* %width, align 4
  %shl = shl i32 1, %0
  %call = call { i64, { float, float }* } @quantum_new_matrix(i32 1, i32 %shl)
  %1 = bitcast %struct.quantum_matrix_struct* %coerce to { i64, { float, float }* }*
  %2 = getelementptr { i64, { float, float }* }* %1, i32 0, i32 0
  %3 = extractvalue { i64, { float, float }* } %call, 0
  store i64 %3, i64* %2, align 1
  %4 = getelementptr { i64, { float, float }* }* %1, i32 0, i32 1
  %5 = extractvalue { i64, { float, float }* } %call, 1
  store { float, float }* %5, { float, float }** %4, align 1
  %6 = bitcast %struct.quantum_matrix_struct* %m to i8*
  %7 = bitcast %struct.quantum_matrix_struct* %coerce to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* %7, i64 16, i32 8, i1 false)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %8 = load i32* %i, align 4
  %size = getelementptr inbounds %struct.quantum_reg_struct* %reg, i32 0, i32 1
  %9 = load i32* %size, align 4
  %cmp = icmp slt i32 %8, %9
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load i32* %i, align 4
  %idxprom = sext i32 %10 to i64
  %node = getelementptr inbounds %struct.quantum_reg_struct* %reg, i32 0, i32 3
  %11 = load %struct.quantum_reg_node_struct** %node, align 8
  %arrayidx = getelementptr inbounds %struct.quantum_reg_node_struct* %11, i64 %idxprom
  %amplitude = getelementptr inbounds %struct.quantum_reg_node_struct* %arrayidx, i32 0, i32 0
  %amplitude.realp = getelementptr inbounds { float, float }* %amplitude, i32 0, i32 0
  %amplitude.real = load float* %amplitude.realp, align 4
  %amplitude.imagp = getelementptr inbounds { float, float }* %amplitude, i32 0, i32 1
  %amplitude.imag = load float* %amplitude.imagp, align 4
  %12 = load i32* %i, align 4
  %idxprom1 = sext i32 %12 to i64
  %node2 = getelementptr inbounds %struct.quantum_reg_struct* %reg, i32 0, i32 3
  %13 = load %struct.quantum_reg_node_struct** %node2, align 8
  %arrayidx3 = getelementptr inbounds %struct.quantum_reg_node_struct* %13, i64 %idxprom1
  %state = getelementptr inbounds %struct.quantum_reg_node_struct* %arrayidx3, i32 0, i32 1
  %14 = load i64* %state, align 8
  %t = getelementptr inbounds %struct.quantum_matrix_struct* %m, i32 0, i32 2
  %15 = load { float, float }** %t, align 8
  %arrayidx4 = getelementptr inbounds { float, float }* %15, i64 %14
  %real = getelementptr inbounds { float, float }* %arrayidx4, i32 0, i32 0
  %imag = getelementptr inbounds { float, float }* %arrayidx4, i32 0, i32 1
  store float %amplitude.real, float* %real, align 4
  store float %amplitude.imag, float* %imag, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %16 = load i32* %i, align 4
  %inc = add nsw i32 %16, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %17 = bitcast %struct.quantum_matrix_struct* %retval to i8*
  %18 = bitcast %struct.quantum_matrix_struct* %m to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %17, i8* %18, i64 16, i32 8, i1 false)
  %19 = bitcast %struct.quantum_matrix_struct* %retval to { i64, { float, float }* }*
  %20 = load { i64, { float, float }* }* %19, align 1
  ret { i64, { float, float }* } %20
}

; Function Attrs: nounwind uwtable
define void @quantum_destroy_hash(%struct.quantum_reg_struct* %reg) #0 {
entry:
  %reg.addr = alloca %struct.quantum_reg_struct*, align 8
  store %struct.quantum_reg_struct* %reg, %struct.quantum_reg_struct** %reg.addr, align 8
  %0 = load %struct.quantum_reg_struct** %reg.addr, align 8
  %hash = getelementptr inbounds %struct.quantum_reg_struct* %0, i32 0, i32 4
  %1 = load i32** %hash, align 8
  %2 = bitcast i32* %1 to i8*
  call void @free(i8* %2) #6
  %3 = load %struct.quantum_reg_struct** %reg.addr, align 8
  %hashw = getelementptr inbounds %struct.quantum_reg_struct* %3, i32 0, i32 2
  %4 = load i32* %hashw, align 4
  %shl = shl i32 1, %4
  %sub = sub nsw i32 0, %shl
  %conv = sext i32 %sub to i64
  %mul = mul i64 %conv, 4
  %call = call i64 @quantum_memman(i64 %mul)
  %5 = load %struct.quantum_reg_struct** %reg.addr, align 8
  %hash1 = getelementptr inbounds %struct.quantum_reg_struct* %5, i32 0, i32 4
  store i32* null, i32** %hash1, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @quantum_delete_qureg(%struct.quantum_reg_struct* %reg) #0 {
entry:
  %reg.addr = alloca %struct.quantum_reg_struct*, align 8
  store %struct.quantum_reg_struct* %reg, %struct.quantum_reg_struct** %reg.addr, align 8
  %0 = load %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_destroy_hash(%struct.quantum_reg_struct* %0)
  %1 = load %struct.quantum_reg_struct** %reg.addr, align 8
  %node = getelementptr inbounds %struct.quantum_reg_struct* %1, i32 0, i32 3
  %2 = load %struct.quantum_reg_node_struct** %node, align 8
  %3 = bitcast %struct.quantum_reg_node_struct* %2 to i8*
  call void @free(i8* %3) #6
  %4 = load %struct.quantum_reg_struct** %reg.addr, align 8
  %size = getelementptr inbounds %struct.quantum_reg_struct* %4, i32 0, i32 1
  %5 = load i32* %size, align 4
  %sub = sub nsw i32 0, %5
  %conv = sext i32 %sub to i64
  %mul = mul i64 %conv, 16
  %call = call i64 @quantum_memman(i64 %mul)
  %6 = load %struct.quantum_reg_struct** %reg.addr, align 8
  %node1 = getelementptr inbounds %struct.quantum_reg_struct* %6, i32 0, i32 3
  store %struct.quantum_reg_node_struct* null, %struct.quantum_reg_node_struct** %node1, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @quantum_delete_qureg_hashpreserve(%struct.quantum_reg_struct* %reg) #0 {
entry:
  %reg.addr = alloca %struct.quantum_reg_struct*, align 8
  store %struct.quantum_reg_struct* %reg, %struct.quantum_reg_struct** %reg.addr, align 8
  %0 = load %struct.quantum_reg_struct** %reg.addr, align 8
  %node = getelementptr inbounds %struct.quantum_reg_struct* %0, i32 0, i32 3
  %1 = load %struct.quantum_reg_node_struct** %node, align 8
  %2 = bitcast %struct.quantum_reg_node_struct* %1 to i8*
  call void @free(i8* %2) #6
  %3 = load %struct.quantum_reg_struct** %reg.addr, align 8
  %size = getelementptr inbounds %struct.quantum_reg_struct* %3, i32 0, i32 1
  %4 = load i32* %size, align 4
  %sub = sub nsw i32 0, %4
  %conv = sext i32 %sub to i64
  %mul = mul i64 %conv, 16
  %call = call i64 @quantum_memman(i64 %mul)
  %5 = load %struct.quantum_reg_struct** %reg.addr, align 8
  %node1 = getelementptr inbounds %struct.quantum_reg_struct* %5, i32 0, i32 3
  store %struct.quantum_reg_node_struct* null, %struct.quantum_reg_node_struct** %node1, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @quantum_print_qureg(%struct.quantum_reg_struct* byval align 8 %reg) #0 {
entry:
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %coerce = alloca { float, float }, align 4
  %coerce5 = alloca { float, float }, align 4
  %coerce17 = alloca { float, float }, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc38, %entry
  %0 = load i32* %i, align 4
  %size = getelementptr inbounds %struct.quantum_reg_struct* %reg, i32 0, i32 1
  %1 = load i32* %size, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end39

for.body:                                         ; preds = %for.cond
  %2 = load i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %node = getelementptr inbounds %struct.quantum_reg_struct* %reg, i32 0, i32 3
  %3 = load %struct.quantum_reg_node_struct** %node, align 8
  %arrayidx = getelementptr inbounds %struct.quantum_reg_node_struct* %3, i64 %idxprom
  %amplitude = getelementptr inbounds %struct.quantum_reg_node_struct* %arrayidx, i32 0, i32 0
  %amplitude.realp = getelementptr inbounds { float, float }* %amplitude, i32 0, i32 0
  %amplitude.real = load float* %amplitude.realp, align 4
  %amplitude.imagp = getelementptr inbounds { float, float }* %amplitude, i32 0, i32 1
  %amplitude.imag = load float* %amplitude.imagp, align 4
  %real = getelementptr inbounds { float, float }* %coerce, i32 0, i32 0
  %imag = getelementptr inbounds { float, float }* %coerce, i32 0, i32 1
  store float %amplitude.real, float* %real, align 4
  store float %amplitude.imag, float* %imag, align 4
  %4 = bitcast { float, float }* %coerce to <2 x float>*
  %5 = load <2 x float>* %4, align 1
  %call = call float @quantum_real59(<2 x float> %5)
  %conv = fpext float %call to double
  %6 = load i32* %i, align 4
  %idxprom1 = sext i32 %6 to i64
  %node2 = getelementptr inbounds %struct.quantum_reg_struct* %reg, i32 0, i32 3
  %7 = load %struct.quantum_reg_node_struct** %node2, align 8
  %arrayidx3 = getelementptr inbounds %struct.quantum_reg_node_struct* %7, i64 %idxprom1
  %amplitude4 = getelementptr inbounds %struct.quantum_reg_node_struct* %arrayidx3, i32 0, i32 0
  %amplitude4.realp = getelementptr inbounds { float, float }* %amplitude4, i32 0, i32 0
  %amplitude4.real = load float* %amplitude4.realp, align 4
  %amplitude4.imagp = getelementptr inbounds { float, float }* %amplitude4, i32 0, i32 1
  %amplitude4.imag = load float* %amplitude4.imagp, align 4
  %real6 = getelementptr inbounds { float, float }* %coerce5, i32 0, i32 0
  %imag7 = getelementptr inbounds { float, float }* %coerce5, i32 0, i32 1
  store float %amplitude4.real, float* %real6, align 4
  store float %amplitude4.imag, float* %imag7, align 4
  %8 = bitcast { float, float }* %coerce5 to <2 x float>*
  %9 = load <2 x float>* %8, align 1
  %call8 = call float @quantum_imag60(<2 x float> %9)
  %conv9 = fpext float %call8 to double
  %10 = load i32* %i, align 4
  %idxprom10 = sext i32 %10 to i64
  %node11 = getelementptr inbounds %struct.quantum_reg_struct* %reg, i32 0, i32 3
  %11 = load %struct.quantum_reg_node_struct** %node11, align 8
  %arrayidx12 = getelementptr inbounds %struct.quantum_reg_node_struct* %11, i64 %idxprom10
  %state = getelementptr inbounds %struct.quantum_reg_node_struct* %arrayidx12, i32 0, i32 1
  %12 = load i64* %state, align 8
  %13 = load i32* %i, align 4
  %idxprom13 = sext i32 %13 to i64
  %node14 = getelementptr inbounds %struct.quantum_reg_struct* %reg, i32 0, i32 3
  %14 = load %struct.quantum_reg_node_struct** %node14, align 8
  %arrayidx15 = getelementptr inbounds %struct.quantum_reg_node_struct* %14, i64 %idxprom13
  %amplitude16 = getelementptr inbounds %struct.quantum_reg_node_struct* %arrayidx15, i32 0, i32 0
  %amplitude16.realp = getelementptr inbounds { float, float }* %amplitude16, i32 0, i32 0
  %amplitude16.real = load float* %amplitude16.realp, align 4
  %amplitude16.imagp = getelementptr inbounds { float, float }* %amplitude16, i32 0, i32 1
  %amplitude16.imag = load float* %amplitude16.imagp, align 4
  %real18 = getelementptr inbounds { float, float }* %coerce17, i32 0, i32 0
  %imag19 = getelementptr inbounds { float, float }* %coerce17, i32 0, i32 1
  store float %amplitude16.real, float* %real18, align 4
  store float %amplitude16.imag, float* %imag19, align 4
  %15 = bitcast { float, float }* %coerce17 to <2 x float>*
  %16 = load <2 x float>* %15, align 1
  %call20 = call float @quantum_prob_inline61(<2 x float> %16)
  %conv21 = fpext float %call20 to double
  %call22 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([23 x i8]* @.str448, i32 0, i32 0), double %conv, double %conv9, i64 %12, double %conv21)
  %width = getelementptr inbounds %struct.quantum_reg_struct* %reg, i32 0, i32 0
  %17 = load i32* %width, align 4
  %sub = sub nsw i32 %17, 1
  store i32 %sub, i32* %j, align 4
  br label %for.cond23

for.cond23:                                       ; preds = %for.inc, %for.body
  %18 = load i32* %j, align 4
  %cmp24 = icmp sge i32 %18, 0
  br i1 %cmp24, label %for.body26, label %for.end

for.body26:                                       ; preds = %for.cond23
  %19 = load i32* %j, align 4
  %rem = srem i32 %19, 4
  %cmp27 = icmp eq i32 %rem, 3
  br i1 %cmp27, label %if.then, label %if.end

if.then:                                          ; preds = %for.body26
  %call29 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([2 x i8]* @.str549, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body26
  %20 = load i32* %j, align 4
  %sh_prom = zext i32 %20 to i64
  %shl = shl i64 1, %sh_prom
  %21 = load i32* %i, align 4
  %idxprom30 = sext i32 %21 to i64
  %node31 = getelementptr inbounds %struct.quantum_reg_struct* %reg, i32 0, i32 3
  %22 = load %struct.quantum_reg_node_struct** %node31, align 8
  %arrayidx32 = getelementptr inbounds %struct.quantum_reg_node_struct* %22, i64 %idxprom30
  %state33 = getelementptr inbounds %struct.quantum_reg_node_struct* %arrayidx32, i32 0, i32 1
  %23 = load i64* %state33, align 8
  %and = and i64 %shl, %23
  %cmp34 = icmp ugt i64 %and, 0
  %conv35 = zext i1 %cmp34 to i32
  %call36 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([3 x i8]* @.str650, i32 0, i32 0), i32 %conv35)
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %24 = load i32* %j, align 4
  %dec = add nsw i32 %24, -1
  store i32 %dec, i32* %j, align 4
  br label %for.cond23

for.end:                                          ; preds = %for.cond23
  %call37 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.str751, i32 0, i32 0))
  br label %for.inc38

for.inc38:                                        ; preds = %for.end
  %25 = load i32* %i, align 4
  %inc = add nsw i32 %25, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end39:                                        ; preds = %for.cond
  %call40 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([2 x i8]* @.str8, i32 0, i32 0))
  ret void
}

; Function Attrs: nounwind uwtable
define void @quantum_print_expn(%struct.quantum_reg_struct* byval align 8 %reg) #0 {
entry:
  %i = alloca i32, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32* %i, align 4
  %size = getelementptr inbounds %struct.quantum_reg_struct* %reg, i32 0, i32 1
  %1 = load i32* %size, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32* %i, align 4
  %3 = load i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %node = getelementptr inbounds %struct.quantum_reg_struct* %reg, i32 0, i32 3
  %4 = load %struct.quantum_reg_node_struct** %node, align 8
  %arrayidx = getelementptr inbounds %struct.quantum_reg_node_struct* %4, i64 %idxprom
  %state = getelementptr inbounds %struct.quantum_reg_node_struct* %arrayidx, i32 0, i32 1
  %5 = load i64* %state, align 8
  %6 = load i32* %i, align 4
  %width = getelementptr inbounds %struct.quantum_reg_struct* %reg, i32 0, i32 0
  %7 = load i32* %width, align 4
  %div = sdiv i32 %7, 2
  %shl = shl i32 1, %div
  %mul = mul nsw i32 %6, %shl
  %conv = sext i32 %mul to i64
  %sub = sub i64 %5, %conv
  %call = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([10 x i8]* @.str9, i32 0, i32 0), i32 %2, i64 %sub)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i32* %i, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @quantum_addscratch(i32 %bits, %struct.quantum_reg_struct* %reg) #0 {
entry:
  %bits.addr = alloca i32, align 4
  %reg.addr = alloca %struct.quantum_reg_struct*, align 8
  %i = alloca i32, align 4
  %oldwidth = alloca i32, align 4
  %l = alloca i64, align 8
  store i32 %bits, i32* %bits.addr, align 4
  store %struct.quantum_reg_struct* %reg, %struct.quantum_reg_struct** %reg.addr, align 8
  %0 = load %struct.quantum_reg_struct** %reg.addr, align 8
  %width = getelementptr inbounds %struct.quantum_reg_struct* %0, i32 0, i32 0
  %1 = load i32* %width, align 4
  store i32 %1, i32* %oldwidth, align 4
  %2 = load i32* %bits.addr, align 4
  %3 = load %struct.quantum_reg_struct** %reg.addr, align 8
  %width1 = getelementptr inbounds %struct.quantum_reg_struct* %3, i32 0, i32 0
  %4 = load i32* %width1, align 4
  %add = add nsw i32 %4, %2
  store i32 %add, i32* %width1, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load i32* %i, align 4
  %6 = load %struct.quantum_reg_struct** %reg.addr, align 8
  %size = getelementptr inbounds %struct.quantum_reg_struct* %6, i32 0, i32 1
  %7 = load i32* %size, align 4
  %cmp = icmp slt i32 %5, %7
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load i32* %i, align 4
  %idxprom = sext i32 %8 to i64
  %9 = load %struct.quantum_reg_struct** %reg.addr, align 8
  %node = getelementptr inbounds %struct.quantum_reg_struct* %9, i32 0, i32 3
  %10 = load %struct.quantum_reg_node_struct** %node, align 8
  %arrayidx = getelementptr inbounds %struct.quantum_reg_node_struct* %10, i64 %idxprom
  %state = getelementptr inbounds %struct.quantum_reg_node_struct* %arrayidx, i32 0, i32 1
  %11 = load i64* %state, align 8
  %12 = load i32* %bits.addr, align 4
  %sh_prom = zext i32 %12 to i64
  %shl = shl i64 %11, %sh_prom
  store i64 %shl, i64* %l, align 8
  %13 = load i64* %l, align 8
  %14 = load i32* %i, align 4
  %idxprom2 = sext i32 %14 to i64
  %15 = load %struct.quantum_reg_struct** %reg.addr, align 8
  %node3 = getelementptr inbounds %struct.quantum_reg_struct* %15, i32 0, i32 3
  %16 = load %struct.quantum_reg_node_struct** %node3, align 8
  %arrayidx4 = getelementptr inbounds %struct.quantum_reg_node_struct* %16, i64 %idxprom2
  %state5 = getelementptr inbounds %struct.quantum_reg_node_struct* %arrayidx4, i32 0, i32 1
  store i64 %13, i64* %state5, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %17 = load i32* %i, align 4
  %inc = add nsw i32 %17, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @quantum_print_hash(%struct.quantum_reg_struct* byval align 8 %reg) #0 {
entry:
  %i = alloca i32, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32* %i, align 4
  %hashw = getelementptr inbounds %struct.quantum_reg_struct* %reg, i32 0, i32 2
  %1 = load i32* %hashw, align 4
  %shl = shl i32 1, %1
  %cmp = icmp slt i32 %0, %shl
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32* %i, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %3 = load i32* %i, align 4
  %4 = load i32* %i, align 4
  %idxprom = sext i32 %4 to i64
  %hash = getelementptr inbounds %struct.quantum_reg_struct* %reg, i32 0, i32 4
  %5 = load i32** %hash, align 8
  %arrayidx = getelementptr inbounds i32* %5, i64 %idxprom
  %6 = load i32* %arrayidx, align 4
  %sub = sub nsw i32 %6, 1
  %7 = load i32* %i, align 4
  %idxprom1 = sext i32 %7 to i64
  %hash2 = getelementptr inbounds %struct.quantum_reg_struct* %reg, i32 0, i32 4
  %8 = load i32** %hash2, align 8
  %arrayidx3 = getelementptr inbounds i32* %8, i64 %idxprom1
  %9 = load i32* %arrayidx3, align 4
  %sub4 = sub nsw i32 %9, 1
  %idxprom5 = sext i32 %sub4 to i64
  %node = getelementptr inbounds %struct.quantum_reg_struct* %reg, i32 0, i32 3
  %10 = load %struct.quantum_reg_node_struct** %node, align 8
  %arrayidx6 = getelementptr inbounds %struct.quantum_reg_node_struct* %10, i64 %idxprom5
  %state = getelementptr inbounds %struct.quantum_reg_node_struct* %arrayidx6, i32 0, i32 1
  %11 = load i64* %state, align 8
  %call = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([13 x i8]* @.str1052, i32 0, i32 0), i32 %3, i32 %sub, i64 %11)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %12 = load i32* %i, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @quantum_kronecker(%struct.quantum_reg_struct* noalias sret %agg.result, %struct.quantum_reg_struct* %reg1, %struct.quantum_reg_struct* %reg2) #0 {
entry:
  %reg1.addr = alloca %struct.quantum_reg_struct*, align 8
  %reg2.addr = alloca %struct.quantum_reg_struct*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %reg = alloca %struct.quantum_reg_struct, align 8
  store %struct.quantum_reg_struct* %reg1, %struct.quantum_reg_struct** %reg1.addr, align 8
  store %struct.quantum_reg_struct* %reg2, %struct.quantum_reg_struct** %reg2.addr, align 8
  %0 = load %struct.quantum_reg_struct** %reg1.addr, align 8
  %width = getelementptr inbounds %struct.quantum_reg_struct* %0, i32 0, i32 0
  %1 = load i32* %width, align 4
  %2 = load %struct.quantum_reg_struct** %reg2.addr, align 8
  %width1 = getelementptr inbounds %struct.quantum_reg_struct* %2, i32 0, i32 0
  %3 = load i32* %width1, align 4
  %add = add nsw i32 %1, %3
  %width2 = getelementptr inbounds %struct.quantum_reg_struct* %reg, i32 0, i32 0
  store i32 %add, i32* %width2, align 4
  %4 = load %struct.quantum_reg_struct** %reg1.addr, align 8
  %size = getelementptr inbounds %struct.quantum_reg_struct* %4, i32 0, i32 1
  %5 = load i32* %size, align 4
  %6 = load %struct.quantum_reg_struct** %reg2.addr, align 8
  %size3 = getelementptr inbounds %struct.quantum_reg_struct* %6, i32 0, i32 1
  %7 = load i32* %size3, align 4
  %mul = mul nsw i32 %5, %7
  %size4 = getelementptr inbounds %struct.quantum_reg_struct* %reg, i32 0, i32 1
  store i32 %mul, i32* %size4, align 4
  %8 = load %struct.quantum_reg_struct** %reg1.addr, align 8
  %size5 = getelementptr inbounds %struct.quantum_reg_struct* %8, i32 0, i32 1
  %9 = load i32* %size5, align 4
  %10 = load %struct.quantum_reg_struct** %reg2.addr, align 8
  %size6 = getelementptr inbounds %struct.quantum_reg_struct* %10, i32 0, i32 1
  %11 = load i32* %size6, align 4
  %mul7 = mul nsw i32 %9, %11
  %add8 = add nsw i32 %mul7, 2
  %hashw = getelementptr inbounds %struct.quantum_reg_struct* %reg, i32 0, i32 2
  store i32 %add8, i32* %hashw, align 4
  %size9 = getelementptr inbounds %struct.quantum_reg_struct* %reg, i32 0, i32 1
  %12 = load i32* %size9, align 4
  %conv = sext i32 %12 to i64
  %call = call noalias i8* @calloc(i64 %conv, i64 16) #6
  %13 = bitcast i8* %call to %struct.quantum_reg_node_struct*
  %node = getelementptr inbounds %struct.quantum_reg_struct* %reg, i32 0, i32 3
  store %struct.quantum_reg_node_struct* %13, %struct.quantum_reg_node_struct** %node, align 8
  %node10 = getelementptr inbounds %struct.quantum_reg_struct* %reg, i32 0, i32 3
  %14 = load %struct.quantum_reg_node_struct** %node10, align 8
  %tobool = icmp ne %struct.quantum_reg_node_struct* %14, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %size11 = getelementptr inbounds %struct.quantum_reg_struct* %reg, i32 0, i32 1
  %15 = load i32* %size11, align 4
  %call12 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([39 x i8]* @.str145, i32 0, i32 0), i32 %15)
  call void @exit(i32 1) #9
  unreachable

if.end:                                           ; preds = %entry
  %size13 = getelementptr inbounds %struct.quantum_reg_struct* %reg, i32 0, i32 1
  %16 = load i32* %size13, align 4
  %conv14 = sext i32 %16 to i64
  %mul15 = mul i64 %conv14, 16
  %call16 = call i64 @quantum_memman(i64 %mul15)
  %hashw17 = getelementptr inbounds %struct.quantum_reg_struct* %reg, i32 0, i32 2
  %17 = load i32* %hashw17, align 4
  %shl = shl i32 1, %17
  %conv18 = sext i32 %shl to i64
  %call19 = call noalias i8* @calloc(i64 %conv18, i64 4) #6
  %18 = bitcast i8* %call19 to i32*
  %hash = getelementptr inbounds %struct.quantum_reg_struct* %reg, i32 0, i32 4
  store i32* %18, i32** %hash, align 8
  %hash20 = getelementptr inbounds %struct.quantum_reg_struct* %reg, i32 0, i32 4
  %19 = load i32** %hash20, align 8
  %tobool21 = icmp ne i32* %19, null
  br i1 %tobool21, label %if.end26, label %if.then22

if.then22:                                        ; preds = %if.end
  %hashw23 = getelementptr inbounds %struct.quantum_reg_struct* %reg, i32 0, i32 2
  %20 = load i32* %hashw23, align 4
  %shl24 = shl i32 1, %20
  %call25 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([38 x i8]* @.str246, i32 0, i32 0), i32 %shl24)
  call void @exit(i32 1) #9
  unreachable

if.end26:                                         ; preds = %if.end
  %hashw27 = getelementptr inbounds %struct.quantum_reg_struct* %reg, i32 0, i32 2
  %21 = load i32* %hashw27, align 4
  %shl28 = shl i32 1, %21
  %conv29 = sext i32 %shl28 to i64
  %mul30 = mul i64 %conv29, 4
  %call31 = call i64 @quantum_memman(i64 %mul30)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc67, %if.end26
  %22 = load i32* %i, align 4
  %23 = load %struct.quantum_reg_struct** %reg1.addr, align 8
  %size32 = getelementptr inbounds %struct.quantum_reg_struct* %23, i32 0, i32 1
  %24 = load i32* %size32, align 4
  %cmp = icmp slt i32 %22, %24
  br i1 %cmp, label %for.body, label %for.end69

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond34

for.cond34:                                       ; preds = %for.inc, %for.body
  %25 = load i32* %j, align 4
  %26 = load %struct.quantum_reg_struct** %reg2.addr, align 8
  %size35 = getelementptr inbounds %struct.quantum_reg_struct* %26, i32 0, i32 1
  %27 = load i32* %size35, align 4
  %cmp36 = icmp slt i32 %25, %27
  br i1 %cmp36, label %for.body38, label %for.end

for.body38:                                       ; preds = %for.cond34
  %28 = load i32* %i, align 4
  %idxprom = sext i32 %28 to i64
  %29 = load %struct.quantum_reg_struct** %reg1.addr, align 8
  %node39 = getelementptr inbounds %struct.quantum_reg_struct* %29, i32 0, i32 3
  %30 = load %struct.quantum_reg_node_struct** %node39, align 8
  %arrayidx = getelementptr inbounds %struct.quantum_reg_node_struct* %30, i64 %idxprom
  %state = getelementptr inbounds %struct.quantum_reg_node_struct* %arrayidx, i32 0, i32 1
  %31 = load i64* %state, align 8
  %32 = load %struct.quantum_reg_struct** %reg2.addr, align 8
  %width40 = getelementptr inbounds %struct.quantum_reg_struct* %32, i32 0, i32 0
  %33 = load i32* %width40, align 4
  %sh_prom = zext i32 %33 to i64
  %shl41 = shl i64 %31, %sh_prom
  %34 = load i32* %j, align 4
  %idxprom42 = sext i32 %34 to i64
  %35 = load %struct.quantum_reg_struct** %reg2.addr, align 8
  %node43 = getelementptr inbounds %struct.quantum_reg_struct* %35, i32 0, i32 3
  %36 = load %struct.quantum_reg_node_struct** %node43, align 8
  %arrayidx44 = getelementptr inbounds %struct.quantum_reg_node_struct* %36, i64 %idxprom42
  %state45 = getelementptr inbounds %struct.quantum_reg_node_struct* %arrayidx44, i32 0, i32 1
  %37 = load i64* %state45, align 8
  %or = or i64 %shl41, %37
  %38 = load i32* %i, align 4
  %39 = load %struct.quantum_reg_struct** %reg2.addr, align 8
  %size46 = getelementptr inbounds %struct.quantum_reg_struct* %39, i32 0, i32 1
  %40 = load i32* %size46, align 4
  %mul47 = mul nsw i32 %38, %40
  %41 = load i32* %j, align 4
  %add48 = add nsw i32 %mul47, %41
  %idxprom49 = sext i32 %add48 to i64
  %node50 = getelementptr inbounds %struct.quantum_reg_struct* %reg, i32 0, i32 3
  %42 = load %struct.quantum_reg_node_struct** %node50, align 8
  %arrayidx51 = getelementptr inbounds %struct.quantum_reg_node_struct* %42, i64 %idxprom49
  %state52 = getelementptr inbounds %struct.quantum_reg_node_struct* %arrayidx51, i32 0, i32 1
  store i64 %or, i64* %state52, align 8
  %43 = load i32* %i, align 4
  %idxprom53 = sext i32 %43 to i64
  %44 = load %struct.quantum_reg_struct** %reg1.addr, align 8
  %node54 = getelementptr inbounds %struct.quantum_reg_struct* %44, i32 0, i32 3
  %45 = load %struct.quantum_reg_node_struct** %node54, align 8
  %arrayidx55 = getelementptr inbounds %struct.quantum_reg_node_struct* %45, i64 %idxprom53
  %amplitude = getelementptr inbounds %struct.quantum_reg_node_struct* %arrayidx55, i32 0, i32 0
  %amplitude.realp = getelementptr inbounds { float, float }* %amplitude, i32 0, i32 0
  %amplitude.real = load float* %amplitude.realp, align 4
  %amplitude.imagp = getelementptr inbounds { float, float }* %amplitude, i32 0, i32 1
  %amplitude.imag = load float* %amplitude.imagp, align 4
  %46 = load i32* %j, align 4
  %idxprom56 = sext i32 %46 to i64
  %47 = load %struct.quantum_reg_struct** %reg2.addr, align 8
  %node57 = getelementptr inbounds %struct.quantum_reg_struct* %47, i32 0, i32 3
  %48 = load %struct.quantum_reg_node_struct** %node57, align 8
  %arrayidx58 = getelementptr inbounds %struct.quantum_reg_node_struct* %48, i64 %idxprom56
  %amplitude59 = getelementptr inbounds %struct.quantum_reg_node_struct* %arrayidx58, i32 0, i32 0
  %amplitude59.realp = getelementptr inbounds { float, float }* %amplitude59, i32 0, i32 0
  %amplitude59.real = load float* %amplitude59.realp, align 4
  %amplitude59.imagp = getelementptr inbounds { float, float }* %amplitude59, i32 0, i32 1
  %amplitude59.imag = load float* %amplitude59.imagp, align 4
  %mul.rl = fmul float %amplitude.real, %amplitude59.real
  %mul.rr = fmul float %amplitude.imag, %amplitude59.imag
  %mul.r = fsub float %mul.rl, %mul.rr
  %mul.il = fmul float %amplitude.imag, %amplitude59.real
  %mul.ir = fmul float %amplitude.real, %amplitude59.imag
  %mul.i = fadd float %mul.il, %mul.ir
  %49 = load i32* %i, align 4
  %50 = load %struct.quantum_reg_struct** %reg2.addr, align 8
  %size60 = getelementptr inbounds %struct.quantum_reg_struct* %50, i32 0, i32 1
  %51 = load i32* %size60, align 4
  %mul61 = mul nsw i32 %49, %51
  %52 = load i32* %j, align 4
  %add62 = add nsw i32 %mul61, %52
  %idxprom63 = sext i32 %add62 to i64
  %node64 = getelementptr inbounds %struct.quantum_reg_struct* %reg, i32 0, i32 3
  %53 = load %struct.quantum_reg_node_struct** %node64, align 8
  %arrayidx65 = getelementptr inbounds %struct.quantum_reg_node_struct* %53, i64 %idxprom63
  %amplitude66 = getelementptr inbounds %struct.quantum_reg_node_struct* %arrayidx65, i32 0, i32 0
  %real = getelementptr inbounds { float, float }* %amplitude66, i32 0, i32 0
  %imag = getelementptr inbounds { float, float }* %amplitude66, i32 0, i32 1
  store float %mul.r, float* %real, align 4
  store float %mul.i, float* %imag, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body38
  %54 = load i32* %j, align 4
  %inc = add nsw i32 %54, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond34

for.end:                                          ; preds = %for.cond34
  br label %for.inc67

for.inc67:                                        ; preds = %for.end
  %55 = load i32* %i, align 4
  %inc68 = add nsw i32 %55, 1
  store i32 %inc68, i32* %i, align 4
  br label %for.cond

for.end69:                                        ; preds = %for.cond
  %56 = bitcast %struct.quantum_reg_struct* %agg.result to i8*
  %57 = bitcast %struct.quantum_reg_struct* %reg to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %56, i8* %57, i64 32, i32 8, i1 false)
  ret void
}

; Function Attrs: nounwind uwtable
define void @quantum_state_collapse(%struct.quantum_reg_struct* noalias sret %agg.result, i32 %pos, i32 %value, %struct.quantum_reg_struct* byval align 8 %reg) #0 {
entry:
  %pos.addr = alloca i32, align 4
  %value.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %size = alloca i32, align 4
  %d = alloca double, align 8
  %lpat = alloca i64, align 8
  %rpat = alloca i64, align 8
  %pos2 = alloca i64, align 8
  %out = alloca %struct.quantum_reg_struct, align 8
  %coerce = alloca { float, float }, align 4
  store i32 %pos, i32* %pos.addr, align 4
  store i32 %value, i32* %value.addr, align 4
  store i32 0, i32* %size, align 4
  store double 0.000000e+00, double* %d, align 8
  store i64 0, i64* %lpat, align 8
  store i64 0, i64* %rpat, align 8
  %0 = load i32* %pos.addr, align 4
  %sh_prom = zext i32 %0 to i64
  %shl = shl i64 1, %sh_prom
  store i64 %shl, i64* %pos2, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32* %i, align 4
  %size1 = getelementptr inbounds %struct.quantum_reg_struct* %reg, i32 0, i32 1
  %2 = load i32* %size1, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %node = getelementptr inbounds %struct.quantum_reg_struct* %reg, i32 0, i32 3
  %4 = load %struct.quantum_reg_node_struct** %node, align 8
  %arrayidx = getelementptr inbounds %struct.quantum_reg_node_struct* %4, i64 %idxprom
  %state = getelementptr inbounds %struct.quantum_reg_node_struct* %arrayidx, i32 0, i32 1
  %5 = load i64* %state, align 8
  %6 = load i64* %pos2, align 8
  %and = and i64 %5, %6
  %tobool = icmp ne i64 %and, 0
  br i1 %tobool, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %for.body
  %7 = load i32* %value.addr, align 4
  %tobool2 = icmp ne i32 %7, 0
  br i1 %tobool2, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %for.body
  %8 = load i32* %i, align 4
  %idxprom3 = sext i32 %8 to i64
  %node4 = getelementptr inbounds %struct.quantum_reg_struct* %reg, i32 0, i32 3
  %9 = load %struct.quantum_reg_node_struct** %node4, align 8
  %arrayidx5 = getelementptr inbounds %struct.quantum_reg_node_struct* %9, i64 %idxprom3
  %state6 = getelementptr inbounds %struct.quantum_reg_node_struct* %arrayidx5, i32 0, i32 1
  %10 = load i64* %state6, align 8
  %11 = load i64* %pos2, align 8
  %and7 = and i64 %10, %11
  %tobool8 = icmp ne i64 %and7, 0
  br i1 %tobool8, label %if.end, label %land.lhs.true9

land.lhs.true9:                                   ; preds = %lor.lhs.false
  %12 = load i32* %value.addr, align 4
  %tobool10 = icmp ne i32 %12, 0
  br i1 %tobool10, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true9, %land.lhs.true
  %13 = load i32* %i, align 4
  %idxprom11 = sext i32 %13 to i64
  %node12 = getelementptr inbounds %struct.quantum_reg_struct* %reg, i32 0, i32 3
  %14 = load %struct.quantum_reg_node_struct** %node12, align 8
  %arrayidx13 = getelementptr inbounds %struct.quantum_reg_node_struct* %14, i64 %idxprom11
  %amplitude = getelementptr inbounds %struct.quantum_reg_node_struct* %arrayidx13, i32 0, i32 0
  %amplitude.realp = getelementptr inbounds { float, float }* %amplitude, i32 0, i32 0
  %amplitude.real = load float* %amplitude.realp, align 4
  %amplitude.imagp = getelementptr inbounds { float, float }* %amplitude, i32 0, i32 1
  %amplitude.imag = load float* %amplitude.imagp, align 4
  %real = getelementptr inbounds { float, float }* %coerce, i32 0, i32 0
  %imag = getelementptr inbounds { float, float }* %coerce, i32 0, i32 1
  store float %amplitude.real, float* %real, align 4
  store float %amplitude.imag, float* %imag, align 4
  %15 = bitcast { float, float }* %coerce to <2 x float>*
  %16 = load <2 x float>* %15, align 1
  %call = call float @quantum_prob_inline61(<2 x float> %16)
  %conv = fpext float %call to double
  %17 = load double* %d, align 8
  %add = fadd double %17, %conv
  store double %add, double* %d, align 8
  %18 = load i32* %size, align 4
  %inc = add nsw i32 %18, 1
  store i32 %inc, i32* %size, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true9, %lor.lhs.false
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %19 = load i32* %i, align 4
  %inc14 = add nsw i32 %19, 1
  store i32 %inc14, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %width = getelementptr inbounds %struct.quantum_reg_struct* %reg, i32 0, i32 0
  %20 = load i32* %width, align 4
  %sub = sub nsw i32 %20, 1
  %width15 = getelementptr inbounds %struct.quantum_reg_struct* %out, i32 0, i32 0
  store i32 %sub, i32* %width15, align 4
  %21 = load i32* %size, align 4
  %size16 = getelementptr inbounds %struct.quantum_reg_struct* %out, i32 0, i32 1
  store i32 %21, i32* %size16, align 4
  %22 = load i32* %size, align 4
  %conv17 = sext i32 %22 to i64
  %call18 = call noalias i8* @calloc(i64 %conv17, i64 16) #6
  %23 = bitcast i8* %call18 to %struct.quantum_reg_node_struct*
  %node19 = getelementptr inbounds %struct.quantum_reg_struct* %out, i32 0, i32 3
  store %struct.quantum_reg_node_struct* %23, %struct.quantum_reg_node_struct** %node19, align 8
  %node20 = getelementptr inbounds %struct.quantum_reg_struct* %out, i32 0, i32 3
  %24 = load %struct.quantum_reg_node_struct** %node20, align 8
  %tobool21 = icmp ne %struct.quantum_reg_node_struct* %24, null
  br i1 %tobool21, label %if.end24, label %if.then22

if.then22:                                        ; preds = %for.end
  %25 = load i32* %size, align 4
  %call23 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([50 x i8]* @.str11, i32 0, i32 0), i32 %25)
  call void @exit(i32 1) #9
  unreachable

if.end24:                                         ; preds = %for.end
  %26 = load i32* %size, align 4
  %conv25 = sext i32 %26 to i64
  %mul = mul i64 %conv25, 16
  %call26 = call i64 @quantum_memman(i64 %mul)
  %hashw = getelementptr inbounds %struct.quantum_reg_struct* %reg, i32 0, i32 2
  %27 = load i32* %hashw, align 4
  %hashw27 = getelementptr inbounds %struct.quantum_reg_struct* %out, i32 0, i32 2
  store i32 %27, i32* %hashw27, align 4
  %hash = getelementptr inbounds %struct.quantum_reg_struct* %reg, i32 0, i32 4
  %28 = load i32** %hash, align 8
  %hash28 = getelementptr inbounds %struct.quantum_reg_struct* %out, i32 0, i32 4
  store i32* %28, i32** %hash28, align 8
  store i32 0, i32* %i, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond29

for.cond29:                                       ; preds = %for.inc99, %if.end24
  %29 = load i32* %i, align 4
  %size30 = getelementptr inbounds %struct.quantum_reg_struct* %reg, i32 0, i32 1
  %30 = load i32* %size30, align 4
  %cmp31 = icmp slt i32 %29, %30
  br i1 %cmp31, label %for.body33, label %for.end101

for.body33:                                       ; preds = %for.cond29
  %31 = load i32* %i, align 4
  %idxprom34 = sext i32 %31 to i64
  %node35 = getelementptr inbounds %struct.quantum_reg_struct* %reg, i32 0, i32 3
  %32 = load %struct.quantum_reg_node_struct** %node35, align 8
  %arrayidx36 = getelementptr inbounds %struct.quantum_reg_node_struct* %32, i64 %idxprom34
  %state37 = getelementptr inbounds %struct.quantum_reg_node_struct* %arrayidx36, i32 0, i32 1
  %33 = load i64* %state37, align 8
  %34 = load i64* %pos2, align 8
  %and38 = and i64 %33, %34
  %tobool39 = icmp ne i64 %and38, 0
  br i1 %tobool39, label %land.lhs.true40, label %lor.lhs.false42

land.lhs.true40:                                  ; preds = %for.body33
  %35 = load i32* %value.addr, align 4
  %tobool41 = icmp ne i32 %35, 0
  br i1 %tobool41, label %if.then51, label %lor.lhs.false42

lor.lhs.false42:                                  ; preds = %land.lhs.true40, %for.body33
  %36 = load i32* %i, align 4
  %idxprom43 = sext i32 %36 to i64
  %node44 = getelementptr inbounds %struct.quantum_reg_struct* %reg, i32 0, i32 3
  %37 = load %struct.quantum_reg_node_struct** %node44, align 8
  %arrayidx45 = getelementptr inbounds %struct.quantum_reg_node_struct* %37, i64 %idxprom43
  %state46 = getelementptr inbounds %struct.quantum_reg_node_struct* %arrayidx45, i32 0, i32 1
  %38 = load i64* %state46, align 8
  %39 = load i64* %pos2, align 8
  %and47 = and i64 %38, %39
  %tobool48 = icmp ne i64 %and47, 0
  br i1 %tobool48, label %if.end98, label %land.lhs.true49

land.lhs.true49:                                  ; preds = %lor.lhs.false42
  %40 = load i32* %value.addr, align 4
  %tobool50 = icmp ne i32 %40, 0
  br i1 %tobool50, label %if.end98, label %if.then51

if.then51:                                        ; preds = %land.lhs.true49, %land.lhs.true40
  store i32 0, i32* %k, align 4
  store i64 0, i64* %rpat, align 8
  br label %for.cond52

for.cond52:                                       ; preds = %for.inc59, %if.then51
  %41 = load i32* %k, align 4
  %42 = load i32* %pos.addr, align 4
  %cmp53 = icmp slt i32 %41, %42
  br i1 %cmp53, label %for.body55, label %for.end61

for.body55:                                       ; preds = %for.cond52
  %43 = load i32* %k, align 4
  %sh_prom56 = zext i32 %43 to i64
  %shl57 = shl i64 1, %sh_prom56
  %44 = load i64* %rpat, align 8
  %add58 = add i64 %44, %shl57
  store i64 %add58, i64* %rpat, align 8
  br label %for.inc59

for.inc59:                                        ; preds = %for.body55
  %45 = load i32* %k, align 4
  %inc60 = add nsw i32 %45, 1
  store i32 %inc60, i32* %k, align 4
  br label %for.cond52

for.end61:                                        ; preds = %for.cond52
  %46 = load i32* %i, align 4
  %idxprom62 = sext i32 %46 to i64
  %node63 = getelementptr inbounds %struct.quantum_reg_struct* %reg, i32 0, i32 3
  %47 = load %struct.quantum_reg_node_struct** %node63, align 8
  %arrayidx64 = getelementptr inbounds %struct.quantum_reg_node_struct* %47, i64 %idxprom62
  %state65 = getelementptr inbounds %struct.quantum_reg_node_struct* %arrayidx64, i32 0, i32 1
  %48 = load i64* %state65, align 8
  %49 = load i64* %rpat, align 8
  %and66 = and i64 %49, %48
  store i64 %and66, i64* %rpat, align 8
  store i32 63, i32* %k, align 4
  store i64 0, i64* %lpat, align 8
  br label %for.cond67

for.cond67:                                       ; preds = %for.inc74, %for.end61
  %50 = load i32* %k, align 4
  %51 = load i32* %pos.addr, align 4
  %cmp68 = icmp sgt i32 %50, %51
  br i1 %cmp68, label %for.body70, label %for.end75

for.body70:                                       ; preds = %for.cond67
  %52 = load i32* %k, align 4
  %sh_prom71 = zext i32 %52 to i64
  %shl72 = shl i64 1, %sh_prom71
  %53 = load i64* %lpat, align 8
  %add73 = add i64 %53, %shl72
  store i64 %add73, i64* %lpat, align 8
  br label %for.inc74

for.inc74:                                        ; preds = %for.body70
  %54 = load i32* %k, align 4
  %dec = add nsw i32 %54, -1
  store i32 %dec, i32* %k, align 4
  br label %for.cond67

for.end75:                                        ; preds = %for.cond67
  %55 = load i32* %i, align 4
  %idxprom76 = sext i32 %55 to i64
  %node77 = getelementptr inbounds %struct.quantum_reg_struct* %reg, i32 0, i32 3
  %56 = load %struct.quantum_reg_node_struct** %node77, align 8
  %arrayidx78 = getelementptr inbounds %struct.quantum_reg_node_struct* %56, i64 %idxprom76
  %state79 = getelementptr inbounds %struct.quantum_reg_node_struct* %arrayidx78, i32 0, i32 1
  %57 = load i64* %state79, align 8
  %58 = load i64* %lpat, align 8
  %and80 = and i64 %58, %57
  store i64 %and80, i64* %lpat, align 8
  %59 = load i64* %lpat, align 8
  %shr = lshr i64 %59, 1
  %60 = load i64* %rpat, align 8
  %or = or i64 %shr, %60
  %61 = load i32* %j, align 4
  %idxprom81 = sext i32 %61 to i64
  %node82 = getelementptr inbounds %struct.quantum_reg_struct* %out, i32 0, i32 3
  %62 = load %struct.quantum_reg_node_struct** %node82, align 8
  %arrayidx83 = getelementptr inbounds %struct.quantum_reg_node_struct* %62, i64 %idxprom81
  %state84 = getelementptr inbounds %struct.quantum_reg_node_struct* %arrayidx83, i32 0, i32 1
  store i64 %or, i64* %state84, align 8
  %63 = load i32* %i, align 4
  %idxprom85 = sext i32 %63 to i64
  %node86 = getelementptr inbounds %struct.quantum_reg_struct* %reg, i32 0, i32 3
  %64 = load %struct.quantum_reg_node_struct** %node86, align 8
  %arrayidx87 = getelementptr inbounds %struct.quantum_reg_node_struct* %64, i64 %idxprom85
  %amplitude88 = getelementptr inbounds %struct.quantum_reg_node_struct* %arrayidx87, i32 0, i32 0
  %amplitude88.realp = getelementptr inbounds { float, float }* %amplitude88, i32 0, i32 0
  %amplitude88.real = load float* %amplitude88.realp, align 4
  %amplitude88.imagp = getelementptr inbounds { float, float }* %amplitude88, i32 0, i32 1
  %amplitude88.imag = load float* %amplitude88.imagp, align 4
  %mul.rl = fmul float %amplitude88.real, 1.000000e+00
  %mul.rr = fmul float %amplitude88.imag, 0.000000e+00
  %mul.r = fsub float %mul.rl, %mul.rr
  %mul.il = fmul float %amplitude88.imag, 1.000000e+00
  %mul.ir = fmul float %amplitude88.real, 0.000000e+00
  %mul.i = fadd float %mul.il, %mul.ir
  %65 = load double* %d, align 8
  %call89 = call double @sqrt(double %65) #6
  %conv90 = fptrunc double %call89 to float
  %66 = fmul float %mul.r, %conv90
  %67 = fmul float %mul.i, 0.000000e+00
  %68 = fadd float %66, %67
  %69 = fmul float %conv90, %conv90
  %70 = fadd float %69, 0.000000e+00
  %71 = fmul float %mul.i, %conv90
  %72 = fmul float %mul.r, 0.000000e+00
  %73 = fsub float %71, %72
  %74 = fdiv float %68, %70
  %75 = fdiv float %73, %70
  %76 = load i32* %j, align 4
  %idxprom91 = sext i32 %76 to i64
  %node92 = getelementptr inbounds %struct.quantum_reg_struct* %out, i32 0, i32 3
  %77 = load %struct.quantum_reg_node_struct** %node92, align 8
  %arrayidx93 = getelementptr inbounds %struct.quantum_reg_node_struct* %77, i64 %idxprom91
  %amplitude94 = getelementptr inbounds %struct.quantum_reg_node_struct* %arrayidx93, i32 0, i32 0
  %real95 = getelementptr inbounds { float, float }* %amplitude94, i32 0, i32 0
  %imag96 = getelementptr inbounds { float, float }* %amplitude94, i32 0, i32 1
  store float %74, float* %real95, align 4
  store float %75, float* %imag96, align 4
  %78 = load i32* %j, align 4
  %inc97 = add nsw i32 %78, 1
  store i32 %inc97, i32* %j, align 4
  br label %if.end98

if.end98:                                         ; preds = %for.end75, %land.lhs.true49, %lor.lhs.false42
  br label %for.inc99

for.inc99:                                        ; preds = %if.end98
  %79 = load i32* %i, align 4
  %inc100 = add nsw i32 %79, 1
  store i32 %inc100, i32* %i, align 4
  br label %for.cond29

for.end101:                                       ; preds = %for.cond29
  %80 = bitcast %struct.quantum_reg_struct* %agg.result to i8*
  %81 = bitcast %struct.quantum_reg_struct* %out to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %80, i8* %81, i64 32, i32 8, i1 false)
  ret void
}

; Function Attrs: nounwind uwtable
define <2 x float> @quantum_dot_product(%struct.quantum_reg_struct* %reg1, %struct.quantum_reg_struct* %reg2) #0 {
entry:
  %retval = alloca { float, float }, align 4
  %reg1.addr = alloca %struct.quantum_reg_struct*, align 8
  %reg2.addr = alloca %struct.quantum_reg_struct*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %f = alloca { float, float }, align 4
  %coerce = alloca { float, float }, align 4
  %coerce24 = alloca { float, float }, align 4
  store %struct.quantum_reg_struct* %reg1, %struct.quantum_reg_struct** %reg1.addr, align 8
  store %struct.quantum_reg_struct* %reg2, %struct.quantum_reg_struct** %reg2.addr, align 8
  %real = getelementptr inbounds { float, float }* %f, i32 0, i32 0
  %imag = getelementptr inbounds { float, float }* %f, i32 0, i32 1
  store float 0.000000e+00, float* %real, align 4
  store float 0.000000e+00, float* %imag, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32* %i, align 4
  %1 = load %struct.quantum_reg_struct** %reg2.addr, align 8
  %hashw = getelementptr inbounds %struct.quantum_reg_struct* %1, i32 0, i32 2
  %2 = load i32* %hashw, align 4
  %shl = shl i32 1, %2
  %cmp = icmp slt i32 %0, %shl
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load %struct.quantum_reg_struct** %reg2.addr, align 8
  %hash = getelementptr inbounds %struct.quantum_reg_struct* %4, i32 0, i32 4
  %5 = load i32** %hash, align 8
  %arrayidx = getelementptr inbounds i32* %5, i64 %idxprom
  store i32 0, i32* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32* %i, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc6, %for.end
  %7 = load i32* %i, align 4
  %8 = load %struct.quantum_reg_struct** %reg2.addr, align 8
  %size = getelementptr inbounds %struct.quantum_reg_struct* %8, i32 0, i32 1
  %9 = load i32* %size, align 4
  %cmp2 = icmp slt i32 %7, %9
  br i1 %cmp2, label %for.body3, label %for.end8

for.body3:                                        ; preds = %for.cond1
  %10 = load i32* %i, align 4
  %idxprom4 = sext i32 %10 to i64
  %11 = load %struct.quantum_reg_struct** %reg2.addr, align 8
  %node = getelementptr inbounds %struct.quantum_reg_struct* %11, i32 0, i32 3
  %12 = load %struct.quantum_reg_node_struct** %node, align 8
  %arrayidx5 = getelementptr inbounds %struct.quantum_reg_node_struct* %12, i64 %idxprom4
  %state = getelementptr inbounds %struct.quantum_reg_node_struct* %arrayidx5, i32 0, i32 1
  %13 = load i64* %state, align 8
  %14 = load i32* %i, align 4
  %15 = load %struct.quantum_reg_struct** %reg2.addr, align 8
  call void @quantum_add_hash62(i64 %13, i32 %14, %struct.quantum_reg_struct* %15)
  br label %for.inc6

for.inc6:                                         ; preds = %for.body3
  %16 = load i32* %i, align 4
  %inc7 = add nsw i32 %16, 1
  store i32 %inc7, i32* %i, align 4
  br label %for.cond1

for.end8:                                         ; preds = %for.cond1
  store i32 0, i32* %i, align 4
  br label %for.cond9

for.cond9:                                        ; preds = %for.inc31, %for.end8
  %17 = load i32* %i, align 4
  %18 = load %struct.quantum_reg_struct** %reg1.addr, align 8
  %size10 = getelementptr inbounds %struct.quantum_reg_struct* %18, i32 0, i32 1
  %19 = load i32* %size10, align 4
  %cmp11 = icmp slt i32 %17, %19
  br i1 %cmp11, label %for.body12, label %for.end33

for.body12:                                       ; preds = %for.cond9
  %20 = load i32* %i, align 4
  %idxprom13 = sext i32 %20 to i64
  %21 = load %struct.quantum_reg_struct** %reg1.addr, align 8
  %node14 = getelementptr inbounds %struct.quantum_reg_struct* %21, i32 0, i32 3
  %22 = load %struct.quantum_reg_node_struct** %node14, align 8
  %arrayidx15 = getelementptr inbounds %struct.quantum_reg_node_struct* %22, i64 %idxprom13
  %state16 = getelementptr inbounds %struct.quantum_reg_node_struct* %arrayidx15, i32 0, i32 1
  %23 = load i64* %state16, align 8
  %24 = load %struct.quantum_reg_struct** %reg2.addr, align 8
  %call = call i32 @quantum_get_state63(i64 %23, %struct.quantum_reg_struct* byval align 8 %24)
  store i32 %call, i32* %j, align 4
  %25 = load i32* %j, align 4
  %cmp17 = icmp sgt i32 %25, -1
  br i1 %cmp17, label %if.then, label %if.end

if.then:                                          ; preds = %for.body12
  %26 = load i32* %i, align 4
  %idxprom18 = sext i32 %26 to i64
  %27 = load %struct.quantum_reg_struct** %reg1.addr, align 8
  %node19 = getelementptr inbounds %struct.quantum_reg_struct* %27, i32 0, i32 3
  %28 = load %struct.quantum_reg_node_struct** %node19, align 8
  %arrayidx20 = getelementptr inbounds %struct.quantum_reg_node_struct* %28, i64 %idxprom18
  %amplitude = getelementptr inbounds %struct.quantum_reg_node_struct* %arrayidx20, i32 0, i32 0
  %amplitude.realp = getelementptr inbounds { float, float }* %amplitude, i32 0, i32 0
  %amplitude.real = load float* %amplitude.realp, align 4
  %amplitude.imagp = getelementptr inbounds { float, float }* %amplitude, i32 0, i32 1
  %amplitude.imag = load float* %amplitude.imagp, align 4
  %real21 = getelementptr inbounds { float, float }* %coerce, i32 0, i32 0
  %imag22 = getelementptr inbounds { float, float }* %coerce, i32 0, i32 1
  store float %amplitude.real, float* %real21, align 4
  store float %amplitude.imag, float* %imag22, align 4
  %29 = bitcast { float, float }* %coerce to <2 x float>*
  %30 = load <2 x float>* %29, align 1
  %call23 = call <2 x float> @quantum_conj(<2 x float> %30)
  %31 = bitcast { float, float }* %coerce24 to <2 x float>*
  store <2 x float> %call23, <2 x float>* %31, align 1
  %coerce24.realp = getelementptr inbounds { float, float }* %coerce24, i32 0, i32 0
  %coerce24.real = load float* %coerce24.realp, align 4
  %coerce24.imagp = getelementptr inbounds { float, float }* %coerce24, i32 0, i32 1
  %coerce24.imag = load float* %coerce24.imagp, align 4
  %32 = load i32* %j, align 4
  %idxprom25 = sext i32 %32 to i64
  %33 = load %struct.quantum_reg_struct** %reg2.addr, align 8
  %node26 = getelementptr inbounds %struct.quantum_reg_struct* %33, i32 0, i32 3
  %34 = load %struct.quantum_reg_node_struct** %node26, align 8
  %arrayidx27 = getelementptr inbounds %struct.quantum_reg_node_struct* %34, i64 %idxprom25
  %amplitude28 = getelementptr inbounds %struct.quantum_reg_node_struct* %arrayidx27, i32 0, i32 0
  %amplitude28.realp = getelementptr inbounds { float, float }* %amplitude28, i32 0, i32 0
  %amplitude28.real = load float* %amplitude28.realp, align 4
  %amplitude28.imagp = getelementptr inbounds { float, float }* %amplitude28, i32 0, i32 1
  %amplitude28.imag = load float* %amplitude28.imagp, align 4
  %mul.rl = fmul float %coerce24.real, %amplitude28.real
  %mul.rr = fmul float %coerce24.imag, %amplitude28.imag
  %mul.r = fsub float %mul.rl, %mul.rr
  %mul.il = fmul float %coerce24.imag, %amplitude28.real
  %mul.ir = fmul float %coerce24.real, %amplitude28.imag
  %mul.i = fadd float %mul.il, %mul.ir
  %f.realp = getelementptr inbounds { float, float }* %f, i32 0, i32 0
  %f.real = load float* %f.realp, align 4
  %f.imagp = getelementptr inbounds { float, float }* %f, i32 0, i32 1
  %f.imag = load float* %f.imagp, align 4
  %add.r = fadd float %f.real, %mul.r
  %add.i = fadd float %f.imag, %mul.i
  %real29 = getelementptr inbounds { float, float }* %f, i32 0, i32 0
  %imag30 = getelementptr inbounds { float, float }* %f, i32 0, i32 1
  store float %add.r, float* %real29, align 4
  store float %add.i, float* %imag30, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body12
  br label %for.inc31

for.inc31:                                        ; preds = %if.end
  %35 = load i32* %i, align 4
  %inc32 = add nsw i32 %35, 1
  store i32 %inc32, i32* %i, align 4
  br label %for.cond9

for.end33:                                        ; preds = %for.cond9
  %f.realp34 = getelementptr inbounds { float, float }* %f, i32 0, i32 0
  %f.real35 = load float* %f.realp34, align 4
  %f.imagp36 = getelementptr inbounds { float, float }* %f, i32 0, i32 1
  %f.imag37 = load float* %f.imagp36, align 4
  %real38 = getelementptr inbounds { float, float }* %retval, i32 0, i32 0
  %imag39 = getelementptr inbounds { float, float }* %retval, i32 0, i32 1
  store float %f.real35, float* %real38, align 4
  store float %f.imag37, float* %imag39, align 4
  %36 = bitcast { float, float }* %retval to <2 x float>*
  %37 = load <2 x float>* %36, align 1
  ret <2 x float> %37
}

; Function Attrs: inlinehint nounwind uwtable
define internal float @quantum_real59(<2 x float> %a.coerce) #3 {
entry:
  %a = alloca { float, float }, align 8
  %p = alloca float*, align 8
  %0 = bitcast { float, float }* %a to <2 x float>*
  store <2 x float> %a.coerce, <2 x float>* %0, align 1
  %1 = bitcast { float, float }* %a to float*
  store float* %1, float** %p, align 8
  %2 = load float** %p, align 8
  %arrayidx = getelementptr inbounds float* %2, i64 0
  %3 = load float* %arrayidx, align 4
  ret float %3
}

; Function Attrs: inlinehint nounwind uwtable
define internal float @quantum_imag60(<2 x float> %a.coerce) #3 {
entry:
  %a = alloca { float, float }, align 8
  %p = alloca float*, align 8
  %0 = bitcast { float, float }* %a to <2 x float>*
  store <2 x float> %a.coerce, <2 x float>* %0, align 1
  %1 = bitcast { float, float }* %a to float*
  store float* %1, float** %p, align 8
  %2 = load float** %p, align 8
  %arrayidx = getelementptr inbounds float* %2, i64 1
  %3 = load float* %arrayidx, align 4
  ret float %3
}

; Function Attrs: inlinehint nounwind uwtable
define internal float @quantum_prob_inline61(<2 x float> %a.coerce) #3 {
entry:
  %a = alloca { float, float }, align 8
  %r = alloca float, align 4
  %i = alloca float, align 4
  %coerce = alloca { float, float }, align 4
  %coerce5 = alloca { float, float }, align 4
  %0 = bitcast { float, float }* %a to <2 x float>*
  store <2 x float> %a.coerce, <2 x float>* %0, align 1
  %a.realp = getelementptr inbounds { float, float }* %a, i32 0, i32 0
  %a.real = load float* %a.realp, align 4
  %a.imagp = getelementptr inbounds { float, float }* %a, i32 0, i32 1
  %a.imag = load float* %a.imagp, align 4
  %real = getelementptr inbounds { float, float }* %coerce, i32 0, i32 0
  %imag = getelementptr inbounds { float, float }* %coerce, i32 0, i32 1
  store float %a.real, float* %real, align 4
  store float %a.imag, float* %imag, align 4
  %1 = bitcast { float, float }* %coerce to <2 x float>*
  %2 = load <2 x float>* %1, align 1
  %call = call float @quantum_real59(<2 x float> %2)
  store float %call, float* %r, align 4
  %a.realp1 = getelementptr inbounds { float, float }* %a, i32 0, i32 0
  %a.real2 = load float* %a.realp1, align 4
  %a.imagp3 = getelementptr inbounds { float, float }* %a, i32 0, i32 1
  %a.imag4 = load float* %a.imagp3, align 4
  %real6 = getelementptr inbounds { float, float }* %coerce5, i32 0, i32 0
  %imag7 = getelementptr inbounds { float, float }* %coerce5, i32 0, i32 1
  store float %a.real2, float* %real6, align 4
  store float %a.imag4, float* %imag7, align 4
  %3 = bitcast { float, float }* %coerce5 to <2 x float>*
  %4 = load <2 x float>* %3, align 1
  %call8 = call float @quantum_imag60(<2 x float> %4)
  store float %call8, float* %i, align 4
  %5 = load float* %r, align 4
  %6 = load float* %r, align 4
  %mul = fmul float %5, %6
  %7 = load float* %i, align 4
  %8 = load float* %i, align 4
  %mul9 = fmul float %7, %8
  %add = fadd float %mul, %mul9
  ret float %add
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @quantum_add_hash62(i64 %a, i32 %pos, %struct.quantum_reg_struct* %reg) #3 {
entry:
  %a.addr = alloca i64, align 8
  %pos.addr = alloca i32, align 4
  %reg.addr = alloca %struct.quantum_reg_struct*, align 8
  %i = alloca i32, align 4
  store i64 %a, i64* %a.addr, align 8
  store i32 %pos, i32* %pos.addr, align 4
  store %struct.quantum_reg_struct* %reg, %struct.quantum_reg_struct** %reg.addr, align 8
  %0 = load i64* %a.addr, align 8
  %1 = load %struct.quantum_reg_struct** %reg.addr, align 8
  %hashw = getelementptr inbounds %struct.quantum_reg_struct* %1, i32 0, i32 2
  %2 = load i32* %hashw, align 4
  %call = call i32 @quantum_hash6464(i64 %0, i32 %2)
  store i32 %call, i32* %i, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %3 = load i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load %struct.quantum_reg_struct** %reg.addr, align 8
  %hash = getelementptr inbounds %struct.quantum_reg_struct* %4, i32 0, i32 4
  %5 = load i32** %hash, align 8
  %arrayidx = getelementptr inbounds i32* %5, i64 %idxprom
  %6 = load i32* %arrayidx, align 4
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %7 = load i32* %i, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %i, align 4
  %8 = load i32* %i, align 4
  %9 = load %struct.quantum_reg_struct** %reg.addr, align 8
  %hashw1 = getelementptr inbounds %struct.quantum_reg_struct* %9, i32 0, i32 2
  %10 = load i32* %hashw1, align 4
  %shl = shl i32 1, %10
  %cmp = icmp eq i32 %8, %shl
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  store i32 0, i32* %i, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %11 = load i32* %pos.addr, align 4
  %add = add nsw i32 %11, 1
  %12 = load i32* %i, align 4
  %idxprom2 = sext i32 %12 to i64
  %13 = load %struct.quantum_reg_struct** %reg.addr, align 8
  %hash3 = getelementptr inbounds %struct.quantum_reg_struct* %13, i32 0, i32 4
  %14 = load i32** %hash3, align 8
  %arrayidx4 = getelementptr inbounds i32* %14, i64 %idxprom2
  store i32 %add, i32* %arrayidx4, align 4
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @quantum_get_state63(i64 %a, %struct.quantum_reg_struct* byval align 8 %reg) #3 {
entry:
  %retval = alloca i32, align 4
  %a.addr = alloca i64, align 8
  %i = alloca i32, align 4
  store i64 %a, i64* %a.addr, align 8
  %0 = load i64* %a.addr, align 8
  %hashw = getelementptr inbounds %struct.quantum_reg_struct* %reg, i32 0, i32 2
  %1 = load i32* %hashw, align 4
  %call = call i32 @quantum_hash6464(i64 %0, i32 %1)
  store i32 %call, i32* %i, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end13, %entry
  %2 = load i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %hash = getelementptr inbounds %struct.quantum_reg_struct* %reg, i32 0, i32 4
  %3 = load i32** %hash, align 8
  %arrayidx = getelementptr inbounds i32* %3, i64 %idxprom
  %4 = load i32* %arrayidx, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %5 = load i32* %i, align 4
  %idxprom1 = sext i32 %5 to i64
  %hash2 = getelementptr inbounds %struct.quantum_reg_struct* %reg, i32 0, i32 4
  %6 = load i32** %hash2, align 8
  %arrayidx3 = getelementptr inbounds i32* %6, i64 %idxprom1
  %7 = load i32* %arrayidx3, align 4
  %sub = sub nsw i32 %7, 1
  %idxprom4 = sext i32 %sub to i64
  %node = getelementptr inbounds %struct.quantum_reg_struct* %reg, i32 0, i32 3
  %8 = load %struct.quantum_reg_node_struct** %node, align 8
  %arrayidx5 = getelementptr inbounds %struct.quantum_reg_node_struct* %8, i64 %idxprom4
  %state = getelementptr inbounds %struct.quantum_reg_node_struct* %arrayidx5, i32 0, i32 1
  %9 = load i64* %state, align 8
  %10 = load i64* %a.addr, align 8
  %cmp = icmp eq i64 %9, %10
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %11 = load i32* %i, align 4
  %idxprom6 = sext i32 %11 to i64
  %hash7 = getelementptr inbounds %struct.quantum_reg_struct* %reg, i32 0, i32 4
  %12 = load i32** %hash7, align 8
  %arrayidx8 = getelementptr inbounds i32* %12, i64 %idxprom6
  %13 = load i32* %arrayidx8, align 4
  %sub9 = sub nsw i32 %13, 1
  store i32 %sub9, i32* %retval
  br label %return

if.end:                                           ; preds = %while.body
  %14 = load i32* %i, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* %i, align 4
  %15 = load i32* %i, align 4
  %hashw10 = getelementptr inbounds %struct.quantum_reg_struct* %reg, i32 0, i32 2
  %16 = load i32* %hashw10, align 4
  %shl = shl i32 1, %16
  %cmp11 = icmp eq i32 %15, %shl
  br i1 %cmp11, label %if.then12, label %if.end13

if.then12:                                        ; preds = %if.end
  store i32 0, i32* %i, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.then12, %if.end
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i32 -1, i32* %retval
  br label %return

return:                                           ; preds = %while.end, %if.then
  %17 = load i32* %retval
  ret i32 %17
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @quantum_hash6464(i64 %key, i32 %width) #3 {
entry:
  %key.addr = alloca i64, align 8
  %width.addr = alloca i32, align 4
  %k32 = alloca i32, align 4
  store i64 %key, i64* %key.addr, align 8
  store i32 %width, i32* %width.addr, align 4
  %0 = load i64* %key.addr, align 8
  %and = and i64 %0, 4294967295
  %1 = load i64* %key.addr, align 8
  %shr = lshr i64 %1, 32
  %xor = xor i64 %and, %shr
  %conv = trunc i64 %xor to i32
  store i32 %conv, i32* %k32, align 4
  %2 = load i32* %k32, align 4
  %conv1 = zext i32 %2 to i64
  %mul = mul i64 %conv1, 2654404609
  %conv2 = trunc i64 %mul to i32
  store i32 %conv2, i32* %k32, align 4
  %3 = load i32* %k32, align 4
  %4 = load i32* %width.addr, align 4
  %sub = sub nsw i32 32, %4
  %shr3 = lshr i32 %3, %sub
  store i32 %shr3, i32* %k32, align 4
  %5 = load i32* %k32, align 4
  ret i32 %5
}

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %qr = alloca %struct.quantum_reg_struct, align 8
  %i = alloca i32, align 4
  %width = alloca i32, align 4
  %swidth = alloca i32, align 4
  %x = alloca i32, align 4
  %N = alloca i32, align 4
  %c = alloca i32, align 4
  %q = alloca i32, align 4
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %factor = alloca i32, align 4
  %tmp = alloca %struct.quantum_reg_struct, align 8
  store i32 0, i32* %retval
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i32 0, i32* %x, align 4
  call void @spec_srand(i32 26)
  %0 = load i32* %argc.addr, align 4
  %cmp = icmp eq i32 %0, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([23 x i8]* @.str65, i32 0, i32 0))
  store i32 3, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i8*** %argv.addr, align 8
  %arrayidx = getelementptr inbounds i8** %1, i64 1
  %2 = load i8** %arrayidx, align 8
  %call1 = call i32 @atoi(i8* %2) #10
  store i32 %call1, i32* %N, align 4
  %3 = load i32* %N, align 4
  %cmp2 = icmp slt i32 %3, 15
  br i1 %cmp2, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  %call4 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([17 x i8]* @.str166, i32 0, i32 0))
  store i32 3, i32* %retval
  br label %return

if.end5:                                          ; preds = %if.end
  %4 = load i32* %N, align 4
  %5 = load i32* %N, align 4
  %mul = mul nsw i32 %4, %5
  %call6 = call i32 @quantum_getwidth(i32 %mul)
  store i32 %call6, i32* %width, align 4
  %6 = load i32* %N, align 4
  %call7 = call i32 @quantum_getwidth(i32 %6)
  store i32 %call7, i32* %swidth, align 4
  %7 = load i32* %N, align 4
  %8 = load i32* %width, align 4
  %9 = load i32* %swidth, align 4
  %mul8 = mul nsw i32 3, %9
  %add = add nsw i32 %8, %mul8
  %add9 = add nsw i32 %add, 2
  %call10 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([28 x i8]* @.str267, i32 0, i32 0), i32 %7, i32 %add9)
  %10 = load i32* %argc.addr, align 4
  %cmp11 = icmp sge i32 %10, 3
  br i1 %cmp11, label %if.then12, label %if.end15

if.then12:                                        ; preds = %if.end5
  %11 = load i8*** %argv.addr, align 8
  %arrayidx13 = getelementptr inbounds i8** %11, i64 2
  %12 = load i8** %arrayidx13, align 8
  %call14 = call i32 @atoi(i8* %12) #10
  store i32 %call14, i32* %x, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.then12, %if.end5
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end15
  %13 = load i32* %N, align 4
  %14 = load i32* %x, align 4
  %call16 = call i32 @quantum_gcd(i32 %13, i32 %14)
  %cmp17 = icmp sgt i32 %call16, 1
  br i1 %cmp17, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %while.cond
  %15 = load i32* %x, align 4
  %cmp18 = icmp slt i32 %15, 2
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %while.cond
  %16 = phi i1 [ true, %while.cond ], [ %cmp18, %lor.rhs ]
  br i1 %16, label %while.body, label %while.end

while.body:                                       ; preds = %lor.end
  %call19 = call double @spec_rand()
  %mul20 = fmul double %call19, 0x41DFFFFFFFC00000
  %conv = fptosi double %mul20 to i64
  %17 = load i32* %N, align 4
  %conv21 = sext i32 %17 to i64
  %rem = srem i64 %conv, %conv21
  %conv22 = trunc i64 %rem to i32
  store i32 %conv22, i32* %x, align 4
  br label %while.cond

while.end:                                        ; preds = %lor.end
  %18 = load i32* %x, align 4
  %call23 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([17 x i8]* @.str368, i32 0, i32 0), i32 %18)
  %19 = load i32* %width, align 4
  call void @quantum_new_qureg(%struct.quantum_reg_struct* sret %tmp, i64 0, i32 %19)
  %20 = bitcast %struct.quantum_reg_struct* %qr to i8*
  %21 = bitcast %struct.quantum_reg_struct* %tmp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %20, i8* %21, i64 32, i32 8, i1 false)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.end
  %22 = load i32* %i, align 4
  %23 = load i32* %width, align 4
  %cmp24 = icmp slt i32 %22, %23
  br i1 %cmp24, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %24 = load i32* %i, align 4
  call void @quantum_hadamard(i32 %24, %struct.quantum_reg_struct* %qr)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %25 = load i32* %i, align 4
  %inc = add nsw i32 %25, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %26 = load i32* %swidth, align 4
  %mul26 = mul nsw i32 3, %26
  %add27 = add nsw i32 %mul26, 2
  call void @quantum_addscratch(i32 %add27, %struct.quantum_reg_struct* %qr)
  %27 = load i32* %N, align 4
  %28 = load i32* %x, align 4
  %29 = load i32* %width, align 4
  %30 = load i32* %swidth, align 4
  call void @quantum_exp_mod_n(i32 %27, i32 %28, i32 %29, i32 %30, %struct.quantum_reg_struct* %qr)
  store i32 0, i32* %i, align 4
  br label %for.cond28

for.cond28:                                       ; preds = %for.inc35, %for.end
  %31 = load i32* %i, align 4
  %32 = load i32* %swidth, align 4
  %mul29 = mul nsw i32 3, %32
  %add30 = add nsw i32 %mul29, 2
  %cmp31 = icmp slt i32 %31, %add30
  br i1 %cmp31, label %for.body33, label %for.end37

for.body33:                                       ; preds = %for.cond28
  %call34 = call i32 @quantum_bmeasure(i32 0, %struct.quantum_reg_struct* %qr)
  br label %for.inc35

for.inc35:                                        ; preds = %for.body33
  %33 = load i32* %i, align 4
  %inc36 = add nsw i32 %33, 1
  store i32 %inc36, i32* %i, align 4
  br label %for.cond28

for.end37:                                        ; preds = %for.cond28
  %34 = load i32* %width, align 4
  call void @quantum_qft(i32 %34, %struct.quantum_reg_struct* %qr)
  store i32 0, i32* %i, align 4
  br label %for.cond38

for.cond38:                                       ; preds = %for.inc47, %for.end37
  %35 = load i32* %i, align 4
  %36 = load i32* %width, align 4
  %div = sdiv i32 %36, 2
  %cmp39 = icmp slt i32 %35, %div
  br i1 %cmp39, label %for.body41, label %for.end49

for.body41:                                       ; preds = %for.cond38
  %37 = load i32* %i, align 4
  %38 = load i32* %width, align 4
  %39 = load i32* %i, align 4
  %sub = sub nsw i32 %38, %39
  %sub42 = sub nsw i32 %sub, 1
  call void @quantum_cnot(i32 %37, i32 %sub42, %struct.quantum_reg_struct* %qr)
  %40 = load i32* %width, align 4
  %41 = load i32* %i, align 4
  %sub43 = sub nsw i32 %40, %41
  %sub44 = sub nsw i32 %sub43, 1
  %42 = load i32* %i, align 4
  call void @quantum_cnot(i32 %sub44, i32 %42, %struct.quantum_reg_struct* %qr)
  %43 = load i32* %i, align 4
  %44 = load i32* %width, align 4
  %45 = load i32* %i, align 4
  %sub45 = sub nsw i32 %44, %45
  %sub46 = sub nsw i32 %sub45, 1
  call void @quantum_cnot(i32 %43, i32 %sub46, %struct.quantum_reg_struct* %qr)
  br label %for.inc47

for.inc47:                                        ; preds = %for.body41
  %46 = load i32* %i, align 4
  %inc48 = add nsw i32 %46, 1
  store i32 %inc48, i32* %i, align 4
  br label %for.cond38

for.end49:                                        ; preds = %for.cond38
  %call50 = call i64 @quantum_measure(%struct.quantum_reg_struct* byval align 8 %qr)
  %conv51 = trunc i64 %call50 to i32
  store i32 %conv51, i32* %c, align 4
  %47 = load i32* %c, align 4
  %cmp52 = icmp eq i32 %47, -1
  br i1 %cmp52, label %if.then54, label %if.end56

if.then54:                                        ; preds = %for.end49
  %call55 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([25 x i8]* @.str469, i32 0, i32 0))
  call void @exit(i32 1) #9
  unreachable

if.end56:                                         ; preds = %for.end49
  %48 = load i32* %c, align 4
  %cmp57 = icmp eq i32 %48, 0
  br i1 %cmp57, label %if.then59, label %if.end61

if.then59:                                        ; preds = %if.end56
  %call60 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([27 x i8]* @.str570, i32 0, i32 0))
  call void @exit(i32 2) #9
  unreachable

if.end61:                                         ; preds = %if.end56
  %49 = load i32* %width, align 4
  %shl = shl i32 1, %49
  store i32 %shl, i32* %q, align 4
  %50 = load i32* %c, align 4
  %51 = load i32* %c, align 4
  %conv62 = sitofp i32 %51 to float
  %52 = load i32* %q, align 4
  %conv63 = sitofp i32 %52 to float
  %div64 = fdiv float %conv62, %conv63
  %conv65 = fpext float %div64 to double
  %call66 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([19 x i8]* @.str671, i32 0, i32 0), i32 %50, double %conv65)
  %53 = load i32* %width, align 4
  call void @quantum_frac_approx(i32* %c, i32* %q, i32 %53)
  %54 = load i32* %c, align 4
  %55 = load i32* %q, align 4
  %call67 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([36 x i8]* @.str772, i32 0, i32 0), i32 %54, i32 %55)
  %56 = load i32* %q, align 4
  %rem68 = srem i32 %56, 2
  %cmp69 = icmp eq i32 %rem68, 1
  br i1 %cmp69, label %land.lhs.true, label %if.end78

land.lhs.true:                                    ; preds = %if.end61
  %57 = load i32* %q, align 4
  %mul71 = mul nsw i32 2, %57
  %58 = load i32* %width, align 4
  %shl72 = shl i32 1, %58
  %cmp73 = icmp slt i32 %mul71, %shl72
  br i1 %cmp73, label %if.then75, label %if.end78

if.then75:                                        ; preds = %land.lhs.true
  %call76 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([41 x i8]* @.str873, i32 0, i32 0))
  %59 = load i32* %q, align 4
  %mul77 = mul nsw i32 %59, 2
  store i32 %mul77, i32* %q, align 4
  br label %if.end78

if.end78:                                         ; preds = %if.then75, %land.lhs.true, %if.end61
  %60 = load i32* %q, align 4
  %rem79 = srem i32 %60, 2
  %cmp80 = icmp eq i32 %rem79, 1
  br i1 %cmp80, label %if.then82, label %if.end84

if.then82:                                        ; preds = %if.end78
  %call83 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([24 x i8]* @.str974, i32 0, i32 0))
  call void @exit(i32 2) #9
  unreachable

if.end84:                                         ; preds = %if.end78
  %61 = load i32* %q, align 4
  %call85 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([24 x i8]* @.str1075, i32 0, i32 0), i32 %61)
  %62 = load i32* %x, align 4
  %63 = load i32* %q, align 4
  %div86 = sdiv i32 %63, 2
  %call87 = call i32 @quantum_ipow(i32 %62, i32 %div86)
  %64 = load i32* %N, align 4
  %rem88 = srem i32 1, %64
  %add89 = add nsw i32 %call87, %rem88
  store i32 %add89, i32* %a, align 4
  %65 = load i32* %x, align 4
  %66 = load i32* %q, align 4
  %div90 = sdiv i32 %66, 2
  %call91 = call i32 @quantum_ipow(i32 %65, i32 %div90)
  %67 = load i32* %N, align 4
  %rem92 = srem i32 1, %67
  %sub93 = sub nsw i32 %call91, %rem92
  store i32 %sub93, i32* %b, align 4
  %68 = load i32* %N, align 4
  %69 = load i32* %a, align 4
  %call94 = call i32 @quantum_gcd(i32 %68, i32 %69)
  store i32 %call94, i32* %a, align 4
  %70 = load i32* %N, align 4
  %71 = load i32* %b, align 4
  %call95 = call i32 @quantum_gcd(i32 %70, i32 %71)
  store i32 %call95, i32* %b, align 4
  %72 = load i32* %a, align 4
  %73 = load i32* %b, align 4
  %cmp96 = icmp sgt i32 %72, %73
  br i1 %cmp96, label %if.then98, label %if.else

if.then98:                                        ; preds = %if.end84
  %74 = load i32* %a, align 4
  store i32 %74, i32* %factor, align 4
  br label %if.end99

if.else:                                          ; preds = %if.end84
  %75 = load i32* %b, align 4
  store i32 %75, i32* %factor, align 4
  br label %if.end99

if.end99:                                         ; preds = %if.else, %if.then98
  %76 = load i32* %factor, align 4
  %77 = load i32* %N, align 4
  %cmp100 = icmp slt i32 %76, %77
  br i1 %cmp100, label %land.lhs.true102, label %if.else108

land.lhs.true102:                                 ; preds = %if.end99
  %78 = load i32* %factor, align 4
  %cmp103 = icmp sgt i32 %78, 1
  br i1 %cmp103, label %if.then105, label %if.else108

if.then105:                                       ; preds = %land.lhs.true102
  %79 = load i32* %N, align 4
  %80 = load i32* %factor, align 4
  %81 = load i32* %N, align 4
  %82 = load i32* %factor, align 4
  %div106 = sdiv i32 %81, %82
  %call107 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([14 x i8]* @.str1176, i32 0, i32 0), i32 %79, i32 %80, i32 %div106)
  br label %if.end110

if.else108:                                       ; preds = %land.lhs.true102, %if.end99
  %call109 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([41 x i8]* @.str1277, i32 0, i32 0))
  call void @exit(i32 0) #9
  unreachable

if.end110:                                        ; preds = %if.then105
  call void @quantum_delete_qureg(%struct.quantum_reg_struct* %qr)
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end110, %if.then3, %if.then
  %83 = load i32* %retval
  ret i32 %83
}

; Function Attrs: nounwind readonly
declare i32 @atoi(i8*) #7

; Function Attrs: nounwind uwtable
define void @spec_srand(i32 %seed) #0 {
entry:
  %seed.addr = alloca i32, align 4
  store i32 %seed, i32* %seed.addr, align 4
  %0 = load i32* %seed.addr, align 4
  store i32 %0, i32* @seedi, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define double @spec_rand() #0 {
entry:
  %lo = alloca i32, align 4
  %hi = alloca i32, align 4
  %test = alloca i32, align 4
  %0 = load i32* @seedi, align 4
  %conv = sext i32 %0 to i64
  %div = sdiv i64 %conv, 127773
  %conv1 = trunc i64 %div to i32
  store i32 %conv1, i32* %hi, align 4
  %1 = load i32* @seedi, align 4
  %conv2 = sext i32 %1 to i64
  %rem = srem i64 %conv2, 127773
  %conv3 = trunc i64 %rem to i32
  store i32 %conv3, i32* %lo, align 4
  %2 = load i32* %lo, align 4
  %conv4 = sext i32 %2 to i64
  %mul = mul nsw i64 16807, %conv4
  %3 = load i32* %hi, align 4
  %conv5 = sext i32 %3 to i64
  %mul6 = mul nsw i64 2836, %conv5
  %sub = sub nsw i64 %mul, %mul6
  %conv7 = trunc i64 %sub to i32
  store i32 %conv7, i32* %test, align 4
  %4 = load i32* %test, align 4
  %cmp = icmp sgt i32 %4, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %5 = load i32* %test, align 4
  store i32 %5, i32* @seedi, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %6 = load i32* %test, align 4
  %conv9 = sext i32 %6 to i64
  %add = add nsw i64 %conv9, 2147483647
  %conv10 = trunc i64 %add to i32
  store i32 %conv10, i32* @seedi, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %7 = load i32* @seedi, align 4
  %conv11 = sitofp i32 %7 to double
  %div12 = fdiv double %conv11, 0x41DFFFFFFFC00000
  ret double %div12
}

; Function Attrs: nounwind uwtable
define i8* @quantum_get_version() #0 {
entry:
  ret i8* getelementptr inbounds ([6 x i8]* @.str82, i32 0, i32 0)
}

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { inlinehint nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { nounwind readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind readnone }
attributes #9 = { noreturn nounwind }
attributes #10 = { nounwind readonly }

!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}

!0 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
