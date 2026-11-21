class Tndl < Formula
  desc "Threading Needles platform CLI and MCP bridge"
  homepage "https://tndl.ai"
  version "0.1.61"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/Threading-Needles/homebrew-tap/releases/download/tndl-v0.1.61/tndl-0.1.61-aarch64-apple-darwin.tar.gz"
      sha256 "ad06bd6fe3e9a6f2a3011a6319668bdb1ca079444d63ac6835fc11ab06a35e34"
    end
    on_intel do
      url "https://github.com/Threading-Needles/homebrew-tap/releases/download/tndl-v0.1.61/tndl-0.1.61-x86_64-apple-darwin.tar.gz"
      sha256 "e697f6203a81ecf4197fd3c4836ee10af7cd5c23bab21ff73386d2f16435f610"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Threading-Needles/homebrew-tap/releases/download/tndl-v0.1.61/tndl-0.1.61-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "de06bf118b0df0ebae4bfebdd7b0f7fa0c59e15fc9f5326808ba5e3dfdec7915"
    end
    on_arm do
      url "https://github.com/Threading-Needles/homebrew-tap/releases/download/tndl-v0.1.61/tndl-0.1.61-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "aca0ebf391730292a5a28999c426b93814105cbca810bc32fab27693261c1c1e"
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
