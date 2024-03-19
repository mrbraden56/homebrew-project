class Project < Formula
  desc "Description"
  homepage "https://github.com/mrbraden56/project"

  on_macos do
    url "https://github.com/mrbraden56/project/releases/download/1.0.55/project-v1.0.55.zip"
    sha256 "8cbc8a67d2c1ba9f6456d1d333b507f6bfb8196106e79eaee80823f28429f109"

    def install
      bin.install "project"
    end
  end

  test do
    system "#{bin}/project", "--version"
  end
end
