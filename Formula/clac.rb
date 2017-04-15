class Clac < Formula
  desc "A command line, stack-based calculator with postfix notation"
  homepage "https://github.com/soveran/clac"
  url "https://github.com/soveran/clac/archive/master.tar.gz"
  head "https://github.com/soveran/clac.git"
  version "0.0.1"
  sha256 ""

  def install
    system "make", "PREFIX=#{prefix}", "install"
  end

  test do
    system "clac"
  end
end
