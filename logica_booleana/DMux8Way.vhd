//Sistemas Computacionais - Lógica Booleana (Função DMux 8 Way)
//Felipe Daniel Dias dos Santos - 11711ECP004
//Graduação em Engenharia de Computação - Faculdade de Engenharia Elétrica - Universidade Federal de Uberlândia

CHIP DMux8Way{

    IN in, sel[3];
    OUT a, b, c, d, e, f, g, h;

    PARTS:

        Not(in = sel[0], out = outs0);
        Not(in = sel[1], out = outs1);
        Not(in = sel[2], out = outs2);
        And(a = outs0, b = outs1, out = out1);
        And(a = sel[0], b = outs1, out = out2);
        And(a = outs0, b = sel[1], out = out3);
        And(a = sel[0], b = sel[1], out = out4);
        And(a = out1, b = outs2, out = out5);
        And(a = out2, b = outs2, out = out6);
        And(a = out3, b = outs2, out = out7);
        And(a = out4, b = outs2, out = out8);
        And(a = out1, b = sel[2], out = out9);
        And(a = out2, b = sel[2], out = out10);
        And(a = out3, b = sel[2], out = out11);
        And(a = out4, b = sel[2], out = out12);
        And(a = in, b = out5, out = a);
        And(a = in, b = out6, out = b);
        And(a = in, b = out7, out = c);
        And(a = in, b = out8, out = d);
        And(a = in, b = out9, out = e);
        And(a = in, b = out10, out = f);
        And(a = in, b = out11, out = g);
        And(a = in, b = out12, out = h);
}
