class Tako < Formula
  desc "Deploy apps to a small takod mesh"
  homepage "https://github.com/redentordev/tako-cli"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/redentordev/tako-cli/releases/download/v0.14.1/tako-darwin-amd64",
          using: :nounzip
      sha256 "428e922f264e4cc11e0c990e96ae5170ffa051f47bb8843956a4272374fa772a"
    end

    on_arm do
      url "https://github.com/redentordev/tako-cli/releases/download/v0.14.1/tako-darwin-arm64",
          using: :nounzip
      sha256 "aa251aa57b1c5371d7622ba017a3271bec05cdc11fe47f1d421c4022c76e3bc3"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/redentordev/tako-cli/releases/download/v0.14.1/tako-linux-amd64",
          using: :nounzip
      sha256 "59ebbec9c018b20b82a0ef9078fd3af12e1f7acd63d65bf7e5921ccf399dd986"
    end

    on_arm do
      url "https://github.com/redentordev/tako-cli/releases/download/v0.14.1/tako-linux-arm64",
          using: :nounzip
      sha256 "fdd2c5ac4e9473f6cdc8a91c558192906615ffff7eb9bd5087eafec39a787fb1"
    end
  end

  resource "manpages" do
    url "https://github.com/redentordev/tako-cli/releases/download/v0.14.1/tako-manpages.tar.gz"
    sha256 "27d70b8abcc79e25f6b446d38d76b323e016b234764c01ee225d9b1d472fffe5"
  end

  def install
    bin.install Dir["tako-*"].first => "tako"
    resource("manpages").stage do
      man1.install Dir["*.1"]
    end
  end

  test do
    assert_match "Tako CLI v0.14.1", shell_output("#{bin}/tako --version")
  end
end
