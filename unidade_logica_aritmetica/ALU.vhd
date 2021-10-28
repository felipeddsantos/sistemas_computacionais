//Sistemas Computacionais - Unidade Lógica Aritmética (ULA)
//Felipe Daniel Dias dos Santos - 11711ECP004
//Graduação em Engenharia de Computação - Faculdade de Engenharia Elétrica - Universidade Federal de Uberlândia

CHIP ALU{

    IN x[16], y[16], zx, nx, zy, ny, f, no;
    OUT out[16], zr, ng;

    PARTS:

        Not16(in = x, out = outz);
        Add16(a = x, b = outz, out = outsum);
        Inc16(in = outsum, out = zero);
        Inc16(in = zero, out = um);
        Mux16(a = x, b = zero, sel = zx, out = outx);
        Mux16(a = y, b = zero, sel = zy, out = outy);
        Not16(in = outx, out = outxn);
        Not16(in = outy, out = outyn);
        Mux16(a = outx, b = outxn, sel = nx, out = outx1);
        Mux16(a = outy, b = outyn, sel = ny, out = outy1);
        And16(a = outx1, b = outy1, out = outand);
        Add16(a = outx1, b = outy1, out = outadd);
        Mux16(a = outand, b = outadd, sel = f, out = outt);
        Not16(in = outt, out = outtn);
        Mux16(a = outt, b = outtn, sel = no, out = saida);
        And16(a = saida, b = outsum, out = out);
        Or16Way(in = saida, out = outzr);
        Not(in = outzr, out = zr);
        Negative(in = saida, out = ng);
}
