class Tako < Formula
  desc "Deploy apps to a small takod mesh"
  homepage "https://github.com/redentordev/tako-cli"
  version "0.8.3"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/redentordev/tako-cli/releases/download/v0.8.3/tako-darwin-amd64",
          using: :nounzip
      sha256 "42c294096771c69b9566d0084252dc621a13fd4951f1291466d808d4509a0e81"
    end

    on_arm do
      url "https://github.com/redentordev/tako-cli/releases/download/v0.8.3/tako-darwin-arm64",
          using: :nounzip
      sha256 "5d2f7c7cca68c53195f96f6d6f62381314d639f3c576be14fe586fe9655d6550"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/redentordev/tako-cli/releases/download/v0.8.3/tako-linux-amd64",
          using: :nounzip
      sha256 "3847c081206efa501fbfab0696cc875aa607feda1d60b4903850610ba5dad42a"
    end

    on_arm do
      url "https://github.com/redentordev/tako-cli/releases/download/v0.8.3/tako-linux-arm64",
          using: :nounzip
      sha256 "9e6330401c3ce9ec62fa386a6c70f8cecfdb3fc0c3a66d8133c442ca9f43716e"
    end
  end

  resource "manpages" do
    url "https://github.com/redentordev/tako-cli/releases/download/v0.8.3/tako-manpages.tar.gz"
    sha256 "bae726759a69fbfb7d2efe133e5a146d517406d7c78fa5ea05c39fe4be32f8ea"
  end

  def install
    bin.install Dir["tako-*"].first => "tako"
    resource("manpages").stage do
      man1.install Dir["*.1"]
    end
  end

  test do
    assert_match "Tako CLI v0.8.3", shell_output("#{bin}/tako --version")
  end
end
