################################################################################
### @file      
### @copyright © 2026 TAILSIT, Austria
################################################################################

class D3plot2hdf5 < Formula
  desc "Converts LS-DYNA d3plot files to HDF5"
  homepage "https://www.tailsit.com/d3plot2hdf5"
  version "1.1"
  license :cannot_represent # license file required, see caveats

  on_macos do
    depends_on arch: :arm64
    url "https://api.tailsit.com/software/v1/products/d3plot2hdf5/1.1/download?operating_system=macos&architecture=arm64&package_format=tar.gz"
    sha256 "bba23b25a31948c6fc0a6c934a1b9aecf89b22a2212f62c0bcd0764b10c2477f"
  end

  on_linux do
    depends_on arch: :x86_64
    url "https://api.tailsit.com/software/v1/products/d3plot2hdf5/1.1/download?operating_system=linux&architecture=x86_64&package_format=tar.gz"
    sha256 "3552025effe3191654ac7c936653b790b428541cc98dbcb4223c85ca032fb8c7"
  end

  def install
    prefix.install Dir["*"]
  end

  def caveats
    <<~EOS
      D3PLOT2HDF5 requires a license file. For non-commercial use, request one at:
        https://www.tailsit.com/lic/d3plot2hdf5

      For more information see:
        #{ opt_prefix }/README.md
    EOS
  end
  
  test do
    assert_path_exists bin/"d3plot2hdf5"
    system bin/"d3plot2hdf5", "--help"
    system bin/"d3plot2hdf5", "--verbose"
  end
end

