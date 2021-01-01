output "aws_ec2_2a_id" {
  value       = aws_instance.ec2_in_2a.id
  description = "EC2_2a id"
}

output "aws_ec2_2b_id" {
  value       = aws_instance.ec2_in_2b.id
  description = "EC2_2b id"
}

output "test_vpc_id" {
  value       = aws_vpc.test_vpc.id
  description = "VPC id"
}

#output "elb_dns_name" {
#  value = aws_elb.test_web_elb.dns_name
#33}
