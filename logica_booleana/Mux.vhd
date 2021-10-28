//Sistemas Computacionais - Lógica Booleana (Função Mux)
//Felipe Daniel Dias dos Santos - 11711ECP004
//Graduação em Engenharia de Computação - Faculdade de Engenharia Elétrica - Universidade Federal de Uberlândia

CHIP Mux{

    IN a, b, sel;
    OUT out;

    PARTS:

        Not(in = sel, out = outs);
        And(a = a, b = outs, out = out1);
        And(a = sel, b = b, out = out2);
        Or(a = out1, b = out2, out = out);
}
