class Doug < Formula
  desc "Command line tool for time tracking"
  homepage "https://github.com/getdoug/doug"
  url "https://github.com/getdoug/doug/archive/1.5.1.tar.gz"
  sha256 ""
  head "https://github.com/getdoug/doug.git"

  depends_on "rust" => :build

  def install
    system "cargo", "build", "--release"

    bin.install "target/release/doug"
  end

  test do
    system "#{bin}/doug", "cancel"
  end

end
