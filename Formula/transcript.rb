class Transcript < Formula
  desc "CLI for the Transcript App — manage recordings, tags, sharing, and detect meetings"
  homepage "https://github.com/diegomarvid/transcript-app"
  version "1.3.2"

  url "https://pub-7d99cd07d4d741d296b2c69112c91153.r2.dev/transcript-cli-1.3.2-arm64.tar.gz"
  sha256 "4001edb36c3ccfd56521fc005841449ddeaed3f6f285e947a8d824b0ceaa152c"

  depends_on arch: :arm64
  depends_on macos: :sonoma

  def install
    bin.install "transcript-cli" => "transcript"
  end

  test do
    assert_match "Transcript App CLI", shell_output("#{bin}/transcript --help")
  end
end
