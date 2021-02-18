// This file contains a pareto-optimal circuit with respect to area and the fault-resilince parameter: p_fault.
    // This code is part of the ReCkt library (https://github.com/umar-afzaal/ReCkt) distributed under The MIT License.
    // When used, please cite the following article(s):
    // 

// p_fault = 63.7 %    (Lower is better)
// gates = 30.0
// levels = 9
// area = 41.92    (For MCNC library relative to nand2)
// power = 266.4 uW    (Berkely-SIS for MCNC library @ Vdd=5V and 20 MHz clock)
// delay = 17.5 ns    (Berkely-ABC for MCNC library)
// PDP = 4.662e-12 J

// Pin mapping:
// {n0, n1, n2, n3} = A[3:0]
// {n4, n5, n6, n7} = B[3:0]
// {n25, n23, n37, n39, n33} = O[4:0]

module addr4u_area_20 (
n0, n1, n2, n3, n4, n5, n6, n7, 
n25, n23, n37, n39, n33
);

input n0, n1, n2, n3, n4, n5, n6, n7;
output n25, n23, n37, n39, n33;
wire n13, n15, n20, n21, n38, n26, n11, n24, n27, n16, n18, n8, n14, n10, n31, n22, n19, n28, n30, n29, 
n36, n32, n9, n12, n17;

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
xnor (n29, n28, n27);
xnor (n30, n29, n28);
xnor (n31, n30, n29);
xnor (n32, n30, n31);
nor (n33, n14, n14);
nor (n36, n21, n21);
or (n37, n36, n36);
nor (n38, n18, n32);
nor (n39, n38, n16);

endmodule