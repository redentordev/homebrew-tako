class Tako < Formula
  desc "Deploy apps to a small takod mesh"
  homepage "https://github.com/redentordev/tako-cli"
  version "0.8.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/redentordev/tako-cli/releases/download/v0.8.0/tako-darwin-amd64",
          using: :nounzip
      sha256 "f991ab76c02a70d8d8a04d61661a370bde51d6cbe38e42f07ee44a0e311cea15"
    end

    on_arm do
      url "https://github.com/redentordev/tako-cli/releases/download/v0.8.0/tako-darwin-arm64",
          using: :nounzip
      sha256 "7b6a48530ce8191e330bbd5a3289034c3159cd197e28a74f7ca82548fdde129e"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/redentordev/tako-cli/releases/download/v0.8.0/tako-linux-amd64",
          using: :nounzip
      sha256 "7320fef1025a0d8b34d93da5d009334b481a3fae8dad5a312b93988e72d5e189"
    end

    on_arm do
      url "https://github.com/redentordev/tako-cli/releases/download/v0.8.0/tako-linux-arm64",
          using: :nounzip
      sha256 "7a8fb950ccfa5c9027b6dbb4e0a3e429987b2bad39e6d3f2cc8d6c1d09486dd3"
    end
  end

  resource "manpages" do
    url "https://github.com/redentordev/tako-cli/releases/download/v0.8.0/tako-manpages.tar.gz"
    sha256 "6be2c4167ae65b41e6600c2a3303a101bf22ac0cadad094fdc72a2908c900249"
  end

  def install
    bin.install Dir["tako-*"].first => "tako"
    resource("manpages").stage do
      man1.install Dir["*.1"]
    end
  end

  test do
    assert_match "Tako CLI v0.8.0", shell_output("#{bin}/tako --version")
  end
end
