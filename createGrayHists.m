v = VideoReader('C:\Users\fred_\Videos\RUSH.Title13.mp4');
h = {v.Duration*25,1};
%c = 0;
for c = 1:60000
    frame = readFrame(v);
    frame = imresize(frame,0.4444);
    gray = rgb2gray(frame);
    h{c,1} = histcounts(gray,256);
end

hg = h(:,1);
csvwrite('RushGray0Hist60000.csv',cell2mat(hg));