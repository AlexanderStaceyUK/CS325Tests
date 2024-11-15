; ModuleID = 'mini-c'
source_filename = "mini-c"

define i1 @foo(i32 %x) {
entry:
  %x1 = alloca i32, align 4
  store i32 %x, ptr %x1, align 4
  %x2 = load i32, ptr %x1, align 4
  ret i32 %x2
}

define i32 @main() {
entry:
  %x = alloca i1, align 1
  %calltmp = call i1 @foo(i32 5)
  store i1 %calltmp, ptr %x, align 1
  ret i32 0
}
