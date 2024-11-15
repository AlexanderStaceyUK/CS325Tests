; ModuleID = 'mini-c'
source_filename = "mini-c"

declare i32 @print_int(i32)

declare float @print_float(float)

define i1 @true_plus_true() {
entry:
  ret i32 2
}

define i1 @widening_casts() {
entry:
  %bt = alloca i1, align 1
  %bf = alloca i1, align 1
  %i1 = alloca i32, align 4
  %i3 = alloca i32, align 4
  %f1 = alloca float, align 4
  %f4 = alloca float, align 4
  %assign_bi = alloca i32, align 4
  %assign_bf = alloca float, align 4
  %assign_if = alloca float, align 4
  %bin_9i = alloca i1, align 1
  %bin_8i = alloca i32, align 4
  %bin_7i = alloca float, align 4
  %bin_6i = alloca i32, align 4
  %bin_5i = alloca i32, align 4
  %bin_4i = alloca float, align 4
  %bin_31i = alloca float, align 4
  %bin_3i = alloca float, align 4
  %bin_2i = alloca float, align 4
  %bin_1i = alloca float, align 4
  %bin_9 = alloca i1, align 1
  %bin_8 = alloca i32, align 4
  %bin_7 = alloca float, align 4
  %bin_6 = alloca i32, align 4
  %bin_5 = alloca i32, align 4
  %bin_4 = alloca float, align 4
  %bin_31 = alloca float, align 4
  %bin_3 = alloca float, align 4
  %bin_2 = alloca float, align 4
  %bin_1 = alloca float, align 4
  store float 4.000000e+00, ptr %f4, align 4
  store float 1.000000e+00, ptr %f1, align 4
  store i32 3, ptr %i3, align 4
  store i32 1, ptr %i1, align 4
  store i1 false, ptr %bf, align 1
  store i1 true, ptr %bt, align 1
  store float 5.000000e+00, ptr %bin_1, align 4
  store float 5.000000e+00, ptr %bin_2, align 4
  store float 5.000000e+00, ptr %bin_3, align 4
  store float 4.000000e+00, ptr %bin_31, align 4
  store float 4.000000e+00, ptr %bin_4, align 4
  store i32 4, ptr %bin_5, align 4
  store i32 4, ptr %bin_6, align 4
  store float 2.000000e+00, ptr %bin_7, align 4
  store i32 2, ptr %bin_8, align 4
  store i32 0, ptr %bin_9, align 4
  store i32 1, ptr %assign_if, align 4
  store i1 true, ptr %assign_bf, align 1
  store i1 true, ptr %assign_bi, align 1
  %f41 = load float, ptr %f4, align 4
  %f12 = load float, ptr %f1, align 4
  %addtmp = fadd float %f41, %f12
  store float %addtmp, ptr %bin_1i, align 4
  %f43 = load float, ptr %f4, align 4
  %i14 = load i32, ptr %i1, align 4
  %intToFloat = sitofp i32 %i14 to float
  %addtmp5 = fadd float %f43, %intToFloat
  store float %addtmp5, ptr %bin_2i, align 4
  %f46 = load float, ptr %f4, align 4
  %bt7 = load i1, ptr %bt, align 1
  %boolToInt = zext i1 %bt7 to i32
  %intToFloat8 = sitofp i32 %boolToInt to float
  %addtmp9 = fadd float %f46, %intToFloat8
  store float %addtmp9, ptr %bin_3i, align 4
  %f410 = load float, ptr %f4, align 4
  %bf11 = load i1, ptr %bf, align 1
  %boolToInt12 = zext i1 %bf11 to i32
  %intToFloat13 = sitofp i32 %boolToInt12 to float
  %addtmp14 = fadd float %f410, %intToFloat13
  store float %addtmp14, ptr %bin_31i, align 4
  %i315 = load i32, ptr %i3, align 4
  %f116 = load float, ptr %f1, align 4
  %intToFloat17 = sitofp i32 %i315 to float
  %addtmp18 = fadd float %intToFloat17, %f116
  store float %addtmp18, ptr %bin_4i, align 4
  %i319 = load i32, ptr %i3, align 4
  %i120 = load i32, ptr %i1, align 4
  %addtmp21 = add i32 %i319, %i120
  store i32 %addtmp21, ptr %bin_5i, align 4
  %i322 = load i32, ptr %i3, align 4
  %bt23 = load i1, ptr %bt, align 1
  %boolToInt24 = zext i1 %bt23 to i32
  %addtmp25 = add i32 %i322, %boolToInt24
  store i32 %addtmp25, ptr %bin_6i, align 4
  %bt26 = load i1, ptr %bt, align 1
  %f127 = load float, ptr %f1, align 4
  %boolToInt28 = zext i1 %bt26 to i32
  %intToFloat29 = sitofp i32 %boolToInt28 to float
  %addtmp30 = fadd float %intToFloat29, %f127
  store float %addtmp30, ptr %bin_7i, align 4
  %bt31 = load i1, ptr %bt, align 1
  %i132 = load i32, ptr %i1, align 4
  %boolToInt33 = zext i1 %bt31 to i32
  %addtmp34 = add i32 %boolToInt33, %i132
  store i32 %addtmp34, ptr %bin_8i, align 4
  %bt35 = load i1, ptr %bt, align 1
  %bt36 = load i1, ptr %bt, align 1
  %boolToInt37 = zext i1 %bt35 to i32
  %boolToInt38 = zext i1 %bt36 to i32
  %subtmp = sub i32 %boolToInt37, %boolToInt38
  store i32 %subtmp, ptr %bin_9i, align 4
  %bin_139 = load float, ptr %bin_1, align 4
  %calltmp = call float @print_float(float %bin_139)
  %bin_240 = load float, ptr %bin_2, align 4
  %calltmp41 = call float @print_float(float %bin_240)
  %bin_342 = load float, ptr %bin_3, align 4
  %calltmp43 = call float @print_float(float %bin_342)
  %bin_3144 = load float, ptr %bin_31, align 4
  %calltmp45 = call float @print_float(float %bin_3144)
  %bin_446 = load float, ptr %bin_4, align 4
  %calltmp47 = call float @print_float(float %bin_446)
  %bin_548 = load i32, ptr %bin_5, align 4
  %calltmp49 = call i32 @print_int(i32 %bin_548)
  %bin_650 = load i32, ptr %bin_6, align 4
  %calltmp51 = call i32 @print_int(i32 %bin_650)
  %bin_752 = load float, ptr %bin_7, align 4
  %calltmp53 = call float @print_float(float %bin_752)
  %bin_854 = load i32, ptr %bin_8, align 4
  %calltmp55 = call i32 @print_int(i32 %bin_854)
  %bin_956 = load i1, ptr %bin_9, align 1
  %calltmp57 = call i32 @print_int(i1 %bin_956)
  %bin_158 = load float, ptr %bin_1, align 4
  %eqtmp = fcmp oeq float %bin_158, 5.000000e+00
  %bin_259 = load float, ptr %bin_2, align 4
  %eqtmp60 = fcmp oeq float %bin_259, 5.000000e+00
  %andTmp = and i1 %eqtmp, %eqtmp60
  %bin_361 = load float, ptr %bin_3, align 4
  %eqtmp62 = fcmp oeq float %bin_361, 5.000000e+00
  %andTmp63 = and i1 %andTmp, %eqtmp62
  %bin_3164 = load float, ptr %bin_31, align 4
  %eqtmp65 = fcmp oeq float %bin_3164, 4.000000e+00
  %andTmp66 = and i1 %andTmp63, %eqtmp65
  %bin_467 = load float, ptr %bin_4, align 4
  %eqtmp68 = fcmp oeq float %bin_467, 4.000000e+00
  %andTmp69 = and i1 %andTmp66, %eqtmp68
  %bin_570 = load i32, ptr %bin_5, align 4
  %eqtmp71 = icmp eq i32 %bin_570, 4
  %andTmp72 = and i1 %andTmp69, %eqtmp71
  %bin_673 = load i32, ptr %bin_6, align 4
  %eqtmp74 = icmp eq i32 %bin_673, 4
  %andTmp75 = and i1 %andTmp72, %eqtmp74
  %bin_776 = load float, ptr %bin_7, align 4
  %eqtmp77 = fcmp oeq float %bin_776, 2.000000e+00
  %andTmp78 = and i1 %andTmp75, %eqtmp77
  %bin_879 = load i32, ptr %bin_8, align 4
  %eqtmp80 = icmp eq i32 %bin_879, 2
  %andTmp81 = and i1 %andTmp78, %eqtmp80
  %bin_982 = load i1, ptr %bin_9, align 1
  %eqtmp83 = icmp eq i1 %bin_982, false
  %andTmp84 = and i1 %andTmp81, %eqtmp83
  %bin_1i85 = load float, ptr %bin_1i, align 4
  %eqtmp86 = fcmp oeq float %bin_1i85, 5.000000e+00
  %andTmp87 = and i1 %andTmp84, %eqtmp86
  %bin_2i88 = load float, ptr %bin_2i, align 4
  %eqtmp89 = fcmp oeq float %bin_2i88, 5.000000e+00
  %andTmp90 = and i1 %andTmp87, %eqtmp89
  %bin_3i91 = load float, ptr %bin_3i, align 4
  %eqtmp92 = fcmp oeq float %bin_3i91, 5.000000e+00
  %andTmp93 = and i1 %andTmp90, %eqtmp92
  %bin_31i94 = load float, ptr %bin_31i, align 4
  %eqtmp95 = fcmp oeq float %bin_31i94, 4.000000e+00
  %andTmp96 = and i1 %andTmp93, %eqtmp95
  %bin_4i97 = load float, ptr %bin_4i, align 4
  %eqtmp98 = fcmp oeq float %bin_4i97, 4.000000e+00
  %andTmp99 = and i1 %andTmp96, %eqtmp98
  %bin_5i100 = load i32, ptr %bin_5i, align 4
  %eqtmp101 = icmp eq i32 %bin_5i100, 4
  %andTmp102 = and i1 %andTmp99, %eqtmp101
  %bin_6i103 = load i32, ptr %bin_6i, align 4
  %eqtmp104 = icmp eq i32 %bin_6i103, 4
  %andTmp105 = and i1 %andTmp102, %eqtmp104
  %bin_7i106 = load float, ptr %bin_7i, align 4
  %eqtmp107 = fcmp oeq float %bin_7i106, 2.000000e+00
  %andTmp108 = and i1 %andTmp105, %eqtmp107
  %bin_8i109 = load i32, ptr %bin_8i, align 4
  %eqtmp110 = icmp eq i32 %bin_8i109, 2
  %andTmp111 = and i1 %andTmp108, %eqtmp110
  %bin_9i112 = load i1, ptr %bin_9i, align 1
  %eqtmp113 = icmp eq i1 %bin_9i112, false
  %andTmp114 = and i1 %andTmp111, %eqtmp113
  %assign_if115 = load float, ptr %assign_if, align 4
  %eqtmp116 = fcmp oeq float %assign_if115, 1.000000e+00
  %andTmp117 = and i1 %andTmp114, %eqtmp116
  %assign_bf118 = load float, ptr %assign_bf, align 4
  %eqtmp119 = fcmp oeq float %assign_bf118, 1.000000e+00
  %andTmp120 = and i1 %andTmp117, %eqtmp119
  %assign_bi121 = load i32, ptr %assign_bi, align 4
  %eqtmp122 = icmp eq i32 %assign_bi121, 1
  %andTmp123 = and i1 %andTmp120, %eqtmp122
  ret i1 %andTmp123
}
