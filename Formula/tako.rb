class Tako < Formula
  desc "Deploy apps to a small takod mesh"
  homepage "https://github.com/redentordev/tako-cli"
  version "0.5.4"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/redentordev/tako-cli/releases/download/v0.5.4/tako-darwin-amd64",
          using: :nounzip
      sha256 "795b7d482f7e6ac6f1adc9174bc82b5ddeff5d128be230013af05323358feaf9"
    end

    on_arm do
      url "https://github.com/redentordev/tako-cli/releases/download/v0.5.4/tako-darwin-arm64",
          using: :nounzip
      sha256 "2e101facf8e6de847caf29ee60f659290fa8680e32c735f2528dace33c695661"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/redentordev/tako-cli/releases/download/v0.5.4/tako-linux-amd64",
          using: :nounzip
      sha256 "c15dcb4788d54e3ada73289347267c703f79b45b99f792cfc903d415fbe96d63"
    end

    on_arm do
      url "https://github.com/redentordev/tako-cli/releases/download/v0.5.4/tako-linux-arm64",
          using: :nounzip
      sha256 "7ad3c02ca3f1b781ffdb1f9ee3bf5f271b313573d2773b612f2ff13ef122a3dc"
    end
  end

  def install
    bin.install Dir["tako-*"].first => "tako"
  end

  test do
    assert_match "Tako CLI v0.5.4", shell_output("#{bin}/tako --version")
  end
end
