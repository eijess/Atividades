const leia = require('readline-sync');

let continua = true;
let salario, abono, resultado;

while (continua) {
  salario = leia.questionFloat('Digite o salario: ');

  abono = leia.questionFloat('Digite o abono: ');

  resultado = salario + abono;
  console.log('O novo salario é: ' + resultado);
  continua = leia.keyInYNStrict('\nDeseja continuar?');
  console.log();
}
