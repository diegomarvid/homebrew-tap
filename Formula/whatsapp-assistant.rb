class WhatsappAssistant < Formula
  desc "Local WhatsApp recent-context bridge and CLI"
  homepage "https://github.com/diegomarvid/whatsapp-assistant"
  url "https://github.com/diegomarvid/whatsapp-assistant/archive/refs/tags/v0.2.0.tar.gz"
  sha256 "c227e54b0cc65080bea02881ccc2c58a9f0ac6d51055eeae600f67414af72046"
  license "MIT"
  revision 2

  depends_on "node@24"

  def install
    system Formula["node@24"].opt_bin/"npm", "install", *std_npm_args
    (bin/"wa").write_env_script libexec/"bin/wa", PATH: "#{Formula["node@24"].opt_bin}:$PATH"
  end

  def caveats
    <<~EOS
      Finish setup with:
        wa setup

      This starts a per-user local bridge and opens a QR only when WhatsApp
      needs to link this device. Private WhatsApp state is stored outside
      Homebrew at ~/Library/Application Support/WhatsApp Assistant/.

      To migrate a prior checkout without another QR:
        wa migrate-state ~/Documents/whatsapp-assistant
        wa setup
    EOS
  end

  test do
    assert_match "wa setup", shell_output("#{bin}/wa --help")
  end
end
