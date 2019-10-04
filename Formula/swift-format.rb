class SwiftFormat < Formula
  desc "Formatting technology for Swift source code"
  homepage "https://github.com/apple/swift-format"
  url "https://github.com/apple/swift-format.git", :branch => "swift-5.1-branch"
  head "https://github.com/apple/swift-format.git", :shallow => false

  depends_on :xcode => ["11.0", :build]

  def install
    system "swift", "build", "-c", "release", "--disable-sandbox"
    bin.install ".build/release/swift-format"
  end

  test do
    system "#{bin}/swift-format --version"
  end
end
