require "dlist"

describe List do
  describe "#push" do
    it "should push value to empty list" do
      list = List.new
      list.push 13

      list.head.value.should == 13
      list.tail.value.should == 13
    end

    it "should push value to the end of non-empty list" do
      list = List.new
      list.push 13

      list.push 17

      list.head.value.should == 13
      list.tail.value.should == 17
    end
  end
end
