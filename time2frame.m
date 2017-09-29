function [ frameNr ] = time2frame( sec )
%TIME2FRAME Convert time to framenumber

frameNr = ceil(sec * 25);



end

