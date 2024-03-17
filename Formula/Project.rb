class Project < Formula
  desc "Description"
  homepage "https://github.com/mrbraden56/project"

  on_macos do
    url "https://github.com/mrbraden56/project/releases/download/1.0.53/project-v1.0.53.zip"
    sha256 "e8501580d0fee50493c918d9915f60e2861bb021423438a0a30bb61aaa7595e8"

    def install
      bin.install "project"
    end
  end

  test do
    system "#{bin}/project", "--version"
  end
end
