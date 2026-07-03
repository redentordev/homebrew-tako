class Tako < Formula
  desc "Deploy apps to a small takod mesh"
  homepage "https://github.com/redentordev/tako-cli"
  version "0.6.1"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/redentordev/tako-cli/releases/download/v0.6.1/tako-darwin-amd64",
          using: :nounzip
      sha256 "220ce69e04d543b64c439762a3098a9055e71ae0860df9297b2034f0d39f4b9b"
    end

    on_arm do
      url "https://github.com/redentordev/tako-cli/releases/download/v0.6.1/tako-darwin-arm64",
          using: :nounzip
      sha256 "130961d491d62d1e31541af1b7977ec3eb5f1a8d9465f10141288a057c81df3d"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/redentordev/tako-cli/releases/download/v0.6.1/tako-linux-amd64",
          using: :nounzip
      sha256 "0d283dca93f4b09e63dd102077bb93fffa393d2c052f18c9765a7c47eceb9fcf"
    end

    on_arm do
      url "https://github.com/redentordev/tako-cli/releases/download/v0.6.1/tako-linux-arm64",
          using: :nounzip
      sha256 "80ef19a4817f83a6f87a7cb481f7c97a876958b5c18264c3b63892b1e6e9f04e"
    end
  end

  resource "manpages" do
    url "https://github.com/redentordev/tako-cli/releases/download/v0.6.1/tako-manpages.tar.gz"
    sha256 "9c476a0142b37ac7b012ef685f447f6029bf75162aa48615d05f7a7e20101c07"
  end

  def install
    bin.install Dir["tako-*"].first => "tako"
    resource("manpages").stage do
      man1.install Dir["*.1"]
    end
  end

  test do
    assert_match "Tako CLI v0.6.1", shell_output("#{bin}/tako --version")
  end
end
