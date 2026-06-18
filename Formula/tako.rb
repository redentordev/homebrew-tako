class Tako < Formula
  desc "Deploy apps to a small takod mesh"
  homepage "https://github.com/redentordev/tako-cli"
  version "0.4.48"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/redentordev/tako-cli/releases/download/v0.4.48/tako-darwin-amd64",
          using: :nounzip
      sha256 "40b2f92ea2db8bef0d146bc097be25a628454d4d4562e11beb4828b95c8d48e6"
    end

    on_arm do
      url "https://github.com/redentordev/tako-cli/releases/download/v0.4.48/tako-darwin-arm64",
          using: :nounzip
      sha256 "a15504428078d240fd18c6dbddc25dc9294f60239d36326347c29bd31a0792da"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/redentordev/tako-cli/releases/download/v0.4.48/tako-linux-amd64",
          using: :nounzip
      sha256 "703aaad448c9c50f5221faffa7d59b85e52b83bb90e7b7734cba850d1daad347"
    end

    on_arm do
      url "https://github.com/redentordev/tako-cli/releases/download/v0.4.48/tako-linux-arm64",
          using: :nounzip
      sha256 "0f3e0560839a64c25785114a4f71250a5925a95deb63e5d3f98e884324b2eb7b"
    end
  end

  def install
    bin.install Dir["tako-*"].first => "tako"
  end

  test do
    assert_match "Tako CLI v0.4.48", shell_output("#{bin}/tako --version")
  end
end
