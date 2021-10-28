//Sistemas Computacionais - Arquitetura de Computadores (Memória)
//Felipe Daniel Dias dos Santos - 11711ECP004
//Graduação em Engenharia de Computação - Faculdade de Engenharia Elétrica - Universidade Federal de Uberlândia

CHIP Memory{
    
    IN in[16], load, address[15];
    OUT out[16];
    
    PARTS:
    
        DMux(in = load, sel = address[14], a = out1, b = out2);
        DMux(in = out2, sel = address[13], a = out3, b = null);
        RAM16K(in = in, load = out1, address = address[0..13], out = ram);
        Screen(in = in, load = out3, address = address[0..12], out = screen);
        Keyboard(out = key);
        Mux16(a = screen, b = key, sel = address[13], out = out4);
        Mux16(a = ram, b = out4, sel = address[14], out = out);
}
