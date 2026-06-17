class Tako < Formula
  desc "Deploy apps to a small takod mesh"
  homepage "https://github.com/redentordev/tako-cli"
  version "0.4.20"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/redentordev/tako-cli/releases/download/v0.4.20/tako-darwin-amd64",
          using: :nounzip
      sha256 "d6edcbae9178991330739d1b205825811e4945196f383779b406e02a40b1ccf5"
    end

    on_arm do
      url "https://github.com/redentordev/tako-cli/releases/download/v0.4.20/tako-darwin-arm64",
          using: :nounzip
      sha256 "2b45514b8f0336a383f87b602eb1c5d8ce41d383397853e538c84e269265bf6d"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/redentordev/tako-cli/releases/download/v0.4.20/tako-linux-amd64",
          using: :nounzip
      sha256 "a056b1c5b39501be6333fdfd160b33890ae354dcaad181bc7d5cefde79b68c42"
    end

    on_arm do
      url "https://github.com/redentordev/tako-cli/releases/download/v0.4.20/tako-linux-arm64",
          using: :nounzip
      sha256 "b4b7f248b18c2cac8c2659d6d1b3740ace30f84e226d3a99c0a5971be9e75f7a"
    end
  end

  def install
    bin.install Dir["tako-*"].first => "tako"
  end

  test do
    assert_match "Tako CLI v0.4.20", shell_output("#{bin}/tako --version")
  end
end
