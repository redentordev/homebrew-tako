class Tako < Formula
  desc "Deploy apps to a small takod mesh"
  homepage "https://github.com/redentordev/tako-cli"
  version "0.5.2"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/redentordev/tako-cli/releases/download/v0.5.2/tako-darwin-amd64",
          using: :nounzip
      sha256 "64b80641fb695b410be87876deca3d6266035a564c3016f9e2b6fc256153ec5b"
    end

    on_arm do
      url "https://github.com/redentordev/tako-cli/releases/download/v0.5.2/tako-darwin-arm64",
          using: :nounzip
      sha256 "107be635774b3474f190d9ec2622e7dbf6095125c509089b0fe2d06121ee268a"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/redentordev/tako-cli/releases/download/v0.5.2/tako-linux-amd64",
          using: :nounzip
      sha256 "1b6e6e8aafee9439a0556b4bb89d181c58d49239c23ae15845b758f01a93cc2f"
    end

    on_arm do
      url "https://github.com/redentordev/tako-cli/releases/download/v0.5.2/tako-linux-arm64",
          using: :nounzip
      sha256 "3998e90fff8627aa086c636615155c226111eed40a5be98a64a05ed195ec6a58"
    end
  end

  def install
    bin.install Dir["tako-*"].first => "tako"
  end

  test do
    assert_match "Tako CLI v0.5.2", shell_output("#{bin}/tako --version")
  end
end
