# terraform_example/hello/main.tf
# tf 파일은 HCL 형식의 파일입니다.


# terraform 과 aws 버전에 관련된 정보를 명시해 놓는 것이 좋다
terraform {
    required_version = "~>1.14.0" # "~>1.14.0" 이것은 1.14까지는 고정하겠다 라는 뜻 (최대 버전 1.14)
    required_providers {
        aws = {
            source = "hashicorp/aws"
            version = "~> 6.0"
        }
    }
}

# aws provider 설정
provider "aws" {
    region = "ap-northeast-2"
}

# 간단하게 vpc를 하나 생성해 보기
resource "aws_vpc" "test_vpc" {
    cidr_block = "10.0.0.0/16"
    enable_dns_hostnames = true # 인스턴스에 dns 이름을 부여하기 위해 활성화
    enable_dns_support = true
    tags = {
        Name = "terraform_test_vpc"
    }
}

# 인터넷 게이트웨이
resource "aws_internet_gateway" "igw" {
    # 어떤 vpc 붙여야하지? 선택에 대한 문제가 발생한다
    vpc_id = aws_vpc.test_vpc.id # test_vpc라는 이름의 vpc가 만들어진다면 그 id를 여기에 사용
    tags = {
        Name = "test_vpc_igw" # tags에 들어가는 이름은 마음대로 지을수 있다. aws consol에 로그인하면 보인다.
    }

}
# 뭔가가 추가되면 init이 먼저 되어야함

# terraform은 순서를 알아서 배치함, 절차적언어가 아닌 선언형언어이기 때문에 순서는 알아서 배치함