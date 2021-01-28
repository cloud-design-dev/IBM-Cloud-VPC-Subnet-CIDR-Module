# IBM Cloud VPC Subnet CIDR Module
Terraform module for creating a VPC Subnet using a specific CIDR notation.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| resource\_group\_id | ID of the resource group to associate with the virtual server instance | `string` | n/a | yes |
| vpc\_id | ID of the VPC where to create the virtual server instance | `string` | n/a | yes |
| subnet\_cidr | The CIDR for the subnet being created. | `string` | n/a | yes |
| name | Name of the virtual server instance | `string` | n/a | yes |
| zone | VPC zone where the virtual server instance will be created.
| network\_acl | Network ACL to attach to subnet | `string` | `""` | no |
| public\_gateway | Public Gateway to attach to 


## Outputs

| Name | Description |
|------|-------------|
| id | ID of the created Subnet | 
| ipv4_cidr_block | IPv4 CIDR block for the subnet |
| available_ipv4_address_count | Number of IPs in the subnet  | 
| primary_ip4_address | Primary private IP address of the virtual server instance |
