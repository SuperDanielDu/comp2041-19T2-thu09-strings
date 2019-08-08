fetch(`${apiUrl}/user/feed`, {
    method: "GET",
    headers: {
        authorization: `Token ${token}`,
        "content-type": "application/json"
    }
})

fetch(`${apiUrl}/auth/login`, {
    method: "POST",
    headers: {
        "content-type": "application/json"
    },
    body: JSON.stringify({
        username: `${uName}`,
        password: `${password}`
    })
})
