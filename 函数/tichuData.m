function [ outX,depth ] = tichuData( x,depth,number )
[depth,ind]=sort(depth);
outX=x(ind);

absX=abs(diff(outX));
meanX=mean(absX);

ind=find(absX>=meanX*number);
depth(ind)=[];
outX(ind)=[];


end

