class Tndl < Formula
  desc "Threading Needles platform CLI and MCP bridge"
  homepage "https://tndl.ai"
  version "0.1.60"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/Threading-Needles/homebrew-tap/releases/download/tndl-v0.1.60/tndl-0.1.60-aarch64-apple-darwin.tar.gz"
      sha256 "c72df4d2711117cbf28ec84e7b3115fc0871f379ffb786fcf3fcbb8f90574ccc"
    end
    on_intel do
      url "https://github.com/Threading-Needles/homebrew-tap/releases/download/tndl-v0.1.60/tndl-0.1.60-x86_64-apple-darwin.tar.gz"
      sha256 "3aee250c9d3d5eda652670432b00d97474933f0212ef6bb1cd37ec5abf529d62"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Threading-Needles/homebrew-tap/releases/download/tndl-v0.1.60/tndl-0.1.60-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "5ed90c2152f81cb058b59b1f1f8ea38191bd0e2eef7c30f93091cd05a565c802"
    end
    on_arm do
      url "https://github.com/Threading-Needles/homebrew-tap/releases/download/tndl-v0.1.60/tndl-0.1.60-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "fb77891a6861f2cde0e300d958a7b2b2efae0b424fb0d4bc1bf866e2906ff84a"
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
