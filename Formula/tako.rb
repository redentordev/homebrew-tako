class Tako < Formula
  desc "Deploy apps to a small takod mesh"
  homepage "https://github.com/redentordev/tako-cli"
  version "0.4.13"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/redentordev/tako-cli/releases/download/v0.4.13/tako-darwin-amd64",
          using: :nounzip
      sha256 "5e9dce3a35e741ac92a8750ba4d325b3e7f1fc428a857fb4a77b9d2d8ea4cc25"
    end

    on_arm do
      url "https://github.com/redentordev/tako-cli/releases/download/v0.4.13/tako-darwin-arm64",
          using: :nounzip
      sha256 "39d64e31ce12045a85689ed9c96f64d85e6fa96c231f0ee0a9ba11caf46ed014"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/redentordev/tako-cli/releases/download/v0.4.13/tako-linux-amd64",
          using: :nounzip
      sha256 "e003f55e9d89c6af360ba0a2ea79863e5e4b3b95d22ec6ee7bbba5617dfb73b2"
    end

    on_arm do
      url "https://github.com/redentordev/tako-cli/releases/download/v0.4.13/tako-linux-arm64",
          using: :nounzip
      sha256 "de98b1fb9eb38e0e023b8aa4ea4de1741932d9090d086a5836fbd6b80c2d996f"
    end
  end

  def install
    bin.install Dir["tako-*"].first => "tako"
  end

  test do
    assert_match "Tako CLI v0.4.13", shell_output("#{bin}/tako --version")
  end
end
