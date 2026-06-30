class Ney < Formula
  desc "Local-first CLI knowledge engine — index files, search by meaning, ask questions with source citations"
  homepage "https://github.com/naay99999/neything"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/naay99999/neything/releases/download/v0.2.0/ney_0.2.0_darwin_arm64.tar.gz"
      sha256 "ad20113a91e38c6c7d72eee0d1f3dc4d06d3ced4525b9982edd9d5e0921610fb"
    end
    on_intel do
      url "https://github.com/naay99999/neything/releases/download/v0.2.0/ney_0.2.0_darwin_amd64.tar.gz"
      sha256 "c7e4688366497d42dd09b78adf4e5121d2e5be2a3d452abf4b868ef24929e9e7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/naay99999/neything/releases/download/v0.2.0/ney_0.2.0_linux_arm64.tar.gz"
      sha256 "baf4cb1a634969c2654ddda2e60cd82019357f0d8a57c0a02fbdb6bd6ffc4885"
    end
    on_intel do
      url "https://github.com/naay99999/neything/releases/download/v0.2.0/ney_0.2.0_linux_amd64.tar.gz"
      sha256 "31dfc78ca3d6f44f0722f9b057e5aad52501dc18cd56367eedd7698ae18c8be7"
    end
  end

  def install
    bin.install "ney"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ney version")
  end
end
