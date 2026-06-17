class Tako < Formula
  desc "Deploy apps to a small takod mesh"
  homepage "https://github.com/redentordev/tako-cli"
  version "0.4.23"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/redentordev/tako-cli/releases/download/v0.4.23/tako-darwin-amd64",
          using: :nounzip
      sha256 "cc7f2d47cb76bb61949d8259fb80f93874d0961d325650cb5c247cda71f91d55"
    end

    on_arm do
      url "https://github.com/redentordev/tako-cli/releases/download/v0.4.23/tako-darwin-arm64",
          using: :nounzip
      sha256 "42521677bc9cf52b09e93997f4dc4df50d2dd9852ed2baa27e32b2ac6bb45ab2"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/redentordev/tako-cli/releases/download/v0.4.23/tako-linux-amd64",
          using: :nounzip
      sha256 "856c8b221347e2b6432b2f775264811918a79601ed2020a141ad6c71d412ee66"
    end

    on_arm do
      url "https://github.com/redentordev/tako-cli/releases/download/v0.4.23/tako-linux-arm64",
          using: :nounzip
      sha256 "34cf3de34b478351961682af8804a480f27f0b0471dff87eb9c24b53ed1449bf"
    end
  end

  def install
    bin.install Dir["tako-*"].first => "tako"
  end

  test do
    assert_match "Tako CLI v0.4.23", shell_output("#{bin}/tako --version")
  end
end
