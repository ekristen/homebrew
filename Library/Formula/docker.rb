require 'formula'

# Documentation: https://github.com/mxcl/homebrew/wiki/Formula-Cookbook
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!

class Docker < Formula
  homepage 'http://docker.io'
  url 'https://github.com/dotcloud/docker/archive/v0.6.3.tar.gz'
  sha1 '63d384ecb19d93560fafeeb0fbcc54d5211c9d1e'

  def install
    # ENV.j1  # if your formula's build system can't parallelize

    system " 

    system "./configure", "--disable-debug", "--disable-dependency-tracking",
                          "--prefix=#{prefix}"
    # system "cmake", ".", *std_cmake_args
    system "make", "install" # if this fails, try separate make/make install steps
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! It's enough to just replace
    # "false" with the main program this formula installs, but it'd be nice if you
    # were more thorough. Run the test with `brew test v`.
    system "false"
  end
end
