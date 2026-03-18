class Transcript < Formula
  desc "CLI for the Transcript App — manage recordings, tags, sharing, and detect meetings"
  homepage "https://github.com/diegomarvid/transcript-app"
  version "1.4.0"

  url "https://pub-7d99cd07d4d741d296b2c69112c91153.r2.dev/transcript-cli-1.4.0-arm64.tar.gz"
  sha256 "5739e6a721e747c53f1114692f5f4b30ce61505d3802cb97277ca56842ad394b"

  depends_on arch: :arm64
  depends_on macos: :sonoma

  def install
    bin.install "transcript-cli" => "transcript"
  end

  test do
    assert_match "Transcript App CLI", shell_output("#{bin}/transcript --help")
  end
end
