// 要引入jQ！！
console.log('cookie = ' + $.cookie('username'));
$(function() {
	if ($.cookie('username') != undefined) {
		$(".user_name").text($.cookie('username'));
	}
})

function clickAccount(){
	if ($.cookie('username') != undefined) {
		window.open('personalAcount.html');
		
	}else{
		window.open('login.jsp');
	}
}