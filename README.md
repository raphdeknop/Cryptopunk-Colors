# Cryptopunk-Colors
Which colors are used in the Cryptopunks ? I will populate this repo asap, let me clean my code first ;)

## How I did it

First, I downloaded all 10k images from the Larvalabs website using a Shell script. The images are 336x336 px.

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



