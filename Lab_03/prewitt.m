function [ image, v, h] = prewitt( original, threshold_percent )
%Prewitt Prewitt Operator Implementation
%   Estimates Image Gradient

    mask_prewitt_h = 1.0 * ones(3, 1) * [-1, 0, 1];
    mask_prewitt_v = 1.0 * [-1; 0; 1] * ones(1, 3);
    
    [v, h] = differentiation(original, mask_prewitt_v, mask_prewitt_h);
    image = sqrt(v .^ 2 + h .^ 2);
    
    image = image > threshold_percent * max(image(:));
    
end

