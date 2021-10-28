//Sistemas Computacionais - Lógica Booleana (Função Or 16 Way)
//Felipe Daniel Dias dos Santos - 11711ECP004
//Graduação em Engenharia de Computação - Faculdade de Engenharia Elétrica - Universidade Federal de Uberlândia

CHIP Or16Way{

    IN in[16];
    OUT out;

    PARTS:

        Or(a = in[0], b = in[1], out = out1);
        Or(a = out1, b = in[2], out = out2);
        Or(a = out2, b = in[3], out = out3);
        Or(a = out3, b = in[4], out = out4);
        Or(a = out4, b = in[5], out = out5);
        Or(a = out5, b = in[6], out = out6);
        Or(a = out6, b = in[7], out = out7);
        Or(a = out7, b = in[8], out = out8);
        Or(a = out8, b = in[9], out = out9);
        Or(a = out9, b = in[10], out = out10);
        Or(a = out10, b = in[11], out = out11);
        Or(a = out11, b = in[12], out = out12);
        Or(a = out12, b = in[13], out = out13);
        Or(a = out13, b = in[14], out = out14);
        Or(a = out14, b = in[15], out = out);
}   
