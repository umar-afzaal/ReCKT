// This file contains a pareto-optimal circuit with respect to area and the fault-resilince parameter: p_fault.
    // This code is part of the ReCkt library (https://github.com/umar-afzaal/ReCkt) distributed under The MIT License.
    // When used, please cite the following article(s):
    // 

// p_fault = 59.1 %    (Lower is better)
// gates = 31.0
// levels = 9
// area = 43.91    (For MCNC library relative to nand2)
// power = 281.4 uW    (Berkely-SIS for MCNC library @ Vdd=5V and 20 MHz clock)
// delay = 17.5 ns    (Berkely-ABC for MCNC library)
// PDP = 4.9245e-12 J

// Pin mapping:
// {n0, n1, n2, n3} = A[3:0]
// {n4, n5, n6, n7} = B[3:0]
// {n25, n23, n36, n39, n33} = O[4:0]

module addr4u_area_23 (
n0, n1, n2, n3, n4, n5, n6, n7, 
n25, n23, n36, n39, n33
);

input n0, n1, n2, n3, n4, n5, n6, n7;
output n25, n23, n36, n39, n33;
wire n35, n13, n15, n20, n34, n21, n38, n26, n11, n24, n27, n16, n18, n8, n14, n10, n31, n22, n19, n28, 
n30, n29, n32, n9, n12, n17;

and (n8, n3, n7);
xnor (n9, n6, n2);
xor (n10, n1, n5);
nand (n11, n1, n5);
nand (n12, n4, n0);
nand (n13, n2, n6);
xnor (n14, n7, n3);
xor (n15, n4, n0);
xor (n16, n9, n8);
nand (n17, n8, n16);
xnor (n18, n0, n0);
nand (n19, n17, n13);
nand (n20, n10, n19);
xnor (n21, n10, n19);
nand (n22, n20, n11);
xor (n23, n15, n22);
nand (n24, n15, n22);
nand (n25, n24, n12);
xnor (n26, n0, n0);
xnor (n27, n26, n18);
xnor (n28, n27, n26);
xnor (n29, n18, n27);
xnor (n30, n29, n28);
xnor (n31, n30, n29);
xnor (n32, n28, n30);
nand (n33, n14, n14);
xnor (n34, n31, n31);
xnor (n35, n34, n34);
nand (n36, n21, n21);
nor (n38, n32, n35);
nor (n39, n38, n16);

endmodule