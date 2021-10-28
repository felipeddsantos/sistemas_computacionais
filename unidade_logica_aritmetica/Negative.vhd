//Sistemas Computacionais - Unidade Lógica Aritmética (Negativo)
//Felipe Daniel Dias dos Santos - 11711ECP004
//Graduação em Engenharia de Computação - Faculdade de Engenharia Elétrica - Universidade Federal de Uberlândia

CHIP Negative{

    IN in[16];
    OUT out;

    PARTS:

        And(a = in[15], b = in[15], out = out);
}
