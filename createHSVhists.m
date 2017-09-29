v = VideoReader('C:\Users\fred_\Videos\RUSH.Title13.mp4');
h = {v.Duration*25,1};
hh = {v.Duration*25,1};
hs = {v.Duration*25,1};
hv = {v.Duration*25,1};

for c = 1:60000
    frame = readFrame(v);
    resized = imresize(frame,0.4444);
    hsv = rgb2hsv(resized);
    
    hue = hsv(:,:,1);
    sat = hsv(:,:,2);
    val = hsv(:,:,3);
    
    hh{c,1} = histcounts(hue,128);
    hs{c,1} = histcounts(sat,128);
    hv{c,1} = histcounts(val,128);
end

hhue = hh(:,1);
hsat = hs(:,1);
hval = hv(:,1);

csvwrite('RushHue128Hist60000.csv',cell2mat(hhue));
csvwrite('RushSat128Hist60000.csv',cell2mat(hsat));
csvwrite('RushVal128Hist60000.csv',cell2mat(hval));