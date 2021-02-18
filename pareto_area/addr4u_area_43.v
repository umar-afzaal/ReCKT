// This file contains a pareto-optimal circuit with respect to area and the fault-resilince parameter: p_fault.
    // This code is part of the ReCkt library (https://github.com/umar-afzaal/ReCkt) distributed under The MIT License.
    // When used, please cite the following article(s):
    // 

// p_fault = 57.1 %    (Lower is better)
// gates = 32.0
// levels = 12
// area = 45.26    (For MCNC library relative to nand2)
// power = 225.8 uW    (Berkely-SIS for MCNC library @ Vdd=5V and 20 MHz clock)
// delay = 21.6 ns    (Berkely-ABC for MCNC library)
// PDP = 4.87728e-12 J

// Pin mapping:
// {n0, n1, n2, n3} = A[3:0]
// {n4, n5, n6, n7} = B[3:0]
// {n25, n23, n20, n18, n39} = O[4:0]

module addr4u_area_43 (
n0, n1, n2, n3, n4, n5, n6, n7, 
n25, n23, n20, n18, n39
);

input n0, n1, n2, n3, n4, n5, n6, n7;
output n25, n23, n20, n18, n39;
wire n15, n21, n33, n38, n26, n11, n31, n22, n28, n36, n35, n13, n34, n37, n27, n16, n8, n14, n10, n19, 
n30, n29, n9, n24, n32, n12, n17;

xor (n8, n4, n0);
nand (n9, n4, n0);
nand (n10, n5, n1);
nand (n11, n6, n2);
nor (n12, n7, n3);
xor (n13, n6, n2);
and (n14, n7, n3);
xor (n15, n5, n1);
nor (n16, n12, n14);
nand (n17, n13, n14);
xor (n18, n13, n14);
nand (n19, n17, n11);
xor (n20, n15, n19);
nand (n21, n15, n19);
nand (n22, n21, n10);
xor (n23, n8, n22);
nand (n24, n8, n22);
nand (n25, n24, n9);
xnor (n26, n16, n16);
xnor (n27, n16, n16);
xnor (n28, n26, n26);
xnor (n29, n27, n27);
xnor (n30, n28, n28);
xnor (n31, n30, n29);
xnor (n32, n30, n29);
nor (n33, n32, n31);
xnor (n34, n32, n33);
xnor (n35, n31, n33);
xnor (n36, n34, n34);
nor (n37, n36, n36);
nand (n38, n35, n37);
and (n39, n16, n38);

endmodule