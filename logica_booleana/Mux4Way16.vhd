//Sistemas Computacionais - Lógica Booleana (Função Mux 4 Way 16)
//Felipe Daniel Dias dos Santos - 11711ECP004
//Graduação em Engenharia de Computação - Faculdade de Engenharia Elétrica - Universidade Federal de Uberlândia

CHIP Mux4Way16{

    IN a[16], b[16], c[16], d[16], sel[2];
    OUT out[16];

    PARTS:

        Mux16(a = a, b = b, sel = sel[0], out = out1);
        Mux16(a = c, b = d, sel = sel[0], out = out2);
        Mux16(a = out1, b = out2, sel = sel[1], out = out);
}
