v = VideoReader('C:\Users\fred_\Videos\RUSH.Title13.mp4');
h = {v.Duration*25,1};

for c = 1:60000
    frame = readFrame(v);
    resized = imresize(frame,0.4444);
    hi = imcolorhist(resized, 8);
    h{c,1} = hi(:)';
end

h1 = h(:,1);
csvwrite('RushColHist60000.csv',cell2mat(h1));