// This file contains a pareto-optimal circuit with respect to area and the fault-resilince parameter: p_fault.
    // This code is part of the ReCkt library (https://github.com/umar-afzaal/ReCkt) distributed under The MIT License.
    // When used, please cite the following article(s):
    // 

// p_fault = 68.4 %    (Lower is better)
// gates = 29.0
// levels = 13
// area = 39.27    (For MCNC library relative to nand2)
// power = 192.7 uW    (Berkely-SIS for MCNC library @ Vdd=5V and 20 MHz clock)
// delay = 21.8 ns    (Berkely-ABC for MCNC library)
// PDP = 4.20086e-12 J

// Pin mapping:
// {n0, n1, n2, n3} = A[3:0]
// {n4, n5, n6, n7} = B[3:0]
// {n25, n23, n37, n38, n33} = O[4:0]

module addr4u_area_16 (
n0, n1, n2, n3, n4, n5, n6, n7, 
n25, n23, n37, n38, n33
);

input n0, n1, n2, n3, n4, n5, n6, n7;
output n25, n23, n37, n38, n33;
wire n35, n13, n15, n20, n21, n26, n11, n27, n16, n18, n8, n14, n10, n31, n22, n19, n28, n30, n29, n24, 
n32, n9, n12, n17;

and (n8, n3, n7);
xor (n9, n6, n2);
xor (n10, n1, n5);
nand (n11, n5, n1);
nand (n12, n4, n0);
nand (n13, n2, n6);
xnor (n14, n7, n3);
xor (n15, n4, n0);
xnor (n16, n9, n8);
nand (n17, n8, n16);
xnor (n18, n14, n14);
nand (n19, n17, n13);
nand (n20, n10, n19);
xnor (n21, n10, n19);
nand (n22, n20, n11);
xor (n23, n15, n22);
nand (n24, n15, n22);
nand (n25, n24, n12);
nand (n26, n21, n21);
xnor (n27, n18, n26);
xnor (n28, n27, n18);
xnor (n29, n28, n27);
nor (n30, n29, n28);
and (n31, n14, n29);
xnor (n32, n30, n30);
nor (n33, n14, n31);
nand (n35, n21, n32);
and (n37, n35, n26);
nand (n38, n16, n16);

endmodule