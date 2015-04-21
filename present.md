
Easymode, call your C binary from the shell in Ruby

{% highlight ruby %}
print `echo Just use backticks`
{% endhighlight}

Call your Ruby code fom C

{% highlight c %}
#include "ruby.h"
int main(int argc, char **argv) { V
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
{% endhighlight %}


[How to write Ruby extensions in C](https://github.com/ruby/rubyruby/doc/extension.rdoc)




git clone https://github.com/ruby/ruby.git

brew install openssl 

(optional) uncomment #option nodynamic in RUBYSRC/ext/Setup 

mkdir ~/.rubies
CFLAGS='--coverage -g -O0 -Wall' LDFLAGS='--coverage'   ./configure --prefix=/Users/crb002/.rubies/ruby-trunk --with-openssl-dir=/usr/local/opt/openssl
make
make test
make test-all
#make test-all TESTS="csv/"

brew install lcov
lcov --capture --directory ./  --output-file coverage.info
genhtml coverage.info --output-directory coveragehtml

file:///Users/crb002/github/ruby/coveragehtml/ruby/index.html

#Raw ruby coverage using Coverage

require "coverage.so"
Coverage.start
#run your code
p Coverage.result

#Simplecov html pretty-print coverage

require 'simplecov'
SimpleCov.start





