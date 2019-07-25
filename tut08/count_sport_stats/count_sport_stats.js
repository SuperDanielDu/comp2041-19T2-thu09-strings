function countStats(data) {
    return data.reduce((acc, curr) => {
        acc.matches += +curr.matches;
        acc.tries += parseInt(curr.tries);
        return acc;
    }, {"matches": 0, "tries": 0});
}

const json = process.argv[2];
if (json === undefined) {
    throw new Error(`input not supplied`);
}
// include the json file via node's module system,
// this parses the json file into a JS object
// NOTE: this only works via node and will not work in the browser
const stats = require(`./${json}`);

console.log(countStats(stats.results));
