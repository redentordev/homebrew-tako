class Tako < Formula
  desc "Deploy apps to a small takod mesh"
  homepage "https://github.com/redentordev/tako-cli"
  version "0.8.1"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/redentordev/tako-cli/releases/download/v0.8.1/tako-darwin-amd64",
          using: :nounzip
      sha256 "ca9c1a772cae3c75e79f8c93e680a4803a4e586917929b7237e33eb6e5b3bdd3"
    end

    on_arm do
      url "https://github.com/redentordev/tako-cli/releases/download/v0.8.1/tako-darwin-arm64",
          using: :nounzip
      sha256 "41ddd7b056e4dd426cbaebf7f0b4dfdf8f6186cb2c97a0422c8bd3a9269ebe53"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/redentordev/tako-cli/releases/download/v0.8.1/tako-linux-amd64",
          using: :nounzip
      sha256 "1bc325e5717d53a242ca71db8e5d75835256a9fe54c075ebab9a085e590f1dbe"
    end

    on_arm do
      url "https://github.com/redentordev/tako-cli/releases/download/v0.8.1/tako-linux-arm64",
          using: :nounzip
      sha256 "2daf5f01aa92e0dd5e991cf64e74a132b36a1e593ba9274351c4e1ef9c76458c"
    end
  end

  resource "manpages" do
    url "https://github.com/redentordev/tako-cli/releases/download/v0.8.1/tako-manpages.tar.gz"
    sha256 "c49d496e32789ae267913e16715041ca4b450a984f002834feed8a7c8eb9509c"
  end

  def install
    bin.install Dir["tako-*"].first => "tako"
    resource("manpages").stage do
      man1.install Dir["*.1"]
    end
  end

  test do
    assert_match "Tako CLI v0.8.1", shell_output("#{bin}/tako --version")
  end
end
