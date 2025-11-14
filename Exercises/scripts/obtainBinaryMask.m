%{
input:
    - I = grayscale image (matrix with values [0 1])

output:
    - binaryMask = binary image from the input grayscale image I 
                   where pixels within the feature of interest are 1's 
                   and all other pixels are 0's
%}
function binaryMask = obtainBinaryMask(I)
    % obtain threshold

    % create binary mask image using thresh
    
end