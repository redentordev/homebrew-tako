class Tako < Formula
  desc "Deploy apps to a small takod mesh"
  homepage "https://github.com/redentordev/tako-cli"
  version "0.4.7"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/redentordev/tako-cli/releases/download/v0.4.7/tako-darwin-amd64",
          using: :nounzip
      sha256 "bc3b678bb9d54cf13796bce8da2c6cc43a03b1b2b5e8481335a350f171e34d3e"
    end

    on_arm do
      url "https://github.com/redentordev/tako-cli/releases/download/v0.4.7/tako-darwin-arm64",
          using: :nounzip
      sha256 "e9a3bfca7c6237577e05381d345cf204a81fb8d2e1f63e6cedd762f009255092"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/redentordev/tako-cli/releases/download/v0.4.7/tako-linux-amd64",
          using: :nounzip
      sha256 "fcd42cfc83c6bf0c55b490d293cee028da85778fbda1f52fd2551759c28e0a06"
    end

    on_arm do
      url "https://github.com/redentordev/tako-cli/releases/download/v0.4.7/tako-linux-arm64",
          using: :nounzip
      sha256 "2a8fc55c689d57816f1b165723145c798bad963cb08fa4d47d4a43dc2216e9bc"
    end
  end

  def install
    bin.install Dir["tako-*"].first => "tako"
  end

  test do
    assert_match "Tako CLI v0.4.7", shell_output("#{bin}/tako --version")
  end
end
