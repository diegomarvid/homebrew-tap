class Transcript < Formula
  desc "Manage Transcript recordings, tags, sharing, and meeting detection"
  homepage "https://github.com/diegomarvid/transcript-app"
  url "https://pub-7d99cd07d4d741d296b2c69112c91153.r2.dev/transcript-cli-1.8.0-arm64.tar.gz"
  version "1.8.0"
  sha256 "d2da40722874bc5175466d0f7cea02058dc5bce6be80ea9b79f19a749ec7b1ff"

  depends_on arch: :arm64
  depends_on macos: :sonoma

  def install
    bin.install "transcript-cli" => "transcript"
  end

  test do
    assert_match "CLI for the Transcript App", shell_output("#{bin}/transcript --help")
  end
end
