//Sistemas Computacionais - Arquitetura de Computadores (Computador)
//Felipe Daniel Dias dos Santos - 11711ECP004
//Graduação em Engenharia de Computação - Faculdade de Engenharia Elétrica - Universidade Federal de Uberlândia

CHIP Computer{

    IN reset;

    PARTS:
   
        ROM32K(address = out1, out = instruction);    
        CPU(inM = out2, instruction = instruction, reset = reset, outM = out3, writeM = out4, addressM = out5, pc = out1);
        Memory(in = out3, load = out4, address = out5, out = out2);
}
