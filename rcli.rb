class Rcli < Formula
  desc 'CLI for working with Render'
  homepage 'https://github.com/wendorf/render-cli'
  version '0.0.4'
  url "https://github.com/wendorf/render-cli/releases/download/v#{version}/darwin_amd64.tar.gz"
  sha256 '932bfff62f6396a4d69f00e4dd30071fe13b46d6d63d294c12f5067a26aa2e0c'

  def install
    bin.install 'rcli'
  end

  test do
    assert_match(/#{version}/, `rcli --version`.chomp)
  end
end
