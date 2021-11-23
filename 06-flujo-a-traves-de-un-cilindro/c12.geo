// Gmsh project created on Mon Nov 22 13:16:12 2021
SetFactory("OpenCASCADE");
//+
Circle(1) = {0, 0, 0, 0.5, 0, 2*Pi};
//+
Point(2) = {-12, 12, 0, 1.0};
//+
Point(3) = {-12, -12, 0, 1.0};
//+
Point(4) = {31, 12, 0, 1.0};
//+
Point(5) = {31, -12, 0, 1.0};
//+
Spline(2) = {2, 3};
//+
Spline(3) = {3, 5};
//+
Spline(4) = {5, 4};
//+
Spline(5) = {4, 2};
//+
Line Loop(1) = {2, 3, 4, 5};
//+
Line Loop(2) = {1};
//+
Plane Surface(1) = {1, 2};

//+
Transfinite Line {1} = 120 Using Progression 1;
//+
Extrude {0, 0, 1} {
  Point{3}; Point{2}; Point{1}; Point{5}; Point{4}; Line{2}; Line{1}; Line{3}; Line{4}; Line{5}; Surface{1}; Layers{1}; Recombine;
}
//+
Surface Loop(2) = {6, 7, 2, 5, 4, 3, 1};
//+
Volume(2) = {2};
//+
Physical Surface("inlet") = {2};
//+
Physical Surface("outlet") = {4};
//+
Physical Surface("symmetry") = {5, 3};
//+
Physical Surface("wall") = {6};
//+
Physical Surface("frontAndBack") = {1, 7};
//+
Physical Volume("fluid") = {1};
