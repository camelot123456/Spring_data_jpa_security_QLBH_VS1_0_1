const CONTENT_TYPE = 'application/json'

var option = {
		url: '',
		method: '',
		type: '',
		data: ''
	}

function callAPI(option) {
	fetch(option.url, {
		method: option.method,
		headers:{
			'Content-Type': option.type,
			'Accept-Type': option.type
		},
		body: JSON.stringify(option.data)
	})
	.then(response => response.json())
	.then(data => console.log(data));
}