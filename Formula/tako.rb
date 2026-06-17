class Tako < Formula
  desc "Deploy apps to a small takod mesh"
  homepage "https://github.com/redentordev/tako-cli"
  version "0.4.30"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/redentordev/tako-cli/releases/download/v0.4.30/tako-darwin-amd64",
          using: :nounzip
      sha256 "76b6d6211b46e4c875c90d7e6a4e29e802567f12ac57607246a5b5037e7fb970"
    end

    on_arm do
      url "https://github.com/redentordev/tako-cli/releases/download/v0.4.30/tako-darwin-arm64",
          using: :nounzip
      sha256 "862b489a6753286d0f330f40e0b45fbce42713131defe7da72eeb4220e88cb26"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/redentordev/tako-cli/releases/download/v0.4.30/tako-linux-amd64",
          using: :nounzip
      sha256 "612f37da4a3b093d4e5d3ae3db54008d10d457541b728f5e16dec4023071f875"
    end

    on_arm do
      url "https://github.com/redentordev/tako-cli/releases/download/v0.4.30/tako-linux-arm64",
          using: :nounzip
      sha256 "741b2b9835a1baa8832723fa0edbf08ad60604233cba7fda3690a479c8c8e061"
    end
  end

  def install
    bin.install Dir["tako-*"].first => "tako"
  end

  test do
    assert_match "Tako CLI v0.4.30", shell_output("#{bin}/tako --version")
  end
end
