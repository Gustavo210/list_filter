defmodule ListFilterTest do
  use ExUnit.Case

  describe "call/1" do
    test "Return odd numbes" do
      list = ["1", "3", "6", "43", "banana", "6", "abc"]
      expected_list = ["1", "3", "43"]

      odd_list = ListFilter.call(list)

      assert expected_list == odd_list
    end
  end
end
