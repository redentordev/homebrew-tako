class Tako < Formula
  desc "Deploy apps to a small takod mesh"
  homepage "https://github.com/redentordev/tako-cli"
  version "0.4.24"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/redentordev/tako-cli/releases/download/v0.4.24/tako-darwin-amd64",
          using: :nounzip
      sha256 "cd55f8236537093aaefbd687971d300d82cd2fcac35aac3236cc9ff2de7cd8e1"
    end

    on_arm do
      url "https://github.com/redentordev/tako-cli/releases/download/v0.4.24/tako-darwin-arm64",
          using: :nounzip
      sha256 "12e26d72f0d76523733a05681e7860a317abc361ee2e3e0975aeea5514c9611f"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/redentordev/tako-cli/releases/download/v0.4.24/tako-linux-amd64",
          using: :nounzip
      sha256 "ff0f73c3c772c06c60eae3273b2d7b2d97d3ba4a314fa8fdfcbe5c8616349be7"
    end

    on_arm do
      url "https://github.com/redentordev/tako-cli/releases/download/v0.4.24/tako-linux-arm64",
          using: :nounzip
      sha256 "858bf7a0c807b417ee7a136f20b28c2d8cda203c3fb6eebc66f4c7df3c7030c2"
    end
  end

  def install
    bin.install Dir["tako-*"].first => "tako"
  end

  test do
    assert_match "Tako CLI v0.4.24", shell_output("#{bin}/tako --version")
  end
end
