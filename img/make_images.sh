#!/bin/bash
# ClipGleam website stills — free local model (Z-Image Turbo, Apache-2.0) via mflux.
cd "$(dirname "$0")"
G=~/.local/bin/mflux-generate-z-image-turbo
gen(){ # name width height prompt
  [ -f "$1.png" ] && return
  "$G" -q 4 --low-ram --steps 8 --width "$2" --height "$3" --seed 21 --prompt "$4" --output "$1.png" >/dev/null 2>&1 && echo "made $1"
}
T="photorealistic cinematic film still, 35mm film grain, professional colour grade"
gen show_epic 1280 800 "Two medieval armies facing each other on a misty plain at dawn, banners and torchlight, cavalry, epic wide shot, $T"
gen show_cartoon 1280 800 "Pixar style 3D animation still, a friendly golden dog, a small clever grey mouse and a cheeky ginger cat sitting at a cosy breakfast table in a sunny kitchen, big expressive eyes, warm soft light, bright colours, high quality 3D render"
gen show_perfume 1280 800 "Luxury product advert, a perfume bottle standing on black glass, gold rim light, water droplets on the bottle, dark background, macro photography, $T"
gen show_neon 1280 800 "A singer in neon-lit rain at night, slow motion raindrops, magenta and cyan neon signs, shallow depth of field, music video, $T"
gen show_delta 1280 800 "Aerial view of a winding river delta at sunrise, golden light on water channels, documentary, drone shot, $T"
gen show_scifi 1280 800 "An astronaut in a spaceship corridor under red warning lights, handheld close-up, sci-fi short film, $T"
gen show_presenter 1280 800 "A friendly presenter speaking to camera in a clean modern studio, medium shot, soft key light, corporate video, $T"
gen show_cricket 1280 800 "A floodlit cricket stadium at night, the crowd on its feet, a batsman hitting the ball, long lens, sports drama, $T"
gen how_idea 1024 768 "A laptop on a wooden desk at night showing a single text box where someone types a story idea, warm lamp light, cosy, shallow depth of field, $T"
gen how_cast 1024 768 "A wall of character portrait sketches and printed script pages pinned on a board in a film studio, concept art, warm light, $T"
gen how_board 1024 768 "Film storyboard frames laid out on a table turning into colourful film footage on a monitor, editing suite, $T"
gen how_share 1024 768 "A smartphone in a hand playing a vertical cinematic video with a desert scene, social media, blurred city background, $T"
echo ALLDONE
