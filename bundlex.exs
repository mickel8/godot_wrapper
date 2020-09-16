defmodule GodotWrapper.BundlexProject do
  use Bundlex.Project

  def project do
    [
      natives: natives(),
    ]
  end

  defp natives do
    [
      native: [
        sources: ["native.c"],
        deps: [unifex: :unifex],
        includes: ["~/Repos/godot/"],
        libs: ["core.linuxbsd.tools.64"],
        lib_dirs: ["~/Repos/godot/core"],
        interface: :cnode,
        preprocessor: Unifex
      ]
    ]
  end
end