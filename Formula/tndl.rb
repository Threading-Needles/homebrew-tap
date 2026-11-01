class Tndl < Formula
  desc "Threading Needles platform CLI and MCP bridge"
  homepage "https://tndl.ai"
  version "0.1.6"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/Threading-Needles/homebrew-tap/releases/download/tndl-v0.1.6/tndl-0.1.6-aarch64-apple-darwin.tar.gz"
      sha256 "6a09396d762ad4c82ffdba8f4e43570ea4879946cc53973ca4d6c6e2cf2265a1"
    end
    on_intel do
      url "https://github.com/Threading-Needles/homebrew-tap/releases/download/tndl-v0.1.6/tndl-0.1.6-x86_64-apple-darwin.tar.gz"
      sha256 "d7983172a0445a1e08452487745d697a9ff29c4384e8a73feddc223d8d77fefe"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Threading-Needles/homebrew-tap/releases/download/tndl-v0.1.6/tndl-0.1.6-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "f7120927177be862048eef132fbd872edbc650bb69aefa0ec6edaf86ae1e86e0"
    end
    on_arm do
      url "https://github.com/Threading-Needles/homebrew-tap/releases/download/tndl-v0.1.6/tndl-0.1.6-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "4ee869575582379892d8dc99553c55795702e87bcee6ef3f529f668ba1eef9af"
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
