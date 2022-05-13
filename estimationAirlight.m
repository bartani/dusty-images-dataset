function A = estimationAirlight(src)
    [m,n] = size(src);
    h = zeros(256,1);
    for i=1:m
        for j=1:n
            inten = src(i,j)+1;
            h(inten)=h(inten)+1;
        end
    end
    Air = find(h==max(h))/256;
    A=Air(1);
end