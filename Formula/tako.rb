class Tako < Formula
  desc "Deploy apps to a small takod mesh"
  homepage "https://github.com/redentordev/tako-cli"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/redentordev/tako-cli/releases/download/v0.13.0/tako-darwin-amd64",
          using: :nounzip
      sha256 "0fd1c12c59ad601a926f719fd6a34e122bbd4b2ef0d2ec8dc440a2add75d3f1e"
    end

    on_arm do
      url "https://github.com/redentordev/tako-cli/releases/download/v0.13.0/tako-darwin-arm64",
          using: :nounzip
      sha256 "a50591154ec77944fe0901679623059cbdee371c3666fe11c577c190e503cec3"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/redentordev/tako-cli/releases/download/v0.13.0/tako-linux-amd64",
          using: :nounzip
      sha256 "c4c2a02e81add8e2dc0d2f83dd3a6c62f8aa1fbaf98621ffad93019bff085ded"
    end

    on_arm do
      url "https://github.com/redentordev/tako-cli/releases/download/v0.13.0/tako-linux-arm64",
          using: :nounzip
      sha256 "5259e5216080d19384735193cde3b5934f6b555e6e82afd0f16f7c99a28c3749"
    end
  end

  resource "manpages" do
    url "https://github.com/redentordev/tako-cli/releases/download/v0.13.0/tako-manpages.tar.gz"
    sha256 "ed9869b9ff8e4901b1e674c4d6382d5778b7bdb6b4ed08de951e5515b080e757"
  end

  def install
    bin.install Dir["tako-*"].first => "tako"
    resource("manpages").stage do
      man1.install Dir["*.1"]
    end
  end

  test do
    assert_match "Tako CLI v0.13.0", shell_output("#{bin}/tako --version")
  end
end
