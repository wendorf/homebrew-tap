class Dory < Formula
  desc "Dory is a very forgetful fish"
  homepage "https://github.com/wendorf/dory"
  version "0.0.1"
  url "https://github.com/wendorf/dory/releases/download/#{version}/darwin_amd64.tar.gz"
  sha256 "5b89dc2ab0641b3d2b437a56814626d0b74d335059257fdd45443f0129569911"

  def install
    bin.install "dory"
  end

  plist_options :startup => true

  def plist; <<~EOS
    <?xml version="1.0" encoding="UTF-8"?>
    <!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
    <plist version="1.0">
    <dict>
      <key>Label</key>
      <string>#{plist_name}</string>
      <key>ProgramArguments</key>
      <array>
        <string>#{opt_bin}/dory</string>
        <string>server</string>
      </array>
      <key>KeepAlive</key>
      <true/>
      <key>StandardErrorPath</key>
      <string>#{var}/log/dory-agent.log</string>
      <key>StandardOutPath</key>
      <string>#{var}/log/dory-agent.log</string>
    </dict>
    </plist>
    EOS
  end

  test do
    assert_match /#{version.to_s}/, `dory --version`.chomp
  end
end
