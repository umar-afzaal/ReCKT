// This file contains a pareto-optimal circuit with respect to area and the fault-resilince parameter p_fault which is defined as:
// "For all input vectors, the ratio of the no. of faults observable at the POs to the no. of total possible faults in the circuit".
// This code is part of the ReCkt library (https://github.com/umar-afzaal/ReCkt) distributed under The MIT License.
// When used, please cite the following article(s):
// U. Afzaal, A.S. Hassan, M. Usman and J.A. Lee, "On the Evolutionary Synthesis of Increased Fault-resilience Arithmetic Circuits".

// p_fault = 74.2 %    (Lower is better)
// gates = 25.0
// levels = 9
// area = 34.96    (For MCNC library relative to nand2)
// power = 170.5 uW    (Berkely-SIS for MCNC library @ Vdd=5V and 20 MHz clock)
// delay = 18.1 ns    (Berkely-ABC for MCNC library)
// PDP = 3.08605e-12 J

// Pin mapping:
// {n0, n1, n2, n3} = A[3:0]
// {n4, n5, n6, n7} = B[3:0]
// {n34, n24, n21, n17, n18} = O[4:0]

module addr4u_area_32 (
n0, n1, n2, n3, n4, n5, n6, n7, 
n34, n24, n21, n17, n18
);

input n0, n1, n2, n3, n4, n5, n6, n7;
output n34, n24, n21, n17, n18;
wire n29, n13, n30, n20, n9, n23, n14, n16, n8, n22, n15, n25, n10, n31, n26, n19, n27, n11, n28, n12;

and (n8, n7, n3);
xor (n9, n4, n0);
xor (n10, n5, n1);
nor (n11, n7, n3);
nand (n12, n6, n2);
nand (n13, n5, n1);
xor (n14, n6, n2);
nand (n15, n4, n0);
nand (n16, n14, n8);
xor (n17, n14, n8);
nor (n18, n11, n8);
nand (n19, n16, n12);
nand (n20, n10, n19);
xor (n21, n10, n19);
nand (n22, n20, n13);
nand (n23, n9, n22);
xor (n24, n9, n22);
nand (n25, n23, n15);
xnor (n26, n17, n17);
xnor (n27, n17, n26);
xnor (n28, n27, n27);
xnor (n29, n26, n28);
xnor (n30, n29, n29);
nor (n31, n28, n30);
or (n34, n25, n31);

endmodule