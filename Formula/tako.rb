class Tako < Formula
  desc "Deploy apps to a small takod mesh"
  homepage "https://github.com/redentordev/tako-cli"
  version "0.4.26"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/redentordev/tako-cli/releases/download/v0.4.26/tako-darwin-amd64",
          using: :nounzip
      sha256 "11cea394fe3fb6a9823dd7ecfee2ea0a79e4fd59456ee6226effeab859b3d672"
    end

    on_arm do
      url "https://github.com/redentordev/tako-cli/releases/download/v0.4.26/tako-darwin-arm64",
          using: :nounzip
      sha256 "0bcfefb2f23571bc738559a935b8d386e06f0e3fb6d30ab499376cd8eee97eb4"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/redentordev/tako-cli/releases/download/v0.4.26/tako-linux-amd64",
          using: :nounzip
      sha256 "c4f2646c091b83079d85f6463d8dfddf2c7e385eb3325e3eb66151a8aedfe914"
    end

    on_arm do
      url "https://github.com/redentordev/tako-cli/releases/download/v0.4.26/tako-linux-arm64",
          using: :nounzip
      sha256 "824e511a6fc843eea7c75982d6e09fd6e60e83a054b7de1b9d8bac5cb8ab7ff7"
    end
  end

  def install
    bin.install Dir["tako-*"].first => "tako"
  end

  test do
    assert_match "Tako CLI v0.4.26", shell_output("#{bin}/tako --version")
  end
end
