class AnsiHtml < Formula
  desc "ANSI to HTML conversion tool"
  homepage "https://github.com/jmhobbs/ansi-html"
  url "https://github.com/jmhobbs/ansi-html/archive/refs/tags/v0.0.1.tar.gz"
  sha256 "bae9be9a939c701819c3a23ceb932a33a9f70135f5dafc81b355075d5a78c468"

  depends_on "go" => :build

  def install
    system "go", "build", "-o", bin/"ansi-html", "."
  end

  test do
    system "true" # TODO
  end
end
