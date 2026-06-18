class Tako < Formula
  desc "Deploy apps to a small takod mesh"
  homepage "https://github.com/redentordev/tako-cli"
  version "0.4.42"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/redentordev/tako-cli/releases/download/v0.4.42/tako-darwin-amd64",
          using: :nounzip
      sha256 "536580c382077cdabc68c5c8daf79d3e8bd785d4a9843e05466a8a98eb48c799"
    end

    on_arm do
      url "https://github.com/redentordev/tako-cli/releases/download/v0.4.42/tako-darwin-arm64",
          using: :nounzip
      sha256 "2757dc4e554b6d3b7168d1272bb9ceca73725bef53f61bd34fc31c8577405fd2"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/redentordev/tako-cli/releases/download/v0.4.42/tako-linux-amd64",
          using: :nounzip
      sha256 "a506fd8f43d844ac569fa18546aeff51144d3782e3c08f42b334ced4259908f6"
    end

    on_arm do
      url "https://github.com/redentordev/tako-cli/releases/download/v0.4.42/tako-linux-arm64",
          using: :nounzip
      sha256 "32ed5e265e08e933c42a14866606873fa1d59ee502333471b9ff7766b87aa649"
    end
  end

  def install
    bin.install Dir["tako-*"].first => "tako"
  end

  test do
    assert_match "Tako CLI v0.4.42", shell_output("#{bin}/tako --version")
  end
end
