class Tako < Formula
  desc "Deploy apps to a small takod mesh"
  homepage "https://github.com/redentordev/tako-cli"
  version "0.4.28"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/redentordev/tako-cli/releases/download/v0.4.28/tako-darwin-amd64",
          using: :nounzip
      sha256 "ff9a2acbc3b5becb429cc918cc6899fe9b5f682714098abad2976407c681862b"
    end

    on_arm do
      url "https://github.com/redentordev/tako-cli/releases/download/v0.4.28/tako-darwin-arm64",
          using: :nounzip
      sha256 "138197e418ae2e6619f73d6a91e1bacd32d81ac9cff42574b3691a481185f6e8"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/redentordev/tako-cli/releases/download/v0.4.28/tako-linux-amd64",
          using: :nounzip
      sha256 "5ce50bc1312285ba01c0f0b2acc075c89a3a86a0d1f3c47a2d8399c5325498a7"
    end

    on_arm do
      url "https://github.com/redentordev/tako-cli/releases/download/v0.4.28/tako-linux-arm64",
          using: :nounzip
      sha256 "64bd7a67b62947cfbd4d2a3a088e6ab742b9751911dd9901ac15d75d79b93e4f"
    end
  end

  def install
    bin.install Dir["tako-*"].first => "tako"
  end

  test do
    assert_match "Tako CLI v0.4.28", shell_output("#{bin}/tako --version")
  end
end
