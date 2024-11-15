; ModuleID = 'mini-c'
source_filename = "mini-c"

@0 = common global i32 0, align 4

define i32 @mutating_function() {
entry:
  %mutable_var = load i32, ptr @0, align 4
  %addtmp = add i32 %mutable_var, 1
  store i32 %addtmp, ptr @0, align 4
  ret i32 1
}

define i32 @lazyeval_and(i32 %control) {
entry:
  %control1 = alloca i32, align 4
  store i32 %control, ptr %control1, align 4
  store i32 0, ptr @0, align 4
  %control2 = load i32, ptr %control1, align 4
  %eqtmp = icmp eq i32 %control2, 1
  %calltmp = call i32 @mutating_function()
  %0 = icmp sgt i32 %calltmp, 0
  %andTmp = and i1 %eqtmp, %0
  %int_to_bool = icmp ne i1 %andTmp, false
  br i1 %int_to_bool, label %then, label %else

then:                                             ; preds = %entry
  %mutable_var = load i32, ptr @0, align 4
  ret i32 %mutable_var

else:                                             ; preds = %entry
  %mutable_var3 = load i32, ptr @0, align 4
  ret i32 %mutable_var3
}

define i32 @lazyeval_or(i32 %control) {
entry:
  %control1 = alloca i32, align 4
  store i32 %control, ptr %control1, align 4
  store i32 0, ptr @0, align 4
  %control2 = load i32, ptr %control1, align 4
  %eqtmp = icmp eq i32 %control2, 1
  %calltmp = call i32 @mutating_function()
  %0 = icmp sgt i32 %calltmp, 0
  %orTmp = or i1 %eqtmp, %0
  %int_to_bool = icmp ne i1 %orTmp, false
  br i1 %int_to_bool, label %then, label %else

then:                                             ; preds = %entry
  %mutable_var = load i32, ptr @0, align 4
  ret i32 %mutable_var

else:                                             ; preds = %entry
  %mutable_var3 = load i32, ptr @0, align 4
  ret i32 %mutable_var3
}
