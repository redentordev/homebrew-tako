class Tako < Formula
  desc "Deploy apps to a small takod mesh"
  homepage "https://github.com/redentordev/tako-cli"
  version "0.4.33"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/redentordev/tako-cli/releases/download/v0.4.33/tako-darwin-amd64",
          using: :nounzip
      sha256 "6ecc567402bd3fb93aa6d1241ca2f23dc7a61471d37d6f8eb307ff915ae99ac6"
    end

    on_arm do
      url "https://github.com/redentordev/tako-cli/releases/download/v0.4.33/tako-darwin-arm64",
          using: :nounzip
      sha256 "93d65b19dc4049e532b7d886d48ebb8f88de4eafbd53569fc613cd92f7389d5f"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/redentordev/tako-cli/releases/download/v0.4.33/tako-linux-amd64",
          using: :nounzip
      sha256 "5244bf378a0d863adb87b01db2b3db9b183276da941a08faf5e3bd57cad3f2e5"
    end

    on_arm do
      url "https://github.com/redentordev/tako-cli/releases/download/v0.4.33/tako-linux-arm64",
          using: :nounzip
      sha256 "27d29081b4548639ae175584c608ec4785516f74a8c9ec2ceb8c0c27153745ee"
    end
  end

  def install
    bin.install Dir["tako-*"].first => "tako"
  end

  test do
    assert_match "Tako CLI v0.4.33", shell_output("#{bin}/tako --version")
  end
end
