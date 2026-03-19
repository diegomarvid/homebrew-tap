class Transcript < Formula
  desc "CLI for the Transcript App — manage recordings, tags, sharing, and detect meetings"
  homepage "https://github.com/diegomarvid/transcript-app"
  version "1.4.3"

  url "https://pub-7d99cd07d4d741d296b2c69112c91153.r2.dev/transcript-cli-1.4.3-arm64.tar.gz"
  sha256 "3d93a9f957401680687147fb58898b9e77b540c996577f9abe61156875406d55"

  depends_on arch: :arm64
  depends_on macos: :sonoma

  def install
    bin.install "transcript-cli" => "transcript"
  end

  test do
    assert_match "Transcript App CLI", shell_output("#{bin}/transcript --help")
  end
end
