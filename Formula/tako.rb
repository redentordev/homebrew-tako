class Tako < Formula
  desc "Deploy apps to a small takod mesh"
  homepage "https://github.com/redentordev/tako-cli"
  version "0.4.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/redentordev/tako-cli/releases/download/v0.4.0/tako-darwin-amd64",
          using: :nounzip
      sha256 "30ddaa1a05a6efc108e03ec37827af635d38332b707c33bf72922a9a1863b3ff"
    end

    on_arm do
      url "https://github.com/redentordev/tako-cli/releases/download/v0.4.0/tako-darwin-arm64",
          using: :nounzip
      sha256 "ad104edf271daac43c994a44a48831dc1d92d146fbd64d462d3658637771b81d"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/redentordev/tako-cli/releases/download/v0.4.0/tako-linux-amd64",
          using: :nounzip
      sha256 "e74dbfd66a7f98e88d1c2ef89bee7639679f3ce210ef00d3aba74f418cd7906c"
    end

    on_arm do
      url "https://github.com/redentordev/tako-cli/releases/download/v0.4.0/tako-linux-arm64",
          using: :nounzip
      sha256 "d898f6723fd0f24a09d35545782bb9bd8ecd72dbe861a1d01d9b8b3f6e34cdab"
    end
  end

  def install
    bin.install Dir["tako-*"].first => "tako"
  end

  test do
    assert_match "Tako CLI v0.4.0", shell_output("#{bin}/tako --version")
  end
end
