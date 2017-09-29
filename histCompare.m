function [ value, total_distance, arr ] = histCompare( histList, method, pos1, pos2 )
%HISTCOMPARE Compare two histograms from a list with a specified method

if strcmpi(method,'hi')
    value = histIntersect(histList(pos1,:),histList(pos2,:));
elseif strcmpi(method,'emd')
    [value, total_distance, arr] = emd(histList(pos1,:),histList(pos2,:));
    
end


end

