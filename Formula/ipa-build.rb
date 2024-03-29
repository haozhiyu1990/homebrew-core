# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class IpaBuild < Formula
    desc "xcode自动化打包"
    version "1.4.5"
    homepage "https://github.com/haozhiyu1990/build.git"
    url "https://github.com/haozhiyu1990/build/archive/#{version}.tar.gz"
    sha256 "43c3385fed444df64a1ddb1174421de456ef6012ec2d5f66b22632a6c66b42e0"
    # license ""
  
    # depends_on xcode: :build
  
    def install
      # ENV.deparallelize  # if your formula fails when building in parallel
      # Remove unrecognized options if warned by configure
      # https://rubydoc.brew.sh/Formula.html#std_configure_args-instance_method
      # system "./configure", *std_configure_args, "--disable-silent-rules"
      # system "cmake", "-S", ".", "-B", "build", *std_cmake_args

      # system "xcodebuild -scheme build -configuration Release ARCHS=x86_64 TARGET_BUILD_DIR=./"
      
      bin.install "build"
    end
  
    # test do
    #   # `test do` will create, run in and delete a temporary directory.
    #   #
    #   # This test will fail and we won't accept that! For Homebrew/homebrew-core
    #   # this will need to be a test that verifies the functionality of the
    #   # software. Run the test with `brew test ipa-build`. Options passed
    #   # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #   #
    #   # The installed folder is not in the path, so use the entire path to any
    #   # executables being tested: `system "#{bin}/program", "do", "something"`.
    #   system "false"
    # end
  end
  
