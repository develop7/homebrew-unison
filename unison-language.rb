class UnisonLanguage < Formula
  desc "The Unison Language and Codebase Manager."
  homepage "https://unisonweb.org"

  version "1.0.M1a"

  if OS.mac?
    url "https://github.com/unisonweb/unison/releases/download/release%2FM1a/unison-osx.tar.gz"
    sha256 "a1fd7210b02a4d389bb89d39538767b70cb5ddb1af5045b876c315fa87d1e6db"
  elsif OS.linux?
    url "https://github.com/unisonweb/unison/releases/download/release%2FM1a/unison-linux64.tar.gz"
    sha256 "4ba52595d2d89772327c689f08728e5f19499f3181b712b8708e71da2fccf4e6"
  end

  def install
    bin.install "ucm"
  end

  test do
    system "ucm"
  end
end
