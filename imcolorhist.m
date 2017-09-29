function [ out ] = imcolorhist( image, binnum )
%IMCOLORHIST Creates a 3D-histogram for images

red = image(:,:,1);
green = image(:,:,2);
blue = image(:,:,3);

red = cast(red(:),'double');
green = cast(green(:), 'double');
blue = cast(blue(:), 'double');

red(red == 0) = 1;
blue(blue == 0) = 1;
green(green == 0) = 1;

s = size(red(:));
s = s(1);

div = 256/binnum;
out = zeros(binnum,binnum,binnum);

for n = 1:s
    r = ceil(red(n)/div);
    g = ceil(green(n)/div);
    b = ceil(blue(n)/div);
    out(r,g,b) = out(r,g,b)+1;
    
end


end

