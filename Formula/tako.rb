class Tako < Formula
  desc "Deploy apps to a small takod mesh"
  homepage "https://github.com/redentordev/tako-cli"
  version "0.4.18"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/redentordev/tako-cli/releases/download/v0.4.18/tako-darwin-amd64",
          using: :nounzip
      sha256 "a97132bcc0664c66e94fe1fad640c0f3683392dce6662baa5bacda1524b9d1ae"
    end

    on_arm do
      url "https://github.com/redentordev/tako-cli/releases/download/v0.4.18/tako-darwin-arm64",
          using: :nounzip
      sha256 "6315035b080b783ebe03f19efcca7dd3b6cfb05b9192dd7d984ff17c567effc3"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/redentordev/tako-cli/releases/download/v0.4.18/tako-linux-amd64",
          using: :nounzip
      sha256 "49abe59a7cf7e252b42f077f45e247b7c4e4116674af880daed5d8d56c43ea59"
    end

    on_arm do
      url "https://github.com/redentordev/tako-cli/releases/download/v0.4.18/tako-linux-arm64",
          using: :nounzip
      sha256 "94562e9d211f040541ea460ca5c2c9e330aa25bcbd85fb9570b9cfc739daaff0"
    end
  end

  def install
    bin.install Dir["tako-*"].first => "tako"
  end

  test do
    assert_match "Tako CLI v0.4.18", shell_output("#{bin}/tako --version")
  end
end
