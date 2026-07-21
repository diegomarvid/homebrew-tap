class WhatsappAssistant < Formula
  desc "Local WhatsApp recent-context bridge and CLI"
  homepage "https://github.com/diegomarvid/whatsapp-assistant"
  url "https://github.com/diegomarvid/whatsapp-assistant/archive/refs/tags/v0.8.1.tar.gz"
  sha256 "fcb69335738469804556e0bce5f7f730f8e67210c5bcc76ce12017aff5f1c1f4"
  license "MIT"

  depends_on "node@24"

  def install
    system formula_opt_bin("node@24")/"npm", "install", *std_npm_args
    (bin/"wa").write <<~EOS
      #!/bin/bash
      export PATH="#{formula_opt_bin("node@24")}:$PATH"
      export WA_DAEMON_NODE="#{formula_opt_bin("node@24")}/node"
      export WA_DAEMON_ENTRY="#{opt_prefix}/libexec/lib/node_modules/whatsapp-assistant/bin/wa.js"
      export WA_DAEMON_CWD="#{opt_prefix}/libexec/lib/node_modules/whatsapp-assistant/src"
      exec "#{libexec}/bin/wa" "$@"
    EOS
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
