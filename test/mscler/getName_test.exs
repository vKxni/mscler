defmodule MsclerTest.Name do
  use ExUnit.Case
  doctest Mscler

  test "returns a random name" do
    assert is_binary(Mscler.getName())
  end
end
