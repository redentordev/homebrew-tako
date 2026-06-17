class Tako < Formula
  desc "Deploy apps to a small takod mesh"
  homepage "https://github.com/redentordev/tako-cli"
  version "0.4.12"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/redentordev/tako-cli/releases/download/v0.4.12/tako-darwin-amd64",
          using: :nounzip
      sha256 "5f3f444c397422a044c45935fc1b160e55b1cbaa5180db5c5c25f1b1ad69df18"
    end

    on_arm do
      url "https://github.com/redentordev/tako-cli/releases/download/v0.4.12/tako-darwin-arm64",
          using: :nounzip
      sha256 "e6f8042679994ca1cefc2add9d1d86f64098089756e721883da698a4c82a3542"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/redentordev/tako-cli/releases/download/v0.4.12/tako-linux-amd64",
          using: :nounzip
      sha256 "ad288651e6e8640f31b9c5ef245cacd65859af7040b3937ef5c1c8350b03f31d"
    end

    on_arm do
      url "https://github.com/redentordev/tako-cli/releases/download/v0.4.12/tako-linux-arm64",
          using: :nounzip
      sha256 "245f7aad19d4045bfc59dbc56b3a5e9fc8f5186beb6299b9081cdff1849b33e6"
    end
  end

  def install
    bin.install Dir["tako-*"].first => "tako"
  end

  test do
    assert_match "Tako CLI v0.4.12", shell_output("#{bin}/tako --version")
  end
end
