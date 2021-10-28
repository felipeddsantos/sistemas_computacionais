//Sistemas Computacionais - Memória (RAM 512)
//Felipe Daniel Dias dos Santos - 11711ECP004
//Graduação em Engenharia de Computação - Faculdade de Engenharia Elétrica - Universidade Federal de Uberlândia

CHIP RAM512{

    IN in[16], load, address[9];
    OUT out[16];

    PARTS:

        DMux8Way(in = load, sel = address[6..8], a = aa, b = bb, c = cc, d = dd, e = ee, f = ff, g = gg, h = hh);
        RAM64(in = in, load = aa, address = address[0..5], out = o1);
        RAM64(in = in, load = bb, address = address[0..5], out = o2);
        RAM64(in = in, load = cc, address = address[0..5], out = o3);
        RAM64(in = in, load = dd, address = address[0..5], out = o4);
        RAM64(in = in, load = ee, address = address[0..5], out = o5);
        RAM64(in = in, load = ff, address = address[0..5], out = o6);
        RAM64(in = in, load = gg, address = address[0..5], out = o7);
        RAM64(in = in, load = hh, address = address[0..5], out = o8);
        Mux8Way16(a = out1, b = out2, c = out3, d = out4, e = out5, f = out6, g = out7, h = out8, sel = address[6..8], out = out);
}
