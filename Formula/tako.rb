class Tako < Formula
  desc "Deploy apps to a small takod mesh"
  homepage "https://github.com/redentordev/tako-cli"
  version "0.4.29"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/redentordev/tako-cli/releases/download/v0.4.29/tako-darwin-amd64",
          using: :nounzip
      sha256 "a4a34c1efc74e6ab43bd993c0c080ccba66e27257ac19e5e7e8fcbf83c50b78f"
    end

    on_arm do
      url "https://github.com/redentordev/tako-cli/releases/download/v0.4.29/tako-darwin-arm64",
          using: :nounzip
      sha256 "8c5d2d54033ac0b7c004cf3d48341966a552d9f39379b57dde56c64f4b592c6c"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/redentordev/tako-cli/releases/download/v0.4.29/tako-linux-amd64",
          using: :nounzip
      sha256 "e55be7ef70d6675f151472f6e8879066776137aeff9f693ca216e549e09d993a"
    end

    on_arm do
      url "https://github.com/redentordev/tako-cli/releases/download/v0.4.29/tako-linux-arm64",
          using: :nounzip
      sha256 "65347d5ffdd35f3d9f05b5b3a30c985a21fc86640238f3c6e257b26efb92c1f1"
    end
  end

  def install
    bin.install Dir["tako-*"].first => "tako"
  end

  test do
    assert_match "Tako CLI v0.4.29", shell_output("#{bin}/tako --version")
  end
end
