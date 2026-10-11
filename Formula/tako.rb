class Tako < Formula
  desc "Deploy apps to a small takod mesh"
  homepage "https://github.com/redentordev/tako-cli"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/redentordev/tako-cli/releases/download/v0.14.2/tako-darwin-amd64",
          using: :nounzip
      sha256 "982a7d969d281f359e56de83518e1b18e533322cdc3a6c07cb2bb6d750e7f348"
    end

    on_arm do
      url "https://github.com/redentordev/tako-cli/releases/download/v0.14.2/tako-darwin-arm64",
          using: :nounzip
      sha256 "bb91dcd3c37765177c8ec4fc9f7deb3f900894c168072214071830cb5becbaf6"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/redentordev/tako-cli/releases/download/v0.14.2/tako-linux-amd64",
          using: :nounzip
      sha256 "9f13d6342f6f044331150017a74d210dc5e44b8129d007ff06cb4bf1a1f2c48e"
    end

    on_arm do
      url "https://github.com/redentordev/tako-cli/releases/download/v0.14.2/tako-linux-arm64",
          using: :nounzip
      sha256 "3af59ca8051a8f2b60aea20a08e9b2a8e30330b1f856801268477e2bd9cb1b6b"
    end
  end

  resource "manpages" do
    url "https://github.com/redentordev/tako-cli/releases/download/v0.14.2/tako-manpages.tar.gz"
    sha256 "edca44f66b22f19a31156a74eac34a39ce592233e0f2fe269eda536a9a25e202"
  end

  def install
    bin.install Dir["tako-*"].first => "tako"
    resource("manpages").stage do
      man1.install Dir["*.1"]
    end
  end

  test do
    assert_match "Tako CLI v0.14.2", shell_output("#{bin}/tako --version")
  end
end
