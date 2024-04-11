const leia = require("readline-sync");

let numero;
let soma = 0;

do {
  numero = leia.questionInt("Digite um numero inteiro: ");
  
  if (numero > 0) {
    soma += numero;
  }

} while (numero != 0)

console.log(`A soma de todos os numeros é igual a ${soma}`);