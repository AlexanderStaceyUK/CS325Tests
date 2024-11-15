; ModuleID = 'mini-c'
source_filename = "mini-c"

declare i32 @print_int(i32)

declare float @print_float(float)

define i32 @nested_blocks(i32 %x) {
entry:
  %x1 = alloca i32, align 4
  store i32 %x, ptr %x1, align 4
  %x2 = load i32, ptr %x1, align 4
  ret i32 %x2
}

define i1 @strange_assoc() {
entry:
  %rhs = alloca float, align 4
  %rhs_1 = alloca float, align 4
  %lhs = alloca float, align 4
  store float 0x3FD8618620000000, ptr %lhs, align 4
  store float 1.500000e+00, ptr %rhs_1, align 4
  %rhs_11 = load float, ptr %rhs_1, align 4
  %divtmp = fdiv float 4.000000e+00, %rhs_11
  %divtmp2 = fdiv float %divtmp, 7.000000e+00
  store float %divtmp2, ptr %rhs, align 4
  %lhs3 = load float, ptr %lhs, align 4
  %rhs4 = load float, ptr %rhs, align 4
  %eqtmp = fcmp oeq float %lhs3, %rhs4
  ret i1 %eqtmp
}

define i32 @void_param() {
entry:
  ret i32 0
}

define i32 @example_scope() {
entry:
  %cond = alloca i1, align 1
  %x2 = alloca i32, align 4
  %y = alloca i32, align 4
  %x = alloca i32, align 4
  store i32 5, ptr %x, align 4
  store i32 2, ptr %y, align 4
  br label %condition

loop:                                             ; preds = %condition
  store i1 true, ptr %cond, align 1
  br label %condition4

condition:                                        ; preds = %end, %entry
  %y1 = load i32, ptr %y, align 4
  %getmp = icmp sgt i32 %y1, 0
  %cmpResult1 = icmp ne i1 %getmp, false
  %whilecondition = icmp ne i1 %cmpResult1, false
  br i1 %whilecondition, label %loop, label %end10

loop3:                                            ; preds = %condition4
  store i32 17, ptr %x2, align 4
  store i1 false, ptr %cond, align 1
  br label %condition4

condition4:                                       ; preds = %loop3, %loop
  %cond5 = load i1, ptr %cond, align 1
  %cmpResult16 = icmp ne i1 %cond5, false
  %whilecondition7 = icmp ne i1 %cmpResult16, false
  br i1 %whilecondition7, label %loop3, label %end

end:                                              ; preds = %condition4
  store i32 2, ptr %x2, align 4
  %y8 = load i32, ptr %y, align 4
  %x9 = load i32, ptr %x2, align 4
  %subtmp = sub i32 %y8, %x9
  store i32 %subtmp, ptr %y, align 4
  br label %condition

end10:                                            ; preds = %condition
  %x11 = load i32, ptr %x, align 4
  ret i32 %x11
}

define i32 @expr_stmt() {
entry:
  %x = alloca i32, align 4
  store i32 5, ptr %x, align 4
  %x1 = load i32, ptr %x, align 4
  ret i32 0
}

define i32 @shadowing() {
entry:
  %nested_blocks = alloca i32, align 4
  store i32 5, ptr %nested_blocks, align 4
  %nested_blocks1 = load i32, ptr %nested_blocks, align 4
  %calltmp = call i32 @nested_blocks(i32 %nested_blocks1)
  ret i32 %calltmp
}

define i1 @drive() {
entry:
  %calltmp = call i32 @nested_blocks(i32 5)
  %neqtmp = icmp ne i32 %calltmp, 5
  %calltmp1 = call i32 @shadowing()
  %neqtmp2 = icmp ne i32 %calltmp1, 5
  %orTmp = or i1 %neqtmp, %neqtmp2
  %calltmp3 = call i32 @example_scope()
  %neqtmp4 = icmp ne i32 %calltmp3, 5
  %orTmp5 = or i1 %orTmp, %neqtmp4
  %calltmp6 = call i1 @strange_assoc()
  %notBool = xor i1 %calltmp6, true
  %orTmp7 = or i1 %orTmp5, %notBool
  %calltmp8 = call i32 @expr_stmt()
  %neqtmp9 = icmp ne i32 %calltmp8, 0
  %orTmp10 = or i1 %orTmp7, %neqtmp9
  %calltmp11 = call i32 @void_param()
  %neqtmp12 = icmp ne i32 %calltmp11, 0
  %orTmp13 = or i1 %orTmp10, %neqtmp12
  ret i1 %orTmp13
}
