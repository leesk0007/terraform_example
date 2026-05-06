# locals/variables.tf

# 변수라기보단 값이 한번 정해지면 정해진 값 그대로 메인에서 사용하기 때문에 상수에 가깝다
variable "env" {
    type = string
    description = "현재 환경 (dev | prod)"
}

variable "project_name"{
    type = string
    description = "프로젝트 이름"
    # *.tfvars 에서 값을 전달하지 않았을떄 사용되는 default 값을 설정할 수 있다.
    default = "sample"
}