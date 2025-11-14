%{
inputs:
    - mask = binary mask image
    - threshArea = threshold for area in pixels

outputs:
    - cleanedMask = mask with only objects with area above threshArea
%}
function cleanedMask = removeSmallArtifacts(mask, threshArea)    
    % obtain connected components (CC)
    [labels, ~] = bwlabel(mask);
    
    % get area of CC's
    stats = regionprops(labels, 'Area');
    
    % only keep CC's with area greater than threshold
    cleanedMask = ismember(labels, find([stats.Area] > threshArea)); % Set thresholdArea based on your needs
end