
let matriz = [
    [4.0, 5.0, 7.0, 3.0],
    [2.5, 6.5, 4.7, 8.0],
    [10.0, 8.5, 9.5, 8.0],
    [9.0, 6.5, 7.6, 8.2],
    [5.0, 5.0, 5.0, 6.3],
    [7.0, 8.0, 9.0, 8.5],
    [5.5, 3.5, 2.5, 1.0],
    [8.0, 9.0, 10.0, 9.5],
    [5.6, 5.8, 6.5, 7.0],
    [7.5, 8.5, 9.5, 10.0] ];

let media, resultado = [];  

for (linhas = 0; linhas < matriz.length; linhas ++){
    media = 0;
    let soma = 0;
    for (let colunas = 0; colunas < matriz[linhas].length; colunas++ ) {
        
        soma += matriz[linhas][colunas]
    }
    media = soma / matriz[linhas].length;
    resultado[linhas] = media.toFixed(1);
}

console.log(resultado);
