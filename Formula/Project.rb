class Project < Formula
  desc "Description"
  homepage "https://github.com/mrbraden56/project"
  url "https://github.com/mrbraden56/project/releases/download/20/project-v20.zip"
  sha256 "e5ccbddff875937df922914fee5916401d5f01ca20832a10f48dffa5ced40abc"
  license ""

  depends_on "go" => :build

  def install
    ENV["GO111MODULE"] = "on"
    system "go", "build", *std_go_args
    bin.install "project"
  end

  test do
    system "#{bin}/project", "--version"
  end
end
