class Tako < Formula
  desc "Deploy apps to a small takod mesh"
  homepage "https://github.com/redentordev/tako-cli"
  version "0.4.6"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/redentordev/tako-cli/releases/download/v0.4.6/tako-darwin-amd64",
          using: :nounzip
      sha256 "73fb781edf5412a34dc1747e91b55f95d36bc8aad12379981c19c52eea1dbbe3"
    end

    on_arm do
      url "https://github.com/redentordev/tako-cli/releases/download/v0.4.6/tako-darwin-arm64",
          using: :nounzip
      sha256 "d82e90eb6ff8f0e6ee035e7c71b6bf828001dc171911fe3b4a408ba4a1470b88"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/redentordev/tako-cli/releases/download/v0.4.6/tako-linux-amd64",
          using: :nounzip
      sha256 "a93d91a7dc748d617b166430fdf4fe8856a065232973cdf680aa212ebf0c1d9e"
    end

    on_arm do
      url "https://github.com/redentordev/tako-cli/releases/download/v0.4.6/tako-linux-arm64",
          using: :nounzip
      sha256 "06d8d51400a3cc5a9343652b694e9b1c1821501c0671d865cb87c67b4aa49b58"
    end
  end

  def install
    bin.install Dir["tako-*"].first => "tako"
  end

  test do
    assert_match "Tako CLI v0.4.6", shell_output("#{bin}/tako --version")
  end
end
