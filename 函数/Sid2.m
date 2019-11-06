function out = Sid2( data )
%x,y为一维向量
%{

data=rand([20 5 6);
%}
sumX=sum(x);
sumY=sum(y);

out=sum( ( x/sumX-y/sumY ) .* ( log(x/sumX)-log(y/sumY) ) );


end

