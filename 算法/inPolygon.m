%判断点是否位于多边形内部
function flag = inPolygon(p, points)
ncross = 0;
ncount = size(points, 1);
for i = 1:ncount
    p1 = points(i, :);
    p2 = points(mod(i, ncount) + 1, :);
    if p1(2) <= p(2) && p2(2) <= p(2) || ...
            p1(2) >= p(2) && p2(2) >= p(2)
        continue;
    end
    x = (p(2) - p1(2)) * (p2(1) - p1(1) ) / (p2(2) - p1(2)) + p1(1);
    if (x > p(1))
        ncross = ncross+1;
    end
end
flag = mod(ncross, 2);
