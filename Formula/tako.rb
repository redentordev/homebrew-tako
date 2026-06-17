class Tako < Formula
  desc "Deploy apps to a small takod mesh"
  homepage "https://github.com/redentordev/tako-cli"
  version "0.4.27"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/redentordev/tako-cli/releases/download/v0.4.27/tako-darwin-amd64",
          using: :nounzip
      sha256 "55435ce033496414574c8fa07f80e077942eea72ab165d1ed217d35bf7ce2ea5"
    end

    on_arm do
      url "https://github.com/redentordev/tako-cli/releases/download/v0.4.27/tako-darwin-arm64",
          using: :nounzip
      sha256 "05ffde7e7e1f061ded08d33473548bea7cdd7616fce7faed5148590d5fa8a082"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/redentordev/tako-cli/releases/download/v0.4.27/tako-linux-amd64",
          using: :nounzip
      sha256 "26a71b2d94e7624d4e153757c26f52f842151d659d1cb0dee0bdfbce617a074a"
    end

    on_arm do
      url "https://github.com/redentordev/tako-cli/releases/download/v0.4.27/tako-linux-arm64",
          using: :nounzip
      sha256 "c75f5de50057789b1141be0b8e732ed01d2711818e14bc32cba2f11aad425276"
    end
  end

  def install
    bin.install Dir["tako-*"].first => "tako"
  end

  test do
    assert_match "Tako CLI v0.4.27", shell_output("#{bin}/tako --version")
  end
end
