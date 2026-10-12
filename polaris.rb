class Polaris < Formula
  desc "BEM solver for high-voltage electrostatic simulation"
  homepage "https://www.tailsit.com/polaris"
  version "1.0"
  license :cannot_represent # free for non-commercial use, license file required

  on_macos do
    depends_on arch: :arm64
    url "https://api.tailsit.com/downloads/polaris/1.0/polaris-1.0-x86_64-linux-smp.tar.gz"
    sha256 "3e20f163b9c4f2cd361186951dc4a5c0fc1e2c8f9d5d56b4e028092f8db5d3df"
  end

  on_linux do
    depends_on arch: :x86_64
    url "https://api.tailsit.com/downloads/polaris/1.0/polaris-1.0-x86_64-linux-smp.tar.gz"
    sha256 "3e20f163b9c4f2cd361186951dc4a5c0fc1e2c8f9d5d56b4e028092f8db5d3df"
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
  end
end
