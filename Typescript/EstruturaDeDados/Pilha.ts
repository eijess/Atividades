import { Stack } from "./Stack";

const leia = require('readline-sync');
const pilha = new Stack<number>();
let opcao: number;

do {
    console.log("***************************************");
    console.log("                                       ");
    console.log("     1 - Adicionar Livro na pilha      ");
    console.log("     2 - Listar todos os Livros        ");
    console.log("     3 - Retirar Livro da pilha        ");
    console.log("     0 - Sair                          ");
    console.log("                                       ");
    console.log("***************************************");

    console.log("escolha uma opção");
    opcao = leia.questionInt("");

    switch (opcao) {
        case 1:
            console.log("Insira um livro na pilha: ");
            const livro = leia.question("");
            
            pilha.push(livro);

            console.log(`A quantidade de livros na pilha atual é de: ${pilha.count()}!`);

            break;
        case 2:
            if(pilha.isEmpty() === true) {
                console.log("A pilha está vazia!");
            }else {
                console.log("Nomes dos livros atuais na pilha: \n");
                pilha.printStack()
                console.log(`\nA quantidade de livros na pilha atual é de: ${pilha.count()}!`);
            }
            break;
        case 3:
            if(pilha.isEmpty() === true) {
                console.log("Não há nada na pilha!");
            }else {
                pilha.pop();
                console.log("Nomes dos livros atuais na pilha: \n");
                pilha.printStack();
                console.log(`\nA quantidade de livros na pilha atual é de: ${pilha.count()}!`);
            }
            break;
        case 0: 
            console.log("Programa encerrado!");
            break;
        default:
            console.log("Opção inválida!");
            break;
    }


}while(opcao !== 0)