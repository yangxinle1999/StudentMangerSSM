/**
 * Created by pc on 2018/10/24.
 */
/*login*/
$(document).ready(function() {
    $('.blur-this').blurr({
        height:900,// Height, in pixels of this blurred div.
        sharpness:10, // Sharpness, as a number between 0-100. 100 is very sharp, 0 is extremely blurry
        offsetX: 0, // The x (left - right) offset of the image
        offsetY: 0, // The y (top - bottom) offset of the image
        callback: null // Callback to be called after the blur has been rendered. Recieves the following arguments (href, offsetX, offsetY, sharpness)
    });
});
