const leia = require("readline-sync");

let vetor = [2, 5, 1, 3, 4, 9, 7, 8, 10, 6];
let posicao = leia.questionInt("Digite um numero: ");
let resultado = 0;


for (let i = 0; i < vetor.length; i++) {

    if (posicao == vetor[i]) {
        resultado = posicao;
        console.log(`O número ${posicao} está localizado na posição ${i}`);
    } 
} 

if (resultado == 0) {
    resultado = posicao;
    console.log(`O número ${resultado} não foi encontrado`);
}

