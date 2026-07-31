class Transcript < Formula
  desc "Manage Transcript recordings, tags, sharing, and meeting detection"
  homepage "https://github.com/diegomarvid/transcript-app"
  url "https://pub-7d99cd07d4d741d296b2c69112c91153.r2.dev/transcript-cli-1.12.0-arm64.tar.gz"
  version "1.12.0"
  sha256 "e3dbf2148a8108ac23c52a48f8a180a8816f4217aeb80b276899c73564e51f35"

  depends_on arch: :arm64
  depends_on macos: :sonoma

  def install
    bin.install "transcript-cli" => "transcript"
  end

  test do
    assert_match "CLI for the Transcript App", shell_output("#{bin}/transcript --help")
  end
end
