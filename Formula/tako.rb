class Tako < Formula
  desc "Deploy apps to a small takod mesh"
  homepage "https://github.com/redentordev/tako-cli"
  version "0.4.15"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/redentordev/tako-cli/releases/download/v0.4.15/tako-darwin-amd64",
          using: :nounzip
      sha256 "edb30bbddae0dd69b5b4c0d855a0e8b264819e6a51c818e6b2786ea7df47f7b7"
    end

    on_arm do
      url "https://github.com/redentordev/tako-cli/releases/download/v0.4.15/tako-darwin-arm64",
          using: :nounzip
      sha256 "1f552764d4ded8661283929e1143354d071837994548e123655223b3ba2bf723"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/redentordev/tako-cli/releases/download/v0.4.15/tako-linux-amd64",
          using: :nounzip
      sha256 "e602ddc395b368befeaf83614311c30e17ed3cf4b1b6be9d55d4553488c7fb7e"
    end

    on_arm do
      url "https://github.com/redentordev/tako-cli/releases/download/v0.4.15/tako-linux-arm64",
          using: :nounzip
      sha256 "4edf7641644eb392437d5705b4aed8bc137c9a5edd5014e4a5a24b4a30e08d91"
    end
  end

  def install
    bin.install Dir["tako-*"].first => "tako"
  end

  test do
    assert_match "Tako CLI v0.4.15", shell_output("#{bin}/tako --version")
  end
end
