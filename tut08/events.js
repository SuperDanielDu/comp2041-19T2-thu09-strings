window.addEventListener('click', event => {
    console.log(event)
    const coords = document.createTextNode(`X: ${event.clientX} Y: ${event.clientY}`)
    const out = document.getElementById('output')
    out.appendChild(coords)
    out.appendChild(document.createElement('br'))
})
