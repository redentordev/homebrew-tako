class Tako < Formula
  desc "Deploy apps to a small takod mesh"
  homepage "https://github.com/redentordev/tako-cli"
  version "0.4.3"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/redentordev/tako-cli/releases/download/v0.4.3/tako-darwin-amd64",
          using: :nounzip
      sha256 "4e8f14abaf1488375ab63c0820b22fab86ef584e9a84cc749d150d90646e0832"
    end

    on_arm do
      url "https://github.com/redentordev/tako-cli/releases/download/v0.4.3/tako-darwin-arm64",
          using: :nounzip
      sha256 "3f7bb5764a1f74f3f77b5abe9cc88f73f79fbbd2ab509a72f1dc5d0e2c36a96a"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/redentordev/tako-cli/releases/download/v0.4.3/tako-linux-amd64",
          using: :nounzip
      sha256 "0479cef7c62d68d805026511b94d979110573ed52a60886823be9eba34782471"
    end

    on_arm do
      url "https://github.com/redentordev/tako-cli/releases/download/v0.4.3/tako-linux-arm64",
          using: :nounzip
      sha256 "beaf84d851d1bc88963ccaafce615641a4e1a88854b2c96d370e077a12fca3e6"
    end
  end

  def install
    bin.install Dir["tako-*"].first => "tako"
  end

  test do
    assert_match "Tako CLI v0.4.3", shell_output("#{bin}/tako --version")
  end
end
