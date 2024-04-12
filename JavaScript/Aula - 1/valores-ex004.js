const leia = require('readline-sync')

let continua = true
let n1, n2, n3, n4, calculo

while (continua) {
  n1 = leia.questionFloat('Digite um numero: ')
  n2 = leia.questionFloat('Digite um numero: ')
  n3 = leia.questionFloat('Digite um numero: ')
  n4 = leia.questionFloat('Digite um numero: ')

  calculo = (n1 * n2) - (n3 * n4)

  console.log('A diferença é: ' + calculo)

  continua = leia.keyInYNStrict('\nDeseja realizar uma nova consulta? ')
}
