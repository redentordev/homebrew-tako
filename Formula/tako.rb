class Tako < Formula
  desc "Deploy apps to a small takod mesh"
  homepage "https://github.com/redentordev/tako-cli"
  version "0.4.35"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/redentordev/tako-cli/releases/download/v0.4.35/tako-darwin-amd64",
          using: :nounzip
      sha256 "5066545c75b9a0e214bd631c1ca07a777d125f2cfee59bd40df22016a6890776"
    end

    on_arm do
      url "https://github.com/redentordev/tako-cli/releases/download/v0.4.35/tako-darwin-arm64",
          using: :nounzip
      sha256 "d5494383ec0fd9abc26d6608d2be38cda5afcd316e1da8bba25d687c1c921714"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/redentordev/tako-cli/releases/download/v0.4.35/tako-linux-amd64",
          using: :nounzip
      sha256 "fdc2aa98c4d007fe27a2f57a7211edb2f590c056a041cff909e84d3fcb207600"
    end

    on_arm do
      url "https://github.com/redentordev/tako-cli/releases/download/v0.4.35/tako-linux-arm64",
          using: :nounzip
      sha256 "d2e49f11ed707af40c8d468b9c6c84d1e83479ddde973f7d774b7b8bb6ce6907"
    end
  end

  def install
    bin.install Dir["tako-*"].first => "tako"
  end

  test do
    assert_match "Tako CLI v0.4.35", shell_output("#{bin}/tako --version")
  end
end
