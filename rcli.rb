class Rcli < Formula
  desc 'CLI for working with Render'
  homepage 'https://github.com/wendorf/render-cli'
  version '0.0.2'
  url "https://github.com/wendorf/render-cli/releases/download/v#{version}/darwin_amd64.tar.gz"
  sha256 'cf1ae14824186460b473a4f0ea903af96a21e274d7660428e2b8f3187fdf9722'

  def install
    bin.install 'rcli'
  end

  test do
    assert_match(/#{version}/, `rcli --version`.chomp)
  end
end
