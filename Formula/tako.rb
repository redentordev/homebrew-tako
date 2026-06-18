class Tako < Formula
  desc "Deploy apps to a small takod mesh"
  homepage "https://github.com/redentordev/tako-cli"
  version "0.4.47"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/redentordev/tako-cli/releases/download/v0.4.47/tako-darwin-amd64",
          using: :nounzip
      sha256 "1f8852711c987de636fbee2840396f13a34cdcbe21b405f37c0faad9cb796a25"
    end

    on_arm do
      url "https://github.com/redentordev/tako-cli/releases/download/v0.4.47/tako-darwin-arm64",
          using: :nounzip
      sha256 "67bcedaf51c815418d4a0b7a7788572be5d593f72c8a64279e51cd71043f3e34"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/redentordev/tako-cli/releases/download/v0.4.47/tako-linux-amd64",
          using: :nounzip
      sha256 "7de742fc93416f657e6f1b475e3523982c82b76f783b13c5527fe1fc52997629"
    end

    on_arm do
      url "https://github.com/redentordev/tako-cli/releases/download/v0.4.47/tako-linux-arm64",
          using: :nounzip
      sha256 "a3fd15e5d240a9a18d21a357adf91f9e92b0b2d1b2e91bab87e48de54564d135"
    end
  end

  def install
    bin.install Dir["tako-*"].first => "tako"
  end

  test do
    assert_match "Tako CLI v0.4.47", shell_output("#{bin}/tako --version")
  end
end
