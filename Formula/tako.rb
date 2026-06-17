class Tako < Formula
  desc "Deploy apps to a small takod mesh"
  homepage "https://github.com/redentordev/tako-cli"
  version "0.4.4"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/redentordev/tako-cli/releases/download/v0.4.4/tako-darwin-amd64",
          using: :nounzip
      sha256 "7dd6085484543d943b7f1bd013acb7b247462ca44719448e0b9d3623a054ae3a"
    end

    on_arm do
      url "https://github.com/redentordev/tako-cli/releases/download/v0.4.4/tako-darwin-arm64",
          using: :nounzip
      sha256 "28345f6c2b30ac54325898c7614830f3448e1caeb5e483ede6c09c239f6d9df3"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/redentordev/tako-cli/releases/download/v0.4.4/tako-linux-amd64",
          using: :nounzip
      sha256 "1263cdc08797734f8204ef56af1f117b4020a309fc1a51c9b44a139ee86c2130"
    end

    on_arm do
      url "https://github.com/redentordev/tako-cli/releases/download/v0.4.4/tako-linux-arm64",
          using: :nounzip
      sha256 "18bc717ff674b8cc38611607e4103d825ff35c3a312cbfed28524c93d73fdfd4"
    end
  end

  def install
    bin.install Dir["tako-*"].first => "tako"
  end

  test do
    assert_match "Tako CLI v0.4.4", shell_output("#{bin}/tako --version")
  end
end
