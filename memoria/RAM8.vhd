//Sistemas Computacionais - Memória (RAM 8)
//Felipe Daniel Dias dos Santos - 11711ECP004
//Graduação em Engenharia de Computação - Faculdade de Engenharia Elétrica - Universidade Federal de Uberlândia

CHIP RAM8{

    IN in[16], load, address[3];
    OUT out[16];

    PARTS:

        DMux8Way(in = load, sel = address, a = a, b = b, c = c, d = d ,e = e, f = f, g = g, h = h);
        Register(in = in, load = a, out = aa);
        Register(in = in, load = b, out = bb);
        Register(in = in, load = c, out = cc);
        Register(in = in, load = d, out = dd);
        Register(in = in, load = e, out = ee);
        Register(in = in, load = f, out = ff);
        Register(in = in, load = g, out = gg);
        Register(in = in, load = h, out = hh);
        Mux8Way16(a = aa, b = bb, c = cc, d = dd, e = ee, f = ff, g = gg, h = hh, sel = address, out = out);
}
