function  showFrames( from, to, nRows, nCols )
%SHOWFRAMES show frames from to

 v = VideoReader('C:\Users\fred_\Videos\RUSH.Title13.mp4');
 if nargin < 2
        to = from + 1;
 end
 len = to - from + 1;
 if nargin < 3
        nCols = len;
        nRows = 1;
 end
 v.CurrentTime = frame2time(from);
 for n = 1:len
     frame = readFrame(v);
     subplot(nRows,nCols,n)
     imshow(frame);
     title(from + n - 1);
 end
    
end

