class Tndl < Formula
  desc "Threading Needles platform CLI and MCP bridge"
  homepage "https://tndl.ai"
  version "0.1.16"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/Threading-Needles/homebrew-tap/releases/download/tndl-v0.1.16/tndl-0.1.16-aarch64-apple-darwin.tar.gz"
      sha256 "13218d764c3017d0a7ef30e5431dc0fdc234da57f93d23bb81cc0f97a89a4494"
    end
    on_intel do
      url "https://github.com/Threading-Needles/homebrew-tap/releases/download/tndl-v0.1.16/tndl-0.1.16-x86_64-apple-darwin.tar.gz"
      sha256 "4559e842ecc38348f8131936baf5b6adac8b9333f4c56ef691e71db8253cc674"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Threading-Needles/homebrew-tap/releases/download/tndl-v0.1.16/tndl-0.1.16-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "f136659895fd315bd35f2060bfb6cb55cd0921698d788bb0f53f8b3a0226e94b"
    end
    on_arm do
      url "https://github.com/Threading-Needles/homebrew-tap/releases/download/tndl-v0.1.16/tndl-0.1.16-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "7eda93fb433caf1db988f6f0ef2eb8c5eff0c8667216178af54145a50eba0e43"
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
