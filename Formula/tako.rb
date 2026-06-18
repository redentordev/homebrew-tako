class Tako < Formula
  desc "Deploy apps to a small takod mesh"
  homepage "https://github.com/redentordev/tako-cli"
  version "0.4.41"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/redentordev/tako-cli/releases/download/v0.4.41/tako-darwin-amd64",
          using: :nounzip
      sha256 "9c2ee0e66aae017248f36b63303a4e28256493165e24a937984bf613ba1c9131"
    end

    on_arm do
      url "https://github.com/redentordev/tako-cli/releases/download/v0.4.41/tako-darwin-arm64",
          using: :nounzip
      sha256 "8b9b699c06cc4fb4bc9e6b58a8498e7b7139d88f01a46e7bbf09eb754c310b54"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/redentordev/tako-cli/releases/download/v0.4.41/tako-linux-amd64",
          using: :nounzip
      sha256 "7fe4b4e3a61c9655792ec33f539d7fc3e64380de2a8e16b88a43eea74962c8e6"
    end

    on_arm do
      url "https://github.com/redentordev/tako-cli/releases/download/v0.4.41/tako-linux-arm64",
          using: :nounzip
      sha256 "f310d82bdb2a63a67abdd841a8ad86b4da2d42f14a3f39502b4d1347c6205a1f"
    end
  end

  def install
    bin.install Dir["tako-*"].first => "tako"
  end

  test do
    assert_match "Tako CLI v0.4.41", shell_output("#{bin}/tako --version")
  end
end
