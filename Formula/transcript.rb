class Transcript < Formula
  desc "CLI for the Transcript App — manage recordings, tags, sharing, and detect meetings"
  homepage "https://github.com/diegomarvid/transcript-app"
  version "1.0.9"

  url "https://github.com/diegomarvid/transcript-app/releases/download/v1.0.9/transcript-cli-arm64.tar.gz"
  sha256 "e8be3ec978344951c5c8b6b94f8c9904761d825e9deb80c4e904c3fcdaa075d3"

  depends_on arch: :arm64
  depends_on macos: :sonoma

  def install
    bin.install "transcript-cli" => "transcript"
  end

  test do
    assert_match "Transcript App CLI", shell_output("#{bin}/transcript --help")
  end
end
