//Sistemas Computacionais - Memória (Bit)
//Felipe Daniel Dias dos Santos - 11711ECP004
//Graduação em Engenharia de Computação - Faculdade de Engenharia Elétrica - Universidade Federal de Uberlândia

CHIP Bit{

    IN in, load;
    OUT out;

    PARTS:

        Mux(a = out1, b = in, sel = load, out = muxout);
        DFF(in = muxout, out = out1);
        Or(a = out1, b = false, out = out);
}
