class Ney < Formula
  desc "Local-first CLI knowledge engine — index files, search by meaning, ask questions with source citations"
  homepage "https://github.com/naay99999/neything"
  version "0.4.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/naay99999/neything/releases/download/v0.4.0/ney_0.4.0_darwin_arm64.tar.gz"
      sha256 "cdc507af47dd0a67a0fbf092389dd0b440779b8cc7c85e0e13a7df959e707673"
    end
    on_intel do
      url "https://github.com/naay99999/neything/releases/download/v0.4.0/ney_0.4.0_darwin_amd64.tar.gz"
      sha256 "6dc9db7faddf4ba98b4d596c1c2079ad6590d18c8792db3273c4fd2808c79351"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/naay99999/neything/releases/download/v0.4.0/ney_0.4.0_linux_arm64.tar.gz"
      sha256 "15ee9606e32e94af9ce3b18aca6275e411fc57d2b5e4b8e74f0134e2c9d1e093"
    end
    on_intel do
      url "https://github.com/naay99999/neything/releases/download/v0.4.0/ney_0.4.0_linux_amd64.tar.gz"
      sha256 "37fbf863067025b5294fb547704de16316e403e2b75969099ce6673a11a20d07"
    end
  end

  def install
    bin.install "ney"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ney version")
  end
end
