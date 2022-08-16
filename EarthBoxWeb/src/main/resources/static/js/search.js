function list(res) {
	console.log("에이젝스 실행")

	$("#tbody").html("");
	
	var Search = "";

	for (var i = 0; i < res.length; i++) {
		var data = res[i]

		Searchlist = `
		<tr>
			<th scope="row">${data.q_seq}</th>
			<td><a href="questionContentView.do?q_seq=${data.q_seq}">${data.q_title}</a></td>
			<td>${data.user_nick}</td>
			<td>${data.q_date}</td>
		</tr> `

		$("#tbody").append(Searchlist);
	}

}

$(document).on("click", "#searchBtn", function () {

	let search = $('#search').val();
	console.log("함수실행 : " + search)

	$.ajax({
		url: 'qnaSearch.do',
		type: 'get',
		data: {
			"search": search
		},
		dataType: 'json',
		success: list,
		error: function () { alert('error') }
	});
})




