class Tako < Formula
  desc "Deploy apps to a small takod mesh"
  homepage "https://github.com/redentordev/tako-cli"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/redentordev/tako-cli/releases/download/v0.16.0/tako-darwin-amd64",
          using: :nounzip
      sha256 "301d99359a10531f5c375a874f329fa18006a8506919acbc92a6b5eda5bda560"
    end

    on_arm do
      url "https://github.com/redentordev/tako-cli/releases/download/v0.16.0/tako-darwin-arm64",
          using: :nounzip
      sha256 "d59cb66bfe9d72d0dbba49f7118bcb6db41a9c55eb12c67e5088ddafbcb19b57"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/redentordev/tako-cli/releases/download/v0.16.0/tako-linux-amd64",
          using: :nounzip
      sha256 "396a861622e4ce80c0ea7a73c6a90cb226df34f43f6fe86b0d51085245888629"
    end

    on_arm do
      url "https://github.com/redentordev/tako-cli/releases/download/v0.16.0/tako-linux-arm64",
          using: :nounzip
      sha256 "4036890e6ead1a6e214febed68c6e40faaf4697c0a6afdd7109ac2d97d55607d"
    end
  end

  resource "manpages" do
    url "https://github.com/redentordev/tako-cli/releases/download/v0.16.0/tako-manpages.tar.gz"
    sha256 "a49e96ecf8a9caebc0600883d1052c29fa7facbb78eab961c8acd00b2dc45635"
  end

  def install
    bin.install Dir["tako-*"].first => "tako"
    resource("manpages").stage do
      man1.install Dir["*.1"]
    end
  end

  test do
    assert_match "Tako CLI v0.16.0", shell_output("#{bin}/tako --version")
  end
end
