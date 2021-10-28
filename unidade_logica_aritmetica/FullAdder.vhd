//Sistemas Computacionais - Unidade Lógica Aritmética (Somador Completo)
//Felipe Daniel Dias dos Santos - 11711ECP004
//Graduação em Engenharia de Computação - Faculdade de Engenharia Elétrica - Universidade Federal de Uberlândia

CHIP FullAdder{ 

    IN a, b, c;
    OUT sum, carry;

    PARTS:

        Xor(a = a, b = b, out = out1);
        Xor(a = c, b = out1, out = sum);
        And(a = a, b = b, out = out2);
        And(a = a, b = c, out = out3);
        And(a = b, b = c, out = out4);
        Or(a = out2, b = out3, out = out5);
        Or(a = out4, b = out5, out = carry);
}
