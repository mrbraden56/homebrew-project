class Project < Formula
  desc "Description"
  homepage "https://github.com/mrbraden56/project"
  url "https://github.com/mrbraden56/project/releases/download/22/project-v22.zip"
  sha256 "24bf9a9698f1f3d6795015f943beb99526175192f1f9c75c81043f686bd2a15c"
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
