function [ sec ] = frame2time( frameNr )
%FRAME2TIME Convert a frame number to the timestamp
frameNr = cast(frameNr, 'double');
sec = frameNr / 25;

end

