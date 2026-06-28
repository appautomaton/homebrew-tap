class DockerForAppleContainer < Formula
  desc "Docker CLI compatibility shim over Apple's container CLI"
  homepage "https://github.com/appautomaton/docker-for-apple-container"
  url "https://github.com/appautomaton/docker-for-apple-container/archive/refs/tags/v0.1.1.tar.gz"
  sha256 "95898d378b3b670b7b0b449edb49d699b6eead93e338cb8be7b3e1d0001ef2e7"
  license "MIT"

  def install
    # Pure-stdlib Python run via the launcher's `#!/usr/bin/env python3` shebang.
    # No Python dependency: any python3 works, including the one macOS ships.
    libexec.install "bin", "src"
    bin.install_symlink libexec/"bin/docker" => "docker-for-apple-container"
  end

  test do
    assert_match "Docker CLI subset over Apple container",
                 shell_output("#{bin}/docker-for-apple-container --help")
  end
end
