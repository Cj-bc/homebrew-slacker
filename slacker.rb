class Slacker < Formula
  version = "0.1.3.3"
  desc "Allows to send slack messages from terminal"
  homepage "https://github.com/Cj-bc/slacker"
  url "https://github.com/Cj-bc/slacker/archive/v" + version + ".tar.gz"
  sha256 "dc21a8a5c45709e0f1a70b329a2573ad803410280de135026bfad719b043b378"
  head "https://github.com/Cj-bc/slacker.git"

  depends_on "awk"
  depends_on "python"

 def install 
	  ohai "Renaming executable..."
	  system "mv", "slacker.sh", "slacker" # Rename
	  bin.install "slacker" # Install slacker
	  prefix.install Dir["func"], Dir["texts"], ".sourcefiles" # Install all texts and functions
 end

  test do
    system "slacker"
  end
end
