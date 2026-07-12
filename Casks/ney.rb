cask "ney" do
  arch arm: "arm64", intel: "amd64"

  version "0.5.0"
  sha256 arm:   "93748f4d408fc9b4fdf34b35f3e098ab7a45db7aa63c4ff888a7f01016ff74c8",
         intel: "91e8dcd9c7944579210c043716c133171295e5f3cf073b3871109ee95bed016e"

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
