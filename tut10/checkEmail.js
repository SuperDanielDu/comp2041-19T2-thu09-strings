//   <input id="email"> </input>
//   <button id="check">check email</button>


document.getElementById('check').addEventListener('click', checkEmail)

function checkEmail() {
    const emailInput = document.getElementById('email')
    const email = emailInput.value

    const pattern = /^[a-z0-9]+@[a-z0-9]+\.[a-z0-9]+$/i
    if (pattern.exec(email)) {
        emailInput.style.color = "green"
    } else {
        emailInput.style.color = "red"
    }

}
