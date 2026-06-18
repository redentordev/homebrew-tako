class Tako < Formula
  desc "Deploy apps to a small takod mesh"
  homepage "https://github.com/redentordev/tako-cli"
  version "0.4.46"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/redentordev/tako-cli/releases/download/v0.4.46/tako-darwin-amd64",
          using: :nounzip
      sha256 "cf8de86204064e27f292ce4fa93d316a29e423503854e69e32d2335c4493aad5"
    end

    on_arm do
      url "https://github.com/redentordev/tako-cli/releases/download/v0.4.46/tako-darwin-arm64",
          using: :nounzip
      sha256 "af59e79d4fe985587e17c37f6c2df0db6eb90605c07448960ae9fb599439d7f3"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/redentordev/tako-cli/releases/download/v0.4.46/tako-linux-amd64",
          using: :nounzip
      sha256 "f4e3cc91c3c3fb1fee9b3215cb53e28da786c8dc9abe2951349c8ce1130159ec"
    end

    on_arm do
      url "https://github.com/redentordev/tako-cli/releases/download/v0.4.46/tako-linux-arm64",
          using: :nounzip
      sha256 "b8fc15aeb3788752b9f61fc2cb80d0e30dc257b713b30b461b600bce2dee39ad"
    end
  end

  def install
    bin.install Dir["tako-*"].first => "tako"
  end

  test do
    assert_match "Tako CLI v0.4.46", shell_output("#{bin}/tako --version")
  end
end
