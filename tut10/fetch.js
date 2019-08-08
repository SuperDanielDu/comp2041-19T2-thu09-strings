let urls = ["test.com/1", "test.com/2", "test.com/3"]
urls = urls.map(url => fetch(url))

Promise.all(urls).then((responses) => {
    // const strings = responses.map(toText)
    const strings = responses.map(r => responses.text())
    const string = strings.join(" ")
    console.log(string)
})

// function toText(response) {
//     return response.text()
// }
