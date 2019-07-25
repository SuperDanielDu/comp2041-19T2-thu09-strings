const submit = document.getElementById("lib-button")
submit.addEventListener('click', makeStory)

makeStory = (event) => {
    const noun = document.getElementById("noun").value
    const adj = document.getElementById("adjective").value
    const person = document.getElementById("person").value
    const text = document.createTextNode(`${person} really likes ${adj} ${noun}`)
    document.getElementById("story").appendChild(text)
}
