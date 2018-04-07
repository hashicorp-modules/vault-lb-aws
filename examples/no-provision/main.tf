module "vault_lb_aws" {
  # source = "github.com/hashicorp-modules/vault-lb-aws?ref=f-refactor"
  source = "../../../vault-lb-aws"

  create      = false
  vpc_id      = ""
  cidr_blocks = []
  subnet_ids  = []
}
