variable "AppAmiName" {
	default = "ixload-cloud-ami-9-30-0-331-42746e54-6f59-4da8-8998-db8f52140d70"
	description = "AMI name used for deploying App instances"
	type = string
}

variable "AppAmiOwner" {
	default = "aws-marketplace"
	description = "Owner of AMI used for deploying App instances"
	type = string
}

variable "AppInstanceType" {
	default = "m5.xlarge"
	type = string
	description = "Instance type of App VM"
	validation {
		condition = can(regex("t3.xlarge", var.AppInstanceType)) || can(regex("m5.xlarge", var.AppInstanceType))
		error_message = "AppInstanceType must be one of (t3.xlarge | m5.xlarge) types."
	}
}

