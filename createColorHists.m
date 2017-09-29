v = VideoReader('C:\Users\fred_\Videos\RUSH.Title13.mp4');
h = {v.Duration*25,1};
hr = {v.Duration*25,1};
hg = {v.Duration*25,1};
hb = {v.Duration*25,1};

for c = 1:60000
    frame = readFrame(v);
    resized = imresize(frame,0.4444);
    
    red = resized(:,:,1);
    green = resized(:,:,2);
    blue = resized(:,:,3);
    
    hr{c,1} = histcounts(red,256);
    hg{c,1} = histcounts(green,256);
    hb{c,1} = histcounts(blue,256);
end

hred = hr(:,1);
hgreen = hg(:,1);
hblue = hb(:,1);

csvwrite('RushRed0Hist60000.csv',cell2mat(hred));
csvwrite('RushGreen0Hist60000.csv',cell2mat(hgreen));
csvwrite('RushBlue0Hist60000.csv',cell2mat(hblue));