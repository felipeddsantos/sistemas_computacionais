//Sistemas Computacionais - Arquitetura de Computadores (CPU)
//Felipe Daniel Dias dos Santos - 11711ECP004
//Graduação em Engenharia de Computação - Faculdade de Engenharia Elétrica - Universidade Federal de Uberlândia

CHIP CPU{

    IN inM[16], instruction[16], reset;                         
    OUT outM[16], writeM, addressM[15], pc[15];      
   
    PARTS:
     
        ALU(x = out2, y = out4, zx = instruction[11], nx = instruction[10], zy = instruction[9], ny = instruction[8], f = instruction[7], no = instruction[6], out = alu, out = in1, out = in2, out = outM, zr = outzr, ng = outng);
        And(a = true, b = instruction[3], out = out1);
        And(a = instruction[15], b = out1, out = writeM);
        And(a = instruction[15], b = instruction[4], out = load1);
        DRegister(in = in1, load = load1, out = out2);
        Not(in = instruction[15], out = instruct);
        Or(a = instruct, b = instruction[5], out = load2);
        ARegister(in = out5, load = load2, out = out3, out[0..14] = addressM);
        Mux16(a = out3, b = inM, sel = instruction[12], out = out4);
        Mux16(a = instruction, b = in2, sel = instruction[15], out = out5);
        And(a = instruction[2], b = outng, out = out6);
        And(a = instruction[1], b = outzr, out = out7);
        Not(in = outzr, out = outzrn);
        Not(in = outng, out = outngn);
        And(a = outzrn, b = outngn, out = outn);
        And(a = instruction[0], b = outn, out = out9);
        Or(a = out6, b = out7, out = out8);
        Or(a = out8, b = out9, out = out10);
        And(a = instruction[15], b = out10, out = load3);
        PC(in = out3, load = load3, inc = true, reset = reset, out[0..14] = pc);
}   
