class Tako < Formula
  desc "Deploy apps to a small takod mesh"
  homepage "https://github.com/redentordev/tako-cli"
  version "0.4.44"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/redentordev/tako-cli/releases/download/v0.4.44/tako-darwin-amd64",
          using: :nounzip
      sha256 "2c2ccb067145bc1c7311ce773c71b1ff2423199640f91c9235cee0c7ceca9a2b"
    end

    on_arm do
      url "https://github.com/redentordev/tako-cli/releases/download/v0.4.44/tako-darwin-arm64",
          using: :nounzip
      sha256 "5c75089c821a259d655cd78ca3cf1dddea9efa9034b0e9bfa81e6beeacb2d429"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/redentordev/tako-cli/releases/download/v0.4.44/tako-linux-amd64",
          using: :nounzip
      sha256 "9aeb683073ba0607f7f312c74f73a88ba9d91f306b28fb1715848a29309ffe6f"
    end

    on_arm do
      url "https://github.com/redentordev/tako-cli/releases/download/v0.4.44/tako-linux-arm64",
          using: :nounzip
      sha256 "b3d7f002276db9bf2f3e6cceb4b4fff3c44a2b2ac99d2b898c7b69f77f1340a4"
    end
  end

  def install
    bin.install Dir["tako-*"].first => "tako"
  end

  test do
    assert_match "Tako CLI v0.4.44", shell_output("#{bin}/tako --version")
  end
end
