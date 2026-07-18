class Tako < Formula
  desc "Deploy apps to a small takod mesh"
  homepage "https://github.com/redentordev/tako-cli"
  version "0.11.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/redentordev/tako-cli/releases/download/v0.11.0/tako-darwin-amd64",
          using: :nounzip
      sha256 "dba0c1d3371a69d00981e7791e6357c88254ec972a675a3bf4d30dd31bbc4c8b"
    end

    on_arm do
      url "https://github.com/redentordev/tako-cli/releases/download/v0.11.0/tako-darwin-arm64",
          using: :nounzip
      sha256 "3de3ab57e0495705b752f14a02a77224b2115c4c0f568e2a6ac91f9712c53817"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/redentordev/tako-cli/releases/download/v0.11.0/tako-linux-amd64",
          using: :nounzip
      sha256 "10345957c12a493febcfb04bcd708ffe28464eeae3f59c48b623f98b5cdfcac8"
    end

    on_arm do
      url "https://github.com/redentordev/tako-cli/releases/download/v0.11.0/tako-linux-arm64",
          using: :nounzip
      sha256 "9abb6086cb22a722421e3b7afbacfeaf6d771a5efb849b0be3b88bce284f3fb9"
    end
  end

  resource "manpages" do
    url "https://github.com/redentordev/tako-cli/releases/download/v0.11.0/tako-manpages.tar.gz"
    sha256 "ba8458806703843a26cb17d57d59a1382eca981d65b149a642d325c7f0ada602"
  end

  def install
    bin.install Dir["tako-*"].first => "tako"
    resource("manpages").stage do
      man1.install Dir["*.1"]
    end
  end

  test do
    assert_match "Tako CLI v0.11.0", shell_output("#{bin}/tako --version")
  end
end
