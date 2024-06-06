# Better Container GUI
![Images](https://cdn.discordapp.com/attachments/365525375801098242/1248401880934121482/inventory_animation_1.gif?ex=6663885a&is=666236da&hm=c701ca898163ebfaa8ee37275e9f90c0bda032d504ba78608f02bcd831013a03&)
BetterConttainerGUI is a vanilla core shader resourcepack that adds more padding around the Minecraft container GUI, allowing for more creative freedom. This pack also has the option for animated containers.
This pack does require you to work in the same resolution as vanilla Minecraft, so this doesn't work with high-res resourcepacks.

## How to use
In the top right corner of the texture, you put a pixel with some specific value. The RGBA value is as follows:

 **R** - The amount of frames in the texture.<br>
 **G** - The framerate of the animation (doesn't matter if the amount of frames is 1).<br>
 **B** -  The width of the vanilla container.<br>
 **A** -  The height of the vanilla container.<br>

 After that, put the container at the center of the texture, you can just reload the resourcepack to see if you positioned it correctly.

 If your container is animated, you can increase the texture size, the shaders will read the animation from left to right, top to bottom.

 If you need an example you can look at both the `inventory.png` and `inventory_without_animation.png` textures.