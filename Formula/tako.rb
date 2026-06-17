class Tako < Formula
  desc "Deploy apps to a small takod mesh"
  homepage "https://github.com/redentordev/tako-cli"
  version "0.4.5"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/redentordev/tako-cli/releases/download/v0.4.5/tako-darwin-amd64",
          using: :nounzip
      sha256 "c966c465299890a90486c1fc1b8ac44aecece5fef254b8b80b71f093e9d1b89a"
    end

    on_arm do
      url "https://github.com/redentordev/tako-cli/releases/download/v0.4.5/tako-darwin-arm64",
          using: :nounzip
      sha256 "ee3890143b8e29c004af317477ecc58687ca3cceaeee04436a91baafa7090dfd"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/redentordev/tako-cli/releases/download/v0.4.5/tako-linux-amd64",
          using: :nounzip
      sha256 "deabb92aa33f2d66394b35f87bb6285f3d87a1c9550e81f9d96640be4fc4ef99"
    end

    on_arm do
      url "https://github.com/redentordev/tako-cli/releases/download/v0.4.5/tako-linux-arm64",
          using: :nounzip
      sha256 "d5a122426ae9e6770d717ee133fe1f6f8a2c27e26661919642f2689973696696"
    end
  end

  def install
    bin.install Dir["tako-*"].first => "tako"
  end

  test do
    assert_match "Tako CLI v0.4.5", shell_output("#{bin}/tako --version")
  end
end
