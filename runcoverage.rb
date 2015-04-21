require "coverage.so"

#fileToLines :: [String] -> [Maybe Int] -> [(Maybe Int, String)]  
def fileToLines(fname, coverage)
  f = File.open(fname).read
 line_num = 0  
 pairs =[]
 f.each_line do |line|
 pairs.push [ coverage[line_num], line]  
  #print "#{coverage[line_num].to_s}] #{line}"
   line_num +=1
end
 pairs
end




Coverage.start
require_relative "foo.rb"
cov =  Coverage.result
cov_ret =[]
cov.each {|key, value| cov_ret = value }

pairs = fileToLines("foo.rb", cov_ret)

p pairs
