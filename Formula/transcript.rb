class Transcript < Formula
  desc "CLI for the Transcript App — manage recordings, tags, sharing, and detect meetings"
  homepage "https://github.com/diegomarvid/transcript-app"
  version "1.1.1"

  url "https://pub-7d99cd07d4d741d296b2c69112c91153.r2.dev/transcript-cli-1.1.1-arm64.tar.gz"
  sha256 "c806e642bc40f0a4c08a86846197467a4e791a95c67ce3e05d0cc0df259c9eaf"

  depends_on arch: :arm64
  depends_on macos: :sonoma

  def install
    bin.install "transcript-cli" => "transcript"
  end

  test do
    assert_match "Transcript App CLI", shell_output("#{bin}/transcript --help")
  end
end
