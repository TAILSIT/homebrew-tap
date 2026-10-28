################################################################################
### @file      
### @copyright © 2026 TAILSIT, Austria
################################################################################

class TsPolaris < Formula
  desc "BEM solver for high-voltage electrostatic simulation"
  homepage "https://www.tailsit.com/polaris"
  version "1.1"
  license :cannot_represent # free for non-commercial use, license file required

  on_macos do
    depends_on arch: :arm64
    url "https://api.tailsit.com/software/v1/products/polaris/1.1/download?operating_system=macos&architecture=arm64&package_format=tar.gz"
    sha256 "313245e74b671f864025bb22702ac48b6c1e3483e9659013f48396b476b461c7"
  end

  on_linux do
    depends_on arch: :x86_64
    url "https://api.tailsit.com/software/v1/products/polaris/1.1/download?operating_system=linux&architecture=x86_64&package_format=tar.gz"
    sha256 "74a87acba99bebbc1e0d3acecb8c05af811e779e567e28a47f5b0fb92352cc65"
  end

  def install
    prefix.install Dir["*"]
  end

  def caveats
    <<~EOS
      POLARIS needs a license file. For non-commercial use, request one at:
        https://www.tailsit.com/lic/polaris

      Then point POLARIS to it:
        export POLARIS_LICENSE_FILE=/path/to/polaris_license.json

      Examples and documentation are in:
        #{opt_prefix}/share/examples
        #{opt_prefix}/README.md
    EOS
  end

  test do
    assert_path_exists bin/"polaris"
    assert_path_exists bin/"polaris.post"
    system bin/"polaris", "--help"
  end
end
