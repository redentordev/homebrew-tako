class Tako < Formula
  desc "Deploy apps to a small takod mesh"
  homepage "https://github.com/redentordev/tako-cli"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/redentordev/tako-cli/releases/download/v0.16.1/tako-darwin-amd64",
          using: :nounzip
      sha256 "37cc2b29805aab339e04653eed1677236d932442520a941fc0779aa1af314530"
    end

    on_arm do
      url "https://github.com/redentordev/tako-cli/releases/download/v0.16.1/tako-darwin-arm64",
          using: :nounzip
      sha256 "437ef3c6ec1559c6045053ffeb9e739ab2769a28c8e797a8bb097a964092df2c"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/redentordev/tako-cli/releases/download/v0.16.1/tako-linux-amd64",
          using: :nounzip
      sha256 "42036838b780ae9a98ffc693a5af5dbb6f8f2c44eda81c22e691c85491532bd0"
    end

    on_arm do
      url "https://github.com/redentordev/tako-cli/releases/download/v0.16.1/tako-linux-arm64",
          using: :nounzip
      sha256 "ebb5d218b6b38ce35221bfb1be6789e3a06dc180a9f554055d8e70a7e24f4d9d"
    end
  end

  resource "manpages" do
    url "https://github.com/redentordev/tako-cli/releases/download/v0.16.1/tako-manpages.tar.gz"
    sha256 "c80b50ff7fb8c0084a55163550c824ec77ad33ffa47f5f87935bab0ad7495d1f"
  end

  def install
    bin.install Dir["tako-*"].first => "tako"
    resource("manpages").stage do
      man1.install Dir["*.1"]
    end
  end

  test do
    assert_match "Tako CLI v0.16.1", shell_output("#{bin}/tako --version")
  end
end
