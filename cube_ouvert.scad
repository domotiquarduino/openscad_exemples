//Générer un cube avec ouverture et mouvements
//Variables
afficher_cube = "o"; //o,n
rotation_360  = "x"; //x,y,z,f,n
mouvement_hauteur = "n";//o,n

x=6;
y=6;
z=6;

//Conditions
if(afficher_cube =="o")
{  
 if (rotation_360=="x") rotate([360*$t,0,0]) cube_ouvert();
 else if (rotation_360=="y") rotate([0,360*$t,0]) cube_ouvert(); 
 else if (rotation_360=="z") rotate([0,0,360*$t]) cube_ouvert();
 else if (rotation_360=="f") cube_ouvert();
 else{ }
 if(mouvement_hauteur=="o") translate([0,0,20]) translate([0,0,-20.3*$t]){cube_ouvert();}
}

//Modules cube
module cube_ouvert()
{
 difference()
 {   
  color("Cornsilk") translate([0,0,z/2]) cube([x,y,z],center=true); 
  translate([0,0,z/2+0.2]) cube([x-0.2,y-0.2,z-0.2],center=true); 
 }
} 