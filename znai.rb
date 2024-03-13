class Znai < Formula
  desc "Build functional, maintainable, beautiful User Guides with Znai. Instant pages navigation. Local search. Multiple integrations to work with Python, Java, OpenAPI, etc. Transform \"getting started\" sections into slideshow for your workshops. Enterprise Docs Hub."
  homepage "https://github.com/testingisdocumenting/znai"
  url "https://repo.maven.apache.org/maven2/org/testingisdocumenting/znai/znai-dist/1.67/znai-dist-1.67-znai.zip"
  sha256 "00b28bbceab7b4dee966e2750f42b987f1f896d13368139a7ebd8ec7c0a2d049"
  version "1.67"

  depends_on "java"

  def install
    inreplace ["znai"] do |s|
      s.gsub! /\$CWD\/lib\/\*/,"#{libexec}/lib/*"
    end

    bin.install "znai"
    libexec.install Dir["*"]
  end
end
