//Sistemas Computacionais - Lógica Booleana (Função Mux 8 Way 16)
//Felipe Daniel Dias dos Santos - 11711ECP004
//Graduação em Engenharia de Computação - Faculdade de Engenharia Elétrica - Universidade Federal de Uberlândia

CHIP Mux8Way16{

    IN a[16], b[16], c[16], d[16], e[16], f[16], g[16], h[16], sel[3];
    OUT out[16];

    PARTS:

        Mux16(a = a, b = b, sel = sel[0], out = out0);
        Mux16(a = c, b = d, sel = sel[0], out = out1);
        Mux16(a = e, b = f, sel = sel[0], out = out2);
        Mux16(a = g, b = h, sel = sel[0], out = out3);
        Mux16(a = out0, b = out1, sel = sel[1], out = out4);
        Mux16(a = out2, b = out3, sel = sel[1], out = out5);
        Mux16(a = out4, b = out5, sel = sel[2], out = out);
}
