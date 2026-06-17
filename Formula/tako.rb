class Tako < Formula
  desc "Deploy apps to a small takod mesh"
  homepage "https://github.com/redentordev/tako-cli"
  version "0.4.25"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/redentordev/tako-cli/releases/download/v0.4.25/tako-darwin-amd64",
          using: :nounzip
      sha256 "217cce3448bac6fde3799d633127a700cbce29e3486fbe9f9140707c574fe94e"
    end

    on_arm do
      url "https://github.com/redentordev/tako-cli/releases/download/v0.4.25/tako-darwin-arm64",
          using: :nounzip
      sha256 "3050cdab626b291f53cf018153b86ea9770ddac2a4e3c185a7180ed8b1c169a1"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/redentordev/tako-cli/releases/download/v0.4.25/tako-linux-amd64",
          using: :nounzip
      sha256 "73b32e8cb6d3c62251d2979cb5c6eea636ca6283957475134a261284cab7a1c6"
    end

    on_arm do
      url "https://github.com/redentordev/tako-cli/releases/download/v0.4.25/tako-linux-arm64",
          using: :nounzip
      sha256 "0488f8274c7de97eb15eb5e6d86070d6407869db9eefbc9708a7e7224e82c2ad"
    end
  end

  def install
    bin.install Dir["tako-*"].first => "tako"
  end

  test do
    assert_match "Tako CLI v0.4.25", shell_output("#{bin}/tako --version")
  end
end
