class Tako < Formula
  desc "Deploy apps to a small takod mesh"
  homepage "https://github.com/redentordev/tako-cli"
  version "0.4.19"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/redentordev/tako-cli/releases/download/v0.4.19/tako-darwin-amd64",
          using: :nounzip
      sha256 "df7617f21ef3003b1f9906c87873fc3804a98c489c12de504d17644b87d6bbba"
    end

    on_arm do
      url "https://github.com/redentordev/tako-cli/releases/download/v0.4.19/tako-darwin-arm64",
          using: :nounzip
      sha256 "20a38069cfbf35e10b154ce6c5213e3af11d41756d067ae34da47a3e898791c2"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/redentordev/tako-cli/releases/download/v0.4.19/tako-linux-amd64",
          using: :nounzip
      sha256 "c95bde1e02fa90847d378ce10044a0d3eb94e4a92f586eab3c5d9d8993ff9847"
    end

    on_arm do
      url "https://github.com/redentordev/tako-cli/releases/download/v0.4.19/tako-linux-arm64",
          using: :nounzip
      sha256 "f1caa425d938c8b3983cf3b7ca1f8d3b6b23f5b23c8da68248ac9bd1be6c2e7f"
    end
  end

  def install
    bin.install Dir["tako-*"].first => "tako"
  end

  test do
    assert_match "Tako CLI v0.4.19", shell_output("#{bin}/tako --version")
  end
end
