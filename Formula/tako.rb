class Tako < Formula
  desc "Deploy apps to a small takod mesh"
  homepage "https://github.com/redentordev/tako-cli"
  version "0.8.2"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/redentordev/tako-cli/releases/download/v0.8.2/tako-darwin-amd64",
          using: :nounzip
      sha256 "f2634b7f142029a0e9baa29181e74f18e340e915084062ae9f2c2adf62ca650e"
    end

    on_arm do
      url "https://github.com/redentordev/tako-cli/releases/download/v0.8.2/tako-darwin-arm64",
          using: :nounzip
      sha256 "a345046348013153686d1a0424833f4e4273d4cd957ef5575d1fd46fb86c0e63"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/redentordev/tako-cli/releases/download/v0.8.2/tako-linux-amd64",
          using: :nounzip
      sha256 "fe7f3dde79361f2d888da3cfc87cf3d3b4692655dc5130fd2aed8a4aa7379a04"
    end

    on_arm do
      url "https://github.com/redentordev/tako-cli/releases/download/v0.8.2/tako-linux-arm64",
          using: :nounzip
      sha256 "b0799354c9db939f9553c5edd4ea0506244165bc6ee934ca9444e4c4fdd0ce97"
    end
  end

  resource "manpages" do
    url "https://github.com/redentordev/tako-cli/releases/download/v0.8.2/tako-manpages.tar.gz"
    sha256 "24840463e38a958be35d334f67dbc045053fbac3589a0f99117a700e72df0725"
  end

  def install
    bin.install Dir["tako-*"].first => "tako"
    resource("manpages").stage do
      man1.install Dir["*.1"]
    end
  end

  test do
    assert_match "Tako CLI v0.8.2", shell_output("#{bin}/tako --version")
  end
end
