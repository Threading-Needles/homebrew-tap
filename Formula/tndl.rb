class Tndl < Formula
  desc "Threading Needles platform CLI and MCP bridge"
  homepage "https://tndl.ai"
  version "0.1.62"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/Threading-Needles/homebrew-tap/releases/download/tndl-v0.1.62/tndl-0.1.62-aarch64-apple-darwin.tar.gz"
      sha256 "bcce21217129ff7f13c424044de5a55192d0ca852b87ef62b4d7e7e5e02eb39a"
    end
    on_intel do
      url "https://github.com/Threading-Needles/homebrew-tap/releases/download/tndl-v0.1.62/tndl-0.1.62-x86_64-apple-darwin.tar.gz"
      sha256 "09a389c7a54000206af962df9b0e82def140e6f21d8e998308ce10508f201513"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Threading-Needles/homebrew-tap/releases/download/tndl-v0.1.62/tndl-0.1.62-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b9298c3bd461d57b6e78edaa282334a9423e1baf7874fc1c0a2915fcacbbe156"
    end
    on_arm do
      url "https://github.com/Threading-Needles/homebrew-tap/releases/download/tndl-v0.1.62/tndl-0.1.62-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "699f1a202753639fb135035a5b455e508f8ad4947c7546b7acc36b6cb0185485"
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
