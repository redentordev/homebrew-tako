class Tako < Formula
  desc "Deploy apps to a small takod mesh"
  homepage "https://github.com/redentordev/tako-cli"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/redentordev/tako-cli/releases/download/v0.3.0/tako-darwin-amd64",
          using: :nounzip
      sha256 "e9a4b1b10e1d9b265422f8073e357ca6ac4dfe535fbdbd6e7c7d2a51700ff093"
    end

    on_arm do
      url "https://github.com/redentordev/tako-cli/releases/download/v0.3.0/tako-darwin-arm64",
          using: :nounzip
      sha256 "02067070218fb6fd165952ade770a5fbfaa3fe03cb1fe4d353dde010164549b5"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/redentordev/tako-cli/releases/download/v0.3.0/tako-linux-amd64",
          using: :nounzip
      sha256 "f6fa6d4eb1f1b8ced93b88e00c958b7148fa05f0804b7861e9f0247795be4367"
    end

    on_arm do
      url "https://github.com/redentordev/tako-cli/releases/download/v0.3.0/tako-linux-arm64",
          using: :nounzip
      sha256 "d36483c37974b47fa83171fb39b9ef665f643d69f4c4fca179b0f795225107bc"
    end
  end

  def install
    bin.install Dir["tako-*"].first => "tako"
  end

  test do
    assert_match "Tako CLI v0.3.0", shell_output("#{bin}/tako --version")
  end
end
