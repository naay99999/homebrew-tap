cask "ney" do
  arch arm: "arm64", intel: "amd64"

  version "0.4.1"
  sha256 arm:   "893b5e11222afac9e6ea66c2db2fcaba159f8950d82d2d63f2f5a2019be1ff6a",
         intel: "25b62ad298bd1b348afd8b3af1d050b75a2f250ebdd27389fb99389d6502b3ed"

  url "https://github.com/naay99999/neything/releases/download/v#{version}/ney_#{version}_darwin_#{arch}.tar.gz"
  name "ney"
  desc "Local-first CLI knowledge engine — index files, search by meaning, ask questions with source citations"
  homepage "https://github.com/naay99999/neything"

  binary "ney"

  postflight do
    if OS.mac?
      system_command "/usr/bin/xattr", args: ["-dr", "com.apple.quarantine", "#{staged_path}/ney"]
    end
  end
end
