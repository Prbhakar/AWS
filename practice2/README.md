
This practice2 folder contains code to create the VPC and subnets required for testing the ALB concept.
Setting up lamp server to test the http 80 access
https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-lamp-amazon-linux-2.html
The above link is configured and the following link also has info on the userdata script
https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/user-data.htmlß

Setting up load balancer
https://docs.aws.amazon.com/elasticloadbalancing/latest/application/application-load-balancer-getting-started.html

Pre-requisite
Region - ap-south-1
AZ's - two availability zone, and each AZ to have atleast one public subnet
ec2 - to be available in pvt subnet
alb - to be available in public subnet
Launch at least one ec2 in each AZ and have a webserver installed and accessible via port 80

Create ec2 instance using terraform reference:
git clone https://github.com/hashicorp/learn-terraform-resources.git

Created VPC, EC2 and associated to the custom vpc and the security group and the corresponding subnet

Creating Load Balancer Steps
Refer - https://docs.aws.amazon.com/elasticloadbalancing/latest/application/application-load-balancer-getting-started.html
Create target group
Register targets
Create load balancer ( Choose load balancer type)
Configure load balancer and listener
Test your load balancer

Some reference ALB blogs

https://medium.com/@sampark02/application-load-balancer-and-target-group-attachment-using-terraform-d212ce8a38a0ß

https://skundunotes.com/2022/07/30/add-an-application-load-balancer-to-aws-ec2-using-terraform/


