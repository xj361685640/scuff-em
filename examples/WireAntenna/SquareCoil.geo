//////////////////////////////////////////////////
//////////////////////////////////////////////////
//////////////////////////////////////////////////
T = 10;    // thickness 

WOut = 60;    // outer width
HOut = 180;   // outer height

WIn  = WOut - 2*T;  // inner width
HIn  = HOut - 2*T;  // inner height

G = 5;    // excitation gap thickness 

l = 5;    // meshing fineness

//////////////////////////////////////////////////
//////////////////////////////////////////////////
//////////////////////////////////////////////////
Point(101) = {  G/2,      -HOut/2,   0,   l };
Point(102) = {  WOut/2,   -HOut/2,   0,   l };
Point(103) = {  WOut/2,   +HOut/2,   0,   l };
Point(104) = { -WOut/2,   +HOut/2,   0,   l };
Point(105) = { -WOut/2,   -HOut/2,   0,   l };
Point(106) = { -G/2,      -HOut/2,   0,   l };

Point(201) = {  G/2,     -HIn/2,   0,   l };
Point(202) = {  WIn/2,   -HIn/2,   0,   l };
Point(203) = {  WIn/2,   +HIn/2,   0,   l };
Point(204) = { -WIn/2,   +HIn/2,   0,   l };
Point(205) = { -WIn/2,   -HIn/2,   0,   l };
Point(206) = { -G/2,     -HIn/2,   0,   l };

Line(101) = { 101, 102 };
Line(102) = { 102, 103 };
Line(103) = { 103, 104 };
Line(104) = { 104, 105 };
Line(105) = { 105, 106 };
Line(106) = { 106, 206 };
Line(107) = { 206, 205 };
Line(108) = { 205, 204 };
Line(109) = { 204, 203 };
Line(110) = { 203, 202 };
Line(111) = { 202, 201 };
Line(112) = { 201, 101 };

Line Loop(301) = { 101, 102, 103, 104, 105, 106, 
                   107, 108, 109, 110, 111, 112 };

//////////////////////////////////////////////////
//////////////////////////////////////////////////
//////////////////////////////////////////////////
Plane Surface(401) = {301};
Physical Surface(1)={400};

Line(1000) = { 201, 101 };
Physical Line(100) = {10};
Line(1001) = { 106, 206 };
Physical Line(101) = {11};
