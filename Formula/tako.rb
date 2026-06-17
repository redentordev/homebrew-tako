class Tako < Formula
  desc "Deploy apps to a small takod mesh"
  homepage "https://github.com/redentordev/tako-cli"
  version "0.4.39"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/redentordev/tako-cli/releases/download/v0.4.39/tako-darwin-amd64",
          using: :nounzip
      sha256 "c60368d46d01abb3ccd4ed84b060c0875908f9b2cb5287bc02dbfec2b97f5d6c"
    end

    on_arm do
      url "https://github.com/redentordev/tako-cli/releases/download/v0.4.39/tako-darwin-arm64",
          using: :nounzip
      sha256 "caa49f8fa08767124f6df11ae7be967751ebd2da59bd67f5abb184fe66dc04bb"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/redentordev/tako-cli/releases/download/v0.4.39/tako-linux-amd64",
          using: :nounzip
      sha256 "3bd3a6fa596ffdd273a22755073174469a0c78bed36863b5dbbec316b29d4690"
    end

    on_arm do
      url "https://github.com/redentordev/tako-cli/releases/download/v0.4.39/tako-linux-arm64",
          using: :nounzip
      sha256 "4dc389febe31148759530798eeede8bcea9c38bfd3d01a0063273721d7d9cfd6"
    end
  end

  def install
    bin.install Dir["tako-*"].first => "tako"
  end

  test do
    assert_match "Tako CLI v0.4.39", shell_output("#{bin}/tako --version")
  end
end
