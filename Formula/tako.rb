class Tako < Formula
  desc "Deploy apps to a small takod mesh"
  homepage "https://github.com/redentordev/tako-cli"
  version "0.10.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/redentordev/tako-cli/releases/download/v0.10.0/tako-darwin-amd64",
          using: :nounzip
      sha256 "6fe3097317a3b332f60193136958dbf7a07aa58a2681d937ac9373888993aeea"
    end

    on_arm do
      url "https://github.com/redentordev/tako-cli/releases/download/v0.10.0/tako-darwin-arm64",
          using: :nounzip
      sha256 "97ce0a4007bd3993077876635333d19c96a4b4b1d499aa808cfacba0ad37a8bb"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/redentordev/tako-cli/releases/download/v0.10.0/tako-linux-amd64",
          using: :nounzip
      sha256 "b37d60a0f50aca87ba4ed7b3fde3d0945d26bd2f361d8e14f16618603e6c7c9e"
    end

    on_arm do
      url "https://github.com/redentordev/tako-cli/releases/download/v0.10.0/tako-linux-arm64",
          using: :nounzip
      sha256 "1fadb659765376c0a34354302b4c75724642cc6696aee0907c8350980118d5ec"
    end
  end

  resource "manpages" do
    url "https://github.com/redentordev/tako-cli/releases/download/v0.10.0/tako-manpages.tar.gz"
    sha256 "00acde359381c3e75883be1bf3fb02f8abdb74d2b1524b484b187160d11eae51"
  end

  def install
    bin.install Dir["tako-*"].first => "tako"
    resource("manpages").stage do
      man1.install Dir["*.1"]
    end
  end

  test do
    assert_match "Tako CLI v0.10.0", shell_output("#{bin}/tako --version")
  end
end
