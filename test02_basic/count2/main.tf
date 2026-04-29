# test02_basic/count2/main.tf

locals {
    students_list = ["kim", "lee"]
}

resource "local_file" "student_notes" {
    #list의 요소 갯수만큼 만들기 length()함수를 이용하면 list의 사이즈도 알수있다.
    count               = length(local.students_list)
    
    # count.index를 활용해서 배열의 특정 item 참조해서 활용하기
    filename            = "${path.module}/student_${local.students_list[count.index]}.txt"
    
    content             = "안녕하세요! ${count.index}번 학생의 실습 노트 입니다."
}

output "debug" {
    value = local_file.student_notes[*].filename
}