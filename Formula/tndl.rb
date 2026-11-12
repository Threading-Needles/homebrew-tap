class Tndl < Formula
  desc "Threading Needles platform CLI and MCP bridge"
  homepage "https://tndl.ai"
  version "0.1.39"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/Threading-Needles/homebrew-tap/releases/download/tndl-v0.1.39/tndl-0.1.39-aarch64-apple-darwin.tar.gz"
      sha256 "b5af585978f7fbe3fc1302893792598fbe33a555d6392ed1b45ddb6ae31361ac"
    end
    on_intel do
      url "https://github.com/Threading-Needles/homebrew-tap/releases/download/tndl-v0.1.39/tndl-0.1.39-x86_64-apple-darwin.tar.gz"
      sha256 "d10a5e5a681ef49c46c92f60038e9dbf1467cf86d174b0c0e6dc1c4c5c77b55f"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Threading-Needles/homebrew-tap/releases/download/tndl-v0.1.39/tndl-0.1.39-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "5bdd8aae2091328a2995d7b1d52cd4ba32e2b4614178a18afaa41e2185cdbc8d"
    end
    on_arm do
      url "https://github.com/Threading-Needles/homebrew-tap/releases/download/tndl-v0.1.39/tndl-0.1.39-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "f5dbc78a5c865df249c6f0efae1185da0486e3aabe4d6593274c3338477f92f2"
    end
  end

  def install
    bin.install "tndl"
    generate_completions_from_executable(bin/"tndl", "completions")
  end

  test do
    assert_equal "tndl #{version}", shell_output("#{bin}/tndl --version").strip
    assert_match "catalogue", shell_output("#{bin}/tndl --help")
  end
end
