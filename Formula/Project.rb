class Project < Formula
  desc "Description"
  homepage "https://github.com/mrbraden56/project"

  on_macos do
    url "https://github.com/mrbraden56/project/releases/download/26/project-v26.zip"
    sha256 "d8bb766d8ffbb2a42db9ea022459adc90710d3fac0c7dbfd6f096c63338961b5"

    def install
      bin.install "project"
    end
  end

  test do
    system "#{bin}/project", "--version"
  end
end
