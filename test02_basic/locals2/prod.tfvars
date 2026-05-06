# locals2/prod.tfvars

# 파일명 terraform.tfvars가 아니기 때문에 terraform을 실행할때 디폴트로 받아들이지 않는다.
# prod는 production 의 의미 -> 실제 배포용
# plan이나 apply할때 -var-file="prod.tfvars" 옵션을 주어서 실행해야한다.

env = "prod"
project_name = "ktcloud-v1"