y1=0:10;
x1=1:10;
[x,y]=meshgrid(x1,y1);
%u=velocidad_243(y,h, theta, SG, miu);
%v=zeros(size(u));
for i = x
    for j = x(1,:)
        x(i,j)* y(i,j)
    end
end
