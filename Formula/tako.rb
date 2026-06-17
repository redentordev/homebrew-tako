class Tako < Formula
  desc "Deploy apps to a small takod mesh"
  homepage "https://github.com/redentordev/tako-cli"
  version "0.4.2"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/redentordev/tako-cli/releases/download/v0.4.2/tako-darwin-amd64",
          using: :nounzip
      sha256 "0198fc6c6ee1d8b113f5f19a18923eedf287a62f9044a9c28ef7a12ac30a5482"
    end

    on_arm do
      url "https://github.com/redentordev/tako-cli/releases/download/v0.4.2/tako-darwin-arm64",
          using: :nounzip
      sha256 "eed6fa1d4e6f0f77ff5e2ac04d96d9705047f9d2cab3359d5b811f29dca94b93"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/redentordev/tako-cli/releases/download/v0.4.2/tako-linux-amd64",
          using: :nounzip
      sha256 "ac015a3f92bdd7f8005f4d7603d296513b7ba60f2a724500c61e99ed73b4b890"
    end

    on_arm do
      url "https://github.com/redentordev/tako-cli/releases/download/v0.4.2/tako-linux-arm64",
          using: :nounzip
      sha256 "bf8ce986aadb2680ea570a86990d1493b902ec39a9e5a888614c524b9b73a988"
    end
  end

  def install
    bin.install Dir["tako-*"].first => "tako"
  end

  test do
    assert_match "Tako CLI v0.4.2", shell_output("#{bin}/tako --version")
  end
end
