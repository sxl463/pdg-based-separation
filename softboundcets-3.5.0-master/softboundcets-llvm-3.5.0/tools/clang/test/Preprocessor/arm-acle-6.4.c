// RUN: %clang -target arm-eabi -mcpu=cortex-m0 -x c -E -dM %s -o - | FileCheck %s -check-prefix CHECK-CORTEX-M0

// CHECK-CORTEX-M0: __ARM_32BIT_STATE 1
// CHECK-CORTEX-M0: __ARM_ARCH 6
// CHECK-CORTEX-M0-NOT: __ARM_ARCH_ISA_ARM
// CHECK-CORTEX-M0: __ARM_ARCH_ISA_THUMB 1
// CHECK-CORTEX-M0: __ARM_ARCH_PROFILE 'M'

// RUN: %clang -target arm-eabi -mcpu=arm810 -x c -E -dM %s -o - | FileCheck %s -check-prefix CHECK-ARM810

// CHECK-ARM810: __ARM_32BIT_STATE 1
// CHECK-ARM810: __ARM_ARCH 4
// CHECK-ARM810: __ARM_ARCH_ISA_ARM 1
// CHECK-ARM810-NOT: __ARM_ARCH_ISA_THUMB
// CHECK-ARM810-NOT: __ARM_ARCH_PROFILE

// RUN: %clang -target arm-eabi -mcpu=arm7tdmi -x c -E -dM %s -o - | FileCheck %s -check-prefix CHECK-ARM7TDMI

// CHECK-ARM7TDMI: __ARM_32BIT_STATE 1
// CHECK-ARM7TDMI: __ARM_ARCH 4
// CHECK-ARM7TDMI: __ARM_ARCH_ISA_ARM 1
// CHECK-ARM7TDMI: __ARM_ARCH_ISA_THUMB 1
// CHECK-ARM7TDMI-NOT: __ARM_ARCH_PROFILE

// RUN: %clang -target arm-eabi -mcpu=cortex-a7 -x c -E -dM %s -o - | FileCheck %s -check-prefix CHECK-CORTEX-A7

// CHECK-CORTEX-A7: __ARM_32BIT_STATE 1
// CHECK-CORTEX-A7: __ARM_ARCH 7
// CHECK-CORTEX-A7: __ARM_ARCH_ISA_ARM 1
// CHECK-CORTEX-A7: __ARM_ARCH_ISA_THUMB 2
// CHECK-CORTEX-A7: __ARM_ARCH_PROFILE 'A'

// RUN: %clang -target arm-eabi -mcpu=cortex-r4 -x c -E -dM %s -o - | FileCheck %s -check-prefix CHECK-CORTEX-R4

// CHECK-CORTEX-R4: __ARM_32BIT_STATE 1
// CHECK-CORTEX-R4: __ARM_ARCH 7
// CHECK-CORTEX-R4: __ARM_ARCH_ISA_ARM 1
// CHECK-CORTEX-R4: __ARM_ARCH_ISA_THUMB 2
// CHECK-CORTEX-R4: __ARM_ARCH_PROFILE 'R'

