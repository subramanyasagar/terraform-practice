# terraform-practice
Terraform code base to create AWS resources

This IAAS service basically creates a usual setup in a AWS Cloud with a VPC, Public  and a Private Subnet.
Public subnet connected to external world via a Internet Gateway. Routing table default path allows connectivity from Public subnet to internet.
Private subnet is allowed to download internet data by connecting to a NAT gateway. Routing table default path allows connectivity to NAT gateway.
One ec2 instance created in each subnet. As part of testing you can see that we can directly connect to public instance but not the private instance.


VPC: 
  name: my-app-vpc
  file: vpc.tf

Subnets:
  name: subnets.tf

Routing table & associations:
  name: routing-table.tf

Internet Gateway:
  name: internet-gateway.tf

NAT Gateway:
  name: nat-gateway.tf

Instances:
  name: instances.tf
