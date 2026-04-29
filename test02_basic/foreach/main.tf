# test02_basic/foreach/main.tf

# 1. 데이터 정의 (학생 명단)
locals {
    students = ["kim","lee","park"]
}

# 우리는 set에 들어있는 정보를 이용해서 반복문 돌면서 여러개의 자원을 만들어야 할때가 있다.

# 2. for_each를 사용하여 파일 생성 lacal_file.student_notes는 map 타입이다
resource "local_file" "student_notes" {
    # list를 set으로 변환하여 for_each에 넣어주기
    # for_each에 대입할 수 있는 것은 set type 또는 map type만 가능하다 (list type은 안됨)
    for_each = toset(local.students)
    # set을 넣어주면 ${each.key}와 ${each.value} 가 동일하다
    # map을 넣어주면 ${each.key}와 ${each.value} 가 다르다
    filename = "${path.module}/student_${each.key}.txt"
    content = "안녕하세요 ${each.value} 학생의 실습 노트입니다!"
}

output "debug0" {
    description = "생성된 파일들의 전체 경로 목록"
    value = [for item in local_file.student_notes : item.filename]
}