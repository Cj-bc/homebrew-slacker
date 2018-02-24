class Slacker < Formula
  version = "0.1.3.2"
  desc "Allows to send slack messages from terminal"
  homepage "https://github.com/Cj-bc/slacker"
  url "https://github.com/Cj-bc/slacker/archive/v" + version + ".tar.gz"
  sha256 "96f8d04a1c7b6e2b08df6ecd862a1bf699219d238b5fdbca748d47c4bef88e6c"
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
