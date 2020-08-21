# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Wxhexeditor < Formula
  desc "wxHexEditor is another Free Hex Editor, build because there is no good hex editor for Linux system, specially for big files."
  homepage "http://www.wxhexeditor.org"
  url "https://github.com/EUA/wxHexEditor/archive/v0.24.tar.gz"
  sha256 "6ad993ba13a0076b31fb95daa7a812eae3b613d86f5e6709021e4d3398afcf00"
  license "GPL-2.0-only"

  #depends_on "cmake" => :build
  env :std if OS.linux?

  def install
    # ENV.deparallelize  # if your formula fails when building in parallel
    #system "cmake", ".", *std_cmake_args
    system "make"
    system "make", "install", "PREFIX=#{prefix}" # if this fails, try separate make/make install steps
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test wxHexEditor`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end
end
