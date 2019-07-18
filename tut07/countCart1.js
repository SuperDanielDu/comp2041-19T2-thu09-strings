const cart = [
    {
      name: 'Apple',
      cost: 2.30
    },
    {
      name: 'Orange',
      cost: 4.50
    },
    {
      name: 'Apple',
      cost: 2.30
    },
    {
      name: 'Strawberry',
      cost: 6.70
    },
    {
      name: 'Orange',
      cost: 4.50
    }
  ];

function countCart(cart) {
    const count = {};

    for (const item of cart) {
        count[item.name] = count[item.name] ? count[item.name] + 1 : 1
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
