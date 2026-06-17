class Tako < Formula
  desc "Deploy apps to a small takod mesh"
  homepage "https://github.com/redentordev/tako-cli"
  version "0.4.9"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/redentordev/tako-cli/releases/download/v0.4.9/tako-darwin-amd64",
          using: :nounzip
      sha256 "374548edf4d4a484ae4981fe21c0810c0338070f6c783d3334b1c222379230d8"
    end

    on_arm do
      url "https://github.com/redentordev/tako-cli/releases/download/v0.4.9/tako-darwin-arm64",
          using: :nounzip
      sha256 "06ef4224c90c08356046049c87097a2d6ec36e46a4e6b734c6e7cf9cecccfd2e"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/redentordev/tako-cli/releases/download/v0.4.9/tako-linux-amd64",
          using: :nounzip
      sha256 "10c5a1ac566c690a41bea89f7fd0fa6def952fe8538eabe85194f94350eaff75"
    end

    on_arm do
      url "https://github.com/redentordev/tako-cli/releases/download/v0.4.9/tako-linux-arm64",
          using: :nounzip
      sha256 "012d9f0c656e1d6b71fb7b341932ac56ed1f584dc8b3767827c9c830abb8662f"
    end
  end

  def install
    bin.install Dir["tako-*"].first => "tako"
  end

  test do
    assert_match "Tako CLI v0.4.9", shell_output("#{bin}/tako --version")
  end
end
