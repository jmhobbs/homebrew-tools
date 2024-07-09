class Slowbro < Formula
  desc "A turborepo remote cache implementation"
  homepage "https://github.com/jmhobbs/slowbro"
  url "https://github.com/jmhobbs/slowbro/archive/refs/tags/v0.0.1.tar.gz"
  sha256 "1ea26feeed89f59da68a1b573c946f8f7f71331c7afa04a1d802ab928fae998e"

  depends_on "go" => :build

  def install
    system "go", "build", "-o", bin/"slowbro", "./cmd/server"
  end
end
