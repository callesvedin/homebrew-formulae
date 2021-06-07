class TemplateRunner < Formula
  desc "Simple wrapper around Stencil to create files with csv file as input"
  homepage "https://github.com/callesvedin/TemplateRunner"
  url "https://github.com/callesvedin/TemplateRunner/archive/0.1.6.tar.gz"
  
 sha256 "4cff3dedb528af1d229174d08f7249c0702e9c287ccc6057cd2eb415524f1239"

  def install
    system "swift", "build",
        "--configuration", "release",
        "--disable-sandbox"
    bin.install '.build/release/template-runner'
  end
end
