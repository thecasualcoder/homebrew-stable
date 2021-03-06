class SaveMyEars < Formula
  desc "Launch agent that resets volume to a lower value whenever a headphone/earphone is connected to your Mac."
  homepage "https://github.com/thecasualcoder/save-my-ears"
  version "v0.0.2"
  url "https://github.com/thecasualcoder/save-my-ears/releases/download/#{version}/#{version}.tar.gz"
  sha256 "32176baf3ba6bc51ef1e004a21c87a4b3a99678b2d9552513e7431dd1c0d5088"

  def install
    bin.install "save-my-ears"
  end

  def home_dir
    Dir.home
  end

  def plist_name
    "in.thecasualcoder.save-my-ears"
  end

  def plist; <<~EOS
    <?xml version="1.0" encoding="UTF-8"?>
    <!DOCTYPE plist PUBLIC "-//Apple Computer//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
    <plist version="1.0">
      <dict>
        <key>Label</key>
        <string>#{plist_name}</string>
        <key>Program</key>
        <string>/usr/local/bin/save-my-ears</string>
        <key>ProgramArguments</key>
        <array>
          <string>save-my-ears</string>
        </array>
        <key>KeepAlive</key>
        <true/>
        <key>StandardOutPath</key>
        <string>#{home_dir}/.save-my-ears.log</string>
        <key>StandardErrorPath</key>
        <string>#{home_dir}/.save-my-ears.log</string>
      </dict>
    </plist>
    EOS
  end
end
