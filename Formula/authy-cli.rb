class AuthyCli < Formula
  desc "Alternative client for connecting to Authy"
  homepage "https://github.com/jmhobbs/authy-cli"
  url "https://github.com/jmhobbs/authy-cli/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "192042471f227a4bac7961c03f2f9cdc7d268c23aa4b6f1dea5efd6c1bacfc3b"

  depends_on "go" => :build

  def install
    system "go", "build", "-o", bin/"authy-cli", "."
  end

  test do
    system bin/"authy-cli", "version"
  end
end
