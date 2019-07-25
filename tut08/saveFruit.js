const form = document.forms.fruitForm

const prevFruit = localStorage.getItem('fruit')
if (prevFruit) {
    form.fruit.value = prevFruit
}

form.addEventListener('submit', () => {
    alert(form.fruit.value)
})

form.addEventListener('change', event => {
    localStorage.setItem('fruit', form.fruit.value)

})
