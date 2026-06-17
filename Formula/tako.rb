class Tako < Formula
  desc "Deploy apps to a small takod mesh"
  homepage "https://github.com/redentordev/tako-cli"
  version "0.4.38"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/redentordev/tako-cli/releases/download/v0.4.38/tako-darwin-amd64",
          using: :nounzip
      sha256 "c5f30ecb95cb7f9e18079e3b7a8da07ec48fa4044a27764b8829eed6e9f07451"
    end

    on_arm do
      url "https://github.com/redentordev/tako-cli/releases/download/v0.4.38/tako-darwin-arm64",
          using: :nounzip
      sha256 "2b234ad2c82e19b630e965cf8084ee2932a4e8f485c46e219a075bf11691c4a0"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/redentordev/tako-cli/releases/download/v0.4.38/tako-linux-amd64",
          using: :nounzip
      sha256 "75c4b727aae3b2e37d4c34fa84c2b8b2ee653c9cf644d636a5ab1e2185b25fba"
    end

    on_arm do
      url "https://github.com/redentordev/tako-cli/releases/download/v0.4.38/tako-linux-arm64",
          using: :nounzip
      sha256 "9ff8d711116c44e13b136adaafbd0a54c793069980513ba9aa03aef705b6cea5"
    end
  end

  def install
    bin.install Dir["tako-*"].first => "tako"
  end

  test do
    assert_match "Tako CLI v0.4.38", shell_output("#{bin}/tako --version")
  end
end
