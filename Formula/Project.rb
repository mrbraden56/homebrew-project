class Project < Formula
  desc "Description"
  homepage "https://github.com/mrbraden56/project"

  on_macos do
    url "https://github.com/mrbraden56/project/releases/download/1.0.49/project-v1.0.49.zip"
    sha256 "e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855"

    def install
      bin.install "project"
    end
  end

  test do
    system "#{bin}/project", "--version"
  end
end
