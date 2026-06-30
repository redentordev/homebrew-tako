class Tako < Formula
  desc "Deploy apps to a small takod mesh"
  homepage "https://github.com/redentordev/tako-cli"
  version "0.5.5"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/redentordev/tako-cli/releases/download/v0.5.5/tako-darwin-amd64",
          using: :nounzip
      sha256 "2d81cf64d1ae94fa8b789499c53400d5569c6a34550bc0e014ca1f9bad8b2daa"
    end

    on_arm do
      url "https://github.com/redentordev/tako-cli/releases/download/v0.5.5/tako-darwin-arm64",
          using: :nounzip
      sha256 "a9c3de82b743f471c6e335b4f04afd6f8670ea95bc35f8803f9a9cb781809ffb"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/redentordev/tako-cli/releases/download/v0.5.5/tako-linux-amd64",
          using: :nounzip
      sha256 "da3e1d810a709311a175c47f85fc8b76318d00c07b2e53bb7d3e18ee40c150f7"
    end

    on_arm do
      url "https://github.com/redentordev/tako-cli/releases/download/v0.5.5/tako-linux-arm64",
          using: :nounzip
      sha256 "8411035551610945678cde7c4a777773e724588dacc32d48ac16121ba40ea4f2"
    end
  end

  def install
    bin.install Dir["tako-*"].first => "tako"
  end

  test do
    assert_match "Tako CLI v0.5.5", shell_output("#{bin}/tako --version")
  end
end
