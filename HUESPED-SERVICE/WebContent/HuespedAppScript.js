$(document).ready(function(){
	$.ajax({
		url: '/HUESPED-SERVICE/rest/HUESPEDES',
		type: 'get',
		dataType: 'JSON',
		success: function(response){
			var len = response.length;
			for(var i=0; i<len; i++){
				var email = response[i].email;
				var password = response[i].password;
				var name = response[i].name;
				var surname = response[i].surname;
				var dni = response[i].dni;
				var toPayAccount = response[i].toPayAccount;
				var roomNumber = response[i].roomNumber;
				var creditCard = response[i].creditCard;
				var telephoneNumber = response[i].telephoneNumber;

				var tr_str = "<tr>" +
				"<td align='center'>" + email + "</td>" +
				"<td align='center'>" + password + "</td>" +
				"<td align='center'>" + name + "</td>" +
				"<td align='center'>" + surname + "</td>" +
				"<td align='center'>" + dni + "</td>" +
				"<td align='center'>" + roomNumber + "</td>" +
				"<td align='center'>" + toPayAccount + "</td>" +
				"<td align='center'>" + creditCard + "</td>" +
				"<td align='center'>" + telephoneNumber + "</td>" +
				"</tr>";
				$("#userTable tbody").append(tr_str);
			}
		}
	});
});
