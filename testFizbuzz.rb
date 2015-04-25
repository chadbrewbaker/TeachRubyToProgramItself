require 'simplecov'
SimpleCov.start

require 'test/unit'
require './fizzbuzz'

class TestFizzbuzz < Test::Unit::TestCase

#(declare-const a Int)
#(= 0 (mod a 3))
 def test_nine
   assert_equal("Buzz", fizbuzz(9))
 end


#(declare-const a Int)
#(= 0 (mod a 5))
  def test_twenty_five
   assert_equal("Fizz", fizbuzz(25))
 end 

 def test_fiveeightyfive
   assert_equal("FizzBuzz", fizbuzz(585))
 end

  def test_two
     assert_equal(2, fizbuzz(2))
  end

  def test_jabber
     assert_equal("Jaberwocky", fizbuzz(371))
  end


end

