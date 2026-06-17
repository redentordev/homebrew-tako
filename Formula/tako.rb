class Tako < Formula
  desc "Deploy apps to a small takod mesh"
  homepage "https://github.com/redentordev/tako-cli"
  version "0.4.16"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/redentordev/tako-cli/releases/download/v0.4.16/tako-darwin-amd64",
          using: :nounzip
      sha256 "e6b205a9bb4b271bc8b7630f66472bcf3183c005276fccd773a3d4052e2ac8f9"
    end

    on_arm do
      url "https://github.com/redentordev/tako-cli/releases/download/v0.4.16/tako-darwin-arm64",
          using: :nounzip
      sha256 "f4dac14701dddc8640439e867286bf49b85902114ff12736b798c17cf5b8dfe6"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/redentordev/tako-cli/releases/download/v0.4.16/tako-linux-amd64",
          using: :nounzip
      sha256 "d808a1f2fc5451deac2e38f5126c85e9a313df8570fe5ac3771da9890484b877"
    end

    on_arm do
      url "https://github.com/redentordev/tako-cli/releases/download/v0.4.16/tako-linux-arm64",
          using: :nounzip
      sha256 "2ab13a462ac020d0a27729dd386c30b94af507fff5914c2e695a83b81e8ed37b"
    end
  end

  def install
    bin.install Dir["tako-*"].first => "tako"
  end

  test do
    assert_match "Tako CLI v0.4.16", shell_output("#{bin}/tako --version")
  end
end
