class Catsel < Formula
  desc "Interactive file selector for concatenating and exporting text files"
  homepage "https://github.com/alexaldearroyo/catselector"
  url "https://github.com/alexaldearroyo/catselector/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "c23b22063a7416ffa9caec0937ffd2b46554e71dc9efebaf96d4311dfa4db07e"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args, "-o", bin/"catsel", "./"
  end

  test do
    system "#{bin}/catsel", "--version"
  end
end
