class Lock < Formula
  desc "Lock your Mac from the command-line"
  homepage "https://github.com/sindresorhus/macos-lock"
  url "https://github.com/sindresorhus/macos-lock/archive/v1.0.0.tar.gz"
  head "https://github.com/sindresorhus/macos-lock.git"
  version "1.0.0"
  sha256 "0fa86e5a0aa47754892e31a267d8083c026ca80c0a1a374d9a643f2698c477e2"

  def install
    system "./build"
    bin.install "lock"
  end

  test do
    system "lock"
  end
end
