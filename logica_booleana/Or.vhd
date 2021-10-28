//Sistemas Computacionais - Lógica Booleana (Função Or)
//Felipe Daniel Dias dos Santos - 11711ECP004
//Graduação em Engenharia de Computação - Faculdade de Engenharia Elétrica - Universidade Federal de Uberlândia

CHIP Or{

    IN a, b;
    OUT out;

    PARTS:

        Not(in = a, out = out1);
        Not(in = b, out = out2);
        Nand(a = out1, b = out2, out = out);
}
