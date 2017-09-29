iResults = 1-results;
resCol = iResults(1:52200,5);
candidates = find(resCol >= 0.1);

calcRes = [];
counter = 0;

for i = 1:length(candidates)
    frameNr = candidates(i);
    b = adaptiveThreshold(iResults,frameNr);
    if b
        counter = counter + 1;
        calcRes(counter) = frameNr;
    end
end