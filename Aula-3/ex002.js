const leia = require('readline-sync');

let idade = 0;
let menores21 = 0;
let maiores50 = 0;

while (idade >= 0) {
  idade = leia.question("Digite a idade: ");

  if (idade < 21 && idade > 0) {
    menores21++;
  } else if (idade > 50 ) {
    maiores50++;
  } 
}

console.log(`${menores21} menores que 21 anos.`);
console.log(`${maiores50} maiores que 50 anos.`);
