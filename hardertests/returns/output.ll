; ModuleID = 'mini-c'
source_filename = "mini-c"

define i32 @returns(i32 %x) {
entry:
  %x1 = alloca i32, align 4
  store i32 %x, ptr %x1, align 4
  br label %condition

loop:                                             ; preds = %condition
  ret i32 0
  br label %condition

condition:                                        ; preds = %loop, %entry
  %x2 = load i32, ptr %x1, align 4
  %eqtmp = icmp eq i32 %x2, 1
  %cmpResult1 = icmp ne i1 %eqtmp, false
  %whilecondition = icmp ne i1 %cmpResult1, false
  br i1 %whilecondition, label %loop, label %end

end:                                              ; preds = %condition
  %x3 = load i32, ptr %x1, align 4
  %getmp = icmp sgt i32 %x3, 1
  %int_to_bool = icmp ne i1 %getmp, false
  br i1 %int_to_bool, label %then, label %else

then:                                             ; preds = %end
  ret i32 1

else:                                             ; preds = %end
  ret i32 2
  ret i32 3
}
