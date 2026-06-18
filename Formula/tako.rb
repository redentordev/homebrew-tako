class Tako < Formula
  desc "Deploy apps to a small takod mesh"
  homepage "https://github.com/redentordev/tako-cli"
  version "0.4.43"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/redentordev/tako-cli/releases/download/v0.4.43/tako-darwin-amd64",
          using: :nounzip
      sha256 "385a1e5c49a9404fbe74cce877caf398fe8edc97caee830854cdacef4a50dfe7"
    end

    on_arm do
      url "https://github.com/redentordev/tako-cli/releases/download/v0.4.43/tako-darwin-arm64",
          using: :nounzip
      sha256 "535ca5b2626a4023c23a840a94c1faa72e20e23ad04dcf647f2a6ee50a725e07"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/redentordev/tako-cli/releases/download/v0.4.43/tako-linux-amd64",
          using: :nounzip
      sha256 "124068a0f822acaafeb6fd47b8a82f38861f71580bd41bae39073cf5790076fa"
    end

    on_arm do
      url "https://github.com/redentordev/tako-cli/releases/download/v0.4.43/tako-linux-arm64",
          using: :nounzip
      sha256 "01e9d9dde426c1f975e633c08cd9382a4b24bed671439d02ca1b720138e75d44"
    end
  end

  def install
    bin.install Dir["tako-*"].first => "tako"
  end

  test do
    assert_match "Tako CLI v0.4.43", shell_output("#{bin}/tako --version")
  end
end
