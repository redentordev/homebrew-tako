class Tako < Formula
  desc "Deploy apps to a small takod mesh"
  homepage "https://github.com/redentordev/tako-cli"
  version "0.4.45"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/redentordev/tako-cli/releases/download/v0.4.45/tako-darwin-amd64",
          using: :nounzip
      sha256 "368a5c908e72ce679c7267b7a4b9c2fc703f3b9d3cefcf8cf410cdc8e8a10be2"
    end

    on_arm do
      url "https://github.com/redentordev/tako-cli/releases/download/v0.4.45/tako-darwin-arm64",
          using: :nounzip
      sha256 "7bfd5754d2c02d5b2ba776f260a1f0c96db368780580b91c89a7edf2874f6d63"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/redentordev/tako-cli/releases/download/v0.4.45/tako-linux-amd64",
          using: :nounzip
      sha256 "ab3aab447eaeeddd8b5abe776d92bae8923f295a2f34358b6e09fd57f339d1b4"
    end

    on_arm do
      url "https://github.com/redentordev/tako-cli/releases/download/v0.4.45/tako-linux-arm64",
          using: :nounzip
      sha256 "52809cf853ea63824da3ea7aa78fde315e4365dce3c695b57cc682187e68c8d0"
    end
  end

  def install
    bin.install Dir["tako-*"].first => "tako"
  end

  test do
    assert_match "Tako CLI v0.4.45", shell_output("#{bin}/tako --version")
  end
end
