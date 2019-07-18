// note the use of this in this special constructor
// also note the caps (a convention for constructor functions)

class Person {
   constructor(firstName, lastName, age) {
      this.firstName = firstName;
      this.lastName  = lastName;
      this.age       = age;
      this.human     = true;
   }

   getFullName() {
      return `${this.firstName} ${this.lastName}`;
   };

   canDrinkAlcohol() {
      return this.age >= 18;
   };
}
// now if we call the constructor function we get this
const jeff = new Person('Jeff', 'Goldblum', 50);
// => Person { firstName: 'Jeff', lastName: 'Goldblum', age: 50 }

console.log(jeff.getFullName()); // 'Jeff Goldblum'
console.log(jeff.firstName);
console.log(jeff.canDrinkAlcohol()) // true
