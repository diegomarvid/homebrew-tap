class Transcript < Formula
  desc "Manage Transcript recordings, tags, sharing, and meeting detection"
  homepage "https://github.com/diegomarvid/transcript-app"
  url "https://pub-7d99cd07d4d741d296b2c69112c91153.r2.dev/transcript-cli-1.9.0-arm64.tar.gz"
  version "1.9.0"
  sha256 "78948ff2ad056e7a28114a45736ceb1fad2a050be2d2553c1941a20f494d04bd"

  depends_on arch: :arm64
  depends_on macos: :sonoma

  def install
    bin.install "transcript-cli" => "transcript"
  end

  test do
    assert_match "CLI for the Transcript App", shell_output("#{bin}/transcript --help")
  end
end
