class Tako < Formula
  desc "Deploy apps to a small takod mesh"
  homepage "https://github.com/redentordev/tako-cli"
  version "0.5.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/redentordev/tako-cli/releases/download/v0.5.0/tako-darwin-amd64",
          using: :nounzip
      sha256 "559a4948f1310f7ebcd754bb398f61773ee5faad76c7d8050243e08bfd358c2a"
    end

    on_arm do
      url "https://github.com/redentordev/tako-cli/releases/download/v0.5.0/tako-darwin-arm64",
          using: :nounzip
      sha256 "e89c237f418d1bcf18371959e61f33533992cd790b95b6a4bd5aba7565879ced"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/redentordev/tako-cli/releases/download/v0.5.0/tako-linux-amd64",
          using: :nounzip
      sha256 "f7d58e4178fb2a534e71af133b3ae7f0315f600cc8a6aa32e0d83cf9a20dfd22"
    end

    on_arm do
      url "https://github.com/redentordev/tako-cli/releases/download/v0.5.0/tako-linux-arm64",
          using: :nounzip
      sha256 "98a7ddd6d4e19965c71c2596834c91e10c7b40c1c2b1d528387d55bd095a1578"
    end
  end

  def install
    bin.install Dir["tako-*"].first => "tako"
  end

  test do
    assert_match "Tako CLI v0.5.0", shell_output("#{bin}/tako --version")
  end
end
