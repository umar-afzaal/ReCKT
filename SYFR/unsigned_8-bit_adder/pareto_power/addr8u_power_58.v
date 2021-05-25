// This file contains a pareto-optimal circuit with respect to power and the fault-resilince parameter p_fault which is defined as:
// "For all input vectors, the ratio of the no. of faults observable at the POs to the no. of total possible faults in the circuit".
// This code is part of the ReCkt library (https://github.com/umar-afzaal/ReCkt) distributed under The MIT License.
// When used, please cite the following article(s):
// U. Afzaal, A.S. Hassan, M. Usman and J.A. Lee, "On the Evolutionary Synthesis of Increased Fault-resilience Arithmetic Circuits".

// p_fault = 50.0 %    (Lower is better)
// gates = 86.0
// levels = 17
// area = 122.09    (For MCNC library relative to nand2)
// power = 677.2 uW    (Berkely-SIS for MCNC library @ Vdd=5V and 20 MHz clock)
// delay = 29.4 ns    (Berkely-ABC for MCNC library)
// PDP = 1.99097e-11 J

// Pin mapping:
// {n0, n1, n2, n3, n4, n5, n6, n7} = A[7:0]
// {n8, n9, n10, n11, n12, n13, n14, n15} = B[7:0]
// {n60, n59, n55, n52, n103, n91, n43, n44, n26} = O[8:0]

module addr8u_power_58 (
n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, 
n60, n59, n55, n52, n103, n91, n43, n44, n26
);

input n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15;
output n60, n59, n55, n52, n103, n91, n43, n44, n26;
wire n96, n30, n69, n102, n68, n61, n79, n95, n46, n18, n93, n45, n90, n56, n37, n80, n101, n53, n62, n40, 
n25, n85, n67, n81, n22, n38, n97, n57, n39, n70, n19, n34, n76, n50, n29, n72, n35, n24, n63, n75, 
n49, n89, n74, n17, n65, n42, n87, n51, n82, n92, n78, n36, n47, n98, n20, n23, n83, n16, n66, n48, 
n21, n41, n54, n27, n33, n28, n58, n86, n88, n71, n73, n31, n84, n32, n77, n64, n99;

nand (n16, n13, n5);
not (n17, n14);
or (n18, n12, n4);
nand (n19, n10, n2);
nand (n20, n15, n7);
or (n21, n10, n2);
not (n22, n6);
xor (n23, n8, n0);
or (n24, n13, n5);
nand (n25, n14, n6);
xor (n26, n15, n7);
nand (n27, n12, n4);
xor (n28, n11, n3);
nor (n29, n9, n1);
nand (n30, n8, n0);
nand (n31, n9, n1);
nand (n32, n11, n3);
nand (n33, n27, n18);
not (n34, n29);
nand (n35, n16, n24);
nand (n36, n25, n20);
nand (n37, n17, n22);
nand (n38, n19, n21);
nand (n39, n36, n37);
nand (n40, n25, n37);
nand (n41, n31, n34);
nand (n42, n39, n16);
xor (n43, n39, n35);
xor (n44, n40, n20);
nand (n45, n42, n24);
nand (n46, n45, n27);
xor (n47, n45, n33);
and (n48, n46, n18);
nand (n49, n48, n28);
xor (n50, n48, n28);
nand (n51, n49, n32);
xnor (n52, n38, n51);
nand (n53, n21, n51);
nand (n54, n53, n19);
xnor (n55, n54, n41);
nand (n56, n54, n34);
nand (n57, n56, n31);
nand (n58, n57, n23);
xor (n59, n57, n23);
nand (n60, n58, n30);
xor (n61, n26, n26);
xnor (n62, n26, n26);
xnor (n63, n26, n26);
xnor (n64, n61, n26);
xnor (n65, n26, n26);
xnor (n66, n64, n47);
xnor (n67, n26, n62);
xnor (n68, n26, n62);
xor (n69, n63, n65);
xnor (n70, n64, n61);
xnor (n71, n66, n26);
xnor (n72, n68, n65);
xnor (n73, n68, n61);
xnor (n74, n72, n70);
xor (n75, n61, n69);
xnor (n76, n72, n73);
xnor (n77, n67, n76);
xnor (n78, n71, n74);
xnor (n79, n71, n76);
xnor (n80, n70, n73);
xnor (n81, n74, n79);
xnor (n82, n78, n78);
xnor (n83, n80, n79);
xnor (n84, n81, n81);
xnor (n85, n75, n82);
xnor (n86, n67, n75);
xnor (n87, n83, n69);
xnor (n88, n87, n77);
or (n89, n84, n82);
xor (n90, n85, n77);
and (n91, n47, n89);
xnor (n92, n80, n85);
xnor (n93, n66, n83);
xnor (n95, n86, n92);
xnor (n96, n88, n95);
xnor (n97, n84, n93);
xnor (n98, n97, n90);
xnor (n99, n55, n55);
nor (n101, n96, n99);
and (n102, n98, n101);
or (n103, n50, n102);

endmodule