class Project < Formula
  desc "Description"
  homepage "https://github.com/mrbraden56/project"
  url "https://github.com/mrbraden56/project/releases/download/26/project-v26.zip"
  sha256 "d8bb766d8ffbb2a42db9ea022459adc90710d3fac0c7dbfd6f096c63338961b5"
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
