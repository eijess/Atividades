const leia = require('readline-sync');

let continua = true
let salarioBruto, adicionalNoturno, horasExtras, descontos, salarioLiquido;
while (continua) {

  salarioBruto = leia.questionFloat('Digite o salario bruto: ');
  adicionalNoturno = leia.questionFloat('Digite o adicional noturno: ');
  horasExtras = leia.questionFloat('Digite as horas extras: ');
  descontos = leia.questionFloat('Digite os descontos: ');

    salarioLiquido = salarioBruto + adicionalNoturno + (horasExtras * 5) - descontos;
    

  console.log('Salario liquido: '+ salarioLiquido);

  continua = leia.keyInYNStrict("\nDeseja realizar uma nova consulta? ");
}
