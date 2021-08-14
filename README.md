# Cryptopunk-Colors
For a project I'm doing, I wanted to know the exact hexadecimal values of all the colors used in the Cryptopunks. 

## How I did it

First, I downloaded all 10k images from the Larvalabs website using a Shell script. I could've used the official image containing the 10k punks whose hash is on the Blockchain but I needed to have each punk separately anyways. I strongly encourage anyone wanting to get the colors to download the official image (https://github.com/larvalabs/cryptopunks/blob/master/punks.png). It's more efficient, and it doesn't put an enormous load on Larvalabs' servers. The images I had are 336x336 px large. 

```bash
mkdir punk_images 
cd punk_images
for i in {0..9999}
do 
wget "https://larvalabs.com/cryptopunk$i.png"
done
```

I then ran the `read_all_punk_colors.r` script, which went through each pixel and saved the unique RGB colors in the `colors.csv` file. It's overkill and not efficient to go through all the 336x336 pixels so one could read every 14th row because the originals are 24x24 px large.

Once I had all the colors, I determined their hex code using `convert_to_html.r`. 

Finally, I manually set each pixel color in GIMP, and exported the result.

## Possible improvements

- Change the script to use the single 10k image. 
- Get more insight, for example the occurences of the colors.
