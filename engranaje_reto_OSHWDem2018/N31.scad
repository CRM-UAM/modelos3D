// (C) CarlosGS 2018

difference(){
    import("N31.stl", convexity=3);
    scale(0.9) translate([-9,0,7])
        linear_extrude(30) import("crm_logo.dxf");
}
