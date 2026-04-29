# terraform_example/test02_basic/foreach2/main.tf

# 1. 데이터 정의 (학생 명단)
locals {
    students = {
        lee     = "이정호"
        kim     = "김정호"
        park    = "박정호"
    }
}


# 2. for_each를 사용하여 파일 생성 lacal_file.student_notes는 map 타입이다
resource "local_file" "student_notes" {
    # for_each에 map 대입하기
    for_each = local.students
    filename = "${path.module}/student_${each.key}.txt"
    content = "안녕하세요 ${each.value} 학생의 실습 노트입니다!"
}

output "debug0" {
    description = "생성된 파일들의 전체 경로 목록"
    value = [for item in local_file.student_notes : item.filename]
}