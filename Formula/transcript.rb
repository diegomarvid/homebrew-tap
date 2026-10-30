class Transcript < Formula
  desc "Manage Transcript recordings, tags, sharing, and meeting detection"
  homepage "https://github.com/diegomarvid/transcript-app"
  url "https://pub-7d99cd07d4d741d296b2c69112c91153.r2.dev/transcript-cli-1.13.0-arm64.tar.gz"
  version "1.13.0"
  sha256 "25dc50f193f60cf8bf34ba790489aa8d16482f4b9348056c9eb58f588ef9c55f"

  depends_on arch: :arm64
  depends_on macos: :sonoma

  def install
    bin.install "transcript-cli" => "transcript"
  end

  test do
    assert_match "CLI for the Transcript App", shell_output("#{bin}/transcript --help")
  end
end
