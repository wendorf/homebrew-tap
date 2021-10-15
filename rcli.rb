class Rcli < Formula
  desc 'CLI for working with Render'
  homepage 'https://github.com/wendorf/render-cli'
  version '0.0.1'
  url "https://github.com/wendorf/render-cli/releases/download/v#{version}/darwin_amd64.tar.gz"
  sha256 'ed0277297e004b867680f042558697fa913445efd294c6bf8215deb607b9645a'

  def install
    bin.install 'rcli'
  end

  test do
    assert_match(/#{version}/, `rcli --version`.chomp)
  end
end
