class D3plot2hdf5 < Formula
  desc "Converts LS-DYNA d3plot files to HDF5"
  homepage "https://www.tailsit.com/d3plot2hdf5"
  version "1.0"

  depends_on arch: :arm64
  depends_on :macos

  # on_macos do
  #   depends_on arch: :arm64
  #   url ""
  #   sha256 ""
  # end

  on_linux do
    depends_on arch: :x86_64
    url ""
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

