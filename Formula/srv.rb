class Srv < Formula
  desc "Small, simple, local web server"
  homepage "https://github.com/jmhobbs/srv"
  url "https://github.com/jmhobbs/srv/archive/refs/tags/v0.0.5.tar.gz"
  sha256 "5801efe6ea7544051db39377799d347b9a6e0c35d0413dfb247b0ac7a77910f1"

  depends_on "go" => :build

  def install
    system "go", "build", "-o", bin/"srv", "."
  end

  test do
    system bin/"srv", "-version"
  end
end
