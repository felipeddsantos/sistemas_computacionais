//Sistemas Computacionais - Memória (RAM 16K)
//Felipe Daniel Dias dos Santos - 11711ECP004
//Graduação em Engenharia de Computação - Faculdade de Engenharia Elétrica - Universidade Federal de Uberlândia

CHIP RAM16K{

    IN in[16], load, address[14];
    OUT out[16];

    PARTS:
    
        DMux4Way(in = load, sel = address[12..13], a = aa, b = bb, c = cc, d = dd);
        RAM4K(in = in, load = aa, address = address[0..11], out = out1);
        RAM4K(in = in, load = bb, address = address[0..11], out = out2);
        RAM4K(in = in, load = cc, address = address[0..11], out = out3);
        RAM4K(in = in, load = dd, address = address[0..11], out = out4);
        Mux4Way16(a = out1, b = out2, c = out3, d = out4, sel = address[12..13], out = out);
}
