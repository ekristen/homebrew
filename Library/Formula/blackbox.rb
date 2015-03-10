class Blackbox < Formula
  homepage "https://github.com/StackExchange/blackbox"
  url "https://github.com/StackExchange/blackbox/archive/v1.20150304.tar.gz"
  sha256 "62093e2dad03344f677f0bb1243d95da11e5518280a176787b76a86196fbad8b"

  def install
    rm "bin/Makefile"
    bin.install Dir["bin/*"]
  end

  test do
    system "#{bin}/blackbox_cat"
  end

end
