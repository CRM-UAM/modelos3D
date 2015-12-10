
// Increase the resolution of default shapes
$fa = 5; // Minimum angle for fragments [degrees]
$fs = 0.5; // Minimum fragment size [mm]


tolerance = 0.5;
rod_radius = 5.5/2 + tolerance;
nut_radius = 11.2/2 + tolerance;
nut_thickness = 3.82 + 2*tolerance;

difference(){
    translate([0,0,0.1])
        union() {
            translate([0,0,45])
                sphere(r=60/2);
            cylinder(r1=nut_radius*3, r2=nut_radius*2, h=30);
        }

    translate([0,0,10])
        cylinder(r=nut_radius, h=nut_thickness, $fn=6);
    cylinder(r=rod_radius, h=40);
    cylinder(r=nut_radius, h=nut_thickness);

    translate([0,0,120])
        cube([100,100,100],center=true);
}