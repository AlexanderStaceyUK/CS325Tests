; ModuleID = 'mini-c'
source_filename = "mini-c"

declare i32 @print_int(i32)

declare float @print_float(float)

define i32 @foo(i32 %x) {
entry:
  %x1 = alloca i32, align 4
  store i32 %x, ptr %x1, align 4
  br label %condition

loop:                                             ; preds = %condition
  %x3 = load i32, ptr %x1, align 4
  %letmp4 = icmp slt i32 %x3, 5
  %int_to_bool = icmp ne i1 %letmp4, false
  br i1 %int_to_bool, label %then, label %else

condition:                                        ; preds = %end, %entry
  %x2 = load i32, ptr %x1, align 4
  %letmp = icmp slt i32 %x2, 10
  %cmpResult1 = icmp ne i1 %letmp, false
  %whilecondition = icmp ne i1 %cmpResult1, false
  br i1 %whilecondition, label %loop, label %end8

then:                                             ; preds = %loop
  %x5 = load i32, ptr %x1, align 4
  %addtmp = add i32 %x5, 2
  store i32 %addtmp, ptr %x1, align 4
  br label %end

else:                                             ; preds = %loop
  %x6 = load i32, ptr %x1, align 4
  %addtmp7 = add i32 %x6, 1
  store i32 %addtmp7, ptr %x1, align 4
  br label %end

end:                                              ; preds = %else, %then
  br label %condition

end8:                                             ; preds = %condition
  %x9 = load i32, ptr %x1, align 4
  ret i32 %x9
}
