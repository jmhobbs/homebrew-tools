class Srv < Formula
  desc "Small, simple, local web server."
  homepage "https://github.com/jmhobbs/srv"
  url "https://github.com/jmhobbs/srv/archive/refs/tags/v0.0.4.tar.gz"
  sha256 "7a5f52e66e930b828bc1ad8c3078c6c515953bbfcdf9843167478bd7d8c4c620"

  depends_on "go" => :build

  def install
    system "go", "build", "-o", bin/"srv", "."
  end

  test do
    system bin/"srv", "-version"
  end
end
