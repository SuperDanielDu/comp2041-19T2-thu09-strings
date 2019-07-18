const cart = ['Apple', 'Orange', 'Apple', 'Strawberry', 'Orange'];

function countCart(cart) {
    const count = {};

    for (const item of cart) {
        count[item] = count[item] ? count[item] + 1 : 1
    }

    for (const item of Object.keys(count).sort()) {
        console.log(`${item} ${count[item]}`)
    }
}

countCart(cart);
// above would print
// Apple 2
// Orange 2
// Strawberry 1
