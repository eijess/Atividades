const leia = require("readline-sync");
let pares = 0;
let impares = 0;


for (let i = 0; i < 10; i++) { 
  let numero = leia.questionInt("Digite um numero: ");

  if (numero % 2 == 0) {
    pares++;

  } else {
    impares++;
  }
}

console.log(`${pares} numeros são pares`);
console.log(`${impares} numeros são impares`);





/*let a = 0;
a += 2;
console.log(a);
a += 18;
console.log(a);
a++;
console.log(a); */