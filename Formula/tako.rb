class Tako < Formula
  desc "Deploy apps to a small takod mesh"
  homepage "https://github.com/redentordev/tako-cli"
  version "0.4.36"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/redentordev/tako-cli/releases/download/v0.4.36/tako-darwin-amd64",
          using: :nounzip
      sha256 "0a566c4d3480cb57209a05568ca19320edcc00c18fed590273b08d676b74c820"
    end

    on_arm do
      url "https://github.com/redentordev/tako-cli/releases/download/v0.4.36/tako-darwin-arm64",
          using: :nounzip
      sha256 "dfd4d8a94926dd3039f7290a7ec988cc901b89d1fc0a6e7469775370ab3da1f1"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/redentordev/tako-cli/releases/download/v0.4.36/tako-linux-amd64",
          using: :nounzip
      sha256 "c4ac1a248d17706c7cdb43b257a0e200745e6d97136ad0ed368653f2a9015ceb"
    end

    on_arm do
      url "https://github.com/redentordev/tako-cli/releases/download/v0.4.36/tako-linux-arm64",
          using: :nounzip
      sha256 "4b9583a3a4de3de731b50667114960df2e86699f234975e6225b1e95c8291575"
    end
  end

  def install
    bin.install Dir["tako-*"].first => "tako"
  end

  test do
    assert_match "Tako CLI v0.4.36", shell_output("#{bin}/tako --version")
  end
end
