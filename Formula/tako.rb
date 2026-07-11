class Tako < Formula
  desc "Deploy apps to a small takod mesh"
  homepage "https://github.com/redentordev/tako-cli"
  version "0.9.1"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/redentordev/tako-cli/releases/download/v0.9.1/tako-darwin-amd64",
          using: :nounzip
      sha256 "e7cecaeb9a902061df3cda71f2832170070fa76189796101ea9cc7f500e64cbd"
    end

    on_arm do
      url "https://github.com/redentordev/tako-cli/releases/download/v0.9.1/tako-darwin-arm64",
          using: :nounzip
      sha256 "c6e40974ef45a7ac11b177294539a69030c92d1a75720fe191d03596c4cd174c"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/redentordev/tako-cli/releases/download/v0.9.1/tako-linux-amd64",
          using: :nounzip
      sha256 "4bc825cf0ef2f9f80bf71f5a2d3875b5b7c546d4aecf8e8e6baf9abd6a075f0f"
    end

    on_arm do
      url "https://github.com/redentordev/tako-cli/releases/download/v0.9.1/tako-linux-arm64",
          using: :nounzip
      sha256 "22e4b590a7c2ac770cead10e20c2e5f32c3a543a9b912a689a9e30852f9ec409"
    end
  end

  resource "manpages" do
    url "https://github.com/redentordev/tako-cli/releases/download/v0.9.1/tako-manpages.tar.gz"
    sha256 "dc2b7eecb712d629ad30887dc9957991c87d48d49db558ad678c5a75ad72e95d"
  end

  def install
    bin.install Dir["tako-*"].first => "tako"
    resource("manpages").stage do
      man1.install Dir["*.1"]
    end
  end

  test do
    assert_match "Tako CLI v0.9.1", shell_output("#{bin}/tako --version")
  end
end
