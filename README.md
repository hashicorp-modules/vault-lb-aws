# AWS Vault Load Balancer Terraform Module

Provisions resources for a Vault application load balancer in AWS.

Checkout [examples](./examples) for fully functioning examples.

### Environment Variables

- `AWS_DEFAULT_REGION`
- `AWS_ACCESS_KEY_ID`
- `AWS_SECRET_ACCESS_KEY`

## Input Variables

- `create`: [Optional] Create Module, defaults to true.
- `name`: [Optional] Name for resources, defaults to "vault-aws".
- `vpc_id`: [Required] VPC ID to provision LB in.
- `cidr_blocks`: [Optional] CIDR blocks to provision LB across.
- `subnet_ids`: [Optional] Subnet ID(s) to provision LB across.
- `is_internal_lb`: [Optional] Is an internal load balancer, defaults to true.
- `use_lb_cert`: [Optional] Use certificate passed in for the LB IAM listener, "lb_cert" and "lb_private_key" must be passed in if true, defaults to false.
- `lb_cert`: [Optional] Certificate for LB IAM server certificate.
- `lb_private_key`: [Optional] Private key for LB IAM server certificate.
- `lb_ssl_policy`: [Optional] SSL policy for LB, defaults to "ELBSecurityPolicy-2016-08".
- `tags`: [Optional] Optional list of tag maps to set on resources, defaults to empty list.

## Outputs

- `vault_lb_sg_id`: Vault load balancer security group ID.
- `vault_tg_http_8200_arn`: Vault load balancer HTTP 8200 target group.
- `vault_tg_https_8200_arn`: Vault load balancer HTTPS 8200 target group.
- `vault_lb_dns`: Vault load balancer DNS name.

## Module Dependencies

_None_

## Authors

HashiCorp Solutions Engineering Team.

## License

Mozilla Public License Version 2.0. See LICENSE for full details.
