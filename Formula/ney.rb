class Ney < Formula
  desc "Local-first CLI knowledge engine — index files, search by meaning, ask questions with source citations"
  homepage "https://github.com/naay99999/neything"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/naay99999/neything/releases/download/v0.3.0/ney_0.3.0_darwin_arm64.tar.gz"
      sha256 "13cec99ef1d54d1448d4d73c25a3af7ae5ff7707b2e11c4a3d9b499c596b8b61"
    end
    on_intel do
      url "https://github.com/naay99999/neything/releases/download/v0.3.0/ney_0.3.0_darwin_amd64.tar.gz"
      sha256 "887dd5b6eb45dba77405679b9a098faf170acfc2aa352008b72cf5d13e9d3b91"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/naay99999/neything/releases/download/v0.3.0/ney_0.3.0_linux_arm64.tar.gz"
      sha256 "22e3b6c90534e70daf7ba5f3ec9305df3fbc789de66d834f6acb1992cd7f5d65"
    end
    on_intel do
      url "https://github.com/naay99999/neything/releases/download/v0.3.0/ney_0.3.0_linux_amd64.tar.gz"
      sha256 "82b3770faec82435c0858cc22f140e043f0ba7de0044ad53118134b1421e535a"
    end
  end

  def install
    bin.install "ney"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ney version")
  end
end
