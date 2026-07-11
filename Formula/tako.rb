class Tako < Formula
  desc "Deploy apps to a small takod mesh"
  homepage "https://github.com/redentordev/tako-cli"
  version "0.9.3"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/redentordev/tako-cli/releases/download/v0.9.3/tako-darwin-amd64",
          using: :nounzip
      sha256 "b9700e22fa217b6fe1f0e84ddaf756402729b5719d58cc6165744bea5e16e835"
    end

    on_arm do
      url "https://github.com/redentordev/tako-cli/releases/download/v0.9.3/tako-darwin-arm64",
          using: :nounzip
      sha256 "67ac472c3c6129339909feb592e9e699e3e6e5bc7a71b617d7b1a29287147ddf"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/redentordev/tako-cli/releases/download/v0.9.3/tako-linux-amd64",
          using: :nounzip
      sha256 "480d1043074d4d460fc8521e56831769c4d82fb951ac18cbd85b6f9869d271d8"
    end

    on_arm do
      url "https://github.com/redentordev/tako-cli/releases/download/v0.9.3/tako-linux-arm64",
          using: :nounzip
      sha256 "63d40da5823a0040f539434200ef26d3cce280ade9c8618a4d016542b8716e22"
    end
  end

  resource "manpages" do
    url "https://github.com/redentordev/tako-cli/releases/download/v0.9.3/tako-manpages.tar.gz"
    sha256 "13b8025e3956388bd2377e0cea561956878ae71509e157ded75e25024fb176dd"
  end

  def install
    bin.install Dir["tako-*"].first => "tako"
    resource("manpages").stage do
      man1.install Dir["*.1"]
    end
  end

  test do
    assert_match "Tako CLI v0.9.3", shell_output("#{bin}/tako --version")
  end
end
