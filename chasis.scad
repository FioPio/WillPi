llargada=95;
$fn=100;
module sharp(aletes)
{ 
  color([0,0,0])union()
  {
    cube([13,29.5,7.2]);
    translate([2.3,0])cube([8.4,29.5,11.5]);
    translate([0,9.7,3.3])cube([18.9,10.1,1.2]);
    translate([13,9.7,3.3])cube([5.9,10.1,5.75]);
  }
  if(aletes)
  {
    color([0,0,0])difference()
    {
      union()
      {
        translate([6.5,-3.75])cylinder(r=3.75,h=2.15);
        translate([6.5,33.25])cylinder(r=3.75,h=2.15);
        translate([2.75,-3.75])cube([7.5,37,2.15,]);
      }
      translate([6.5,-3.75,-0.1])cylinder(r=1.6,h=5);
      translate([6.5,33.25,-0.1])cylinder(r=1.6,h=5);
    }
  }
}
color([0,0,0])
{
  union()
  {
    difference()//Base Rastrejador
    {
      cube([llargada,100,5]);
      difference()
      {
        translate([-1,0,-1])cube([16,105,13.5]);
        translate([15,-1,12.5])rotate([-90,0,0])cylinder(r=13,h=107);
      }
      translate([-1,-1,-0.5])cube([31,21,6]);
      translate([-1,80,-0.5])cube([31,21,6]);
      //Pala
      translate([0,-0.1,0])rotate([-90,0,0])linear_extrude(height = 200)polygon(points=[[llargada,0],[70,-20],[65,-35],[65,-36],[llargada+10,-36],[llargada,5]]);
      //CNY70:
      translate([llargada-17,10,-0.1])cylinder(r=5,h=6);
      translate([llargada-17,90,-0.1])cylinder(r=5,h=6);
      difference()
      {
        translate([-1,0,-1])cube([16,105,13.5]);
        translate([15,-1,12.5])rotate([-90,0,0])cylinder(r=13,h=107);
      }
      translate([66,45,2.5])rotate([0,-90,180])sharp(false);
      translate([66,84.5,2.5])rotate([0,-90,180])sharp(false);
    }
    difference()//Suport rodes:
    {
      union()
      {
        translate([4,20])cube([22,28,12.5]);
        translate([4,52])cube([22,28,12.5]);
      }
      translate([6.5,25,4.6])cylinder(r=0.75,h=8);
      translate([6.5,42,4.6])cylinder(r=0.75,h=8);
      translate([23.5,25,4.6])cylinder(r=0.75,h=8);
      translate([23.5,42,4.6])cylinder(r=0.75,h=8);
      
      translate([6.5,58,4.6])cylinder(r=0.75,h=8);
      translate([6.5,75,4.6])cylinder(r=0.75,h=8);
      translate([23.5,58,4.6])cylinder(r=0.75,h=8);
      translate([23.5,75,4.6])cylinder(r=0.75,h=8);
      
      translate([9,19,9])cube([12,27,10]);
      translate([9,54,9])cube([12,27,10]);
      translate([9,19,11.5])cube([12,47,10]);
      difference()
      {
        translate([-1,0,-1])cube([16,105,13.5]);
        translate([15,-1,12.5])rotate([-90,0,0])cylinder(r=13,h=107);
      }
            translate([66,84.5,2.5])rotate([0,-90,180])sharp(false);

    }
    //Cares laterals
    difference()
    {
      union()
      {
        cube([llargada,5,35]);
        translate([0,95])cube([llargada,5,35]);
      }
      
      //Forat Rodes
      translate([15,-1,12.5])rotate([-90,0,0])cylinder(r=16,h=102);
      translate([-1,-1,-1])cube([16,200,50]);
      translate([0,-1])cube([23,120,50]);
      //Forat SHARP
      translate([66,84.5,2.5])rotate([0,-90,180])sharp(false);
      translate([35,-1,7.5])cube([30,120,8.6]);
      //tall Pala
      translate([0,-0.1,0])rotate([-90,0,0])linear_extrude(height = 200)polygon(points=[[llargada,0],[70,-20],[55,-35],[60,-36],[llargada+10,-36],[llargada,5]]);
    }
    //Suport bateria
    union()
    {
      translate([56,40])cube([5,20,10]);
      difference()
      {
        translate([61,40])rotate([-90,0,0])linear_extrude(height=20)polygon(points=[[0,0],[10,0],[0,-10]]);
        translate([66,45,2.5])rotate([0,-90,180])sharp(false);
        translate([66,84.5,3])rotate([0,-90,180])sharp(false);
        translate([66,84.5,2.5])rotate([0,-90,180])sharp(false);

      }
    }
    //Suport Sharps:
    difference()
    {
      union()
      {
        translate([32.5,11,0])cube([35,10,10]);
        translate([32.5,79,0])cube([35,10,10]);
      }
      translate([66,45,2.5])rotate([0,-90,180])sharp(false);
      translate([66,84.5,2.5])rotate([0,-90,180])sharp(false);
      translate([29.5+35,18,6])rotate([0,-90,90])sharp(false);
      translate([66,84.5,2.5])rotate([0,-90,180])sharp(false);
      translate([35,82,6])rotate([0,-90,-90])sharp(false);
    }
  }
}

