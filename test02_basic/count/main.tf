# terraform_example/test02_basic/cout/main.tf

resource "local_file" "student_notes" {
    # 반복해서 동일한 리소스를 찍어 낼때 사용하는 특성
    count = 3
    # 파일명을 동적으로 부여하기 (count.index를 참조할 수 있다.)
    filename = "${path.module}/student_${count.index + 1}.txt"
    # 파일의 내용도 동적으로 부여하기
    content = "안녕하세요! ${count.index}번 학생의 실습 노트 입니다."
}

output "debug0" {
    value = local_file.student_notes[0].filename
}

output "debug1" {
    value = local_file.student_notes[0].filename
}

output "debug2" {
    value = local_file.student_notes[0].filename
}

output "debugAll" {
    value = local_file.student_notes[*].filename
}
