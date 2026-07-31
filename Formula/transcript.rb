class Transcript < Formula
  desc "Manage Transcript recordings, tags, sharing, and meeting detection"
  homepage "https://github.com/diegomarvid/transcript-app"
  url "https://pub-7d99cd07d4d741d296b2c69112c91153.r2.dev/transcript-cli-1.11.0-arm64.tar.gz"
  version "1.11.0"
  sha256 "ab1a12c93e3b0b41e49d73b1f1836dcc48c0494fd4831c0b60a49c53a2ff3fa9"

  depends_on arch: :arm64
  depends_on macos: :sonoma

  def install
    bin.install "transcript-cli" => "transcript"
  end

  test do
    assert_match "CLI for the Transcript App", shell_output("#{bin}/transcript --help")
  end
end
