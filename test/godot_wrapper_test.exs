defmodule GodotWrapperTest do
  use ExUnit.Case
  doctest GodotWrapper

  test "greets the world" do
    assert GodotWrapper.hello() == :world
  end
end
