class Catsel < Formula
  desc "Interactive file selector for concatenating and exporting text files"
  homepage "https://github.com/alexaldearroyo/catselector"
  url "https://github.com/alexaldearroyo/catselector/archive/refs/tags/v1.0.2.tar.gz"
  sha256 "127cbb3a6385707e0ee6a6ac00477667651715720be1d98b94bc2444ca7a1de9"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args, "-o", bin/"catsel", "./"
  end

  test do
    system "#{bin}/catsel", "--version"
  end
end
