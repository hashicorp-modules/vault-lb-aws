output "vault_lb_sg_id" {
  value = "${module.vault_lb_aws.vault_lb_sg_id}"
}

output "vault_lb_dns" {
  value = "${module.vault_lb_aws.vault_lb_dns}"
}

output "vault_http_8200_target_group" {
  value = "${module.vault_lb_aws.vault_http_8200_target_group}"
}
