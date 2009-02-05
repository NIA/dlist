require 'dlist'
require 'test/unit'

class TestList < Test::Unit::TestCase
  def setup
    @list = List.new
  end

  def _check_bounds
    assert_nil( @list.head.prev, "Head's prev should be nil" )
    assert_nil( @list.tail.nxt, "Tail's nxt should be nil" )
  end

  def test_push_to_empty
    @list.push 2
    
    assert_equal( @list.head, @list.tail, "Head and tail should be equal" )
    assert_not_nil( @list.head, "Head should not be nil" )
    assert_equal( @list.head.value, 2, "Value in head should be equal to pushed value")

    _check_bounds 
 end

  def test_push_to_not_empty
    @list.push 2
    @list.push 8

    assert_not_equal( @list.head, @list.tail, "Head and tail shouldn't be equal" )
    assert_not_nil( @list.head, "Head shouldn't be nil" )
    assert_not_nil( @list.tail, "Tail shouldn't be nil" )
    assert_equal( @list.head.value, 2, "Value in head should be equal to first pushed value" )
    assert_equal( @list.tail.value, 8, "Value in head should be equal to last pushed value" )
    assert_equal( @list.head.nxt, @list.tail, "Tail should be head's nxt" )
    assert_equal( @list.tail.prev, @list.head, "Head should be tail's prev" )

    _check_bounds 
  end
end
