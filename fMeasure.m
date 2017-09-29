function [ F, precision, recall,listFN ] = fMeasure( results, ground_truth )
%FMEASURE calculate f-measure, precision, recall

tp = 0;
tn = 0;
fp = 0;
fn = 0;

for i = 1:length(ground_truth)
    val = find(results==ground_truth(i));
    if isempty(val)
        fn = fn+1;
        listFN(fn) = ground_truth(i);
    else
        tp = tp+1;
        results(val)=[];
    end 
end

fp = length(results);

precision = tp/(tp+fp);
recall = tp/(tp +fn);

F = 2*(precision*recall)/(precision+recall);

end


