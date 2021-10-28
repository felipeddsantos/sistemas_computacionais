//Sistemas Computacionais - Lógica Booleana (Função Or 8 Way)
//Felipe Daniel Dias dos Santos - 11711ECP004
//Graduação em Engenharia de Computação - Faculdade de Engenharia Elétrica - Universidade Federal de Uberlândia

CHIP Or8Way{

    IN in[8];
    OUT out;

    PARTS:

        Or(a = in[0], b = in[1], out = out1);
        Or(a = out1, b = in[2], out = out2);
        Or(a = out2, b = in[3], out = out3);
        Or(a = out3, b = in[4], out = out4);
        Or(a = out4, b = in[5], out = out5);
        Or(a = out5, b = in[6], out = out6);
        Or(a = out6, b = in[7], out = out);
}
