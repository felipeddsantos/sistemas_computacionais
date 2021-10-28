//Sistemas Computacionais - Lógica Booleana (Função Xor)
//Felipe Daniel Dias dos Santos - 11711ECP004
//Graduação em Engenharia de Computação - Faculdade de Engenharia Elétrica - Universidade Federal de Uberlândia

CHIP Xor{

    IN a, b;
    OUT out;

    PARTS:

        Not(in = a, out = outa);
        Not(in = b, out = outb);
        And(a = a, b = outb, out = out1);
        And(a = outa, b = b, out = out2);
        Or(a = out1, b = out2, out = out);
}
