class Tndl < Formula
  desc "Threading Needles platform CLI and MCP bridge"
  homepage "https://tndl.ai"
  version "0.1.49"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/Threading-Needles/homebrew-tap/releases/download/tndl-v0.1.49/tndl-0.1.49-aarch64-apple-darwin.tar.gz"
      sha256 "300dfdfd14f4997e736916bb2b9a5420a91f9f2a13035e57a7e4d920d8759627"
    end
    on_intel do
      url "https://github.com/Threading-Needles/homebrew-tap/releases/download/tndl-v0.1.49/tndl-0.1.49-x86_64-apple-darwin.tar.gz"
      sha256 "993067cec5f139564cbadb2ab866769eb73bf5bb0e3327d8941d97939ffc07c5"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Threading-Needles/homebrew-tap/releases/download/tndl-v0.1.49/tndl-0.1.49-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "cf014d5c86c0e4ee07892ba37b63c173575e8da13cf2febd188594de0dc49678"
    end
    on_arm do
      url "https://github.com/Threading-Needles/homebrew-tap/releases/download/tndl-v0.1.49/tndl-0.1.49-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "578ea731326dccb61411ad86c91b7970b356ed3f92df7c377848610a5da75333"
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
