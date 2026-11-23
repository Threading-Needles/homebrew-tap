class Tndl < Formula
  desc "Threading Needles platform CLI and MCP bridge"
  homepage "https://tndl.ai"
  version "0.1.64"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/Threading-Needles/homebrew-tap/releases/download/tndl-v0.1.64/tndl-0.1.64-aarch64-apple-darwin.tar.gz"
      sha256 "7900e92afbaf89e2a04428daa34c5b17457feba6f5d9c1b4a10b6000a6da2107"
    end
    on_intel do
      url "https://github.com/Threading-Needles/homebrew-tap/releases/download/tndl-v0.1.64/tndl-0.1.64-x86_64-apple-darwin.tar.gz"
      sha256 "a06a3fcdef90efe6ce8f613b1dccbf3064dd7e7101cdb4049dfb9eae623b62a1"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Threading-Needles/homebrew-tap/releases/download/tndl-v0.1.64/tndl-0.1.64-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "5b91a9f7df96aeda57a7176cedcf1834d82066b142e34d91fe3d72850ecea138"
    end
    on_arm do
      url "https://github.com/Threading-Needles/homebrew-tap/releases/download/tndl-v0.1.64/tndl-0.1.64-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "1650be0851da0214d539f7185dda17eb2789a3af134529fe1da8ed589fc43920"
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
