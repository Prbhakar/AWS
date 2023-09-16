
Setting up lamp server to test the http 80 access
https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-lamp-amazon-linux-2.html

Setting up load balancer
https://docs.aws.amazon.com/elasticloadbalancing/latest/application/application-load-balancer-getting-started.html

Pre-requisite
Region - ap-south-1
AZ's - two availability zone, and each AZ to have atleast one public subnet
ec2 - to be available in pvt subnet
alb - to be available in public subnet
Launch at least one ec2 in each AZ and have a webserver installed and accessible via port 80


