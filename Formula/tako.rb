class Tako < Formula
  desc "Deploy apps to a small takod mesh"
  homepage "https://github.com/redentordev/tako-cli"
  version "0.4.10"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/redentordev/tako-cli/releases/download/v0.4.10/tako-darwin-amd64",
          using: :nounzip
      sha256 "e33ea740f411fa4c1256bf8615c07cbe78bcb3079bbd1b985e88336420da0424"
    end

    on_arm do
      url "https://github.com/redentordev/tako-cli/releases/download/v0.4.10/tako-darwin-arm64",
          using: :nounzip
      sha256 "0a31fc688cb2b78d013707981de28a39daad4b4399070bae7c6148e30c0c1dbe"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/redentordev/tako-cli/releases/download/v0.4.10/tako-linux-amd64",
          using: :nounzip
      sha256 "e677aa34128a7089bfe7e483b1c6c9fa510a377f775c48745588877726de41df"
    end

    on_arm do
      url "https://github.com/redentordev/tako-cli/releases/download/v0.4.10/tako-linux-arm64",
          using: :nounzip
      sha256 "7c18b9a52cca0e130fd574729a385f3021adfd241f9246e68b6074d3150c7e16"
    end
  end

  def install
    bin.install Dir["tako-*"].first => "tako"
  end

  test do
    assert_match "Tako CLI v0.4.10", shell_output("#{bin}/tako --version")
  end
end
