class It2name < Formula
  desc "iTerm2 helper that renders big ASCII art captions and sets tab titles"
  homepage "https://github.com/horner/it2name"
  url "https://github.com/horner/it2name/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "8d4d086e1701ec6784967dc426dadce9fe2f5d44ff3e23fe334a043843cb8f2c"
  license "MIT"
  version "0.1.0"

  # Dependencies - Homebrew will install these automatically
  depends_on "imagemagick"
  depends_on "chafa"

  def install
    bin.install "it2name"
  end

  test do
    # Set terminal size for consistent testing
    ENV["COLUMNS"] = "80"
    ENV["LINES"] = "24"
    
    # Test version flag
    assert_match "it2name version #{version}", shell_output("#{bin}/it2name --version")
    
    # Test help flag
    assert_match "Usage: it2name", shell_output("#{bin}/it2name --help")
    
    # Test basic rendering (should succeed without error)
    system "#{bin}/it2name", "brew-test"
  end
end
