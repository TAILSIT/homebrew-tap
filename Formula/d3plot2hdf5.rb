class D3plot2hdf5 < Formula
  desc "Converts LS-DYNA d3plot files to HDF5"
  homepage "https://www.tailsit.com/d3plot2hdf5"
  version "1.0"

  depends_on arch: :arm64
  depends_on :macos

  on_macos do
    depends_on arch: :arm64
    url "https://api.tailsit.com/d3plot2hdf5/v1/download/macos/arm64/1.0/tar.gz"
    sha256 "0e0b7ba8254d24842b13745cce074748fd4010d8aeb404d0a8f1323c5877d422"
  end

  on_linux do
    depends_on arch: :x86_64
    url "https://api.tailsit.com/d3plot2hdf5/v1/download/linux/x86_64/1.0/tar.gz"
    sha256 ""
  end

  def install
    prefix.install Dir["*"]
  end

  def caveats
    <<~EOS
      D3PLOT2HDF5 needs a license file. For non-commercial use, request one at:
        https://www.tailsit.com/lic/d3plot2hdf5

        For more information:
        #{opt_prefix}/README.md
    EOS
  end

  test do
    assert_path_exists bin/"d3plot2hdf5"
  end  
  
  def install
    bin.install "bin/d3plot2hdf5"
  end

  test do
    system "#{bin}/d3plot2hdf5", "--help"
  end
end

