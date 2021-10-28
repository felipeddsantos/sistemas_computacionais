//Sistemas Computacionais - Memória (RAM 4K)
//Felipe Daniel Dias dos Santos - 11711ECP004
//Graduação em Engenharia de Computação - Faculdade de Engenharia Elétrica - Universidade Federal de Uberlândia

CHIP RAM4K{

    IN in[16], load, address[12];
    OUT out[16];

    PARTS:

        DMux8Way(in = load, sel = address[9..11], a = aa, b = bb, c = cc, d = dd, e = ee, f = ff, g = gg, h = hh);
        RAM512(in = in, load = aa, address = address[0..8], out = out1);
        RAM512(in = in, load = bb, address = address[0..8], out = out2);
        RAM512(in = in, load = cc, address = address[0..8], out = out3);
        RAM512(in = in, load = dd, address = address[0..8], out = out4);
        RAM512(in = in, load = ee, address = address[0..8], out = out5);
        RAM512(in = in, load = ff, address = address[0..8], out = out6);
        RAM512(in = in, load = gg, address = address[0..8], out = out7);
        RAM512(in = in, load = hh, address = address[0..8], out = out8);
        Mux8Way16(a = out1, b = out2, c = out3, d = out4,e = out5, f = out6, g = out7, h = out8, sel = address[9..11], out = out);
}
