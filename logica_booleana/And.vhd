//Sistemas Computacionais - Lógica Booleana (Função And)
//Felipe Daniel Dias dos Santos - 11711ECP004
//Graduação em Engenharia de Computação - Faculdade de Engenharia Elétrica - Universidade Federal de Uberlândia

CHIP And{

    IN a, b;
    OUT out;

    PARTS:

        Nand(a = a, b = b, out = out1);
        Not(in = out1, out = out);
}
