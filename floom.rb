class Floom < Formula
    desc "Floom CLI is a powerful command-line interface designed to simplify the configuration, management, and deployment of Floom environments."
    homepage "https://github.com/FloomAI/FloomCLI"
    version "1.0.0"
  
    if OS.mac? && Hardware::CPU.intel?
      url "https://github.com/FloomAI/FloomCLI/releases/download/v1.0.0/floom-v1.0.0-darwin-amd64"
      sha256 "a0a26a2d95b0b189b22bf03fcba9b38a990d0814953de72d2755bfbf6e3b83d7"
    elsif OS.mac? && Hardware::CPU.arm?
      url "https://github.com/FloomAI/FloomCLI/releases/download/v1.0.0/floom-v1.0.0-darwin-arm64"
      sha256 "f0496c140884edaa0c58c103a702d353719603098054bafb203baa4793a61504"
    elsif OS.linux? && Hardware::CPU.intel?
      url "https://github.com/FloomAI/FloomCLI/releases/download/v1.0.0/floom-v1.0.0-linux-amd64"
      sha256 "8838b49cf9950d84ccdba3e53b3e5834828f5f87fe905adb70ddfc072f4236cc"
    end
  
    def install
      bin.install Dir["*"].first => "floom"
    end
  
    test do
      assert_match "Floom CLI Version: 1.0", shell_output("#{bin}/floom version")
    end
  end
  
