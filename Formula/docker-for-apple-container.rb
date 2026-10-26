class DockerForAppleContainer < Formula
  desc "Docker CLI compatibility shim over Apple's container CLI"
  homepage "https://github.com/appautomaton/docker-for-apple-container"
  url "https://github.com/appautomaton/docker-for-apple-container/archive/refs/tags/v0.1.5.tar.gz"
  sha256 "7a7e206b80f5adf79b0dd11b62445eceb9b101a7f60d75745d1920873d358710"
  license "MIT"

  conflicts_with "docker", because: "both provide a docker executable"

  def install
    # Pure-stdlib Python run via the launcher's `#!/usr/bin/env python3` shebang.
    # No Python dependency: any python3 works, including the one macOS ships.
    libexec.install "bin", "src"
    bin.install_symlink libexec/"bin/docker"
  end

  test do
    assert_match "Docker CLI subset over Apple container",
                 shell_output("#{bin}/docker --help")
  end
end
