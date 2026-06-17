class Tako < Formula
  desc "Deploy apps to a small takod mesh"
  homepage "https://github.com/redentordev/tako-cli"
  version "0.4.32"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/redentordev/tako-cli/releases/download/v0.4.32/tako-darwin-amd64",
          using: :nounzip
      sha256 "9d0a8558b40fb7b23cd1da7e01be327d0d71f6617d7ed98ec318a4130113808d"
    end

    on_arm do
      url "https://github.com/redentordev/tako-cli/releases/download/v0.4.32/tako-darwin-arm64",
          using: :nounzip
      sha256 "9da9c2ae50c4dd1614bfd50f8ef7ef7e4e25a89a04c3c9cb747bb0b681040ff8"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/redentordev/tako-cli/releases/download/v0.4.32/tako-linux-amd64",
          using: :nounzip
      sha256 "8a8d23cf0cd407b7a8d6f26101879de7b6b8a9ddee1b798745ac3382c6f68cd3"
    end

    on_arm do
      url "https://github.com/redentordev/tako-cli/releases/download/v0.4.32/tako-linux-arm64",
          using: :nounzip
      sha256 "9a8dd4d3a6a61721272054cb1982909038b44ed9e53594360b3850ee45d935ce"
    end
  end

  def install
    bin.install Dir["tako-*"].first => "tako"
  end

  test do
    assert_match "Tako CLI v0.4.32", shell_output("#{bin}/tako --version")
  end
end
