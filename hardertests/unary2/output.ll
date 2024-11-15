; ModuleID = 'mini-c'
source_filename = "mini-c"

declare i32 @print_int(i32)

declare float @print_float(float)

define i32 @unary2() {
entry:
  %X = alloca i1, align 1
  %z2 = alloca i32, align 4
  %z = alloca i32, align 4
  %b2 = alloca i1, align 1
  %b = alloca i1, align 1
  %i2 = alloca i32, align 4
  %i = alloca i32, align 4
  %f = alloca float, align 4
  store i1 true, ptr %X, align 1
  store i32 0, ptr %i2, align 4
  store float 0.000000e+00, ptr %f, align 4
  store i32 1, ptr %i, align 4
  %f1 = load float, ptr %f, align 4
  %floatToBool = fcmp one float %f1, 0.000000e+00
  %notBool = xor i1 %floatToBool, true
  %boolToInt = zext i1 %notBool to i32
  %negInt = sub i32 0, %boolToInt
  %i3 = load i32, ptr %i, align 4
  %addtmp = add i32 %negInt, %i3
  store i32 %addtmp, ptr %b, align 4
  %f4 = load float, ptr %f, align 4
  %floatToBool5 = fcmp one float %f4, 0.000000e+00
  %notBool6 = xor i1 %floatToBool5, true
  %boolToInt7 = zext i1 %notBool6 to i32
  %negInt8 = sub i32 0, %boolToInt7
  store i32 %negInt8, ptr %z2, align 4
  %b9 = load i1, ptr %b, align 1
  %orTmp = or i1 true, %b9
  store i1 %orTmp, ptr %b2, align 1
  %b210 = load i1, ptr %b2, align 1
  store i1 %b210, ptr %i2, align 1
  %i211 = load i32, ptr %i2, align 4
  ret i32 %i211
}
