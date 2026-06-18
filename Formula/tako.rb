class Tako < Formula
  desc "Deploy apps to a small takod mesh"
  homepage "https://github.com/redentordev/tako-cli"
  version "0.5.1"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/redentordev/tako-cli/releases/download/v0.5.1/tako-darwin-amd64",
          using: :nounzip
      sha256 "d44777a498abbaeff05a6824b2682b5ed4487bf1380abcd6ccb0350cb300a5b3"
    end

    on_arm do
      url "https://github.com/redentordev/tako-cli/releases/download/v0.5.1/tako-darwin-arm64",
          using: :nounzip
      sha256 "2431de8940f3a2faf450b5ae0613671842359ca42962950ad6760abaaebd8707"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/redentordev/tako-cli/releases/download/v0.5.1/tako-linux-amd64",
          using: :nounzip
      sha256 "884277b19243fa85b3b8f38b948174d3f221bcb8f83d4a79760905a822f6406d"
    end

    on_arm do
      url "https://github.com/redentordev/tako-cli/releases/download/v0.5.1/tako-linux-arm64",
          using: :nounzip
      sha256 "51c68b8926bb9a5b76a698fc0c26646c2575a7590a45a2918f3e8a4e39deaa04"
    end
  end

  def install
    bin.install Dir["tako-*"].first => "tako"
  end

  test do
    assert_match "Tako CLI v0.5.1", shell_output("#{bin}/tako --version")
  end
end
