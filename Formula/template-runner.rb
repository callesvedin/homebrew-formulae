class TemplateRunner < Formula
  desc "Simple wrapper around Stencil to create files with csv file as input"
  homepage "https://github.com/callesvedin/TemplateRunner"
  url "https://github.com/callesvedin/TemplateRunner/archive/0.1.5.tar.gz"
 # url "https://github.com/callesvedin/TemplateRunner.git", tag: "0.1.5"
  
 sha256 "877fbfa776f3614cd5366a299a5f7cc90ee91df73ce2bebeed9b04cecf467e36"

  def install
    system "swift", "build",
        "--configuration", "release",
        "--disable-sandbox"
    bin.install '.build/release/template-runner'
  end
end
