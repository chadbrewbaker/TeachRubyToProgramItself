#include "ruby.h"

VALUE method_fib(VALUE self, VALUE arg1) {
        int x = 33;
        return INT2NUM(x);
}

void Init_myfib() {
	VALUE MyFib = rb_define_module("MyFib");
	rb_define_method(MyFib, "fib", method_fib, 1);	
}

