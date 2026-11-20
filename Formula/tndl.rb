class Tndl < Formula
  desc "Threading Needles platform CLI and MCP bridge"
  homepage "https://tndl.ai"
  version "0.1.57"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/Threading-Needles/homebrew-tap/releases/download/tndl-v0.1.57/tndl-0.1.57-aarch64-apple-darwin.tar.gz"
      sha256 "78bc99fe381b7f9fcfff95275cb5eae4bc839096963797e492b10baedef57895"
    end
    on_intel do
      url "https://github.com/Threading-Needles/homebrew-tap/releases/download/tndl-v0.1.57/tndl-0.1.57-x86_64-apple-darwin.tar.gz"
      sha256 "e488f7a61937c39df317b1d4e0e16bca12a71d938d9f2a9501ab83b53f0584c1"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Threading-Needles/homebrew-tap/releases/download/tndl-v0.1.57/tndl-0.1.57-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "07aef2ba99df726f81617cf5172792f802bf3acd881248c6a0dc4a3539c06ac4"
    end
    on_arm do
      url "https://github.com/Threading-Needles/homebrew-tap/releases/download/tndl-v0.1.57/tndl-0.1.57-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "27785c8c4ab2ef5174ee6dd91380db0ad6a7d54d70a8e6881245de0fa3a4ba3e"
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
