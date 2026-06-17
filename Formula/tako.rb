class Tako < Formula
  desc "Deploy apps to a small takod mesh"
  homepage "https://github.com/redentordev/tako-cli"
  version "0.4.21"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/redentordev/tako-cli/releases/download/v0.4.21/tako-darwin-amd64",
          using: :nounzip
      sha256 "927ac0a7a7fa30077dc30c0181b1ff5ae767224bcb31d70e4d267b86359f926e"
    end

    on_arm do
      url "https://github.com/redentordev/tako-cli/releases/download/v0.4.21/tako-darwin-arm64",
          using: :nounzip
      sha256 "85bfe39e289b0ca4f1007293b829062bc4d833d29f0e4fdc0401c06c737fa21d"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/redentordev/tako-cli/releases/download/v0.4.21/tako-linux-amd64",
          using: :nounzip
      sha256 "b7b61dbc499a49c1cf42b123fd5b6b0101f28af606d8bbd6fbd8f2cc736a1617"
    end

    on_arm do
      url "https://github.com/redentordev/tako-cli/releases/download/v0.4.21/tako-linux-arm64",
          using: :nounzip
      sha256 "dda0b1ac811fcd82e3e52647dc5a0bb4dafe2218954e914c700833bf7a2050cd"
    end
  end

  def install
    bin.install Dir["tako-*"].first => "tako"
  end

  test do
    assert_match "Tako CLI v0.4.21", shell_output("#{bin}/tako --version")
  end
end
