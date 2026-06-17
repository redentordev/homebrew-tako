class Tako < Formula
  desc "Deploy apps to a small takod mesh"
  homepage "https://github.com/redentordev/tako-cli"
  version "0.4.8"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/redentordev/tako-cli/releases/download/v0.4.8/tako-darwin-amd64",
          using: :nounzip
      sha256 "5fca7aa7b24742ed8e7c064e4a39a97185e95694dcc1d23db7e040687a480aff"
    end

    on_arm do
      url "https://github.com/redentordev/tako-cli/releases/download/v0.4.8/tako-darwin-arm64",
          using: :nounzip
      sha256 "30ea3ebbb76f92b280b42884d8c251c1f2ea43c3e3388685ebb5c9f1e81a6b8c"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/redentordev/tako-cli/releases/download/v0.4.8/tako-linux-amd64",
          using: :nounzip
      sha256 "ed244588e87ced8e261f418a405f721c80be2c0642f3e595773d10ba5e27a136"
    end

    on_arm do
      url "https://github.com/redentordev/tako-cli/releases/download/v0.4.8/tako-linux-arm64",
          using: :nounzip
      sha256 "bcbcfa7a17304c2a74be363afc265a1dadfad71639f6bd835cc67e9d448d92a7"
    end
  end

  def install
    bin.install Dir["tako-*"].first => "tako"
  end

  test do
    assert_match "Tako CLI v0.4.8", shell_output("#{bin}/tako --version")
  end
end
