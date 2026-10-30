class Tndl < Formula
  desc "Threading Needles platform CLI and MCP bridge"
  homepage "https://tndl.ai"
  version "0.1.3"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/Threading-Needles/homebrew-tap/releases/download/tndl-v0.1.3/tndl-0.1.3-aarch64-apple-darwin.tar.gz"
      sha256 "fb046dc4ac51fcae45acb433abb706b137759f4723336794a348c58e71e698c1"
    end
    on_intel do
      url "https://github.com/Threading-Needles/homebrew-tap/releases/download/tndl-v0.1.3/tndl-0.1.3-x86_64-apple-darwin.tar.gz"
      sha256 "12350f55ca6de4c62b463bc3f15469f989929e68ff2fa0910e2125b742df6a6c"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Threading-Needles/homebrew-tap/releases/download/tndl-v0.1.3/tndl-0.1.3-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d405ecf9d41c6fe66ce31851f59c15ce54a36e24bd1b834ee53f7d0ec34ff80f"
    end
    on_arm do
      url "https://github.com/Threading-Needles/homebrew-tap/releases/download/tndl-v0.1.3/tndl-0.1.3-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "45f97c552da02dc414f717ab8b6f4fb5511f41748bec49a4927724ca19f6a25e"
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
