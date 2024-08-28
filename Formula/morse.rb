class Morse < Formula
  desc "Encode and decode, Morse code"
  homepage "https://github.com/jmhobbs/morse"
  url "https://github.com/jmhobbs/morse/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "dcccd6bf86ca417aa0471eaf78ce5a01c83d607dcea7c91d0f16716fa8eef0f9"

  depends_on "go" => :build

  def install
    system "go", "build", "-o", bin/"morse", "."
  end

  test do
    system bin/"morse", "-h"
  end
end
