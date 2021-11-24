// Gmsh project created on Tue Nov 23 13:05:53 2021
SetFactory("OpenCASCADE");
//+
Point(1) = {0, 0, 0, 1.0};
//+
Point(2) = {20, 0, 0, 1.0};
//+
Point(3) = {20, 5, 0, 1.0};
//+
Point(4) = {0, 5, 0, 1.0};
//+
Spline(1) = {1, 2};
//+
Spline(2) = {2, 3};
//+
Spline(3) = {3, 4};
//+
Spline(4) = {4, 1};
//+
Point(5) = {3, 1.5, 0, 1.0};
//+
Point(6) = {4, 1.5, 0, 1.0};
//+
Point(7) = {4, 2.5, 0, 1.0};
//+
Point(8) = {3, 2.5, 0, 1.0};
//+
Spline(5) = {5, 6};
//+
Spline(6) = {6, 7};
//+
Spline(7) = {7, 8};
//+
Spline(8) = {8, 5};
//+
Circle(9) = {4, 4, 0, 0.5, 0, 2*Pi};
//+
Point(10) = {10, 2.5, 0, 1.0};
//+
Point(11) = {12.5, 2.5, 0, 1.0};
//+
Point(12) = {11.25, 4.5, 0, 1.0};
//+
Spline(10) = {12, 10};
//+
Spline(11) = {10, 11};
//+
Spline(12) = {11, 12};
//+
Line Loop(1) = {3, 4, 1, 2};
//+
Line Loop(2) = {9};
//+
Line Loop(3) = {7, 8, 5, 6};
//+
Line Loop(4) = {10, 11, 12};
//+
Plane Surface(1) = {1, 2, 3, 4};
//+
Transfinite Line {9, 7, 6, 5, 8, 10, 11, 12} = 120 Using Progression 1;
//+
Extrude {0, 0, 1} {
  Point{1}; Point{4}; Point{5}; Point{8}; Point{6}; Point{7}; Point{9}; Point{10}; Point{12}; Point{11}; Point{2}; Point{3}; Line{4}; Line{8}; Line{5}; Line{6}; Line{7}; Line{9}; Line{10}; Line{11}; Line{12}; Line{1}; Line{3}; Line{2}; Surface{1}; Layers{1}; Recombine;
}
//+
Surface Loop(2) = {2, 5, 4, 3, 14, 6, 1, 7, 10, 9, 8, 11, 13, 12};
//+
Volume(2) = {2};
//+
Physical Surface("inlet") = {3};
//+
Physical Surface("outlet") = {5};
//+
Physical Surface("symmetry") = {2, 4};
//+
Physical Surface("wall") = {6, 8, 11, 7, 13, 12, 9, 10};
//+
Physical Surface("frontAndBack") = {14, 1};
//+
Physical Volume("fluid") = {1};
