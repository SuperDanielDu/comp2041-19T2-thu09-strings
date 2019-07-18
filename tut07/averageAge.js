const users = [
  {
    name: 'Jeff',
    age: 52,
    gender: 'male'
  },
  {
    name: 'Andy',
    age: 25,
    gender: 'male'
  },
  {
    name: 'Sarah',
    age: 30,
    gender: 'female'
  },
  {
    name: 'Phoebe',
    age: 21,
    gender: 'female'
  },
  {
    name: 'Angus',
    age: 21,
    gender: 'male'
  },
  {
    name: 'Doris',
    age: 81,
    gender: 'female'
  }
];

const isMale = (user) => user.gender === "male"
const startsWithA = (user) => user.name.startsWith("A")
const sum = (total, curr) => total = total + curr

const agesOfMalesWithA = users
                    .filter(isMale)
                    .filter(startsWithA)
                    .map(user => user.age)

const avgAges = agesOfMalesWithA.reduce(sum, 0) / agesOfMalesWithA.length
console.log(avgAges)
