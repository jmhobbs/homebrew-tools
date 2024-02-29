class Servethis < Formula
  desc "Serve content from pipe to browser"
  homepage "https://github.com/jmhobbs/servethis"
  url "https://github.com/jmhobbs/servethis/archive/8a042d2688693728b3556521d9a0697ccaa7d0b2.zip"
  sha256 "bd1a334e388e09f81ae6e65232ffbf2279a76eba9730b6e96a2e1647fa303af2"

  depends_on "go" => :build

  def install
    system "go", "build", "-o", bin/"servethis", "."
  end

#  test do
#    system bin/"servethis", "--help"
#  end
end
