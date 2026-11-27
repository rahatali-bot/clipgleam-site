#!/bin/bash
cd "$(dirname "$0")"
G=~/.local/bin/mflux-generate-z-image-turbo
gen(){ [ -f "$1.png" ] && return; "$G" -q 4 --low-ram --steps 8 --width "$2" --height "$3" --seed "$5" --prompt "$4" --output "$1.png" >/dev/null 2>&1 && echo "made $1"; }
gen show_perfume 1280 800 "Luxury perfume commercial film still, an elegant glass perfume bottle bursting through a wave of liquid gold and floating pink rose petals, a woman in a flowing silk gown spinning in slow motion behind it, golden hour light, sparkles of light in the air, dreamy shallow depth of field, high-end fashion advert, cinematic, 35mm, rich colour grade" 7
gen director 832 1216 "Pixar style 3D animated character, a friendly charismatic film director man in his 40s with a short grey beard, black beret, round glasses, navy jacket with a gold scarf, holding a film clapperboard in one hand and pointing forward with the other, warm confident smile, full body standing, plain solid dark navy background, soft cinematic rim light in gold, high quality 3D render" 11
echo ALLDONE3
