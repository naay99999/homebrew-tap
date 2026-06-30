class Ney < Formula
  desc "Local-first CLI knowledge engine — index files, search by meaning, ask questions with source citations"
  homepage "https://github.com/naay99999/neything"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/naay99999/neything/releases/download/v0.1.0/ney_0.1.0_darwin_arm64.tar.gz"
      sha256 "729f06951f98a64d1b165d47a9069e1cb39f411dcf68b1f3cf639306158585ba"
    end
    on_intel do
      url "https://github.com/naay99999/neything/releases/download/v0.1.0/ney_0.1.0_darwin_amd64.tar.gz"
      sha256 "27f6648357fe9f3a151aebed6e12317f71889df8cf81b15ea71465d700a0b3b7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/naay99999/neything/releases/download/v0.1.0/ney_0.1.0_linux_arm64.tar.gz"
      sha256 "982bcbfa4f71c88cf5f29f4166b95ee60e01dbbcaa0dcd4c7052bc231ca3d254"
    end
    on_intel do
      url "https://github.com/naay99999/neything/releases/download/v0.1.0/ney_0.1.0_linux_amd64.tar.gz"
      sha256 "04f3e2d979aa3a46c12c84a37701189b8e1e71ee904cacc7d022778cfdecf74d"
    end
  end

  def install
    bin.install "ney"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ney version")
  end
end
