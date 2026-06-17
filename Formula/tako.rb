class Tako < Formula
  desc "Deploy apps to a small takod mesh"
  homepage "https://github.com/redentordev/tako-cli"
  version "0.4.31"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/redentordev/tako-cli/releases/download/v0.4.31/tako-darwin-amd64",
          using: :nounzip
      sha256 "0958b90e8fbbb5b8ae0bec24e3f411ab571cc46903d23d3ad9005f98b2da4f84"
    end

    on_arm do
      url "https://github.com/redentordev/tako-cli/releases/download/v0.4.31/tako-darwin-arm64",
          using: :nounzip
      sha256 "51545ea01fd0be2418a90071a74596162c4911d3a6acbd204daf55aaa91e9982"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/redentordev/tako-cli/releases/download/v0.4.31/tako-linux-amd64",
          using: :nounzip
      sha256 "5f5df4a87c435b83c97a1e7d2a9de0599e2d01ad2e6df0b2b28e926e97d3d306"
    end

    on_arm do
      url "https://github.com/redentordev/tako-cli/releases/download/v0.4.31/tako-linux-arm64",
          using: :nounzip
      sha256 "7f4a3a274ada5836fe575c0d74431b7d6070b941119db347cb4bd03eae89f4ea"
    end
  end

  def install
    bin.install Dir["tako-*"].first => "tako"
  end

  test do
    assert_match "Tako CLI v0.4.31", shell_output("#{bin}/tako --version")
  end
end
