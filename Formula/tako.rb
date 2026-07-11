class Tako < Formula
  desc "Deploy apps to a small takod mesh"
  homepage "https://github.com/redentordev/tako-cli"
  version "0.9.2"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/redentordev/tako-cli/releases/download/v0.9.2/tako-darwin-amd64",
          using: :nounzip
      sha256 "cbd279dffd8a7147f46a430eb6cfaccdad882fca504bd01e73dcf61596ceeadf"
    end

    on_arm do
      url "https://github.com/redentordev/tako-cli/releases/download/v0.9.2/tako-darwin-arm64",
          using: :nounzip
      sha256 "1f5b9f2de700d1cbf48108ddc064f7ae550a0de9af5a6b876525697cf2c505af"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/redentordev/tako-cli/releases/download/v0.9.2/tako-linux-amd64",
          using: :nounzip
      sha256 "809a5e41be60c05ea34276fbcfa419285b6fe99c41e40fb33360dfd65f1427e3"
    end

    on_arm do
      url "https://github.com/redentordev/tako-cli/releases/download/v0.9.2/tako-linux-arm64",
          using: :nounzip
      sha256 "c21102542bb1bb9be3900e9ea0808cae2a497f59ba9eb02ab3ad9b52514887f6"
    end
  end

  resource "manpages" do
    url "https://github.com/redentordev/tako-cli/releases/download/v0.9.2/tako-manpages.tar.gz"
    sha256 "3bf574b3693c0ad67c7de8a45e8afb87482f21bc2db4958559c8f4c13b404d60"
  end

  def install
    bin.install Dir["tako-*"].first => "tako"
    resource("manpages").stage do
      man1.install Dir["*.1"]
    end
  end

  test do
    assert_match "Tako CLI v0.9.2", shell_output("#{bin}/tako --version")
  end
end
