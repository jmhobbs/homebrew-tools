class PacketDiagram < Formula
  desc "Simple CLI visualizer for packets (or any binary data really)"
  homepage "https://github.com/jmhobbs/packet-diagram"
  url "https://github.com/jmhobbs/packet-diagram/archive/refs/tags/v0.0.1.tar.gz"
  sha256 "e3ae07cdf3ed5e218f622e486050b76e416e8cb6fcec90ff15850eee97739423"

  depends_on "go" => :build

  def install
    system "go", "build", "-o", bin/"packet-diagram", "./cmd/packet-diagram"
  end
end
