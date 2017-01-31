Systematic Theme for RetroArch & Lakka
====================

About Systematic
-----------------
Most Libretro themes follow the lead of Kivutar’s Monochrome by using a controller to represent the system at the top level of the XMB.  However, that icon metaphor falls apart when you include computer systems with no official controller.  The Systematic theme uses a top-down system icon to represent every system in order to bring consistency to the design.

Systematic follows most of the guidelines set by the RetroActive theme.  System media icons such as cartridges or discs and most of the portable and computer system icons are identical to those in RetroActive.  User interface icons use a hexagon shape as the base of the icon.

You will find that multiple variations of many systems have been created to represent region, color or model differences.  However, the XMB is only capable of displaying the default system icon.  If you wish to switch a system icon in the system, rename the default icon and give the replacement icon the original default name.  For example, if you want to represent the Atari 2600 with a 4-switch, Jr. or Vader icon, rename the desired icon <i>Atari - 2600.png</i>.

Source files for development of this theme can be found at https://github.com/baxysquare/baxy-retroarch-themes

Guidelines
----------

### Palette

 * Icons use the 64 color palette found in the color palette folder. This palette is expanded to include shades of purple and gold that were never required in the RetroActive theme.
 * The use of grayscale in 5% increments is encouraged as a baseline.  Once the icon looks great in grayscale, feel free to add color in order to make the icon as recognizable as possible.
 * Use of gradients is discouraged in favor of maintaining a flat look.  If you make an icon with a gradient, please provide a flat version as the default.  For example, there are alternative icons that use the Atari spectrum as a gradient, but the default icon illustrated the spectrum as 5 flat colors in succession.
 * Translucency is discouraged except for the 8px white border, which should be set to 50% transparency. 

### Layout

 * The design should be easily recognizable.
 * The icons should be set to a 256x256 canvas and should be centered on a 64x64 grid. Snap design elements to the grid wherever possible to provide maximum clarity and scalability.
 * The icon must have a 8px white border and 8px margin, effectively reducing the icon size to 232x232.
 
### Style

 * The level of detail is expanded beyond the scope of the monochrome set, but favors flat design and recognizability over absolute realism.

### Export
The SVG and PNG files can be created using the ImageMagick Mogrify command and Kivutar’s convert.sh script.
