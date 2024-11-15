; ModuleID = 'mini-c'
source_filename = "mini-c"

declare i32 @print_int(i32)

declare float @print_float(float)

define i32 @foo() {
entry:
  %x = alloca float, align 4
  store float 5.000000e+00, ptr %x, align 4
  %x1 = load float, ptr %x, align 4
  %floatToBool = fcmp one float %x1, 0.000000e+00
  br i1 %floatToBool, label %then, label %end

then:                                             ; preds = %entry
  ret i32 5

end:                                              ; preds = %entry
  ret i32 0
}
