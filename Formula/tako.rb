class Tako < Formula
  desc "Deploy apps to a small takod mesh"
  homepage "https://github.com/redentordev/tako-cli"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/redentordev/tako-cli/releases/download/v0.12.2/tako-darwin-amd64",
          using: :nounzip
      sha256 "296447efc6575d01e948c95cac45040d16cb9154e94b3be0e227a401e2e070bc"
    end

    on_arm do
      url "https://github.com/redentordev/tako-cli/releases/download/v0.12.2/tako-darwin-arm64",
          using: :nounzip
      sha256 "7f1a7e534cb28db923a430842867c74f8013bc79a950bfed1e0401fc88a98e8f"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/redentordev/tako-cli/releases/download/v0.12.2/tako-linux-amd64",
          using: :nounzip
      sha256 "14522e92bf8fe09bfbfe4941a789d22bf8a15a3263bcaeb901c05c7dd6ebf3d7"
    end

    on_arm do
      url "https://github.com/redentordev/tako-cli/releases/download/v0.12.2/tako-linux-arm64",
          using: :nounzip
      sha256 "7195daa15825b42d2e96772b4274dc246b9a6fddaa90a7523c6947f77c5a82fd"
    end
  end

  resource "manpages" do
    url "https://github.com/redentordev/tako-cli/releases/download/v0.12.2/tako-manpages.tar.gz"
    sha256 "daa5ce9c5f11f04b0ce555520cd08466c4e5c4bac0dd5d5bddd3b2d502aaacd3"
  end

  def install
    bin.install Dir["tako-*"].first => "tako"
    resource("manpages").stage do
      man1.install Dir["*.1"]
    end
  end

  test do
    assert_match "Tako CLI v0.12.2", shell_output("#{bin}/tako --version")
  end
end
