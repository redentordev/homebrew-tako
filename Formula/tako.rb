class Tako < Formula
  desc "Deploy apps to a small takod mesh"
  homepage "https://github.com/redentordev/tako-cli"
  version "0.4.40"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/redentordev/tako-cli/releases/download/v0.4.40/tako-darwin-amd64",
          using: :nounzip
      sha256 "17f3c770d519a23e432546452aa2657c6bdfd1eed36641b57d41f69fba106886"
    end

    on_arm do
      url "https://github.com/redentordev/tako-cli/releases/download/v0.4.40/tako-darwin-arm64",
          using: :nounzip
      sha256 "6f02910a4a65834f7ee6f4f79c4bd814684a47d10edf422a69cddcd9d8144e70"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/redentordev/tako-cli/releases/download/v0.4.40/tako-linux-amd64",
          using: :nounzip
      sha256 "1a7ca7d0925e96009ae9a283a243830d5b89930b26ae5c137aaa2dd6680c6154"
    end

    on_arm do
      url "https://github.com/redentordev/tako-cli/releases/download/v0.4.40/tako-linux-arm64",
          using: :nounzip
      sha256 "44abecf6a3421881ce8da2e97e81db4bae64c40061240bda0863895445f01331"
    end
  end

  def install
    bin.install Dir["tako-*"].first => "tako"
  end

  test do
    assert_match "Tako CLI v0.4.40", shell_output("#{bin}/tako --version")
  end
end
