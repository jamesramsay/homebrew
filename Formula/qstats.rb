class Qstats < Formula
  desc "Quick and dirty statistics for the Unix pipeline"
  homepage "https://github.com/tonyfischetti/qstats"
  url "https://github.com/tonyfischetti/qstats/archive/master.tar.gz"
  head "https://github.com/tonyfischetti/qstats.git"
  version "1.0.0"
  sha256 ""

  def install
    system "make", "PREFIX=#{prefix}", "install"
  end

  test do
    system "qstats"
  end
end
