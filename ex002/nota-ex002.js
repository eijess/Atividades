const leia = require('readline-sync')

let continua = true
let nota1, nota2, nota3, nota4, mediaFinal

while (continua) {
  nota1 = leia.questionFloat('Digite a primeira nota: ')
  nota2 = leia.questionFloat('Digite a segunda nota: ')
  nota3 = leia.questionFloat('Digite a terceira nota: ')
  nota4 = leia.questionFloat('Digite a quarta nota: ')

  mediaFinal = (nota1 + nota2 + nota3 + nota4) / 4

  console.log('A média final é: ' + mediaFinal)
  continua = leia.keyInYNStrict('\nDeseja fazer uma nova consulta? ')
}
