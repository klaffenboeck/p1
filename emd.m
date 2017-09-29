function [value, total_distance, emds ] = emd( hist1, hist2 )
%EMD Calculate Earth Movers Distance between two 1D-histograms

emd_i = 0;
emds = zeros(1,length(hist1));
for i = 1:length(hist1)
    emds(i) = hist1(i) + emd_i - hist2(i);
    emd_i = emds(i);
end
total_distance = sum(abs(emds));
value = total_distance / sum(hist1);

