
module PG_PRIM_0 ( A, B, g, p );
  input A, B;
  output g, p;


  XOR2_X1 U2 ( .A(B), .B(A), .Z(p) );
  AND2_X1 U1 ( .A1(B), .A2(A), .ZN(g) );
endmodule


module GG_0 ( G_current, P_current, G_prev, G );
  input G_current, P_current, G_prev;
  output G;
  wire   n2;

  INV_X1 U1 ( .A(n2), .ZN(G) );
  AOI21_X1 U2 ( .B1(P_current), .B2(G_prev), .A(G_current), .ZN(n2) );
endmodule


module PG_PRIM_31 ( A, B, g, p );
  input A, B;
  output g, p;


  XOR2_X1 U2 ( .A(B), .B(A), .Z(p) );
  AND2_X1 U1 ( .A1(B), .A2(A), .ZN(g) );
endmodule


module PG_PRIM_30 ( A, B, g, p );
  input A, B;
  output g, p;


  XOR2_X1 U2 ( .A(B), .B(A), .Z(p) );
  AND2_X1 U1 ( .A1(B), .A2(A), .ZN(g) );
endmodule


module PG_PRIM_29 ( A, B, g, p );
  input A, B;
  output g, p;


  XOR2_X1 U2 ( .A(B), .B(A), .Z(p) );
  AND2_X1 U1 ( .A1(B), .A2(A), .ZN(g) );
endmodule


module PG_PRIM_28 ( A, B, g, p );
  input A, B;
  output g, p;


  XOR2_X1 U2 ( .A(B), .B(A), .Z(p) );
  AND2_X1 U1 ( .A1(B), .A2(A), .ZN(g) );
endmodule


module PG_PRIM_27 ( A, B, g, p );
  input A, B;
  output g, p;


  XOR2_X1 U2 ( .A(B), .B(A), .Z(p) );
  AND2_X1 U1 ( .A1(B), .A2(A), .ZN(g) );
endmodule


module PG_PRIM_26 ( A, B, g, p );
  input A, B;
  output g, p;


  XOR2_X1 U2 ( .A(B), .B(A), .Z(p) );
  AND2_X1 U1 ( .A1(B), .A2(A), .ZN(g) );
endmodule


module PG_PRIM_25 ( A, B, g, p );
  input A, B;
  output g, p;


  XOR2_X1 U2 ( .A(B), .B(A), .Z(p) );
  AND2_X1 U1 ( .A1(B), .A2(A), .ZN(g) );
endmodule


module PG_PRIM_24 ( A, B, g, p );
  input A, B;
  output g, p;


  XOR2_X1 U2 ( .A(B), .B(A), .Z(p) );
  AND2_X1 U1 ( .A1(B), .A2(A), .ZN(g) );
endmodule


module PG_PRIM_23 ( A, B, g, p );
  input A, B;
  output g, p;


  XOR2_X1 U2 ( .A(B), .B(A), .Z(p) );
  AND2_X1 U1 ( .A1(B), .A2(A), .ZN(g) );
endmodule


module PG_PRIM_22 ( A, B, g, p );
  input A, B;
  output g, p;


  XOR2_X1 U2 ( .A(B), .B(A), .Z(p) );
  AND2_X1 U1 ( .A1(B), .A2(A), .ZN(g) );
endmodule


module PG_PRIM_21 ( A, B, g, p );
  input A, B;
  output g, p;


  XOR2_X1 U2 ( .A(B), .B(A), .Z(p) );
  AND2_X1 U1 ( .A1(B), .A2(A), .ZN(g) );
endmodule


module PG_PRIM_20 ( A, B, g, p );
  input A, B;
  output g, p;


  XOR2_X1 U2 ( .A(B), .B(A), .Z(p) );
  AND2_X1 U1 ( .A1(B), .A2(A), .ZN(g) );
endmodule


module PG_PRIM_19 ( A, B, g, p );
  input A, B;
  output g, p;


  XOR2_X1 U2 ( .A(B), .B(A), .Z(p) );
  AND2_X1 U1 ( .A1(B), .A2(A), .ZN(g) );
endmodule


module PG_PRIM_18 ( A, B, g, p );
  input A, B;
  output g, p;


  XOR2_X1 U2 ( .A(B), .B(A), .Z(p) );
  AND2_X1 U1 ( .A1(B), .A2(A), .ZN(g) );
endmodule


module PG_PRIM_17 ( A, B, g, p );
  input A, B;
  output g, p;


  XOR2_X1 U2 ( .A(B), .B(A), .Z(p) );
  AND2_X1 U1 ( .A1(B), .A2(A), .ZN(g) );
endmodule


module PG_PRIM_16 ( A, B, g, p );
  input A, B;
  output g, p;


  XOR2_X1 U2 ( .A(B), .B(A), .Z(p) );
  AND2_X1 U1 ( .A1(B), .A2(A), .ZN(g) );
endmodule


module PG_PRIM_15 ( A, B, g, p );
  input A, B;
  output g, p;


  XOR2_X1 U2 ( .A(B), .B(A), .Z(p) );
  AND2_X1 U1 ( .A1(B), .A2(A), .ZN(g) );
endmodule


module PG_PRIM_14 ( A, B, g, p );
  input A, B;
  output g, p;


  XOR2_X1 U2 ( .A(B), .B(A), .Z(p) );
  AND2_X1 U1 ( .A1(B), .A2(A), .ZN(g) );
endmodule


module PG_PRIM_13 ( A, B, g, p );
  input A, B;
  output g, p;


  XOR2_X1 U2 ( .A(B), .B(A), .Z(p) );
  AND2_X1 U1 ( .A1(B), .A2(A), .ZN(g) );
endmodule


module PG_PRIM_12 ( A, B, g, p );
  input A, B;
  output g, p;


  XOR2_X1 U2 ( .A(B), .B(A), .Z(p) );
  AND2_X1 U1 ( .A1(B), .A2(A), .ZN(g) );
endmodule


module PG_PRIM_11 ( A, B, g, p );
  input A, B;
  output g, p;


  XOR2_X1 U2 ( .A(B), .B(A), .Z(p) );
  AND2_X1 U1 ( .A1(B), .A2(A), .ZN(g) );
endmodule


module PG_PRIM_10 ( A, B, g, p );
  input A, B;
  output g, p;


  XOR2_X1 U2 ( .A(B), .B(A), .Z(p) );
  AND2_X1 U1 ( .A1(B), .A2(A), .ZN(g) );
endmodule


module PG_PRIM_9 ( A, B, g, p );
  input A, B;
  output g, p;


  XOR2_X1 U2 ( .A(B), .B(A), .Z(p) );
  AND2_X1 U1 ( .A1(B), .A2(A), .ZN(g) );
endmodule


module PG_PRIM_8 ( A, B, g, p );
  input A, B;
  output g, p;


  XOR2_X1 U2 ( .A(B), .B(A), .Z(p) );
  AND2_X1 U1 ( .A1(B), .A2(A), .ZN(g) );
endmodule


module PG_PRIM_7 ( A, B, g, p );
  input A, B;
  output g, p;


  XOR2_X1 U2 ( .A(B), .B(A), .Z(p) );
  AND2_X1 U1 ( .A1(B), .A2(A), .ZN(g) );
endmodule


module PG_PRIM_6 ( A, B, g, p );
  input A, B;
  output g, p;


  XOR2_X1 U2 ( .A(B), .B(A), .Z(p) );
  AND2_X1 U1 ( .A1(B), .A2(A), .ZN(g) );
endmodule


module PG_PRIM_5 ( A, B, g, p );
  input A, B;
  output g, p;


  XOR2_X1 U2 ( .A(B), .B(A), .Z(p) );
  AND2_X1 U1 ( .A1(B), .A2(A), .ZN(g) );
endmodule


module PG_PRIM_4 ( A, B, g, p );
  input A, B;
  output g, p;


  XOR2_X1 U2 ( .A(B), .B(A), .Z(p) );
  AND2_X1 U1 ( .A1(B), .A2(A), .ZN(g) );
endmodule


module PG_PRIM_3 ( A, B, g, p );
  input A, B;
  output g, p;


  XOR2_X1 U2 ( .A(B), .B(A), .Z(p) );
  AND2_X1 U1 ( .A1(B), .A2(A), .ZN(g) );
endmodule


module PG_PRIM_2 ( A, B, g, p );
  input A, B;
  output g, p;


  XOR2_X1 U2 ( .A(B), .B(A), .Z(p) );
  AND2_X1 U1 ( .A1(B), .A2(A), .ZN(g) );
endmodule


module PG_PRIM_1 ( A, B, g, p );
  input A, B;
  output g, p;


  XOR2_X1 U2 ( .A(B), .B(A), .Z(p) );
  AND2_X1 U1 ( .A1(B), .A2(A), .ZN(g) );
endmodule


module GG_36 ( G_current, P_current, G_prev, G );
  input G_current, P_current, G_prev;
  output G;
  wire   n3;

  INV_X1 U1 ( .A(n3), .ZN(G) );
  AOI21_X1 U2 ( .B1(P_current), .B2(G_prev), .A(G_current), .ZN(n3) );
endmodule


module GG_35 ( G_current, P_current, G_prev, G );
  input G_current, P_current, G_prev;
  output G;
  wire   n3;

  INV_X1 U1 ( .A(n3), .ZN(G) );
  AOI21_X1 U2 ( .B1(P_current), .B2(G_prev), .A(G_current), .ZN(n3) );
endmodule


module gp_0 ( P_current, P_prev, P );
  input P_current, P_prev;
  output P;


  AND2_X1 U1 ( .A1(P_prev), .A2(P_current), .ZN(P) );
endmodule


module GG_34 ( G_current, P_current, G_prev, G );
  input G_current, P_current, G_prev;
  output G;
  wire   n3;

  INV_X1 U1 ( .A(n3), .ZN(G) );
  AOI21_X1 U2 ( .B1(P_current), .B2(G_prev), .A(G_current), .ZN(n3) );
endmodule


module gp_26 ( P_current, P_prev, P );
  input P_current, P_prev;
  output P;


  AND2_X1 U1 ( .A1(P_prev), .A2(P_current), .ZN(P) );
endmodule


module GG_33 ( G_current, P_current, G_prev, G );
  input G_current, P_current, G_prev;
  output G;
  wire   n3;

  INV_X1 U1 ( .A(n3), .ZN(G) );
  AOI21_X1 U2 ( .B1(P_current), .B2(G_prev), .A(G_current), .ZN(n3) );
endmodule


module gp_25 ( P_current, P_prev, P );
  input P_current, P_prev;
  output P;


  AND2_X1 U1 ( .A1(P_prev), .A2(P_current), .ZN(P) );
endmodule


module GG_32 ( G_current, P_current, G_prev, G );
  input G_current, P_current, G_prev;
  output G;
  wire   n3;

  INV_X1 U1 ( .A(n3), .ZN(G) );
  AOI21_X1 U2 ( .B1(P_current), .B2(G_prev), .A(G_current), .ZN(n3) );
endmodule


module gp_24 ( P_current, P_prev, P );
  input P_current, P_prev;
  output P;


  AND2_X1 U1 ( .A1(P_prev), .A2(P_current), .ZN(P) );
endmodule


module GG_31 ( G_current, P_current, G_prev, G );
  input G_current, P_current, G_prev;
  output G;
  wire   n3;

  INV_X1 U1 ( .A(n3), .ZN(G) );
  AOI21_X1 U2 ( .B1(P_current), .B2(G_prev), .A(G_current), .ZN(n3) );
endmodule


module gp_23 ( P_current, P_prev, P );
  input P_current, P_prev;
  output P;


  AND2_X1 U1 ( .A1(P_prev), .A2(P_current), .ZN(P) );
endmodule


module GG_30 ( G_current, P_current, G_prev, G );
  input G_current, P_current, G_prev;
  output G;
  wire   n3;

  INV_X1 U1 ( .A(n3), .ZN(G) );
  AOI21_X1 U2 ( .B1(P_current), .B2(G_prev), .A(G_current), .ZN(n3) );
endmodule


module gp_22 ( P_current, P_prev, P );
  input P_current, P_prev;
  output P;


  AND2_X1 U1 ( .A1(P_prev), .A2(P_current), .ZN(P) );
endmodule


module GG_29 ( G_current, P_current, G_prev, G );
  input G_current, P_current, G_prev;
  output G;
  wire   n3;

  INV_X1 U1 ( .A(n3), .ZN(G) );
  AOI21_X1 U2 ( .B1(P_current), .B2(G_prev), .A(G_current), .ZN(n3) );
endmodule


module gp_21 ( P_current, P_prev, P );
  input P_current, P_prev;
  output P;


  AND2_X1 U1 ( .A1(P_prev), .A2(P_current), .ZN(P) );
endmodule


module GG_28 ( G_current, P_current, G_prev, G );
  input G_current, P_current, G_prev;
  output G;
  wire   n3;

  INV_X1 U1 ( .A(n3), .ZN(G) );
  AOI21_X1 U2 ( .B1(P_current), .B2(G_prev), .A(G_current), .ZN(n3) );
endmodule


module gp_20 ( P_current, P_prev, P );
  input P_current, P_prev;
  output P;


  AND2_X1 U1 ( .A1(P_prev), .A2(P_current), .ZN(P) );
endmodule


module GG_27 ( G_current, P_current, G_prev, G );
  input G_current, P_current, G_prev;
  output G;
  wire   n3;

  INV_X1 U1 ( .A(n3), .ZN(G) );
  AOI21_X1 U2 ( .B1(P_current), .B2(G_prev), .A(G_current), .ZN(n3) );
endmodule


module gp_19 ( P_current, P_prev, P );
  input P_current, P_prev;
  output P;


  AND2_X1 U1 ( .A1(P_prev), .A2(P_current), .ZN(P) );
endmodule


module GG_26 ( G_current, P_current, G_prev, G );
  input G_current, P_current, G_prev;
  output G;
  wire   n3;

  INV_X1 U1 ( .A(n3), .ZN(G) );
  AOI21_X1 U2 ( .B1(P_current), .B2(G_prev), .A(G_current), .ZN(n3) );
endmodule


module gp_18 ( P_current, P_prev, P );
  input P_current, P_prev;
  output P;


  AND2_X1 U1 ( .A1(P_prev), .A2(P_current), .ZN(P) );
endmodule


module GG_25 ( G_current, P_current, G_prev, G );
  input G_current, P_current, G_prev;
  output G;
  wire   n3;

  INV_X1 U1 ( .A(n3), .ZN(G) );
  AOI21_X1 U2 ( .B1(P_current), .B2(G_prev), .A(G_current), .ZN(n3) );
endmodule


module gp_17 ( P_current, P_prev, P );
  input P_current, P_prev;
  output P;


  AND2_X1 U1 ( .A1(P_prev), .A2(P_current), .ZN(P) );
endmodule


module GG_24 ( G_current, P_current, G_prev, G );
  input G_current, P_current, G_prev;
  output G;
  wire   n3;

  INV_X1 U1 ( .A(n3), .ZN(G) );
  AOI21_X1 U2 ( .B1(P_current), .B2(G_prev), .A(G_current), .ZN(n3) );
endmodule


module gp_16 ( P_current, P_prev, P );
  input P_current, P_prev;
  output P;


  AND2_X1 U1 ( .A1(P_prev), .A2(P_current), .ZN(P) );
endmodule


module GG_23 ( G_current, P_current, G_prev, G );
  input G_current, P_current, G_prev;
  output G;
  wire   n3;

  INV_X1 U1 ( .A(n3), .ZN(G) );
  AOI21_X1 U2 ( .B1(P_current), .B2(G_prev), .A(G_current), .ZN(n3) );
endmodule


module gp_15 ( P_current, P_prev, P );
  input P_current, P_prev;
  output P;


  AND2_X1 U1 ( .A1(P_prev), .A2(P_current), .ZN(P) );
endmodule


module GG_22 ( G_current, P_current, G_prev, G );
  input G_current, P_current, G_prev;
  output G;
  wire   n3;

  INV_X1 U1 ( .A(n3), .ZN(G) );
  AOI21_X1 U2 ( .B1(P_current), .B2(G_prev), .A(G_current), .ZN(n3) );
endmodule


module gp_14 ( P_current, P_prev, P );
  input P_current, P_prev;
  output P;


  AND2_X1 U1 ( .A1(P_prev), .A2(P_current), .ZN(P) );
endmodule


module GG_21 ( G_current, P_current, G_prev, G );
  input G_current, P_current, G_prev;
  output G;
  wire   n3;

  INV_X1 U1 ( .A(n3), .ZN(G) );
  AOI21_X1 U2 ( .B1(P_current), .B2(G_prev), .A(G_current), .ZN(n3) );
endmodule


module gp_13 ( P_current, P_prev, P );
  input P_current, P_prev;
  output P;


  AND2_X1 U1 ( .A1(P_prev), .A2(P_current), .ZN(P) );
endmodule


module GG_20 ( G_current, P_current, G_prev, G );
  input G_current, P_current, G_prev;
  output G;
  wire   n3;

  INV_X1 U1 ( .A(n3), .ZN(G) );
  AOI21_X1 U2 ( .B1(P_current), .B2(G_prev), .A(G_current), .ZN(n3) );
endmodule


module GG_19 ( G_current, P_current, G_prev, G );
  input G_current, P_current, G_prev;
  output G;
  wire   n3;

  INV_X1 U1 ( .A(n3), .ZN(G) );
  AOI21_X1 U2 ( .B1(P_current), .B2(G_prev), .A(G_current), .ZN(n3) );
endmodule


module gp_12 ( P_current, P_prev, P );
  input P_current, P_prev;
  output P;


  AND2_X1 U1 ( .A1(P_prev), .A2(P_current), .ZN(P) );
endmodule


module GG_18 ( G_current, P_current, G_prev, G );
  input G_current, P_current, G_prev;
  output G;
  wire   n3;

  INV_X1 U1 ( .A(n3), .ZN(G) );
  AOI21_X1 U2 ( .B1(P_current), .B2(G_prev), .A(G_current), .ZN(n3) );
endmodule


module gp_11 ( P_current, P_prev, P );
  input P_current, P_prev;
  output P;


  AND2_X1 U1 ( .A1(P_prev), .A2(P_current), .ZN(P) );
endmodule


module GG_17 ( G_current, P_current, G_prev, G );
  input G_current, P_current, G_prev;
  output G;
  wire   n3;

  INV_X1 U1 ( .A(n3), .ZN(G) );
  AOI21_X1 U2 ( .B1(P_current), .B2(G_prev), .A(G_current), .ZN(n3) );
endmodule


module gp_10 ( P_current, P_prev, P );
  input P_current, P_prev;
  output P;


  AND2_X1 U1 ( .A1(P_prev), .A2(P_current), .ZN(P) );
endmodule


module GG_16 ( G_current, P_current, G_prev, G );
  input G_current, P_current, G_prev;
  output G;
  wire   n3;

  INV_X1 U1 ( .A(n3), .ZN(G) );
  AOI21_X1 U2 ( .B1(P_current), .B2(G_prev), .A(G_current), .ZN(n3) );
endmodule


module gp_9 ( P_current, P_prev, P );
  input P_current, P_prev;
  output P;


  AND2_X1 U1 ( .A1(P_prev), .A2(P_current), .ZN(P) );
endmodule


module GG_15 ( G_current, P_current, G_prev, G );
  input G_current, P_current, G_prev;
  output G;
  wire   n3;

  INV_X1 U1 ( .A(n3), .ZN(G) );
  AOI21_X1 U2 ( .B1(P_current), .B2(G_prev), .A(G_current), .ZN(n3) );
endmodule


module gp_8 ( P_current, P_prev, P );
  input P_current, P_prev;
  output P;


  AND2_X1 U1 ( .A1(P_prev), .A2(P_current), .ZN(P) );
endmodule


module GG_14 ( G_current, P_current, G_prev, G );
  input G_current, P_current, G_prev;
  output G;
  wire   n3;

  INV_X1 U1 ( .A(n3), .ZN(G) );
  AOI21_X1 U2 ( .B1(P_current), .B2(G_prev), .A(G_current), .ZN(n3) );
endmodule


module gp_7 ( P_current, P_prev, P );
  input P_current, P_prev;
  output P;


  AND2_X1 U1 ( .A1(P_prev), .A2(P_current), .ZN(P) );
endmodule


module GG_13 ( G_current, P_current, G_prev, G );
  input G_current, P_current, G_prev;
  output G;
  wire   n3;

  AOI21_X1 U1 ( .B1(P_current), .B2(G_prev), .A(G_current), .ZN(n3) );
  INV_X1 U2 ( .A(n3), .ZN(G) );
endmodule


module gp_6 ( P_current, P_prev, P );
  input P_current, P_prev;
  output P;


  AND2_X1 U1 ( .A1(P_prev), .A2(P_current), .ZN(P) );
endmodule


module GG_12 ( G_current, P_current, G_prev, G );
  input G_current, P_current, G_prev;
  output G;
  wire   n3;

  INV_X1 U1 ( .A(n3), .ZN(G) );
  AOI21_X1 U2 ( .B1(P_current), .B2(G_prev), .A(G_current), .ZN(n3) );
endmodule


module GG_11 ( G_current, P_current, G_prev, G );
  input G_current, P_current, G_prev;
  output G;
  wire   n3;

  INV_X1 U1 ( .A(n3), .ZN(G) );
  AOI21_X1 U2 ( .B1(P_current), .B2(G_prev), .A(G_current), .ZN(n3) );
endmodule


module gp_5 ( P_current, P_prev, P );
  input P_current, P_prev;
  output P;


  AND2_X1 U1 ( .A1(P_prev), .A2(P_current), .ZN(P) );
endmodule


module GG_10 ( G_current, P_current, G_prev, G );
  input G_current, P_current, G_prev;
  output G;
  wire   n3;

  INV_X1 U1 ( .A(n3), .ZN(G) );
  AOI21_X1 U2 ( .B1(P_current), .B2(G_prev), .A(G_current), .ZN(n3) );
endmodule


module gp_4 ( P_current, P_prev, P );
  input P_current, P_prev;
  output P;


  AND2_X1 U1 ( .A1(P_prev), .A2(P_current), .ZN(P) );
endmodule


module GG_9 ( G_current, P_current, G_prev, G );
  input G_current, P_current, G_prev;
  output G;
  wire   n3;

  INV_X1 U1 ( .A(n3), .ZN(G) );
  AOI21_X1 U2 ( .B1(P_current), .B2(G_prev), .A(G_current), .ZN(n3) );
endmodule


module gp_3 ( P_current, P_prev, P );
  input P_current, P_prev;
  output P;


  AND2_X1 U1 ( .A1(P_prev), .A2(P_current), .ZN(P) );
endmodule


module GG_8 ( G_current, P_current, G_prev, G );
  input G_current, P_current, G_prev;
  output G;
  wire   n3;

  INV_X1 U1 ( .A(n3), .ZN(G) );
  AOI21_X1 U2 ( .B1(P_current), .B2(G_prev), .A(G_current), .ZN(n3) );
endmodule


module GG_7 ( G_current, P_current, G_prev, G );
  input G_current, P_current, G_prev;
  output G;
  wire   n3;

  INV_X1 U1 ( .A(n3), .ZN(G) );
  AOI21_X1 U2 ( .B1(P_current), .B2(G_prev), .A(G_current), .ZN(n3) );
endmodule


module GG_6 ( G_current, P_current, G_prev, G );
  input G_current, P_current, G_prev;
  output G;
  wire   n3;

  INV_X1 U1 ( .A(n3), .ZN(G) );
  AOI21_X1 U2 ( .B1(P_current), .B2(G_prev), .A(G_current), .ZN(n3) );
endmodule


module gp_2 ( P_current, P_prev, P );
  input P_current, P_prev;
  output P;


  AND2_X1 U1 ( .A1(P_prev), .A2(P_current), .ZN(P) );
endmodule


module GG_5 ( G_current, P_current, G_prev, G );
  input G_current, P_current, G_prev;
  output G;
  wire   n3;

  INV_X1 U1 ( .A(n3), .ZN(G) );
  AOI21_X1 U2 ( .B1(P_current), .B2(G_prev), .A(G_current), .ZN(n3) );
endmodule


module gp_1 ( P_current, P_prev, P );
  input P_current, P_prev;
  output P;


  AND2_X1 U1 ( .A1(P_prev), .A2(P_current), .ZN(P) );
endmodule


module GG_4 ( G_current, P_current, G_prev, G );
  input G_current, P_current, G_prev;
  output G;
  wire   n3;

  INV_X1 U1 ( .A(n3), .ZN(G) );
  AOI21_X1 U2 ( .B1(P_current), .B2(G_prev), .A(G_current), .ZN(n3) );
endmodule


module GG_3 ( G_current, P_current, G_prev, G );
  input G_current, P_current, G_prev;
  output G;
  wire   n3;

  INV_X1 U1 ( .A(n3), .ZN(G) );
  AOI21_X1 U2 ( .B1(P_current), .B2(G_prev), .A(G_current), .ZN(n3) );
endmodule


module GG_2 ( G_current, P_current, G_prev, G );
  input G_current, P_current, G_prev;
  output G;
  wire   n3;

  INV_X1 U1 ( .A(n3), .ZN(G) );
  AOI21_X1 U2 ( .B1(P_current), .B2(G_prev), .A(G_current), .ZN(n3) );
endmodule


module GG_1 ( G_current, P_current, G_prev, G );
  input G_current, P_current, G_prev;
  output G;
  wire   n3;

  INV_X1 U1 ( .A(n3), .ZN(G) );
  AOI21_X1 U2 ( .B1(P_current), .B2(G_prev), .A(G_current), .ZN(n3) );
endmodule


module CARRY_GENERATOR_NBIT32_NBIT_PER_BLOCK4 ( A, B, Cin, Co );
  input [31:0] A;
  input [31:0] B;
  output [7:0] Co;
  input Cin;
  wire   p_0, g_0, \CG_xbars[4][31][1] , \CG_xbars[4][31][0] ,
         \CG_xbars[4][27][1] , \CG_xbars[4][27][0] , \CG_xbars[3][31][1] ,
         \CG_xbars[3][31][0] , \CG_xbars[3][23][1] , \CG_xbars[3][23][0] ,
         \CG_xbars[3][15][1] , \CG_xbars[3][15][0] , \CG_xbars[2][31][1] ,
         \CG_xbars[2][31][0] , \CG_xbars[2][27][1] , \CG_xbars[2][27][0] ,
         \CG_xbars[2][23][1] , \CG_xbars[2][23][0] , \CG_xbars[2][19][1] ,
         \CG_xbars[2][19][0] , \CG_xbars[2][15][1] , \CG_xbars[2][15][0] ,
         \CG_xbars[2][11][1] , \CG_xbars[2][11][0] , \CG_xbars[2][7][1] ,
         \CG_xbars[2][7][0] , \CG_xbars[1][31][1] , \CG_xbars[1][31][0] ,
         \CG_xbars[1][29][1] , \CG_xbars[1][29][0] , \CG_xbars[1][27][1] ,
         \CG_xbars[1][27][0] , \CG_xbars[1][25][1] , \CG_xbars[1][25][0] ,
         \CG_xbars[1][23][1] , \CG_xbars[1][23][0] , \CG_xbars[1][21][1] ,
         \CG_xbars[1][21][0] , \CG_xbars[1][19][1] , \CG_xbars[1][19][0] ,
         \CG_xbars[1][17][1] , \CG_xbars[1][17][0] , \CG_xbars[1][15][1] ,
         \CG_xbars[1][15][0] , \CG_xbars[1][13][1] , \CG_xbars[1][13][0] ,
         \CG_xbars[1][11][1] , \CG_xbars[1][11][0] , \CG_xbars[1][9][1] ,
         \CG_xbars[1][9][0] , \CG_xbars[1][7][1] , \CG_xbars[1][7][0] ,
         \CG_xbars[1][5][1] , \CG_xbars[1][5][0] , \CG_xbars[1][3][1] ,
         \CG_xbars[1][3][0] , \CG_xbars[1][1][0] , \CG_xbars[0][31][1] ,
         \CG_xbars[0][31][0] , \CG_xbars[0][30][1] , \CG_xbars[0][30][0] ,
         \CG_xbars[0][29][1] , \CG_xbars[0][29][0] , \CG_xbars[0][28][1] ,
         \CG_xbars[0][28][0] , \CG_xbars[0][27][1] , \CG_xbars[0][27][0] ,
         \CG_xbars[0][26][1] , \CG_xbars[0][26][0] , \CG_xbars[0][25][1] ,
         \CG_xbars[0][25][0] , \CG_xbars[0][24][1] , \CG_xbars[0][24][0] ,
         \CG_xbars[0][23][1] , \CG_xbars[0][23][0] , \CG_xbars[0][22][1] ,
         \CG_xbars[0][22][0] , \CG_xbars[0][21][1] , \CG_xbars[0][21][0] ,
         \CG_xbars[0][20][1] , \CG_xbars[0][20][0] , \CG_xbars[0][19][1] ,
         \CG_xbars[0][19][0] , \CG_xbars[0][18][1] , \CG_xbars[0][18][0] ,
         \CG_xbars[0][17][1] , \CG_xbars[0][17][0] , \CG_xbars[0][16][1] ,
         \CG_xbars[0][16][0] , \CG_xbars[0][15][1] , \CG_xbars[0][15][0] ,
         \CG_xbars[0][14][1] , \CG_xbars[0][14][0] , \CG_xbars[0][13][1] ,
         \CG_xbars[0][13][0] , \CG_xbars[0][12][1] , \CG_xbars[0][12][0] ,
         \CG_xbars[0][11][1] , \CG_xbars[0][11][0] , \CG_xbars[0][10][1] ,
         \CG_xbars[0][10][0] , \CG_xbars[0][9][1] , \CG_xbars[0][9][0] ,
         \CG_xbars[0][8][1] , \CG_xbars[0][8][0] , \CG_xbars[0][7][1] ,
         \CG_xbars[0][7][0] , \CG_xbars[0][6][1] , \CG_xbars[0][6][0] ,
         \CG_xbars[0][5][1] , \CG_xbars[0][5][0] , \CG_xbars[0][4][1] ,
         \CG_xbars[0][4][0] , \CG_xbars[0][3][1] , \CG_xbars[0][3][0] ,
         \CG_xbars[0][2][1] , \CG_xbars[0][2][0] , \CG_xbars[0][1][1] ,
         \CG_xbars[0][1][0] , \CG_xbars[0][0][0] ;

  PG_PRIM_0 U_PG_PRIM_0 ( .A(A[0]), .B(B[0]), .g(g_0), .p(p_0) );
  GG_0 U_RXMOST_PG_PRIM_IS_GG_UNIT_0 ( .G_current(g_0), .P_current(p_0), 
        .G_prev(Cin), .G(\CG_xbars[0][0][0] ) );
  PG_PRIM_31 U_PG_PRIM_1 ( .A(A[1]), .B(B[1]), .g(\CG_xbars[0][1][0] ), .p(
        \CG_xbars[0][1][1] ) );
  PG_PRIM_30 U_PG_PRIM_2 ( .A(A[2]), .B(B[2]), .g(\CG_xbars[0][2][0] ), .p(
        \CG_xbars[0][2][1] ) );
  PG_PRIM_29 U_PG_PRIM_3 ( .A(A[3]), .B(B[3]), .g(\CG_xbars[0][3][0] ), .p(
        \CG_xbars[0][3][1] ) );
  PG_PRIM_28 U_PG_PRIM_4 ( .A(A[4]), .B(B[4]), .g(\CG_xbars[0][4][0] ), .p(
        \CG_xbars[0][4][1] ) );
  PG_PRIM_27 U_PG_PRIM_5 ( .A(A[5]), .B(B[5]), .g(\CG_xbars[0][5][0] ), .p(
        \CG_xbars[0][5][1] ) );
  PG_PRIM_26 U_PG_PRIM_6 ( .A(A[6]), .B(B[6]), .g(\CG_xbars[0][6][0] ), .p(
        \CG_xbars[0][6][1] ) );
  PG_PRIM_25 U_PG_PRIM_7 ( .A(A[7]), .B(B[7]), .g(\CG_xbars[0][7][0] ), .p(
        \CG_xbars[0][7][1] ) );
  PG_PRIM_24 U_PG_PRIM_8 ( .A(A[8]), .B(B[8]), .g(\CG_xbars[0][8][0] ), .p(
        \CG_xbars[0][8][1] ) );
  PG_PRIM_23 U_PG_PRIM_9 ( .A(A[9]), .B(B[9]), .g(\CG_xbars[0][9][0] ), .p(
        \CG_xbars[0][9][1] ) );
  PG_PRIM_22 U_PG_PRIM_10 ( .A(A[10]), .B(B[10]), .g(\CG_xbars[0][10][0] ), 
        .p(\CG_xbars[0][10][1] ) );
  PG_PRIM_21 U_PG_PRIM_11 ( .A(A[11]), .B(B[11]), .g(\CG_xbars[0][11][0] ), 
        .p(\CG_xbars[0][11][1] ) );
  PG_PRIM_20 U_PG_PRIM_12 ( .A(A[12]), .B(B[12]), .g(\CG_xbars[0][12][0] ), 
        .p(\CG_xbars[0][12][1] ) );
  PG_PRIM_19 U_PG_PRIM_13 ( .A(A[13]), .B(B[13]), .g(\CG_xbars[0][13][0] ), 
        .p(\CG_xbars[0][13][1] ) );
  PG_PRIM_18 U_PG_PRIM_14 ( .A(A[14]), .B(B[14]), .g(\CG_xbars[0][14][0] ), 
        .p(\CG_xbars[0][14][1] ) );
  PG_PRIM_17 U_PG_PRIM_15 ( .A(A[15]), .B(B[15]), .g(\CG_xbars[0][15][0] ), 
        .p(\CG_xbars[0][15][1] ) );
  PG_PRIM_16 U_PG_PRIM_16 ( .A(A[16]), .B(B[16]), .g(\CG_xbars[0][16][0] ), 
        .p(\CG_xbars[0][16][1] ) );
  PG_PRIM_15 U_PG_PRIM_17 ( .A(A[17]), .B(B[17]), .g(\CG_xbars[0][17][0] ), 
        .p(\CG_xbars[0][17][1] ) );
  PG_PRIM_14 U_PG_PRIM_18 ( .A(A[18]), .B(B[18]), .g(\CG_xbars[0][18][0] ), 
        .p(\CG_xbars[0][18][1] ) );
  PG_PRIM_13 U_PG_PRIM_19 ( .A(A[19]), .B(B[19]), .g(\CG_xbars[0][19][0] ), 
        .p(\CG_xbars[0][19][1] ) );
  PG_PRIM_12 U_PG_PRIM_20 ( .A(A[20]), .B(B[20]), .g(\CG_xbars[0][20][0] ), 
        .p(\CG_xbars[0][20][1] ) );
  PG_PRIM_11 U_PG_PRIM_21 ( .A(A[21]), .B(B[21]), .g(\CG_xbars[0][21][0] ), 
        .p(\CG_xbars[0][21][1] ) );
  PG_PRIM_10 U_PG_PRIM_22 ( .A(A[22]), .B(B[22]), .g(\CG_xbars[0][22][0] ), 
        .p(\CG_xbars[0][22][1] ) );
  PG_PRIM_9 U_PG_PRIM_23 ( .A(A[23]), .B(B[23]), .g(\CG_xbars[0][23][0] ), .p(
        \CG_xbars[0][23][1] ) );
  PG_PRIM_8 U_PG_PRIM_24 ( .A(A[24]), .B(B[24]), .g(\CG_xbars[0][24][0] ), .p(
        \CG_xbars[0][24][1] ) );
  PG_PRIM_7 U_PG_PRIM_25 ( .A(A[25]), .B(B[25]), .g(\CG_xbars[0][25][0] ), .p(
        \CG_xbars[0][25][1] ) );
  PG_PRIM_6 U_PG_PRIM_26 ( .A(A[26]), .B(B[26]), .g(\CG_xbars[0][26][0] ), .p(
        \CG_xbars[0][26][1] ) );
  PG_PRIM_5 U_PG_PRIM_27 ( .A(A[27]), .B(B[27]), .g(\CG_xbars[0][27][0] ), .p(
        \CG_xbars[0][27][1] ) );
  PG_PRIM_4 U_PG_PRIM_28 ( .A(A[28]), .B(B[28]), .g(\CG_xbars[0][28][0] ), .p(
        \CG_xbars[0][28][1] ) );
  PG_PRIM_3 U_PG_PRIM_29 ( .A(A[29]), .B(B[29]), .g(\CG_xbars[0][29][0] ), .p(
        \CG_xbars[0][29][1] ) );
  PG_PRIM_2 U_PG_PRIM_30 ( .A(A[30]), .B(B[30]), .g(\CG_xbars[0][30][0] ), .p(
        \CG_xbars[0][30][1] ) );
  PG_PRIM_1 U_PG_PRIM_31 ( .A(A[31]), .B(B[31]), .g(\CG_xbars[0][31][0] ), .p(
        \CG_xbars[0][31][1] ) );
  GG_36 U_BKBONE_GG_UNIT_1_1 ( .G_current(\CG_xbars[0][1][0] ), .P_current(
        \CG_xbars[0][1][1] ), .G_prev(\CG_xbars[0][0][0] ), .G(
        \CG_xbars[1][1][0] ) );
  GG_35 U_BKBONE_GG_UNIT_1_3 ( .G_current(\CG_xbars[0][3][0] ), .P_current(
        \CG_xbars[0][3][1] ), .G_prev(\CG_xbars[0][2][0] ), .G(
        \CG_xbars[1][3][0] ) );
  gp_0 U_BKBONE_GP_UNIT_1_3 ( .P_current(\CG_xbars[0][3][1] ), .P_prev(
        \CG_xbars[0][2][1] ), .P(\CG_xbars[1][3][1] ) );
  GG_34 U_BKBONE_GG_UNIT_1_5 ( .G_current(\CG_xbars[0][5][0] ), .P_current(
        \CG_xbars[0][5][1] ), .G_prev(\CG_xbars[0][4][0] ), .G(
        \CG_xbars[1][5][0] ) );
  gp_26 U_BKBONE_GP_UNIT_1_5 ( .P_current(\CG_xbars[0][5][1] ), .P_prev(
        \CG_xbars[0][4][1] ), .P(\CG_xbars[1][5][1] ) );
  GG_33 U_BKBONE_GG_UNIT_1_7 ( .G_current(\CG_xbars[0][7][0] ), .P_current(
        \CG_xbars[0][7][1] ), .G_prev(\CG_xbars[0][6][0] ), .G(
        \CG_xbars[1][7][0] ) );
  gp_25 U_BKBONE_GP_UNIT_1_7 ( .P_current(\CG_xbars[0][7][1] ), .P_prev(
        \CG_xbars[0][6][1] ), .P(\CG_xbars[1][7][1] ) );
  GG_32 U_BKBONE_GG_UNIT_1_9 ( .G_current(\CG_xbars[0][9][0] ), .P_current(
        \CG_xbars[0][9][1] ), .G_prev(\CG_xbars[0][8][0] ), .G(
        \CG_xbars[1][9][0] ) );
  gp_24 U_BKBONE_GP_UNIT_1_9 ( .P_current(\CG_xbars[0][9][1] ), .P_prev(
        \CG_xbars[0][8][1] ), .P(\CG_xbars[1][9][1] ) );
  GG_31 U_BKBONE_GG_UNIT_1_11 ( .G_current(\CG_xbars[0][11][0] ), .P_current(
        \CG_xbars[0][11][1] ), .G_prev(\CG_xbars[0][10][0] ), .G(
        \CG_xbars[1][11][0] ) );
  gp_23 U_BKBONE_GP_UNIT_1_11 ( .P_current(\CG_xbars[0][11][1] ), .P_prev(
        \CG_xbars[0][10][1] ), .P(\CG_xbars[1][11][1] ) );
  GG_30 U_BKBONE_GG_UNIT_1_13 ( .G_current(\CG_xbars[0][13][0] ), .P_current(
        \CG_xbars[0][13][1] ), .G_prev(\CG_xbars[0][12][0] ), .G(
        \CG_xbars[1][13][0] ) );
  gp_22 U_BKBONE_GP_UNIT_1_13 ( .P_current(\CG_xbars[0][13][1] ), .P_prev(
        \CG_xbars[0][12][1] ), .P(\CG_xbars[1][13][1] ) );
  GG_29 U_BKBONE_GG_UNIT_1_15 ( .G_current(\CG_xbars[0][15][0] ), .P_current(
        \CG_xbars[0][15][1] ), .G_prev(\CG_xbars[0][14][0] ), .G(
        \CG_xbars[1][15][0] ) );
  gp_21 U_BKBONE_GP_UNIT_1_15 ( .P_current(\CG_xbars[0][15][1] ), .P_prev(
        \CG_xbars[0][14][1] ), .P(\CG_xbars[1][15][1] ) );
  GG_28 U_BKBONE_GG_UNIT_1_17 ( .G_current(\CG_xbars[0][17][0] ), .P_current(
        \CG_xbars[0][17][1] ), .G_prev(\CG_xbars[0][16][0] ), .G(
        \CG_xbars[1][17][0] ) );
  gp_20 U_BKBONE_GP_UNIT_1_17 ( .P_current(\CG_xbars[0][17][1] ), .P_prev(
        \CG_xbars[0][16][1] ), .P(\CG_xbars[1][17][1] ) );
  GG_27 U_BKBONE_GG_UNIT_1_19 ( .G_current(\CG_xbars[0][19][0] ), .P_current(
        \CG_xbars[0][19][1] ), .G_prev(\CG_xbars[0][18][0] ), .G(
        \CG_xbars[1][19][0] ) );
  gp_19 U_BKBONE_GP_UNIT_1_19 ( .P_current(\CG_xbars[0][19][1] ), .P_prev(
        \CG_xbars[0][18][1] ), .P(\CG_xbars[1][19][1] ) );
  GG_26 U_BKBONE_GG_UNIT_1_21 ( .G_current(\CG_xbars[0][21][0] ), .P_current(
        \CG_xbars[0][21][1] ), .G_prev(\CG_xbars[0][20][0] ), .G(
        \CG_xbars[1][21][0] ) );
  gp_18 U_BKBONE_GP_UNIT_1_21 ( .P_current(\CG_xbars[0][21][1] ), .P_prev(
        \CG_xbars[0][20][1] ), .P(\CG_xbars[1][21][1] ) );
  GG_25 U_BKBONE_GG_UNIT_1_23 ( .G_current(\CG_xbars[0][23][0] ), .P_current(
        \CG_xbars[0][23][1] ), .G_prev(\CG_xbars[0][22][0] ), .G(
        \CG_xbars[1][23][0] ) );
  gp_17 U_BKBONE_GP_UNIT_1_23 ( .P_current(\CG_xbars[0][23][1] ), .P_prev(
        \CG_xbars[0][22][1] ), .P(\CG_xbars[1][23][1] ) );
  GG_24 U_BKBONE_GG_UNIT_1_25 ( .G_current(\CG_xbars[0][25][0] ), .P_current(
        \CG_xbars[0][25][1] ), .G_prev(\CG_xbars[0][24][0] ), .G(
        \CG_xbars[1][25][0] ) );
  gp_16 U_BKBONE_GP_UNIT_1_25 ( .P_current(\CG_xbars[0][25][1] ), .P_prev(
        \CG_xbars[0][24][1] ), .P(\CG_xbars[1][25][1] ) );
  GG_23 U_BKBONE_GG_UNIT_1_27 ( .G_current(\CG_xbars[0][27][0] ), .P_current(
        \CG_xbars[0][27][1] ), .G_prev(\CG_xbars[0][26][0] ), .G(
        \CG_xbars[1][27][0] ) );
  gp_15 U_BKBONE_GP_UNIT_1_27 ( .P_current(\CG_xbars[0][27][1] ), .P_prev(
        \CG_xbars[0][26][1] ), .P(\CG_xbars[1][27][1] ) );
  GG_22 U_BKBONE_GG_UNIT_1_29 ( .G_current(\CG_xbars[0][29][0] ), .P_current(
        \CG_xbars[0][29][1] ), .G_prev(\CG_xbars[0][28][0] ), .G(
        \CG_xbars[1][29][0] ) );
  gp_14 U_BKBONE_GP_UNIT_1_29 ( .P_current(\CG_xbars[0][29][1] ), .P_prev(
        \CG_xbars[0][28][1] ), .P(\CG_xbars[1][29][1] ) );
  GG_21 U_BKBONE_GG_UNIT_1_31 ( .G_current(\CG_xbars[0][31][0] ), .P_current(
        \CG_xbars[0][31][1] ), .G_prev(\CG_xbars[0][30][0] ), .G(
        \CG_xbars[1][31][0] ) );
  gp_13 U_BKBONE_GP_UNIT_1_31 ( .P_current(\CG_xbars[0][31][1] ), .P_prev(
        \CG_xbars[0][30][1] ), .P(\CG_xbars[1][31][1] ) );
  GG_20 U_BKBONE_GG_UNIT_2_3 ( .G_current(\CG_xbars[1][3][0] ), .P_current(
        \CG_xbars[1][3][1] ), .G_prev(\CG_xbars[1][1][0] ), .G(Co[0]) );
  GG_19 U_BKBONE_GG_UNIT_2_7 ( .G_current(\CG_xbars[1][7][0] ), .P_current(
        \CG_xbars[1][7][1] ), .G_prev(\CG_xbars[1][5][0] ), .G(
        \CG_xbars[2][7][0] ) );
  gp_12 U_BKBONE_GP_UNIT_2_7 ( .P_current(\CG_xbars[1][7][1] ), .P_prev(
        \CG_xbars[1][5][1] ), .P(\CG_xbars[2][7][1] ) );
  GG_18 U_BKBONE_GG_UNIT_2_11 ( .G_current(\CG_xbars[1][11][0] ), .P_current(
        \CG_xbars[1][11][1] ), .G_prev(\CG_xbars[1][9][0] ), .G(
        \CG_xbars[2][11][0] ) );
  gp_11 U_BKBONE_GP_UNIT_2_11 ( .P_current(\CG_xbars[1][11][1] ), .P_prev(
        \CG_xbars[1][9][1] ), .P(\CG_xbars[2][11][1] ) );
  GG_17 U_BKBONE_GG_UNIT_2_15 ( .G_current(\CG_xbars[1][15][0] ), .P_current(
        \CG_xbars[1][15][1] ), .G_prev(\CG_xbars[1][13][0] ), .G(
        \CG_xbars[2][15][0] ) );
  gp_10 U_BKBONE_GP_UNIT_2_15 ( .P_current(\CG_xbars[1][15][1] ), .P_prev(
        \CG_xbars[1][13][1] ), .P(\CG_xbars[2][15][1] ) );
  GG_16 U_BKBONE_GG_UNIT_2_19 ( .G_current(\CG_xbars[1][19][0] ), .P_current(
        \CG_xbars[1][19][1] ), .G_prev(\CG_xbars[1][17][0] ), .G(
        \CG_xbars[2][19][0] ) );
  gp_9 U_BKBONE_GP_UNIT_2_19 ( .P_current(\CG_xbars[1][19][1] ), .P_prev(
        \CG_xbars[1][17][1] ), .P(\CG_xbars[2][19][1] ) );
  GG_15 U_BKBONE_GG_UNIT_2_23 ( .G_current(\CG_xbars[1][23][0] ), .P_current(
        \CG_xbars[1][23][1] ), .G_prev(\CG_xbars[1][21][0] ), .G(
        \CG_xbars[2][23][0] ) );
  gp_8 U_BKBONE_GP_UNIT_2_23 ( .P_current(\CG_xbars[1][23][1] ), .P_prev(
        \CG_xbars[1][21][1] ), .P(\CG_xbars[2][23][1] ) );
  GG_14 U_BKBONE_GG_UNIT_2_27 ( .G_current(\CG_xbars[1][27][0] ), .P_current(
        \CG_xbars[1][27][1] ), .G_prev(\CG_xbars[1][25][0] ), .G(
        \CG_xbars[2][27][0] ) );
  gp_7 U_BKBONE_GP_UNIT_2_27 ( .P_current(\CG_xbars[1][27][1] ), .P_prev(
        \CG_xbars[1][25][1] ), .P(\CG_xbars[2][27][1] ) );
  GG_13 U_BKBONE_GG_UNIT_2_31 ( .G_current(\CG_xbars[1][31][0] ), .P_current(
        \CG_xbars[1][31][1] ), .G_prev(\CG_xbars[1][29][0] ), .G(
        \CG_xbars[2][31][0] ) );
  gp_6 U_BKBONE_GP_UNIT_2_31 ( .P_current(\CG_xbars[1][31][1] ), .P_prev(
        \CG_xbars[1][29][1] ), .P(\CG_xbars[2][31][1] ) );
  GG_12 U_LF_GG_UNIT_1_7 ( .G_current(\CG_xbars[2][7][0] ), .P_current(
        \CG_xbars[2][7][1] ), .G_prev(Co[0]), .G(Co[1]) );
  GG_11 U_LF_GG_UNIT_1_15 ( .G_current(\CG_xbars[2][15][0] ), .P_current(
        \CG_xbars[2][15][1] ), .G_prev(\CG_xbars[2][11][0] ), .G(
        \CG_xbars[3][15][0] ) );
  gp_5 U_LF_GP_UNIT_1_15 ( .P_current(\CG_xbars[2][15][1] ), .P_prev(
        \CG_xbars[2][11][1] ), .P(\CG_xbars[3][15][1] ) );
  GG_10 U_LF_GG_UNIT_1_23 ( .G_current(\CG_xbars[2][23][0] ), .P_current(
        \CG_xbars[2][23][1] ), .G_prev(\CG_xbars[2][19][0] ), .G(
        \CG_xbars[3][23][0] ) );
  gp_4 U_LF_GP_UNIT_1_23 ( .P_current(\CG_xbars[2][23][1] ), .P_prev(
        \CG_xbars[2][19][1] ), .P(\CG_xbars[3][23][1] ) );
  GG_9 U_LF_GG_UNIT_1_31 ( .G_current(\CG_xbars[2][31][0] ), .P_current(
        \CG_xbars[2][31][1] ), .G_prev(\CG_xbars[2][27][0] ), .G(
        \CG_xbars[3][31][0] ) );
  gp_3 U_LF_GP_UNIT_1_31 ( .P_current(\CG_xbars[2][31][1] ), .P_prev(
        \CG_xbars[2][27][1] ), .P(\CG_xbars[3][31][1] ) );
  GG_8 U_LF_GG_UNIT_2_11 ( .G_current(\CG_xbars[2][11][0] ), .P_current(
        \CG_xbars[2][11][1] ), .G_prev(Co[1]), .G(Co[2]) );
  GG_7 U_LF_GG_UNIT_2_15 ( .G_current(\CG_xbars[3][15][0] ), .P_current(
        \CG_xbars[3][15][1] ), .G_prev(Co[1]), .G(Co[3]) );
  GG_6 U_LF_GG_UNIT_2_27 ( .G_current(\CG_xbars[2][27][0] ), .P_current(
        \CG_xbars[2][27][1] ), .G_prev(\CG_xbars[3][23][0] ), .G(
        \CG_xbars[4][27][0] ) );
  gp_2 U_LF_GP_UNIT_2_27 ( .P_current(\CG_xbars[2][27][1] ), .P_prev(
        \CG_xbars[3][23][1] ), .P(\CG_xbars[4][27][1] ) );
  GG_5 U_LF_GG_UNIT_2_31 ( .G_current(\CG_xbars[3][31][0] ), .P_current(
        \CG_xbars[3][31][1] ), .G_prev(\CG_xbars[3][23][0] ), .G(
        \CG_xbars[4][31][0] ) );
  gp_1 U_LF_GP_UNIT_2_31 ( .P_current(\CG_xbars[3][31][1] ), .P_prev(
        \CG_xbars[3][23][1] ), .P(\CG_xbars[4][31][1] ) );
  GG_4 U_LF_GG_UNIT_3_19 ( .G_current(\CG_xbars[2][19][0] ), .P_current(
        \CG_xbars[2][19][1] ), .G_prev(Co[3]), .G(Co[4]) );
  GG_3 U_LF_GG_UNIT_3_23 ( .G_current(\CG_xbars[3][23][0] ), .P_current(
        \CG_xbars[3][23][1] ), .G_prev(Co[3]), .G(Co[5]) );
  GG_2 U_LF_GG_UNIT_3_27 ( .G_current(\CG_xbars[4][27][0] ), .P_current(
        \CG_xbars[4][27][1] ), .G_prev(Co[3]), .G(Co[6]) );
  GG_1 U_LF_GG_UNIT_3_31 ( .G_current(\CG_xbars[4][31][0] ), .P_current(
        \CG_xbars[4][31][1] ), .G_prev(Co[3]), .G(Co[7]) );
endmodule


module RCA_NBIT4_0 ( A, B, Ci, S, Co );
  input [3:0] A;
  input [3:0] B;
  output [3:0] S;
  input Ci;
  output Co;
  wire   \add_1_root_add_43_2/carry[3] , \add_1_root_add_43_2/carry[2] ,
         \add_1_root_add_43_2/carry[1] ;

  FA_X1 \add_1_root_add_43_2/U1_0  ( .A(A[0]), .B(B[0]), .CI(Ci), .CO(
        \add_1_root_add_43_2/carry[1] ), .S(S[0]) );
  FA_X1 \add_1_root_add_43_2/U1_1  ( .A(A[1]), .B(B[1]), .CI(
        \add_1_root_add_43_2/carry[1] ), .CO(\add_1_root_add_43_2/carry[2] ), 
        .S(S[1]) );
  FA_X1 \add_1_root_add_43_2/U1_2  ( .A(A[2]), .B(B[2]), .CI(
        \add_1_root_add_43_2/carry[2] ), .CO(\add_1_root_add_43_2/carry[3] ), 
        .S(S[2]) );
  FA_X1 \add_1_root_add_43_2/U1_3  ( .A(A[3]), .B(B[3]), .CI(
        \add_1_root_add_43_2/carry[3] ), .CO(Co), .S(S[3]) );
endmodule


module RCA_NBIT4_14 ( A, B, Ci, S, Co );
  input [3:0] A;
  input [3:0] B;
  output [3:0] S;
  input Ci;
  output Co;
  wire   \add_1_root_add_43_2/carry[3] , \add_1_root_add_43_2/carry[2] ,
         \add_1_root_add_43_2/carry[1] ;

  FA_X1 \add_1_root_add_43_2/U1_0  ( .A(A[0]), .B(B[0]), .CI(Ci), .CO(
        \add_1_root_add_43_2/carry[1] ), .S(S[0]) );
  FA_X1 \add_1_root_add_43_2/U1_1  ( .A(A[1]), .B(B[1]), .CI(
        \add_1_root_add_43_2/carry[1] ), .CO(\add_1_root_add_43_2/carry[2] ), 
        .S(S[1]) );
  FA_X1 \add_1_root_add_43_2/U1_2  ( .A(A[2]), .B(B[2]), .CI(
        \add_1_root_add_43_2/carry[2] ), .CO(\add_1_root_add_43_2/carry[3] ), 
        .S(S[2]) );
  FA_X1 \add_1_root_add_43_2/U1_3  ( .A(A[3]), .B(B[3]), .CI(
        \add_1_root_add_43_2/carry[3] ), .CO(Co), .S(S[3]) );
endmodule


module RCA_NBIT4_13 ( A, B, Ci, S, Co );
  input [3:0] A;
  input [3:0] B;
  output [3:0] S;
  input Ci;
  output Co;
  wire   \add_1_root_add_43_2/carry[3] , \add_1_root_add_43_2/carry[2] ,
         \add_1_root_add_43_2/carry[1] ;

  FA_X1 \add_1_root_add_43_2/U1_0  ( .A(A[0]), .B(B[0]), .CI(Ci), .CO(
        \add_1_root_add_43_2/carry[1] ), .S(S[0]) );
  FA_X1 \add_1_root_add_43_2/U1_1  ( .A(A[1]), .B(B[1]), .CI(
        \add_1_root_add_43_2/carry[1] ), .CO(\add_1_root_add_43_2/carry[2] ), 
        .S(S[1]) );
  FA_X1 \add_1_root_add_43_2/U1_2  ( .A(A[2]), .B(B[2]), .CI(
        \add_1_root_add_43_2/carry[2] ), .CO(\add_1_root_add_43_2/carry[3] ), 
        .S(S[2]) );
  FA_X1 \add_1_root_add_43_2/U1_3  ( .A(A[3]), .B(B[3]), .CI(
        \add_1_root_add_43_2/carry[3] ), .CO(Co), .S(S[3]) );
endmodule


module CSB_NBIT4_0 ( A, B, Cin, S, Co );
  input [3:0] A;
  input [3:0] B;
  output [3:0] S;
  input Cin;
  output Co;
  wire   Co0, Co1, n7, n8, n9, n10, n11, n6;
  wire   [3:0] S0;
  wire   [3:0] S1;

  RCA_NBIT4_14 U_RCA0 ( .A(A), .B(B), .Ci(1'b0), .S(S0), .Co(Co0) );
  RCA_NBIT4_13 U_RCA1 ( .A(A), .B(B), .Ci(1'b1), .S(S1), .Co(Co1) );
  INV_X1 U3 ( .A(Cin), .ZN(n6) );
  INV_X1 U4 ( .A(n11), .ZN(Co) );
  INV_X1 U5 ( .A(n10), .ZN(S[0]) );
  AOI22_X1 U6 ( .A1(S0[0]), .A2(n6), .B1(S1[0]), .B2(Cin), .ZN(n10) );
  INV_X1 U7 ( .A(n9), .ZN(S[1]) );
  AOI22_X1 U8 ( .A1(S0[1]), .A2(n6), .B1(S1[1]), .B2(Cin), .ZN(n9) );
  INV_X1 U9 ( .A(n8), .ZN(S[2]) );
  AOI22_X1 U10 ( .A1(S0[2]), .A2(n6), .B1(S1[2]), .B2(Cin), .ZN(n8) );
  INV_X1 U11 ( .A(n7), .ZN(S[3]) );
  AOI22_X1 U12 ( .A1(S0[3]), .A2(n6), .B1(S1[3]), .B2(Cin), .ZN(n7) );
  AOI22_X1 U13 ( .A1(Co0), .A2(n6), .B1(Co1), .B2(Cin), .ZN(n11) );
endmodule


module RCA_NBIT4_12 ( A, B, Ci, S, Co );
  input [3:0] A;
  input [3:0] B;
  output [3:0] S;
  input Ci;
  output Co;
  wire   \add_1_root_add_43_2/carry[3] , \add_1_root_add_43_2/carry[2] ,
         \add_1_root_add_43_2/carry[1] ;

  FA_X1 \add_1_root_add_43_2/U1_0  ( .A(A[0]), .B(B[0]), .CI(Ci), .CO(
        \add_1_root_add_43_2/carry[1] ), .S(S[0]) );
  FA_X1 \add_1_root_add_43_2/U1_1  ( .A(A[1]), .B(B[1]), .CI(
        \add_1_root_add_43_2/carry[1] ), .CO(\add_1_root_add_43_2/carry[2] ), 
        .S(S[1]) );
  FA_X1 \add_1_root_add_43_2/U1_2  ( .A(A[2]), .B(B[2]), .CI(
        \add_1_root_add_43_2/carry[2] ), .CO(\add_1_root_add_43_2/carry[3] ), 
        .S(S[2]) );
  FA_X1 \add_1_root_add_43_2/U1_3  ( .A(A[3]), .B(B[3]), .CI(
        \add_1_root_add_43_2/carry[3] ), .CO(Co), .S(S[3]) );
endmodule


module RCA_NBIT4_11 ( A, B, Ci, S, Co );
  input [3:0] A;
  input [3:0] B;
  output [3:0] S;
  input Ci;
  output Co;
  wire   \add_1_root_add_43_2/carry[3] , \add_1_root_add_43_2/carry[2] ,
         \add_1_root_add_43_2/carry[1] ;

  FA_X1 \add_1_root_add_43_2/U1_0  ( .A(A[0]), .B(B[0]), .CI(Ci), .CO(
        \add_1_root_add_43_2/carry[1] ), .S(S[0]) );
  FA_X1 \add_1_root_add_43_2/U1_1  ( .A(A[1]), .B(B[1]), .CI(
        \add_1_root_add_43_2/carry[1] ), .CO(\add_1_root_add_43_2/carry[2] ), 
        .S(S[1]) );
  FA_X1 \add_1_root_add_43_2/U1_2  ( .A(A[2]), .B(B[2]), .CI(
        \add_1_root_add_43_2/carry[2] ), .CO(\add_1_root_add_43_2/carry[3] ), 
        .S(S[2]) );
  FA_X1 \add_1_root_add_43_2/U1_3  ( .A(A[3]), .B(B[3]), .CI(
        \add_1_root_add_43_2/carry[3] ), .CO(Co), .S(S[3]) );
endmodule


module CSB_NBIT4_6 ( A, B, Cin, S, Co );
  input [3:0] A;
  input [3:0] B;
  output [3:0] S;
  input Cin;
  output Co;
  wire   Co0, Co1, n6, n12, n13, n14, n15, n16;
  wire   [3:0] S0;
  wire   [3:0] S1;

  RCA_NBIT4_12 U_RCA0 ( .A(A), .B(B), .Ci(1'b0), .S(S0), .Co(Co0) );
  RCA_NBIT4_11 U_RCA1 ( .A(A), .B(B), .Ci(1'b1), .S(S1), .Co(Co1) );
  INV_X1 U3 ( .A(Cin), .ZN(n6) );
  INV_X1 U4 ( .A(n12), .ZN(Co) );
  INV_X1 U5 ( .A(n13), .ZN(S[0]) );
  AOI22_X1 U6 ( .A1(S0[0]), .A2(n6), .B1(S1[0]), .B2(Cin), .ZN(n13) );
  INV_X1 U7 ( .A(n14), .ZN(S[1]) );
  AOI22_X1 U8 ( .A1(S0[1]), .A2(n6), .B1(S1[1]), .B2(Cin), .ZN(n14) );
  INV_X1 U9 ( .A(n15), .ZN(S[2]) );
  AOI22_X1 U10 ( .A1(S0[2]), .A2(n6), .B1(S1[2]), .B2(Cin), .ZN(n15) );
  INV_X1 U11 ( .A(n16), .ZN(S[3]) );
  AOI22_X1 U12 ( .A1(S0[3]), .A2(n6), .B1(S1[3]), .B2(Cin), .ZN(n16) );
  AOI22_X1 U13 ( .A1(Co0), .A2(n6), .B1(Co1), .B2(Cin), .ZN(n12) );
endmodule


module RCA_NBIT4_10 ( A, B, Ci, S, Co );
  input [3:0] A;
  input [3:0] B;
  output [3:0] S;
  input Ci;
  output Co;
  wire   \add_1_root_add_43_2/carry[3] , \add_1_root_add_43_2/carry[2] ,
         \add_1_root_add_43_2/carry[1] ;

  FA_X1 \add_1_root_add_43_2/U1_0  ( .A(A[0]), .B(B[0]), .CI(Ci), .CO(
        \add_1_root_add_43_2/carry[1] ), .S(S[0]) );
  FA_X1 \add_1_root_add_43_2/U1_1  ( .A(A[1]), .B(B[1]), .CI(
        \add_1_root_add_43_2/carry[1] ), .CO(\add_1_root_add_43_2/carry[2] ), 
        .S(S[1]) );
  FA_X1 \add_1_root_add_43_2/U1_2  ( .A(A[2]), .B(B[2]), .CI(
        \add_1_root_add_43_2/carry[2] ), .CO(\add_1_root_add_43_2/carry[3] ), 
        .S(S[2]) );
  FA_X1 \add_1_root_add_43_2/U1_3  ( .A(A[3]), .B(B[3]), .CI(
        \add_1_root_add_43_2/carry[3] ), .CO(Co), .S(S[3]) );
endmodule


module RCA_NBIT4_9 ( A, B, Ci, S, Co );
  input [3:0] A;
  input [3:0] B;
  output [3:0] S;
  input Ci;
  output Co;
  wire   \add_1_root_add_43_2/carry[3] , \add_1_root_add_43_2/carry[2] ,
         \add_1_root_add_43_2/carry[1] ;

  FA_X1 \add_1_root_add_43_2/U1_0  ( .A(A[0]), .B(B[0]), .CI(Ci), .CO(
        \add_1_root_add_43_2/carry[1] ), .S(S[0]) );
  FA_X1 \add_1_root_add_43_2/U1_1  ( .A(A[1]), .B(B[1]), .CI(
        \add_1_root_add_43_2/carry[1] ), .CO(\add_1_root_add_43_2/carry[2] ), 
        .S(S[1]) );
  FA_X1 \add_1_root_add_43_2/U1_2  ( .A(A[2]), .B(B[2]), .CI(
        \add_1_root_add_43_2/carry[2] ), .CO(\add_1_root_add_43_2/carry[3] ), 
        .S(S[2]) );
  FA_X1 \add_1_root_add_43_2/U1_3  ( .A(A[3]), .B(B[3]), .CI(
        \add_1_root_add_43_2/carry[3] ), .CO(Co), .S(S[3]) );
endmodule


module CSB_NBIT4_5 ( A, B, Cin, S, Co );
  input [3:0] A;
  input [3:0] B;
  output [3:0] S;
  input Cin;
  output Co;
  wire   Co0, Co1, n6, n12, n13, n14, n15, n16;
  wire   [3:0] S0;
  wire   [3:0] S1;

  RCA_NBIT4_10 U_RCA0 ( .A(A), .B(B), .Ci(1'b0), .S(S0), .Co(Co0) );
  RCA_NBIT4_9 U_RCA1 ( .A(A), .B(B), .Ci(1'b1), .S(S1), .Co(Co1) );
  INV_X1 U3 ( .A(Cin), .ZN(n6) );
  INV_X1 U4 ( .A(n12), .ZN(Co) );
  INV_X1 U5 ( .A(n13), .ZN(S[0]) );
  AOI22_X1 U6 ( .A1(S0[0]), .A2(n6), .B1(S1[0]), .B2(Cin), .ZN(n13) );
  INV_X1 U7 ( .A(n14), .ZN(S[1]) );
  AOI22_X1 U8 ( .A1(S0[1]), .A2(n6), .B1(S1[1]), .B2(Cin), .ZN(n14) );
  INV_X1 U9 ( .A(n15), .ZN(S[2]) );
  AOI22_X1 U10 ( .A1(S0[2]), .A2(n6), .B1(S1[2]), .B2(Cin), .ZN(n15) );
  INV_X1 U11 ( .A(n16), .ZN(S[3]) );
  AOI22_X1 U12 ( .A1(S0[3]), .A2(n6), .B1(S1[3]), .B2(Cin), .ZN(n16) );
  AOI22_X1 U13 ( .A1(Co0), .A2(n6), .B1(Co1), .B2(Cin), .ZN(n12) );
endmodule


module RCA_NBIT4_8 ( A, B, Ci, S, Co );
  input [3:0] A;
  input [3:0] B;
  output [3:0] S;
  input Ci;
  output Co;
  wire   \add_1_root_add_43_2/carry[3] , \add_1_root_add_43_2/carry[2] ,
         \add_1_root_add_43_2/carry[1] ;

  FA_X1 \add_1_root_add_43_2/U1_0  ( .A(A[0]), .B(B[0]), .CI(Ci), .CO(
        \add_1_root_add_43_2/carry[1] ), .S(S[0]) );
  FA_X1 \add_1_root_add_43_2/U1_1  ( .A(A[1]), .B(B[1]), .CI(
        \add_1_root_add_43_2/carry[1] ), .CO(\add_1_root_add_43_2/carry[2] ), 
        .S(S[1]) );
  FA_X1 \add_1_root_add_43_2/U1_2  ( .A(A[2]), .B(B[2]), .CI(
        \add_1_root_add_43_2/carry[2] ), .CO(\add_1_root_add_43_2/carry[3] ), 
        .S(S[2]) );
  FA_X1 \add_1_root_add_43_2/U1_3  ( .A(A[3]), .B(B[3]), .CI(
        \add_1_root_add_43_2/carry[3] ), .CO(Co), .S(S[3]) );
endmodule


module RCA_NBIT4_7 ( A, B, Ci, S, Co );
  input [3:0] A;
  input [3:0] B;
  output [3:0] S;
  input Ci;
  output Co;
  wire   \add_1_root_add_43_2/carry[3] , \add_1_root_add_43_2/carry[2] ,
         \add_1_root_add_43_2/carry[1] ;

  FA_X1 \add_1_root_add_43_2/U1_0  ( .A(A[0]), .B(B[0]), .CI(Ci), .CO(
        \add_1_root_add_43_2/carry[1] ), .S(S[0]) );
  FA_X1 \add_1_root_add_43_2/U1_1  ( .A(A[1]), .B(B[1]), .CI(
        \add_1_root_add_43_2/carry[1] ), .CO(\add_1_root_add_43_2/carry[2] ), 
        .S(S[1]) );
  FA_X1 \add_1_root_add_43_2/U1_2  ( .A(A[2]), .B(B[2]), .CI(
        \add_1_root_add_43_2/carry[2] ), .CO(\add_1_root_add_43_2/carry[3] ), 
        .S(S[2]) );
  FA_X1 \add_1_root_add_43_2/U1_3  ( .A(A[3]), .B(B[3]), .CI(
        \add_1_root_add_43_2/carry[3] ), .CO(Co), .S(S[3]) );
endmodule


module CSB_NBIT4_4 ( A, B, Cin, S, Co );
  input [3:0] A;
  input [3:0] B;
  output [3:0] S;
  input Cin;
  output Co;
  wire   Co0, Co1, n6, n12, n13, n14, n15, n16;
  wire   [3:0] S0;
  wire   [3:0] S1;

  RCA_NBIT4_8 U_RCA0 ( .A(A), .B(B), .Ci(1'b0), .S(S0), .Co(Co0) );
  RCA_NBIT4_7 U_RCA1 ( .A(A), .B(B), .Ci(1'b1), .S(S1), .Co(Co1) );
  INV_X1 U3 ( .A(Cin), .ZN(n6) );
  INV_X1 U4 ( .A(n12), .ZN(Co) );
  INV_X1 U5 ( .A(n13), .ZN(S[0]) );
  AOI22_X1 U6 ( .A1(S0[0]), .A2(n6), .B1(S1[0]), .B2(Cin), .ZN(n13) );
  INV_X1 U7 ( .A(n14), .ZN(S[1]) );
  AOI22_X1 U8 ( .A1(S0[1]), .A2(n6), .B1(S1[1]), .B2(Cin), .ZN(n14) );
  INV_X1 U9 ( .A(n15), .ZN(S[2]) );
  AOI22_X1 U10 ( .A1(S0[2]), .A2(n6), .B1(S1[2]), .B2(Cin), .ZN(n15) );
  INV_X1 U11 ( .A(n16), .ZN(S[3]) );
  AOI22_X1 U12 ( .A1(S0[3]), .A2(n6), .B1(S1[3]), .B2(Cin), .ZN(n16) );
  AOI22_X1 U13 ( .A1(Co0), .A2(n6), .B1(Co1), .B2(Cin), .ZN(n12) );
endmodule


module RCA_NBIT4_6 ( A, B, Ci, S, Co );
  input [3:0] A;
  input [3:0] B;
  output [3:0] S;
  input Ci;
  output Co;
  wire   \add_1_root_add_43_2/carry[3] , \add_1_root_add_43_2/carry[2] ,
         \add_1_root_add_43_2/carry[1] ;

  FA_X1 \add_1_root_add_43_2/U1_0  ( .A(A[0]), .B(B[0]), .CI(Ci), .CO(
        \add_1_root_add_43_2/carry[1] ), .S(S[0]) );
  FA_X1 \add_1_root_add_43_2/U1_1  ( .A(A[1]), .B(B[1]), .CI(
        \add_1_root_add_43_2/carry[1] ), .CO(\add_1_root_add_43_2/carry[2] ), 
        .S(S[1]) );
  FA_X1 \add_1_root_add_43_2/U1_2  ( .A(A[2]), .B(B[2]), .CI(
        \add_1_root_add_43_2/carry[2] ), .CO(\add_1_root_add_43_2/carry[3] ), 
        .S(S[2]) );
  FA_X1 \add_1_root_add_43_2/U1_3  ( .A(A[3]), .B(B[3]), .CI(
        \add_1_root_add_43_2/carry[3] ), .CO(Co), .S(S[3]) );
endmodule


module RCA_NBIT4_5 ( A, B, Ci, S, Co );
  input [3:0] A;
  input [3:0] B;
  output [3:0] S;
  input Ci;
  output Co;
  wire   \add_1_root_add_43_2/carry[3] , \add_1_root_add_43_2/carry[2] ,
         \add_1_root_add_43_2/carry[1] ;

  FA_X1 \add_1_root_add_43_2/U1_0  ( .A(A[0]), .B(B[0]), .CI(Ci), .CO(
        \add_1_root_add_43_2/carry[1] ), .S(S[0]) );
  FA_X1 \add_1_root_add_43_2/U1_1  ( .A(A[1]), .B(B[1]), .CI(
        \add_1_root_add_43_2/carry[1] ), .CO(\add_1_root_add_43_2/carry[2] ), 
        .S(S[1]) );
  FA_X1 \add_1_root_add_43_2/U1_2  ( .A(A[2]), .B(B[2]), .CI(
        \add_1_root_add_43_2/carry[2] ), .CO(\add_1_root_add_43_2/carry[3] ), 
        .S(S[2]) );
  FA_X1 \add_1_root_add_43_2/U1_3  ( .A(A[3]), .B(B[3]), .CI(
        \add_1_root_add_43_2/carry[3] ), .CO(Co), .S(S[3]) );
endmodule


module CSB_NBIT4_3 ( A, B, Cin, S, Co );
  input [3:0] A;
  input [3:0] B;
  output [3:0] S;
  input Cin;
  output Co;
  wire   Co0, Co1, n6, n12, n13, n14, n15, n16;
  wire   [3:0] S0;
  wire   [3:0] S1;

  RCA_NBIT4_6 U_RCA0 ( .A(A), .B(B), .Ci(1'b0), .S(S0), .Co(Co0) );
  RCA_NBIT4_5 U_RCA1 ( .A(A), .B(B), .Ci(1'b1), .S(S1), .Co(Co1) );
  INV_X1 U3 ( .A(Cin), .ZN(n6) );
  INV_X1 U4 ( .A(n12), .ZN(Co) );
  INV_X1 U5 ( .A(n13), .ZN(S[0]) );
  AOI22_X1 U6 ( .A1(S0[0]), .A2(n6), .B1(S1[0]), .B2(Cin), .ZN(n13) );
  INV_X1 U7 ( .A(n14), .ZN(S[1]) );
  AOI22_X1 U8 ( .A1(S0[1]), .A2(n6), .B1(S1[1]), .B2(Cin), .ZN(n14) );
  INV_X1 U9 ( .A(n15), .ZN(S[2]) );
  AOI22_X1 U10 ( .A1(S0[2]), .A2(n6), .B1(S1[2]), .B2(Cin), .ZN(n15) );
  INV_X1 U11 ( .A(n16), .ZN(S[3]) );
  AOI22_X1 U12 ( .A1(S0[3]), .A2(n6), .B1(S1[3]), .B2(Cin), .ZN(n16) );
  AOI22_X1 U13 ( .A1(Co0), .A2(n6), .B1(Co1), .B2(Cin), .ZN(n12) );
endmodule


module RCA_NBIT4_4 ( A, B, Ci, S, Co );
  input [3:0] A;
  input [3:0] B;
  output [3:0] S;
  input Ci;
  output Co;
  wire   \add_1_root_add_43_2/carry[3] , \add_1_root_add_43_2/carry[2] ,
         \add_1_root_add_43_2/carry[1] ;

  FA_X1 \add_1_root_add_43_2/U1_0  ( .A(A[0]), .B(B[0]), .CI(Ci), .CO(
        \add_1_root_add_43_2/carry[1] ), .S(S[0]) );
  FA_X1 \add_1_root_add_43_2/U1_1  ( .A(A[1]), .B(B[1]), .CI(
        \add_1_root_add_43_2/carry[1] ), .CO(\add_1_root_add_43_2/carry[2] ), 
        .S(S[1]) );
  FA_X1 \add_1_root_add_43_2/U1_2  ( .A(A[2]), .B(B[2]), .CI(
        \add_1_root_add_43_2/carry[2] ), .CO(\add_1_root_add_43_2/carry[3] ), 
        .S(S[2]) );
  FA_X1 \add_1_root_add_43_2/U1_3  ( .A(A[3]), .B(B[3]), .CI(
        \add_1_root_add_43_2/carry[3] ), .CO(Co), .S(S[3]) );
endmodule


module RCA_NBIT4_3 ( A, B, Ci, S, Co );
  input [3:0] A;
  input [3:0] B;
  output [3:0] S;
  input Ci;
  output Co;
  wire   \add_1_root_add_43_2/carry[3] , \add_1_root_add_43_2/carry[2] ,
         \add_1_root_add_43_2/carry[1] ;

  FA_X1 \add_1_root_add_43_2/U1_0  ( .A(A[0]), .B(B[0]), .CI(Ci), .CO(
        \add_1_root_add_43_2/carry[1] ), .S(S[0]) );
  FA_X1 \add_1_root_add_43_2/U1_1  ( .A(A[1]), .B(B[1]), .CI(
        \add_1_root_add_43_2/carry[1] ), .CO(\add_1_root_add_43_2/carry[2] ), 
        .S(S[1]) );
  FA_X1 \add_1_root_add_43_2/U1_2  ( .A(A[2]), .B(B[2]), .CI(
        \add_1_root_add_43_2/carry[2] ), .CO(\add_1_root_add_43_2/carry[3] ), 
        .S(S[2]) );
  FA_X1 \add_1_root_add_43_2/U1_3  ( .A(A[3]), .B(B[3]), .CI(
        \add_1_root_add_43_2/carry[3] ), .CO(Co), .S(S[3]) );
endmodule


module CSB_NBIT4_2 ( A, B, Cin, S, Co );
  input [3:0] A;
  input [3:0] B;
  output [3:0] S;
  input Cin;
  output Co;
  wire   Co0, Co1, n6, n12, n13, n14, n15, n16;
  wire   [3:0] S0;
  wire   [3:0] S1;

  RCA_NBIT4_4 U_RCA0 ( .A(A), .B(B), .Ci(1'b0), .S(S0), .Co(Co0) );
  RCA_NBIT4_3 U_RCA1 ( .A(A), .B(B), .Ci(1'b1), .S(S1), .Co(Co1) );
  INV_X1 U3 ( .A(Cin), .ZN(n6) );
  INV_X1 U4 ( .A(n12), .ZN(Co) );
  INV_X1 U5 ( .A(n13), .ZN(S[0]) );
  AOI22_X1 U6 ( .A1(S0[0]), .A2(n6), .B1(S1[0]), .B2(Cin), .ZN(n13) );
  INV_X1 U7 ( .A(n14), .ZN(S[1]) );
  AOI22_X1 U8 ( .A1(S0[1]), .A2(n6), .B1(S1[1]), .B2(Cin), .ZN(n14) );
  INV_X1 U9 ( .A(n15), .ZN(S[2]) );
  AOI22_X1 U10 ( .A1(S0[2]), .A2(n6), .B1(S1[2]), .B2(Cin), .ZN(n15) );
  INV_X1 U11 ( .A(n16), .ZN(S[3]) );
  AOI22_X1 U12 ( .A1(S0[3]), .A2(n6), .B1(S1[3]), .B2(Cin), .ZN(n16) );
  AOI22_X1 U13 ( .A1(Co0), .A2(n6), .B1(Co1), .B2(Cin), .ZN(n12) );
endmodule


module RCA_NBIT4_2 ( A, B, Ci, S, Co );
  input [3:0] A;
  input [3:0] B;
  output [3:0] S;
  input Ci;
  output Co;
  wire   \add_1_root_add_43_2/carry[3] , \add_1_root_add_43_2/carry[2] ,
         \add_1_root_add_43_2/carry[1] ;

  FA_X1 \add_1_root_add_43_2/U1_0  ( .A(A[0]), .B(B[0]), .CI(Ci), .CO(
        \add_1_root_add_43_2/carry[1] ), .S(S[0]) );
  FA_X1 \add_1_root_add_43_2/U1_1  ( .A(A[1]), .B(B[1]), .CI(
        \add_1_root_add_43_2/carry[1] ), .CO(\add_1_root_add_43_2/carry[2] ), 
        .S(S[1]) );
  FA_X1 \add_1_root_add_43_2/U1_2  ( .A(A[2]), .B(B[2]), .CI(
        \add_1_root_add_43_2/carry[2] ), .CO(\add_1_root_add_43_2/carry[3] ), 
        .S(S[2]) );
  FA_X1 \add_1_root_add_43_2/U1_3  ( .A(A[3]), .B(B[3]), .CI(
        \add_1_root_add_43_2/carry[3] ), .CO(Co), .S(S[3]) );
endmodule


module RCA_NBIT4_1 ( A, B, Ci, S, Co );
  input [3:0] A;
  input [3:0] B;
  output [3:0] S;
  input Ci;
  output Co;
  wire   \add_1_root_add_43_2/carry[3] , \add_1_root_add_43_2/carry[2] ,
         \add_1_root_add_43_2/carry[1] ;

  FA_X1 \add_1_root_add_43_2/U1_0  ( .A(A[0]), .B(B[0]), .CI(Ci), .CO(
        \add_1_root_add_43_2/carry[1] ), .S(S[0]) );
  FA_X1 \add_1_root_add_43_2/U1_1  ( .A(A[1]), .B(B[1]), .CI(
        \add_1_root_add_43_2/carry[1] ), .CO(\add_1_root_add_43_2/carry[2] ), 
        .S(S[1]) );
  FA_X1 \add_1_root_add_43_2/U1_2  ( .A(A[2]), .B(B[2]), .CI(
        \add_1_root_add_43_2/carry[2] ), .CO(\add_1_root_add_43_2/carry[3] ), 
        .S(S[2]) );
  FA_X1 \add_1_root_add_43_2/U1_3  ( .A(A[3]), .B(B[3]), .CI(
        \add_1_root_add_43_2/carry[3] ), .CO(Co), .S(S[3]) );
endmodule


module CSB_NBIT4_1 ( A, B, Cin, S, Co );
  input [3:0] A;
  input [3:0] B;
  output [3:0] S;
  input Cin;
  output Co;
  wire   Co0, Co1, n6, n12, n13, n14, n15, n16;
  wire   [3:0] S0;
  wire   [3:0] S1;

  RCA_NBIT4_2 U_RCA0 ( .A(A), .B(B), .Ci(1'b0), .S(S0), .Co(Co0) );
  RCA_NBIT4_1 U_RCA1 ( .A(A), .B(B), .Ci(1'b1), .S(S1), .Co(Co1) );
  INV_X1 U3 ( .A(Cin), .ZN(n6) );
  INV_X1 U4 ( .A(n12), .ZN(Co) );
  INV_X1 U5 ( .A(n13), .ZN(S[0]) );
  AOI22_X1 U6 ( .A1(S0[0]), .A2(n6), .B1(S1[0]), .B2(Cin), .ZN(n13) );
  INV_X1 U7 ( .A(n14), .ZN(S[1]) );
  AOI22_X1 U8 ( .A1(S0[1]), .A2(n6), .B1(S1[1]), .B2(Cin), .ZN(n14) );
  INV_X1 U9 ( .A(n15), .ZN(S[2]) );
  AOI22_X1 U10 ( .A1(S0[2]), .A2(n6), .B1(S1[2]), .B2(Cin), .ZN(n15) );
  INV_X1 U11 ( .A(n16), .ZN(S[3]) );
  AOI22_X1 U12 ( .A1(S0[3]), .A2(n6), .B1(S1[3]), .B2(Cin), .ZN(n16) );
  AOI22_X1 U13 ( .A1(Co0), .A2(n6), .B1(Co1), .B2(Cin), .ZN(n12) );
endmodule


module SUM_GENERATOR_NBIT_PER_BLOCK4_NBLOCKS7 ( A, B, Ci, S );
  input [27:0] A;
  input [27:0] B;
  input [6:0] Ci;
  output [27:0] S;


  CSB_NBIT4_0 U_CSB_1 ( .A(A[3:0]), .B(B[3:0]), .Cin(Ci[0]), .S(S[3:0]) );
  CSB_NBIT4_6 U_CSB_2 ( .A(A[7:4]), .B(B[7:4]), .Cin(Ci[1]), .S(S[7:4]) );
  CSB_NBIT4_5 U_CSB_3 ( .A(A[11:8]), .B(B[11:8]), .Cin(Ci[2]), .S(S[11:8]) );
  CSB_NBIT4_4 U_CSB_4 ( .A(A[15:12]), .B(B[15:12]), .Cin(Ci[3]), .S(S[15:12])
         );
  CSB_NBIT4_3 U_CSB_5 ( .A(A[19:16]), .B(B[19:16]), .Cin(Ci[4]), .S(S[19:16])
         );
  CSB_NBIT4_2 U_CSB_6 ( .A(A[23:20]), .B(B[23:20]), .Cin(Ci[5]), .S(S[23:20])
         );
  CSB_NBIT4_1 U_CSB_7 ( .A(A[27:24]), .B(B[27:24]), .Cin(Ci[6]), .S(S[27:24])
         );
endmodule


module P4_ADDER_NBIT32 ( A, B, Cin, S, Cout );
  input [31:0] A;
  input [31:0] B;
  output [31:0] S;
  input Cin;
  output Cout;

  wire   [6:0] carry_gen_Co;

  CARRY_GENERATOR_NBIT32_NBIT_PER_BLOCK4 U_CARRY_GENERATOR ( .A(A), .B(B), 
        .Cin(Cin), .Co({Cout, carry_gen_Co}) );
  RCA_NBIT4_0 U_FIRST_RCA ( .A(A[3:0]), .B(B[3:0]), .Ci(Cin), .S(S[3:0]) );
  SUM_GENERATOR_NBIT_PER_BLOCK4_NBLOCKS7 U_SUM_GENERATOR ( .A(A[31:4]), .B(
        B[31:4]), .Ci(carry_gen_Co), .S(S[31:4]) );
endmodule

