class DockerForAppleContainer < Formula
  desc "Docker CLI compatibility shim over Apple's container CLI"
  homepage "https://github.com/appautomaton/docker-for-apple-container"
  url "https://github.com/appautomaton/docker-for-apple-container/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "47ed0a0af4334b81bc519d301b98443b41330991526578c2a1b73018ab7880a7"
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
