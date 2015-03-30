require 'formula'

REVISION = 'eb946d10c3'
class OmnisharpServer < Formula
  homepage 'https://github.com/OmniSharp/omnisharp-server'
  url 'https://github.com/OmniSharp/omnisharp-server.git', :branch => 'master', :revision => REVISION
  version REVISION

  depends_on "mono"

  def install
    system "xbuild"
    system "cp", "-r", "OmniSharp/bin", "#{prefix}"
  end
end
