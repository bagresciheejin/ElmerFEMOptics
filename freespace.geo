SetFactory("OpenCASCADE");
d = 5.0;
h = 10.0;
delta = 0.1;

Lc1 = 0.3;
Point(1) = {0,0,0, Lc1};
Point(2) = {-d, 0, 0, Lc1};
Point(3) = {d, 0, 0, Lc1};

Circle(4) = {2, 1, 3};
Circle(5) = {3, 1, 2};

Curve Loop(11) = {4,5};
Plane Surface(1) = {11};

out[] = Extrude{0,0,10} {Surface{1}; Layers{100};}
