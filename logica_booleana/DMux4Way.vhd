//Sistemas Computacionais - Lógica Booleana (Função DMux 4 Way)
//Felipe Daniel Dias dos Santos - 11711ECP004
//Graduação em Engenharia de Computação - Faculdade de Engenharia Elétrica - Universidade Federal de Uberlândia

CHIP DMux4Way{

    IN in, sel[2];
    OUT a, b, c, d;

    PARTS:

        Not(in = sel[0], out = outs0);
        Not(in = sel[1], out = outs1);
        And(a = outs0, b = outs1, out = out1);
        And(a = sel[0], b = outs1, out = out2);
        And(a = outs0, b = sel[1], out = out3);
        And(a = sel[0], b = sel[1], out = out4);
        And(a = in, b = out1, out = a);
        And(a = in, b = out2, out = b);
        And(a = in, b = out3, out = c);
        And(a = in, b = out4, out = d);
}
