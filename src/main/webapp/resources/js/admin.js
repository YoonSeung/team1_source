/**
 * admin
 */

function adminCheck() {
	if(document.frm.username.value.length == 0) {
		alert("아이디를 입력해주세요.");
		return false;
	}
	if(document.frm.password.value.length == 0) {
		alert("비밀번호를 입력해주세요.");
		return false;
	}
	
	return true;
}