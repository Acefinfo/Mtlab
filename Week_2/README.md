# MATLAB Week 2 Overview

This README provides a comprehensive summary of the entire Week 2 folder. It combines the activities from both the **Classroom** and **Uni** subdirectories, lists the scripts and assets, explains the image processing tasks performed, and documents all MATLAB functions used during the week. Wherever filenames or images are mentioned they are linked for easy navigation.

---

## Folder Structure

- `Asset/` – contains sample input images used in exercises:
  - [lena-Colour.png](Asset/lena-Colour.png)
  - [cameraman.tif](Asset/cameraman.tif)
- `Classroom/` – scripts and outputs from the guided classroom session. See [Classroom/README.md](Classroom/README.md) for details.
- `Uni/` – university exercise scripts meant for independent practice. See [Uni/README.md](Uni/README.md) for details.

---

## Weekly Summary

During Week 2 we explored fundamental image processing concepts using MATLAB's Image Processing Toolbox. Lessons were divided into a classroom session, where tasks were demonstrated step‑by‑step, and a set of university exercises to reinforce learning. The core topics included:

1. **Image I/O and Visualization** – reading, displaying, comparing, and saving images.
2. **Matrix Structure and Channel Operations** – understanding image arrays, extracting RGB channels, converting to grayscale.
3. **Basic Processing and Analysis** – filtering, intensity statistics, and simple transformations.
4. **Data Type and Color Space Conversions** – converting between numeric types and transforming between RGB, HSV, YCbCr, etc.
5. **Hands-on Case Studies** – applying conversions to real images, checking reversibility, and interpreting results.

Outputs generated throughout the week are saved under `Classroom/Output/` and `Uni/Output/`. Click through the links to view examples:

- [lena-Gray.png](Classroom/Output/lena-Gray.png)
- [lena-YCbCr.png](Classroom/Output/lena-YCbCr.png)
- [lena-HSV.png](Classroom/Output/lena-HSV.png)
- [lena-Reconstructed-YCbCr.png](Classroom/Output/lena-Reconstructed-YCbCr.png)

(Equivalent files may appear in `Uni/Output/` after running the exercises.)

---

## Scripts and Content

### Classroom Folder
Refer to [Classroom/README.md](Classroom/README.md) for a detailed narrative. In brief, the session contained three tasks:

- **Task1_Image_visualization.m** – load and display images; create montages; save images.
- **Task2_Image_manpaluation.m** – analyze image size, extract channels, convert to grayscale, compute pixel statistics.
- **Task3_CaseStudy_Analysis.m** – convert between RGB, YCbCr, and HSV; visualize channels; demonstrate reversibility.

### Uni Folder
Exercises correspond roughly to the classroom tasks but are structured for solo work. Scripts include:

- `Ch1_Import_save_img.m`
- `Ch2_Grayscale_color_img.m`
- `Ch3_Image_processing.m`
- `Ch4_Image_Type_Conversion.m`
- `Ch5_Colorspace.m`

Detailed descriptions, usage instructions, and links are in [Uni/README.md](Uni/README.md).

---

## MATLAB Functions Used

Each function below was encountered or employed in the week’s scripts. Use `doc <function>` in MATLAB for reference.

| Function | Purpose |
|----------|---------|
| `imread` | Read image from file into array |
| `imshow` | Display image in figure window |
| `imshowpair` | Compare two images (montage or blended) |
| `montage` | Show multiple images together |
| `imwrite` | Write image array to file |
| `size` | Get dimensions of array |
| `disp` | Display text or variable in command window |
| `num2str` | Convert numeric value to string |
| `im2gray` | Convert color image to grayscale |
| `max` / `min` | Compute maximum/minimum of array elements |
| `figure` | Create a new figure window |
| `title` | Add title text to a figure or subplot |
| `subplot` | Arrange multiple plots in one figure |
| `rgb2ycbcr` | Convert RGB image to YCbCr color space |
| `ycbcr2rgb` | Convert YCbCr back to RGB |
| `rgb2hsv` | Convert RGB image to HSV color space |
| `colorbar` | Add color bar to current axes |
| `cd` | Change current working directory |
| `imfilter` | Apply filter to image (used in processing exercise) |
| `im2double` | Convert image to double precision |

This list is illustrative; additional helper functions such as `zeros`, `ones`, arithmetic operators, and basic MATLAB commands were also used in scripts.

---

## Tips for Future Weeks

- Always keep sample images and outputs organized in their respective folders.
- Use comments inside scripts to document experiments and observations.
- Extend the exercises by adding new color spaces or advanced filters (e.g., edge detection, histogram equalization).

---

Feel free to update this README with your own notes as the coursework progresses. Good luck with your MATLAB journey! 🎓