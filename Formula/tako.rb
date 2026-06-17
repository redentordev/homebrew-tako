class Tako < Formula
  desc "Deploy apps to a small takod mesh"
  homepage "https://github.com/redentordev/tako-cli"
  version "0.4.17"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/redentordev/tako-cli/releases/download/v0.4.17/tako-darwin-amd64",
          using: :nounzip
      sha256 "b0e2370bb780802565ae5afd2a75a37cbbe83c56f52419783795d5c31a819772"
    end

    on_arm do
      url "https://github.com/redentordev/tako-cli/releases/download/v0.4.17/tako-darwin-arm64",
          using: :nounzip
      sha256 "8910dc0046efba0cd9d68d072af4f3ab0b2b6a3f71fb8ccb697a24a334ea718d"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/redentordev/tako-cli/releases/download/v0.4.17/tako-linux-amd64",
          using: :nounzip
      sha256 "ef339e1a24322e9bb119d285092376f1e3f89ede88a26f21036ab58082c5351b"
    end

    on_arm do
      url "https://github.com/redentordev/tako-cli/releases/download/v0.4.17/tako-linux-arm64",
          using: :nounzip
      sha256 "a040220dcc44f58e40b9ce015436a7c66c6a7ea590971e2c66fb6fbd897858b8"
    end
  end

  def install
    bin.install Dir["tako-*"].first => "tako"
  end

  test do
    assert_match "Tako CLI v0.4.17", shell_output("#{bin}/tako --version")
  end
end
