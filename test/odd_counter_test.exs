defmodule OddCounterTest do
  use ExUnit.Case

  describe "call/1" do
    test "counts odd numbers" do
      list = ["1", "3", "6", "43", "banana", "6", "abc"]

      expected_response = 3
      response = OddCounter.call(list)

      assert response == expected_response
    end
  end
end
