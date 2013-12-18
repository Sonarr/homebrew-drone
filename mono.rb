# http://www.mono-project.com/Compiling_Mono_on_OSX

require 'formula'

class Mono < Formula
  url 'http://download.mono-project.com/sources/mono/mono-3.2.5.tar.bz2'
  
  homepage 'http://www.mono-project.com/'
  

  def install
    args = ["--prefix=#{prefix}",
            "--with-glib=embedded",
            "--enable-nls=no"]

    #args << "--host=x86_64-apple-darwin10" if MacOS.prefer_64_bit?

    system "./configure", *args
    system "make"
    system "make install"
  end
end