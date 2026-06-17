class Tako < Formula
  desc "Deploy apps to a small takod mesh"
  homepage "https://github.com/redentordev/tako-cli"
  version "0.4.37"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/redentordev/tako-cli/releases/download/v0.4.37/tako-darwin-amd64",
          using: :nounzip
      sha256 "a467fbc366d95670cb6951acf29782e31341b0cfd3fc71955e7c367a0b999796"
    end

    on_arm do
      url "https://github.com/redentordev/tako-cli/releases/download/v0.4.37/tako-darwin-arm64",
          using: :nounzip
      sha256 "6fb42985f0882ab170a63e7af0b1800eea97cee022d8cbe630fbc2524c631818"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/redentordev/tako-cli/releases/download/v0.4.37/tako-linux-amd64",
          using: :nounzip
      sha256 "adcd9ef72c777df2237028dfe3248846efe0d2d9c1eab308e5273cc32945d218"
    end

    on_arm do
      url "https://github.com/redentordev/tako-cli/releases/download/v0.4.37/tako-linux-arm64",
          using: :nounzip
      sha256 "1158639b8bccf4c5b489da976333b4dbc2a9a1fe7a1b477226a29abe7af2edc2"
    end
  end

  def install
    bin.install Dir["tako-*"].first => "tako"
  end

  test do
    assert_match "Tako CLI v0.4.37", shell_output("#{bin}/tako --version")
  end
end
