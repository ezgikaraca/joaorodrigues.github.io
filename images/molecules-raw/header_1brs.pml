fetch 1brs, async=0
remove not chain A+D

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
     0.973266661,   -0.000483489,    0.229678094,\
    -0.212331459,   -0.383137226,    0.898956358,\
     0.087564401,   -0.923690617,   -0.372997552,\
     0.000000000,   -0.000000000, -180.198913574,\
    33.112190247,   37.573459625,    3.577569962,\
   144.108169556,  216.289657593,  -20.000000000 )

# Translate molecule
translate [10, 10, 0], chain D
 
# Draw 'restraints'
distance D/39/OD1, A/59/NH1
distance D/35/OD1, A/59/NH1
distance D/39/OD1, A/31/NE2
distance D/42/O, A/31/NE2
distance D/42/O, A/38/N
distance D/48/N, A/38/OG

hide labels
set dash_gap, 0
set dash_width, 10

# Ray
ray 1000
png 1brs_AD_goodsell.png, dpi=72

# Exit
quit
