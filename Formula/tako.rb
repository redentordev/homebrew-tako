class Tako < Formula
  desc "Deploy apps to a small takod mesh"
  homepage "https://github.com/redentordev/tako-cli"
  version "0.5.3"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/redentordev/tako-cli/releases/download/v0.5.3/tako-darwin-amd64",
          using: :nounzip
      sha256 "0ae497048a6d971e7a0ac2d5205ec850f893dd2b1ac47205d1c227fa4af78cbe"
    end

    on_arm do
      url "https://github.com/redentordev/tako-cli/releases/download/v0.5.3/tako-darwin-arm64",
          using: :nounzip
      sha256 "567d8fbf667db3f18bf8bfb6508d9b92376c0530bf123df16d7cd18e528bf4da"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/redentordev/tako-cli/releases/download/v0.5.3/tako-linux-amd64",
          using: :nounzip
      sha256 "bb853a6cd6416442aaafb58b1a5311d907879b434fd2befdb03fc80d141d4837"
    end

    on_arm do
      url "https://github.com/redentordev/tako-cli/releases/download/v0.5.3/tako-linux-arm64",
          using: :nounzip
      sha256 "845ccc73885879bf0211de3ee9aae33167ef888e0397c6161578b0e6cb614f28"
    end
  end

  def install
    bin.install Dir["tako-*"].first => "tako"
  end

  test do
    assert_match "Tako CLI v0.5.3", shell_output("#{bin}/tako --version")
  end
end
