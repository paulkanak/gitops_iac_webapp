resource "aws_launch_template" "eks_al2023" {
  name_prefix = "eks-al2023-"

  image_id      = data.aws_ami.eks_al2023.id
  instance_type = "t3.small"

  tag_specifications {
    resource_type = "instance"
    tags = {
      Name = "eks-al2023-node"
    }
  }
}