function [ boolean ] = adaptiveThreshold( results, frameNr, winSize, a, c )
%ADAPTIVETHRESHOLD Determine if cut

if nargin < 3
    winSize = 5;
end
if nargin < 4
    a = 1.2;
end
if nargin < 5
    c = 0.0;
end

if frameNr <= winSize
    boolean = true;
    return
end

res0 = results(frameNr);
resWin = results([frameNr-winSize:frameNr-1 frameNr+1:frameNr+winSize]);

boolean = false;
%Step1
if res0 >= min(resWin)
    %Step2
    m = (sum(resWin+c))/(2*winSize);
    if (res0+c) >= a*m
        boolean = true;
    end

end




end

