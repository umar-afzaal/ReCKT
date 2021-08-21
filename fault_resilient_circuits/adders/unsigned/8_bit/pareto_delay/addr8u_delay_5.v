// This file contains a pareto-optimal circuit with respect to delay and the fault-resilince parameter p_fault which is defined as:
// "For all input vectors, the ratio of the no. of faults observable at the POs to the no. of total possible faults in the circuit".
// This code is part of the ReCkt library (https://github.com/umar-afzaal/ReCkt) distributed under The MIT License.
// When used, please cite the following article(s):
// U. Afzaal, A.S. Hassan, M. Usman and J.A. Lee, "On the Evolutionary Synthesis of Increased Fault-resilience Arithmetic Circuits".

// p_fault = 66.9 %    (Lower is better)
// gates = 70.0
// levels = 15
// area = 93.87    (For MCNC library relative to nand2)
// power = 548.5 uW    (Berkely-SIS for MCNC library @ Vdd=5V and 20 MHz clock)
// delay = 20.8 ns    (Berkely-ABC for MCNC library)
// PDP = 1.14088e-11 J

// Pin mapping:
// {n0, n1, n2, n3, n4, n5, n6, n7} = A[7:0]
// {n8, n9, n10, n11, n12, n13, n14, n15} = B[7:0]
// {n60, n59, n55, n53, n81, n47, n92, n42, n82} = O[8:0]

module addr8u_delay_5 (
n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, 
n60, n59, n55, n53, n81, n47, n92, n42, n82
);

input n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15;
output n60, n59, n55, n53, n81, n47, n92, n42, n82;
wire n30, n69, n61, n46, n68, n79, n18, n45, n56, n37, n80, n40, n62, n25, n67, n22, n38, n39, n57, n70, 
n19, n34, n76, n26, n50, n29, n72, n35, n24, n52, n63, n75, n49, n74, n89, n17, n65, n51, n78, n36, 
n20, n23, n83, n16, n66, n48, n21, n41, n54, n27, n33, n28, n58, n71, n73, n31, n44, n32, n77, n43, 
n64;

nand (n16, n9, n1);
not (n17, n6);
or (n18, n12, n4);
xor (n19, n8, n0);
or (n20, n10, n2);
xor (n21, n11, n3);
nor (n22, n9, n1);
nand (n23, n12, n4);
nand (n24, n14, n6);
nand (n25, n15, n7);
xor (n26, n15, n7);
not (n27, n14);
nand (n28, n11, n3);
nand (n29, n10, n2);
or (n30, n13, n5);
nand (n31, n13, n5);
nand (n32, n8, n0);
nand (n33, n23, n18);
nand (n34, n27, n17);
not (n35, n22);
nand (n36, n31, n30);
nand (n37, n24, n25);
nand (n38, n29, n20);
nand (n39, n37, n34);
nand (n40, n24, n34);
nand (n41, n16, n35);
xor (n42, n40, n25);
nand (n43, n39, n31);
xor (n44, n39, n36);
nand (n45, n43, n30);
nand (n46, n45, n23);
xor (n47, n45, n33);
and (n48, n46, n18);
xor (n49, n48, n21);
nand (n50, n48, n21);
nand (n51, n50, n28);
nand (n52, n20, n51);
xnor (n53, n38, n51);
nand (n54, n52, n29);
xnor (n55, n54, n41);
nand (n56, n54, n35);
nand (n57, n56, n16);
nand (n58, n57, n19);
xor (n59, n57, n19);
nand (n60, n58, n32);
xnor (n61, n26, n26);
xnor (n62, n26, n26);
xor (n63, n26, n61);
xnor (n64, n26, n61);
xnor (n65, n26, n63);
xor (n66, n64, n26);
xnor (n67, n61, n66);
xnor (n68, n62, n26);
xnor (n69, n62, n61);
nand (n70, n65, n67);
xnor (n71, n62, n69);
and (n72, n70, n26);
xnor (n73, n69, n65);
xor (n74, n66, n67);
xnor (n75, n73, n74);
xnor (n76, n71, n68);
xnor (n77, n74, n63);
or (n78, n75, n64);
or (n79, n78, n77);
xnor (n80, n68, n76);
and (n81, n49, n49);
and (n82, n79, n72);
or (n83, n80, n44);
or (n89, n76, n83);
and (n92, n44, n89);

endmodule