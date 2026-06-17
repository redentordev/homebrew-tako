class Tako < Formula
  desc "Deploy apps to a small takod mesh"
  homepage "https://github.com/redentordev/tako-cli"
  version "0.4.34"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/redentordev/tako-cli/releases/download/v0.4.34/tako-darwin-amd64",
          using: :nounzip
      sha256 "90c837f44c827f5e3c8c2e2ed633908a4e08a0747b692a3d41f05110b108ddc2"
    end

    on_arm do
      url "https://github.com/redentordev/tako-cli/releases/download/v0.4.34/tako-darwin-arm64",
          using: :nounzip
      sha256 "26eb86e141cfef301c942b7889308a2c9be0c49ad659fa2fed33645ce8e179a6"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/redentordev/tako-cli/releases/download/v0.4.34/tako-linux-amd64",
          using: :nounzip
      sha256 "6a779774cc567837741834213078275cdc02f7ab0774ad47f73fa977c9319f08"
    end

    on_arm do
      url "https://github.com/redentordev/tako-cli/releases/download/v0.4.34/tako-linux-arm64",
          using: :nounzip
      sha256 "220b0189d11c95b471dd5921727d557a953346282664e26f4fa01544ac8a0278"
    end
  end

  def install
    bin.install Dir["tako-*"].first => "tako"
  end

  test do
    assert_match "Tako CLI v0.4.34", shell_output("#{bin}/tako --version")
  end
end
