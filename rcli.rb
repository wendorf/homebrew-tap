class Rcli < Formula
  desc 'CLI for working with Render'
  homepage 'https://github.com/wendorf/render-cli'
  version '0.0.3'
  url "https://github.com/wendorf/render-cli/releases/download/v#{version}/darwin_amd64.tar.gz"
  sha256 '083ed644673cbda9fe2f1417ae9d7535c81863520331fcca47eb3050d5924589'

  def install
    bin.install 'rcli'
  end

  test do
    assert_match(/#{version}/, `rcli --version`.chomp)
  end
end
