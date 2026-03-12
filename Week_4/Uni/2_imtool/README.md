# 1.2 Imagetool in Matlab

The "imtool" function opens the Image Viewer app, called imtool. The app presents an integrated environment for displaying images and performing common image processing tasks. Image Viewer provides all the image display capabilities of imshow, which optimizes figure, axes, and image object property settings for image display. Figure3 shows an example of imtool function.

```matlab
imtool('test.jpg')
```

The Image Viewer app is an image display and exploration tool that presents an integrated environment for displaying images and performing common image processing tasks. Image Viewer provides access to several other tools:

- Pixel Information tool — for getting information about the pixel under the pointer
- Pixel Region tool — for getting information about a group of pixels
- Distance tool — for measuring the distance between two pixels
- Image Information tool — for getting information about image and image file metadata
- Adjust Contrast tool and associated Window/Level tool — for adjusting the contrast of the image displayed in Image Viewer and modifying the actual image data. You can save the adjusted data to the workspace or a file.

Figure3. imtool display

- Crop Image tool — for defining a crop region on the image and cropping the image. You can save the cropped image to the workspace or a file.
- Display Range tool — for determining the display range of the image data

In addition, Image Viewer provides several navigation aids that can help explore large images:

- Overview tool — for determining what part of the image is currently visible in the Image Viewer and changing this view.
- Pan tool — for moving the image to view other parts of the image
- Zoom tool — for getting a closer view of any part of the image.
- Scroll bars — for navigating over the image

```matlab
imtool('test.jpg')
```

Use the command imtool to open the Image Viewer App and explore the image.

Explore various areas of the image by moving the region.

- What do you notice about the RGB values in brightly colored regions?
- What about dark regions or regions that are nearly white?

Read Rec2.png image again and use imtool to open it; inspect the image with the Pixel Region tool.

Now adjust the contrast of Rec2.png using the contrast adjustment tool to provide the best possible text definition. When you're done, save the enhanced image to the workspace.