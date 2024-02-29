class Srv < Formula
  desc "Small, simple, local web server."
  homepage "https://github.com/jmhobbs/srv"
  url "https://github.com/jmhobbs/srv/archive/3fa0db1e54f2e695aac9eb415fe39e38f2da746a.zip"
  sha256 "df170efb5efba020203e9abf10fae994e3e544def71f4f92f24fa2aba6517a47"
  version "0.0.3"

  depends_on "go" => :build

  def install
    system "go", "build", "-o", bin/"srv", "."
  end

  test do
    system bin/"srv", "-version"
  end
end
