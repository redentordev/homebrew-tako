class Tako < Formula
  desc "Deploy apps to a small takod mesh"
  homepage "https://github.com/redentordev/tako-cli"
  version "0.6.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/redentordev/tako-cli/releases/download/v0.6.0/tako-darwin-amd64",
          using: :nounzip
      sha256 "5c0a982eeb0c6ac6ad9b7fb9bf5bba729a43bf8c2f1eef4b076191092301f066"
    end

    on_arm do
      url "https://github.com/redentordev/tako-cli/releases/download/v0.6.0/tako-darwin-arm64",
          using: :nounzip
      sha256 "6fd37dda7c45d433749c5026b15642a0f25a8d1c9b13b28e8624b15e368aae52"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/redentordev/tako-cli/releases/download/v0.6.0/tako-linux-amd64",
          using: :nounzip
      sha256 "9ae3e47d9fdea9331320b466bb09cda034c87b1f79e698a8c743b49f9ed6ecc2"
    end

    on_arm do
      url "https://github.com/redentordev/tako-cli/releases/download/v0.6.0/tako-linux-arm64",
          using: :nounzip
      sha256 "dbce2eddb174b5b1fbc14e9a38a178d21bdbff954ffb3a76850f41b1c8489b83"
    end
  end

  resource "manpages" do
    url "https://github.com/redentordev/tako-cli/releases/download/v0.6.0/tako-manpages.tar.gz"
    sha256 "3316e585be47b76d281fcd71885ffa24d1ec0647861ced6604fda89d2a6c0147"
  end

  def install
    bin.install Dir["tako-*"].first => "tako"
    resource("manpages").stage do
      man1.install Dir["*.1"]
    end
  end

  test do
    assert_match "Tako CLI v0.6.0", shell_output("#{bin}/tako --version")
  end
end
