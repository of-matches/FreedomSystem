$materialThickness = 6;
$mountingRadiusHorn = 60;
$hornLength1400Hz = 70;
$hornThroatRadius1400Hz = 5;


module tube(height, outerRadius, innerRadius) {
    difference() {
        cylinder(h=height, r=outerRadius, center=true);
        cylinder(h=height, r=innerRadius, center=true);
    }
}


module DriverMountRST28F() {
    difference() {
        tube(height=$materialThickness, outerRadius=$mountingRadiusHorn+10, innerRadius=40);
        cube([90, 20, $materialThickness], center=true);
    }
}

module Horn() {
    tube(height=$materialThickness, outerRadius=$mountingRadiusHorn+10, innerRadius=53);
    
    translate([$hornThroatRadius1400Hz, -55, 6]) 
    rotate([0, 15, 0])
        cube([$materialThickness, 110, $hornLength1400Hz]);
    
    translate([$hornThroatRadius1400Hz+16, -55, 6])
    rotate([0, 30, 0])
        cube([$materialThickness, 110, $hornLength1400Hz]);
        
    translate([$hornThroatRadius1400Hz+32, -55, 6])
    rotate([0, 45, 0])
        cube([$materialThickness, 110, $hornLength1400Hz]);
    
    translate([$hornThroatRadius1400Hz+48, -55, 6])
    rotate([0, 60, 0])
        cube([$materialThickness, 110, $hornLength1400Hz]);
    
    translate([-($hornThroatRadius1400Hz), -55, 6]) 
    rotate([0, -15, 0])
        cube([$materialThickness, 110, $hornLength1400Hz]);
    
    translate([($hornThroatRadius1400Hz+16), -55, 6])
    rotate([0, -30, 0])
        cube([$materialThickness, 110, $hornLength1400Hz]);
        
    translate([-($hornThroatRadius1400Hz+32), -55, 6])
    rotate([0, -45, 0])
        cube([$materialThickness, 110, $hornLength1400Hz]);
    
    translate([-($hornThroatRadius1400Hz+48), -55, 6])
    rotate([0, -60, 0])
        cube([$materialThickness, 110, $hornLength1400Hz]);
}


DriverMountRST28F();

translate([0, 0, 6]) Horn();
    
