#!/bin/bash
# Second batch: formats he named 27/11 (clay, YouTube, TikTok)
cd "$(dirname "$0")"
G=~/.local/bin/mflux-generate-z-image-turbo
gen(){ [ -f "$1.png" ] && return; "$G" -q 4 --low-ram --steps 8 --width "$2" --height "$3" --seed 21 --prompt "$4" --output "$1.png" >/dev/null 2>&1 && echo "made $1"; }
gen show_clay 1280 800 "Claymation stop-motion still, handmade plasticine characters, a little clay fox and a clay hedgehog in a tiny clay village street, visible fingerprints in the clay, soft studio light, Aardman-like handcrafted look, shallow depth of field"
gen show_youtube 1280 800 "A YouTube creator filming in a modern home studio, ring light, camera on tripod, colourful LED background, energetic, $(echo photorealistic cinematic film still, professional colour grade)"
gen show_tiktok 800 1280 "Vertical smartphone video frame, a young woman dancing on a rooftop at golden hour, city skyline, dynamic motion, trendy social media look, photorealistic, professional colour grade"
echo ALLDONE2
