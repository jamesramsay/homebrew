class Bat < Formula
  desc "A cat(1) clone with syntax highlighting and Git integration"
  homepage "https://github.com/sharkdp/bat"
  url "https://github.com/sharkdp/bat/archive/v0.2.3.tar.gz"
  sha256 "e812f6f81eef0119af74d33d44c3723f45b54c3bc0bd7c12f91f5e1b3ac84f07"

  depends_on "cmake" => :build
  depends_on "rust" => :build

  def install
    system "cargo", "build", "--release"
    bin.install "target/release/bat"
  end

  test do
    system bin/"bat", prefix/"README.md"
  end
end
