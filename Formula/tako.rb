class Tako < Formula
  desc "Deploy apps to a small takod mesh"
  homepage "https://github.com/redentordev/tako-cli"
  version "0.4.22"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/redentordev/tako-cli/releases/download/v0.4.22/tako-darwin-amd64",
          using: :nounzip
      sha256 "19542773378c43f4f1e8548fdf97445c1fc59e5ddbaf234c3764371745885a83"
    end

    on_arm do
      url "https://github.com/redentordev/tako-cli/releases/download/v0.4.22/tako-darwin-arm64",
          using: :nounzip
      sha256 "e0beec8b094e5428ac79e5f8735737e958eeee43643d4e36f60f6178924dbbc1"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/redentordev/tako-cli/releases/download/v0.4.22/tako-linux-amd64",
          using: :nounzip
      sha256 "dad4dbe6736c52bf06889741ec751814925d2bc33082b83440659853e788a8b5"
    end

    on_arm do
      url "https://github.com/redentordev/tako-cli/releases/download/v0.4.22/tako-linux-arm64",
          using: :nounzip
      sha256 "d09be3d9faeae7ecb3090f907a1cec41399c2b9e3b1ce47eedf6b7ae24ad5939"
    end
  end

  def install
    bin.install Dir["tako-*"].first => "tako"
  end

  test do
    assert_match "Tako CLI v0.4.22", shell_output("#{bin}/tako --version")
  end
end
