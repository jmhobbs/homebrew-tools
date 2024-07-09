class Servethis < Formula
  desc "Serve content from pipe to browser"
  homepage "https://github.com/jmhobbs/servethis"
  url "https://github.com/jmhobbs/servethis/archive/8a042d2688693728b3556521d9a0697ccaa7d0b2.tar.gz"
  sha256 "053132eb1c5ba23c912f7687d7001c7ca4b66dd67827ad24475554729c72361e"

  depends_on "go" => :build

  def install
    system "go", "build", "-o", bin/"servethis", "."
  end

  test do
    system bin/"servethis", "--help"
  end
end
