class AtSpi2Atk < Formula
  desc "Accessibility Toolkit GTK+ module"
  homepage "http://a11y.org"
  url "https://download.gnome.org/sources/at-spi2-atk/2.24/at-spi2-atk-2.24.1.tar.xz"
  sha256 "60dc90ac4f74b8ffe96a9363c25208a443b381bacecfefea6de549f20ed6957d"

  bottle do
    cellar :any
    sha256 "ae9185cac55688d3189fba948f0715ea2fb50e1fe7bd21f7822ac02ef8830ebd" => :sierra
    sha256 "bac769fa1f39e95d37c5abf01d99e1e14e05489d9efd6e19415d07d81f2bd2cd" => :el_capitan
    sha256 "c1a1dd0a265a8b2a4ce9630c3408350459980e7e9258eb35bea3896e4e289805" => :yosemite
  end

  depends_on "pkg-config" => :build
  depends_on "at-spi2-core"
  depends_on "atk"

  def install
    system "./configure", "--disable-dependency-tracking", "--prefix=#{prefix}"
    system "make", "install"
  end
end
