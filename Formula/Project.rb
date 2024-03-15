class Project < Formula
  desc "Description"
  homepage "https://github.com/mrbraden56/project"

  on_macos do
    url "https://github.com/mrbraden56/project/releases/download/1.0.51/project-v1.0.51.zip"
    sha256 "39d2ba993d73ef13c6fd89d0301620ed54ca7ab884826f98dfe68b3cf70bedb0"

    def install
      bin.install "project"
    end
  end

  test do
    system "#{bin}/project", "--version"
  end
end
