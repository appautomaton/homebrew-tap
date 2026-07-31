class DockerForAppleContainer < Formula
  desc "Docker CLI compatibility shim over Apple's container CLI"
  homepage "https://github.com/appautomaton/docker-for-apple-container"
  url "https://github.com/appautomaton/docker-for-apple-container/archive/refs/tags/v0.1.4.tar.gz"
  sha256 "980cf0f6aa3e31b303dfdbfd5b9f26737217b7e9ec7c526e924ce5e7fef44eb2"
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
