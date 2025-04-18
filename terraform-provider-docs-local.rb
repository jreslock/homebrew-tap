# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class TerraformProviderDocsLocal < Formula
  desc "A tool for managing and browsing local copies of Terraform provider documentation"
  homepage "https://github.com/jreslock/terraform-provider-docs-local"
  version "0.0.22"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/jreslock/terraform-provider-docs-local/releases/download/v0.0.22/terraform-provider-docs-local_darwin_x86_64.tar.gz"
      sha256 "065923c784797237869972db26c751e2b2d6b21522c399d07e0fbf72dc904a19"

      def install
        bin.install "terraform-provider-docs-local"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/jreslock/terraform-provider-docs-local/releases/download/v0.0.22/terraform-provider-docs-local_darwin_arm64.tar.gz"
      sha256 "a56ca4ba530628796856d10b401731cfebb2348e095b9dff7a95e03788c1c1cc"

      def install
        bin.install "terraform-provider-docs-local"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/jreslock/terraform-provider-docs-local/releases/download/v0.0.22/terraform-provider-docs-local_linux_x86_64.tar.gz"
        sha256 "b48be391d76bfcb953f454a478fa5e6dc4b0847987ad8fc4c68fb9dd0f82f31a"

        def install
          bin.install "terraform-provider-docs-local"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/jreslock/terraform-provider-docs-local/releases/download/v0.0.22/terraform-provider-docs-local_linux_arm64.tar.gz"
        sha256 "5e6c5f3382989e82c2c058615163281fb45187f026d6cbd750fbd0bb60046a5e"

        def install
          bin.install "terraform-provider-docs-local"
        end
      end
    end
  end

  test do
    system "#{bin}/terraform-provider-docs-local --version"
  end
end
