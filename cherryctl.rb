# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Cherryctl < Formula
  desc "Official Cherry Servers CLI"
  homepage "https://www.cherryservers.com/"
  version "0.1.1"
  license "MIT"

  depends_on "go" => :build

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/cherryservers/cherryctl/releases/download/v0.1.1/cherryctl-darwin-amd64"
      sha256 "2b7be3d17be02c76df88187f679372d7efa791f094d55a910e2aae0cb0c5ed05"

      def install
        bin.install "cherryctl-darwin-amd64" => "cherryctl"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/cherryservers/cherryctl/releases/download/v0.1.1/cherryctl-darwin-arm64"
      sha256 "8ee9f148c9436e21d0478f1868a94053c46a55da9543bd9dc56ca805ca31397e"

      def install
        bin.install "cherryctl-darwin-arm64" => "cherryctl"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/cherryservers/cherryctl/releases/download/v0.1.1/cherryctl-linux-arm64"
      sha256 "6f234958dcaf0a8f79268f3a0304086197fb50655f62769682ff81e716f9320d"

      def install
        bin.install "cherryctl-linux-arm64" => "cherryctl"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/cherryservers/cherryctl/releases/download/v0.1.1/cherryctl-linux-amd64"
      sha256 "106f885aa621a9f6cc03f3d30fab88f6533112c9fdba633a2f6c21eac72a4fb7"

      def install
        bin.install "cherryctl-linux-amd64" => "cherryctl"
      end
    end
  end

  test do
    system "#{bin}/cherryctl -v"
  end
end
