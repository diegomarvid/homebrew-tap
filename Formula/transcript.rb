class Transcript < Formula
  desc "CLI for the Transcript App — manage recordings, tags, sharing, and detect meetings"
  homepage "https://github.com/diegomarvid/transcript-app"
  version "1.7.5"

  url "https://pub-7d99cd07d4d741d296b2c69112c91153.r2.dev/transcript-cli-1.7.5-arm64.tar.gz"
  sha256 "a54cc1b38f2c66cd57bf99bf31086413a5a959656009e85d1344fe339c172042"

  depends_on arch: :arm64
  depends_on macos: :sonoma

  def install
    bin.install "transcript-cli" => "transcript"
  end

  test do
    assert_match "CLI for the Transcript App", shell_output("#{bin}/transcript --help")
  end
end
