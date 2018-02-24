class Slacker < Formula
  version = "0.1.3.3"
  desc "Allows to send slack messages from terminal"
  homepage "https://github.com/Cj-bc/slacker"
  url "https://github.com/Cj-bc/slacker/archive/v" + version + ".tar.gz"
  sha256 "a72bf215dbc61054f86b1ad22db8d0cf16672be65e18d80bcaad87a929cc25d1"
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
