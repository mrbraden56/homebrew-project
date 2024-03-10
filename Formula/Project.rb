class Project < Formula
  desc "Description"
  homepage "https://github.com/mrbraden56/project"
  url "https://github.com/mrbraden56/project/releases/download/19/project-v19.zip"
  sha256 "a0db65ffc79d07b4ceefe9cef596f57029eca2d47059cea5ad91d124b7e9884f"
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
nd
