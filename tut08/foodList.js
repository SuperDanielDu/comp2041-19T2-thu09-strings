const foods = ['Apple', 'Orange', 'Strawberry', 'Bananas', 'Sausages'];

const list = document.createElement('ol');
foods.forEach(food => {
    const item = document.createElement('li');
    const text = document.createTextNode(food);
    item.appendChild(text);
    list.appendChild(item);
})

const out = document.getElementById('output')
out.appendChild(list)
