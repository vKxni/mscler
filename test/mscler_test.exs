defmodule MsclerTest do
  use ExUnit.Case
  doctest Mscler

  @moduledoc """
  This is the test module for the Mscler package
  Here we test all the function in the mscler.ex file.
  """

  test "test the api response" do
    assert Mscler.fetchData() != {:error, :invalid_response}
  end

  test "getName returns a string" do
    assert is_binary(Mscler.getName())
  end

  test "getType returns a string" do
    assert is_binary(Mscler.getType())
  end

  test "getDifficulty returns a string" do
    assert is_binary(Mscler.getDifficulty())
  end

  test "getInstructions returns a string" do
    assert is_binary(Mscler.getInstructions())
  end

  test "getEquipment returns a string" do
    assert is_binary(Mscler.getEquipment())
  end

  test "getMuscle returns a string" do
    assert is_binary(Mscler.getMuscle())
  end

  test "getAll returns a map" do
    assert is_map(Mscler.getAll())
  end
end
