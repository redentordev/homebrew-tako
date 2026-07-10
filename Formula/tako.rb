class Tako < Formula
  desc "Deploy apps to a small takod mesh"
  homepage "https://github.com/redentordev/tako-cli"
  version "0.9.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/redentordev/tako-cli/releases/download/v0.9.0/tako-darwin-amd64",
          using: :nounzip
      sha256 "af1433aa62c5892dc14648493d89c43c046147bed2acd203571eb7db4aa28202"
    end

    on_arm do
      url "https://github.com/redentordev/tako-cli/releases/download/v0.9.0/tako-darwin-arm64",
          using: :nounzip
      sha256 "4bd36407a29d639836b8f958661d1fe4d6f7fb12a9743ae76cc9a506ef938eae"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/redentordev/tako-cli/releases/download/v0.9.0/tako-linux-amd64",
          using: :nounzip
      sha256 "27a30ac05fed5ae56086200852f815f9a7566a94eb9e0f03308d3e6c7b0c4e37"
    end

    on_arm do
      url "https://github.com/redentordev/tako-cli/releases/download/v0.9.0/tako-linux-arm64",
          using: :nounzip
      sha256 "4f635f3d26520cf5a947a0436c386366783a3d62f1d3cd8be860414e20abb9c4"
    end
  end

  resource "manpages" do
    url "https://github.com/redentordev/tako-cli/releases/download/v0.9.0/tako-manpages.tar.gz"
    sha256 "59534d4cd43b0f7ba6b8f53be35bbc7d27fec842a2376f021eecd6ca12caf725"
  end

  def install
    bin.install Dir["tako-*"].first => "tako"
    resource("manpages").stage do
      man1.install Dir["*.1"]
    end
  end

  test do
    assert_match "Tako CLI v0.9.0", shell_output("#{bin}/tako --version")
  end
end
