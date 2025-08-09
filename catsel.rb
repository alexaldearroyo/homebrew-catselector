class Catsel < Formula
  desc "Interactive file selector for concatenating and exporting text files"
  homepage "https://github.com/alexaldearroyo/catselector"
  url "https://github.com/alexaldearroyo/catselector/archive/refs/tags/v1.0.4.tar.gz"
  sha256 "a3e93d709503194b7ba982629d61813166ef10f3c837c316144e5cebe751755e"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args, "-o", bin/"catsel", "./"
  end

  test do
    system "#{bin}/catsel", "--version"
  end
end
