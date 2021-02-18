// This file contains a pareto-optimal circuit with respect to area and the fault-resilince parameter: p_fault.
    // This code is part of the ReCkt library (https://github.com/umar-afzaal/ReCkt) distributed under The MIT License.
    // When used, please cite the following article(s):
    // 

// p_fault = 84.3 %    (Lower is better)
// gates = 23.0
// levels = 11
// area = 30.98    (For MCNC library relative to nand2)
// power = 120.8 uW    (Berkely-SIS for MCNC library @ Vdd=5V and 20 MHz clock)
// delay = 16.3 ns    (Berkely-ABC for MCNC library)
// PDP = 1.96904e-12 J

// Pin mapping:
// {n0, n1, n2, n3} = A[3:0]
// {n4, n5, n6, n7} = B[3:0]
// {n25, n23, n20, n30, n18} = O[4:0]

module addr4u_area_30 (
n0, n1, n2, n3, n4, n5, n6, n7, 
n25, n23, n20, n30, n18
);

input n0, n1, n2, n3, n4, n5, n6, n7;
output n25, n23, n20, n30, n18;
wire n11, n13, n27, n15, n16, n8, n14, n10, n17, n22, n19, n28, n29, n21, n24, n9, n12, n26;

xor (n8, n4, n0);
nand (n9, n4, n0);
and (n10, n7, n3);
nor (n11, n7, n3);
nand (n12, n6, n2);
nand (n13, n5, n1);
xor (n14, n5, n1);
xor (n15, n6, n2);
xor (n16, n15, n10);
nand (n17, n15, n10);
nor (n18, n11, n10);
nand (n19, n17, n12);
xor (n20, n14, n19);
nand (n21, n14, n19);
nand (n22, n21, n13);
xor (n23, n8, n22);
nand (n24, n8, n22);
nand (n25, n24, n9);
xnor (n26, n23, n23);
nor (n27, n26, n26);
nand (n28, n27, n27);
xnor (n29, n28, n28);
and (n30, n16, n29);

endmodule