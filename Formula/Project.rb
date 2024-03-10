class Project < Formula
  desc "Description"
  homepage "https://github.com/mrbraden56/project"
  url "https://github.com/mrbraden56/project/releases/download/20/project-v20.zip"
  sha256 "b6773d82226b2ad49929a00391257363550ecbf330ea2e318339dffd365cf851"
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
