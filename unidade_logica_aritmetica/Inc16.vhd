//Sistemas Computacionais - Unidade Lógica Aritmética (Incrementador 16)
//Felipe Daniel Dias dos Santos - 11711ECP004
//Graduação em Engenharia de Computação - Faculdade de Engenharia Elétrica - Universidade Federal de Uberlândia

CHIP Inc16{

    IN in[16];
    OUT out[16];

    PARTS:

        Not16(in = in, out = out1);
        Add16(a = in, b = out1, out = out2);
        Add16(a = out1, b = out2, out = out3);
        Add16(a = in, b = out3, out = out4);
        Not16(in = out4, out = out5);
        Add16(a = in, b = out5, out = out);
}
