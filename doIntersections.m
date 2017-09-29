hr = csvread('RushRed0Hist60000.csv');
hg = csvread('RushGreen0Hist60000.csv');
hb = csvread('RushBlue0Hist60000.csv');
hi = csvread('RushGray0Hist60000.csv');
hc = csvread('RushColHist60000.csv');

histLists = {hi, hr, hg, hb, hc}; 

s = 60000;
z = zeros(s-1,1);

results = {z,z,z,z,z,z,z,z,z};
for i = 2:s
    for j = 1:5
        res = results{j};
        histList = histLists{j};
        hist2 = histList(i,:);
        hist1 = histList(i-1,:);
        res(i) = histIntersect(hist1,hist2);
        results{j} = res;
    end
    offset = 5;
    for j = 1:4
        res = results{j+offset};
        histList = histLists{j};
        hist2 = comBin(histList(i,:),4);
        hist1 = comBin(histList(i-1,:),4);
        res(i) = histIntersect(hist1,hist2);
        results{j+offset} = res;
    end
end

csvwrite('RushIntersectionResults.csv',cell2mat(results));