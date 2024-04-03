import { NOMEM } from "dns";
import { Queue } from "./Queue";

const leia = require("readline-sync");
const fila = new Queue<number>();
let opcao: number;

do {
  console.log('**');
  console.log('                                              ');
  console.log('      1 - Adicionar o Cliente na Fila');
  console.log('      2 - Listar todos os Clientes');
  console.log('      3 - Retirar Cliente da Fila');
  console.log('      0 - Sair');
  console.log('                                              ');
  console.log('**');

  console.log("Escolha uma opção");
  opcao = leia.questionInt("");

  switch (opcao) {
    case 1:
      console.log("Informe o seu nome: ");
      let nome = leia.question("");
      fila.enqueue(nome);
      fila.printQueue();

      break;
    case 2:
      if (fila.isEmpty()) {
        console.log("Não há nada para exibir!");

      } else
      fila.printQueue();
      
      break;
    case 3:
      
      if (fila.isEmpty()) {
        console.log("Não há nada a ser retirado!");

      } else
       fila.dequeue();

      break;
    case 0:
      console.log("Programa finalizado!");
      break;
    default:
      console.log("Opção inválida!");
      break;
  }

} while (opcao !== 0); 