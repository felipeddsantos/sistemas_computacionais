//Sistemas Computacionais - Lógica Booleana (Função DMux)
//Felipe Daniel Dias dos Santos - 11711ECP004
//Graduação em Engenharia de Computação - Faculdade de Engenharia Elétrica - Universidade Federal de Uberlândia

CHIP DMux{

    IN in, sel;
    OUT a, b;

    PARTS:

        Not(in = sel, out = outs);
        And(a = in, b = outs, out = a);
        And(a = in, b = sel, out = b);
}
