// the overall length of the cartridge (make longer for more stuff, like a PC-6006 does)
OVERALL_LENGTH = 100;
OVERALL_WIDTH = 83.75;

RIB_HEIGHT = 4;

// What part of the shell to render
DRAW_WHICH = "top"; // [ "top", "bottom", "both" ]

// lip on side of cartridge (in 7.25mm, down 8mm)
TOP_LIP_Z = 8;
TOP_LIP_EXCURSION = 7.25;

// the thickness of the walls
WALL_WIDTH = 3;

module inner_cut($cut_height) {
    // The inner section cut out of the cartridge (to hold the PCB inside)
    cube([OVERALL_WIDTH - WALL_WIDTH, (OVERALL_LENGTH -     TOP_LIP_EXCURSION) - WALL_WIDTH, $cut_height], center = true);
}

if("top" == DRAW_WHICH || "both" == DRAW_WHICH) {
    // base top of the cartridge
cube([OVERALL_WIDTH, OVERALL_LENGTH, RIB_HEIGHT], center = true);
    
    translate([0, TOP_LIP_EXCURSION, -TOP_LIP_Z/2]){
        difference() {
            // the "meat" of the walls
            cube([OVERALL_WIDTH, OVERALL_LENGTH - TOP_LIP_EXCURSION * 2, TOP_LIP_Z], center = true);
            
            translate([0, -WALL_WIDTH, 0]) {                 // move down so the 'top' lip remains
                inner_cut(TOP_LIP_Z);
            }
        }
        
        // TODO: Side greebles
    }

    difference() {
        // topmost "pyramid" top of the cartridge
        _lip_z = RIB_HEIGHT;
        translate([0, 0, _lip_z]) {
            translate([0,0,0]) {
                _incursion = 11;
                _top_width = OVERALL_WIDTH - _incursion;
                _top_length = OVERALL_LENGTH - _incursion;
                
                // smoothly go down
                
                _pyr_scale_w = _top_width / OVERALL_WIDTH;
                _pyr_scale_l = _top_length / OVERALL_LENGTH;

                _pyramid_scale = [ _pyr_scale_w, _pyr_scale_l ]; 
                
                linear_extrude(height = _lip_z, center = true, scale = _pyramid_scale)
                    square([OVERALL_WIDTH, OVERALL_LENGTH], center = true);
                
                /*polyhedron(
                    points = [
                        // top corners
                        [ _width / -2, _length / -2, _lip_z/2 ],
                        [ _width / 2, _length / -2, _lip_z/2 ],
                        [ _width / 2, _length / 2, _lip_z/2 ],
                        [ _width / -2, _length / 2, _lip_z/2 ],
                
                        // bottom corners (this will suck with radius)
                        [ _bottom_width / -2, _bottom_length / -2, -_lip_z/2],
                        [ _bottom_width / 2, _bottom_length / -2, -_lip_z/2],
                        [ _bottom_width / 2, _bottom_length / 2, -_lip_z/2],
                        [ _bottom_width / -2, _bottom_length / 2, -_lip_z/2],
                        
                    ],
                    faces = [
                        // how is this not fucking closed?
                        [0, 1, 2, 3],
                        [4, 5, 6, 7],
                        [0, 3, 7, 4],
                        [3, 2, 6, 7],
                        [2, 1, 5, 6],
                        [1, 0, 4, 5]
                    ],
                    convexity=20
                );*/
            }
        }
        
        // sticker recess
        translate([0,6.5,_lip_z + 1.5]) {
            cube([63, 68.5, 1.5], center = true);
        }
    }
}

if("bottom" == DRAW_WHICH || "both" == DRAW_WHICH) {
    BOT_LENGTH = OVERALL_LENGTH - (TOP_LIP_EXCURSION * 2);
    BOT_HEIGHT = 11;
    BOT_OFFSET = TOP_LIP_EXCURSION;
    
    translate([0, BOT_OFFSET, (-BOT_HEIGHT / 2) - TOP_LIP_Z]) {
        difference() {
            cube([OVERALL_WIDTH, BOT_LENGTH, BOT_HEIGHT], center = true);
            
            translate([0,-WALL_WIDTH,WALL_WIDTH]) {
                inner_cut(BOT_HEIGHT);
            }
        }        
    }        
}

// TODO: Entire bottom half (with #defines)
// TODO: Screw holes to mount PCB (ROMRAM is 97.7 mm long, its mounting holes are ridiculous)
