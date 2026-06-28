class DockerForAppleContainer < Formula
  desc "Docker CLI compatibility shim over Apple's container CLI"
  homepage "https://github.com/appautomaton/docker-for-apple-container"
  url "https://github.com/appautomaton/docker-for-apple-container/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "47ed0a0af4334b81bc519d301b98443b41330991526578c2a1b73018ab7880a7"
  license "MIT"

  depends_on "python@3.12"

  def install
    # Stdlib-only package, so there is no virtualenv or vendored resource set.
    # Install the source tree and run the existing launcher with Homebrew's
    # pinned Python (the launcher's `env python3` could otherwise be too old).
    libexec.install "bin", "src"
    (bin/"docker-for-apple-container").write <<~SH
      #!/bin/bash
      exec "#{Formula["python@3.12"].opt_bin}/python3.12" "#{libexec}/bin/docker" "$@"
    SH
  end

  test do
    assert_match "Docker CLI subset over Apple container",
                 shell_output("#{bin}/docker-for-apple-container --help")
  end
end
