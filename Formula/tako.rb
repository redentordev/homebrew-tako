class Tako < Formula
  desc "Deploy apps to a small takod mesh"
  homepage "https://github.com/redentordev/tako-cli"
  version "0.4.14"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/redentordev/tako-cli/releases/download/v0.4.14/tako-darwin-amd64",
          using: :nounzip
      sha256 "4d609a4af3daf78f6382eeb5278b5157fc1dbf9b248da7bdfc6efc517c35f75f"
    end

    on_arm do
      url "https://github.com/redentordev/tako-cli/releases/download/v0.4.14/tako-darwin-arm64",
          using: :nounzip
      sha256 "fbaa7f908476215aa1fdc3a1de364237ff1781d25f5c4e37bb18232ea0f36954"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/redentordev/tako-cli/releases/download/v0.4.14/tako-linux-amd64",
          using: :nounzip
      sha256 "66233c40a3535d5cae3a82afd5fedf2b4affd6f3119fdd64a43c3984d75457aa"
    end

    on_arm do
      url "https://github.com/redentordev/tako-cli/releases/download/v0.4.14/tako-linux-arm64",
          using: :nounzip
      sha256 "f8da0200687439a5389ae37f520c5b7b6fa373740a243b28a83cffefc51a5f97"
    end
  end

  def install
    bin.install Dir["tako-*"].first => "tako"
  end

  test do
    assert_match "Tako CLI v0.4.14", shell_output("#{bin}/tako --version")
  end
end
