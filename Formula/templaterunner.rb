class Templaterunner < Formula
 desc "Simple wrapper around Stencil to create files with csv file as input"
  homepage "https://github.com/callesvedin/TemplateRunner"
  url "https://github.com/callesvedin/TemplateRunner.git", tag: "0.1.1"
  version "0.1.0"
  
  depends_on :xcode => ["11.0", :build]  

  def install
    system "make", "install", "prefix=#{prefix}"        
  end

  test do
    system "#{bin}/templaterunner"
  end
end
