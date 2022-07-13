// Thickness of the shim
shimThick = 9;
shimLength = 60;
shimWidth = 92;
filletRad = 19;

$fn=100;

difference(){
    minkowski()
    {
        cube([shimLength - filletRad - filletRad,shimWidth - filletRad - filletRad,shimThick/2]);
        cylinder(r=filletRad,h=shimThick/2);
    }
    translate([shimLength - filletRad - 30,shimWidth - filletRad - 6 -40 ,0]){
        cylinder(r=25,h=shimThick); //Main Center Circle
    }
    translate([shimLength - filletRad - 30,shimWidth - filletRad - 6 -55 ,0]){
        cylinder(r=18.5,h=shimThick); //Main Top Circle
    }
    translate([shimLength - filletRad - 30,shimWidth - filletRad - 6 -25 ,0]){
        cylinder(r=18.5,h=shimThick); //Main Bottom Circle
    }
    translate([shimLength - filletRad - 16,shimWidth - filletRad - 6 -77 ,0]){
        cylinder(r=2,h=shimThick); //Bottom Locator Hole
    }
    translate([shimLength - filletRad - 44,shimWidth - filletRad - 6 -1 ,0]){
        cylinder(r=2,h=shimThick); //Top Locator Hole
    }
    translate([shimLength - filletRad - 22,shimWidth - filletRad - 6 -79 ,0]){
        cylinder(r=2.55,h=4); //Bottom Right Magnet Hole
    }
    translate([shimLength - filletRad - 7,shimWidth - filletRad - 6 -16 ,0]){
        cylinder(r=2.55,h=4); //Top Right Magnet Hole
    }
    translate([shimLength - filletRad - 53,shimWidth - filletRad - 6 -62.5 ,0]){
        cylinder(r=2.55,h=4); //Bottom Left Magnet Hole
    }
    translate([shimLength - filletRad - 22,shimWidth - filletRad - 6 -1 ,0]){
        cylinder(r=2.55,h=4); //Top Left Magnet Hole
    }
}
