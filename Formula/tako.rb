class Tako < Formula
  desc "Deploy apps to a small takod mesh"
  homepage "https://github.com/redentordev/tako-cli"
  version "0.7.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/redentordev/tako-cli/releases/download/v0.7.0/tako-darwin-amd64",
          using: :nounzip
      sha256 "1ed5fa6725a0c5842d8301f3ff7bc9da74ce489cc5627c093935c526aa2c3062"
    end

    on_arm do
      url "https://github.com/redentordev/tako-cli/releases/download/v0.7.0/tako-darwin-arm64",
          using: :nounzip
      sha256 "62c8ee4da9bdf213228421c18e15f8a4182a2d0dd2bd9410ee71b5b560a92fc8"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/redentordev/tako-cli/releases/download/v0.7.0/tako-linux-amd64",
          using: :nounzip
      sha256 "f9db112513416e8a3faee95d7ed38264b6dfacbaecbdf5b8c380851ed0cf8450"
    end

    on_arm do
      url "https://github.com/redentordev/tako-cli/releases/download/v0.7.0/tako-linux-arm64",
          using: :nounzip
      sha256 "a97747176041ce5dc10ffd4640a9697591db43d47ec4edea1c824b691d34add4"
    end
  end

  resource "manpages" do
    url "https://github.com/redentordev/tako-cli/releases/download/v0.7.0/tako-manpages.tar.gz"
    sha256 "9e5e180c8b89e43a9697a16ba031f412e83b170aab7247b02e5bbbeb425b3d2b"
  end

  def install
    bin.install Dir["tako-*"].first => "tako"
    resource("manpages").stage do
      man1.install Dir["*.1"]
    end
  end

  test do
    assert_match "Tako CLI v0.7.0", shell_output("#{bin}/tako --version")
  end
end
