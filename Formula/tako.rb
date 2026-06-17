class Tako < Formula
  desc "Deploy apps to a small takod mesh"
  homepage "https://github.com/redentordev/tako-cli"
  version "0.4.11"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/redentordev/tako-cli/releases/download/v0.4.11/tako-darwin-amd64",
          using: :nounzip
      sha256 "827cd2e7c773915f325a94b3d90aa97449e9788f88c744e2257f0289c6509f5f"
    end

    on_arm do
      url "https://github.com/redentordev/tako-cli/releases/download/v0.4.11/tako-darwin-arm64",
          using: :nounzip
      sha256 "9512a7df8b71f9d65c56dca245e56b71a70a7737a0c59c5f40230761bf0d1553"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/redentordev/tako-cli/releases/download/v0.4.11/tako-linux-amd64",
          using: :nounzip
      sha256 "58d5ad4832f5e89aa5ddd8bc7a81a1109753282eb94bb8f0dac48693a1a701ad"
    end

    on_arm do
      url "https://github.com/redentordev/tako-cli/releases/download/v0.4.11/tako-linux-arm64",
          using: :nounzip
      sha256 "f5bba22469a73bcdf7db76353c19d64c0cc040888fd20d6cbfb2de1bfedf1961"
    end
  end

  def install
    bin.install Dir["tako-*"].first => "tako"
  end

  test do
    assert_match "Tako CLI v0.4.11", shell_output("#{bin}/tako --version")
  end
end
