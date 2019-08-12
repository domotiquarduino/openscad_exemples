//Générer un cylindre avec ouverture et mouvements
//Variables
afficher_cylindre = "o"; //o,n
rotation_360  = "z"; //x,y,z,f(fixe)
mouvement_hauteur = "o";//o,n

x=6;
y=6;
z=6;
fin_pin =4;

//Conditions
if(afficher_cylindre =="o")
{  
 if (mouvement_hauteur == "n" && rotation_360=="x") rotate([360*$t,0,0]) cylindre_ouvert();
 else if (mouvement_hauteur == "n" && rotation_360=="y") rotate([0,360*$t,0]) cylindre_ouvert(); 
 else if (mouvement_hauteur == "n" && rotation_360=="z") rotate([0,0,360*$t]) cylindre_ouvert();
 else if (mouvement_hauteur == "n" && rotation_360=="f") cylindre_ouvert();
 else if(mouvement_hauteur=="o" && rotation_360  == "f" ) translate([0,0,5]) translate([0,0,-5.3*$t]){cylindre_ouvert();} 
 else if(mouvement_hauteur=="o" && rotation_360  == "x" ) rotate([360*$t,0,0]) translate([0,0,8]) translate([0,0,-8.3*$t]){cylindre_ouvert();} 
 else if(mouvement_hauteur=="o" && rotation_360  == "y" ) rotate([0,360*$t,0]) translate([0,0,8]) translate([0,0,-8.3*$t]){cylindre_ouvert();}
 else if(mouvement_hauteur=="o" && rotation_360  == "z" ) rotate([0,0,360*$t]) translate([0,0,8]) translate([0,0,-8.3*$t]){cylindre_ouvert();}
 else if(mouvement_hauteur=="o" && rotation_360  == "n" ) translate([0,0,8]) translate([0,0,-8.3*$t]){cylindre_ouvert();} 
 else{ } 
 
}

//Modules cylindre
module cylindre_ouvert()
{ 
 translate([-2.54*2,0,0])
 for (i = [0:fin_pin]) 
 {  
   translate([i*2.54,0,0])
   {
     difference()
     {    
      color("Cornsilk") translate([0,0,z/2]) cylinder(h=z,r1=0.5,r2=0.5,$fn=65,center=true); 
      translate([0,0,z/2]) cylinder(h=z+0.02,r1=0.5-0.04,r2=0.5-0.04,$fn=65,center=true);     
      rotate([90,0,0]) translate([0,5,0]) cylinder(h=z,r1=0.2,r2=0.2,$fn=65,center=true);             
     }
   } 
 }
} 
