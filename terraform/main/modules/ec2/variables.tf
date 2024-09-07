variable "vpc_id" {
  description = "The VPC ID where subnets will be created"
  type        = string
}

variable "ami_id" {
  description = "The AMI ID to be used for the EC2 instance."
  type        = string
}

variable "instance_type" {
  description = "The type of EC2 instance to use."
  type        = string
} 

variable "key_name" {
  description = "The key name of the AWS Key Pair to be used for the EC2 instance."
  type        = string
}

variable "public_key" {
  description = "The public key to be used for the AWS Key Pair."
  type        = string
  default     = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQD0ZI7jP0/3BB2F0UDsIBNNifQMAi162Kq1OJe2rY+OhKWSyTcPBO8BOQ5DrxSMat26yT20y8MMdens0x/MwK5EI7gcwfuHgLyqVESWiWI6g2AjE+Y6VbNK89faWMiLf/F4Y66zDARLx/0EvhR//xZFdWzHYy70DGzK/2bm+TPA85+NK9vN9tMb/9N4NlQ70VDwsRBgo3g+hWYz07RoSGN8UfjqK8+rhCCh9x5fFhriS22l6Y5WJEGjx3ZttD7ZxwNtNpwQJ63serRYq83IYJEg+/Th0R8IUMAMvRXRFzUkdHX3Hl10zeynJA9FIPVjnLsnUYwZ2XCj9NLl4J41eXicqmMoJ+n+C+zsgQvFuOGozUNBIHh+Cs9jwWcouxNwhjgR0XCAfSiwGVEnbtXqj70XtUeWrcTruN9nxfLc0v1GawT32fpO52DL9o+y6Q5DuOU8Pd37R/0U2skfym9gRP+849kRClRABtgLU3R4vamSBxwxkafALY6hBoY10jppyis= jluizls1994@gmail.com"
}

variable "security_group_id" {
  description = "The ID of the security group to be used for the EC2 instance."
  type        = string
}

variable "public_subnet_id" {
  description = "The ID of the public subnet where the EC2 instance will be created."
  type        = string
}
