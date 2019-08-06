class UnisonLanguage < Formula
  desc "The Unison Language and Codebase Manager."
  homepage "https://unisonweb.org"

  version "1.0.azure40"

  if OS.mac?
    url "https://github.com/unisonweb/unison/releases/download/release%2Fazure40/unison-osx.tar.gz"
    sha256 "62836f30f4ed6513e909b49eb1ddd225deb22fe7052dace375de2084a0a2566b"
  elsif OS.linux?
    url "https://github.com/unisonweb/unison/releases/download/release%2Fazure40/unison-linux64.tar.gz"
    sha256 "b04c34bef09e532f7374446cd2977df51e85f522d5e9f2fdcfa687965a7a10c4"
  end

  def install
    bin.install "ucm"
  end

  test do
    system "ucm"
  end
end
