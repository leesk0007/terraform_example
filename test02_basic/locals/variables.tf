# locals/variables.tf

# 변수라기보단 값이 한번 정해지면 정해진 값 그대로 메인에서 사용하기 때문에 상수에 가깝다
variable "env" {
    type = string
    description = "현재 환경 (dev | prod)"
}

variable "project_name"{
    type = string
    description = "프로젝트 이름"
}