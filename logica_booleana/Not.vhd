//Sistemas Computacionais - Lógica Booleana (Função Not)
//Felipe Daniel Dias dos Santos - 11711ECP004
//Graduação em Engenharia de Computação - Faculdade de Engenharia Elétrica - Universidade Federal de Uberlândia

CHIP Not{

    IN in;
    OUT out;

    PARTS:

        Nand(a = in, b = in, out = out);
}
