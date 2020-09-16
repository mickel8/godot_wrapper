defmodule GodotWrapper do
  require Unifex.CNode

  def test() do
    {:ok, pid} = Unifex.CNode.start_link(:native)
    Unifex.CNode.call(pid, :init, [])
  end
end
