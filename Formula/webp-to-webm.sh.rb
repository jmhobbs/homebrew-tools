class WebpToWebmSh < Formula
  desc "Convert animated webp to webm video"
  homepage "https://github.com/jmhobbs/webp-to-webm.sh"
  url "https://github.com/jmhobbs/webp-to-webm.sh/releases/download/v1.0.0/webp-to-webm.sh"
  sha256 "c15541c23ae5c06e624aedfb0b370136032d181d19dbdc937e1a6e5503bd4374"

  depends_on "ffmpeg"
  depends_on "webp"

  def install
    bin.install "webp-to-webm.sh" => "webp-to-webm.sh"
  end

  test do
    system bin/"webp-to-webm.sh", "--help"
  end
end
