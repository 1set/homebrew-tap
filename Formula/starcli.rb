# Homebrew formula for starcli — the turnkey Starlark interpreter of the Starkits
# ecosystem. Installs the prebuilt binary from the GitHub release.
class Starcli < Formula
  desc "Turnkey Starlark interpreter for the Starkits ecosystem"
  homepage "https://github.com/1set/starcli"
  version "0.1.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/1set/starcli/releases/download/v0.1.4/starcli_0.1.4_macOS_arm64.tar.gz"
      sha256 "c484b77ec02974a5da48fdb9cfd0511d05b1057a5652c8dff0a3223f6fa90c67"
    end
    on_intel do
      url "https://github.com/1set/starcli/releases/download/v0.1.4/starcli_0.1.4_macOS_amd64.tar.gz"
      sha256 "dde43f038e28e68079b49296c8c4201e6af560510ec07cd3d773383614d261a9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/1set/starcli/releases/download/v0.1.4/starcli_0.1.4_linux_arm64.tar.gz"
      sha256 "5c91583a623408190feea7e649a1769f8bca35e60617695a2f9bc080c6387633"
    end
    on_intel do
      url "https://github.com/1set/starcli/releases/download/v0.1.4/starcli_0.1.4_linux_amd64.tar.gz"
      sha256 "e74583f4fb2fb6aa5058b6e7e6cb6d205644a3c8cd5462ec179ca608bdce9d5f"
    end
  end

  def install
    bin.install "starcli"
  end

  test do
    assert_match "GitSummary: v#{version}", shell_output("#{bin}/starcli --version")
  end
end
