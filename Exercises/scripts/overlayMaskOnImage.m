%{
inputs:
    - I = grayscale image (matrix with values [0 1])
    - mask = binary mask image of I

outputs:
    - overlaidIm = RGB image that is the mask edges overlaid on image I
%}
function overlaidIm = overlayMaskOnImage(I,mask)
    % obtain mask edges
    maskEdges = edge(mask);

    % overlay edges on image
    overlaidIm = imoverlay(I, maskEdges, 'red');
end