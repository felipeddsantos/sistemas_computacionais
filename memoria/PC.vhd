//Sistemas Computacionais - Memória (Contador)
//Felipe Daniel Dias dos Santos - 11711ECP004
//Graduação em Engenharia de Computação - Faculdade de Engenharia Elétrica - Universidade Federal de Uberlândia

CHIP PC{

    IN in[16], load, inc, reset;
    OUT out[16];

    PARTS:

        Register(in = out1, load = load1, out = out, out = out2);
        Or(a = reset, b = load, out = or1);
        Or(a = or1, b = inc, out = load1);
        Add16(a = out2, b[0] = true, b[1..15] = false, out = add1);
        Mux16(a = out2, b = add1, sel = inc, out = add2);
        Mux16(a = add2, b = in, sel = load, out = load1);
        Mux16(a = load1, b[0..15] = false, sel = reset, out = out1);
}
