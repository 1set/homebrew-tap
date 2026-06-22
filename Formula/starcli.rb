# Homebrew formula for starcli — the turnkey Starlark interpreter of the Starkits
# ecosystem. Installs the prebuilt binary from the GitHub release.
class Starcli < Formula
  desc "Turnkey Starlark interpreter for the Starkits ecosystem"
  homepage "https://github.com/1set/starcli"
  version "0.1.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/1set/starcli/releases/download/v0.1.2/starcli_0.1.2_macOS_arm64.tar.gz"
      sha256 "c929e8aedc633303e3e9d2c25c1451c3e66bc14fa485528e10049b653118d2f3"
    end
    on_intel do
      url "https://github.com/1set/starcli/releases/download/v0.1.2/starcli_0.1.2_macOS_amd64.tar.gz"
      sha256 "0af270f726d4d1ba648cf45124047c132952a3e336742d92119f6eb6022816ad"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/1set/starcli/releases/download/v0.1.2/starcli_0.1.2_linux_arm64.tar.gz"
      sha256 "c79247bd89c33962939e765dd3e4383b309c5ffd53c2cf664fa5bb70eb998505"
    end
    on_intel do
      url "https://github.com/1set/starcli/releases/download/v0.1.2/starcli_0.1.2_linux_amd64.tar.gz"
      sha256 "6ea1bea8444ad78ece58c857126b247f0a49e3b97ad2481cb98b74967f4bf6c4"
    end
  end

  def install
    bin.install "starcli"
  end

  test do
    assert_match "starcli", shell_output("#{bin}/starcli --version 2>&1")
  end
end
