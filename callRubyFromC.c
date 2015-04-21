#include "ruby.h"
#include <stdio.h>
int main(int argc, char **argv)
{ 
  VALUE result;
  ruby_sysinit(&argc, &argv);
  RUBY_INIT_STACK;
  ruby_init();
  ruby_init_loadpath();
  rb_eval_string("x = 3*4") ;
  result = rb_gv_get("x");
  printf("Result = %d\n", NUM2INT(result));
  return ruby_cleanup(0);
}
