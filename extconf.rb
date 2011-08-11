# download and install the appropriate version of chromedriver
require File.join(File.expand_path(File.dirname(__FILE__)), 'lib', 'chromedriver', 'version')

case RUBY_PLATFORM
when /\b64\b.*linux|linux.*\b64\b/
  platform = "linux64"  
when /linux/
  platform = "linux32"
when /darwin/
  platform = "mac"
else
  raise "Ahh!  Needs a bit more work to download for Windows."
end

chromedriver_url = "http://chromium.googlecode.com/files/chromedriver_#{platform}_#{Chromedriver::VERSION}.zip"

system("mkdir bin")
system("curl #{chromedriver_url} > chromedriver.zip") &&
system("unzip chromedriver.zip") &&
system("rm chromedriver.zip") &&
system("mv chromedriver bin/chromedriver")