const form = document.forms.fruitForm
form.addEventListener('submit', event => {
    alert(form.fruit.value)
})
