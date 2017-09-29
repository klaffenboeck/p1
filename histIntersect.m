function [ intersected ] = histIntersect( hist1, hist2 )
%HISTINTERSECT get the intersection value of two histograms

% todo: check for equally long histograms
intersected = sum(min(hist1,hist2))/sum(hist2(:));

end

