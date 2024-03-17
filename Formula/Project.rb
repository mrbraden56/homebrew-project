class Project < Formula
  desc "Description"
  homepage "https://github.com/mrbraden56/project"

  on_macos do
    url "https://github.com/mrbraden56/project/releases/download/1.0.52/project-v1.0.52.zip"
    sha256 "da73ac34b7b03c0bb39cc46858d603ffb883313954fbda315c5f8a6b6319efae"

    def install
      bin.install "project"
    end
  end

  test do
    system "#{bin}/project", "--version"
  end
end
