function out = Sid( x,y )
%x,y为一维向量
%{
x=300:1:800;
y=sin(x)+2;
out = Sid( x,y );
%}
sumX=sum(x);
sumY=sum(y);

out=sum( ( x/sumX-y/sumY ) .* ( log(x/sumX)-log(y/sumY) ) );


end

