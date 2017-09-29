function [ rebin ] = comBin( hist, width )
%COMBIN combines bins of histograms

rebin = sum(reshape(hist, [width, length(hist)/width]));

end

