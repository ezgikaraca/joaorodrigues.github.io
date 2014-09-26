fetch 1brs, async=0
remove not chain A

# set the lights, ray tracing setttings
# to get the Goodsell-like rendering
unset specular
set ray_trace_gain, 0
set ray_trace_mode, 3
bg_color white
set ray_trace_color, black
unset depth_cue

# Transparent BG
set ray_opaque_background, 0

# Color
set_color oxygen, [1.0,0.4,0.4]
set_color nitrogen, [0.5,0.5,1.0]
util.cbaw

# Represent as spheres
as spheres
remove solvent

# Get view
set_view (\
     0.687920332,   -0.489875317,    0.535525560,\
    -0.664662182,   -0.128835782,    0.735953212,\
    -0.291528881,   -0.862219870,   -0.414230257,\
     0.000000000,   -0.000000000, -154.037765503,\
    20.349996567,   43.923477173,   12.150268555,\
   127.708213806,  180.367294312,  -20.000000000 )

# Ray
ray 300
png favicon_1brsA, dpi=72

# Exit
quit
