function out = remove_dust(src,T,A)
[m,n] = size(src);
out = zeros(m,n);

F = src-A;
for i=1:m
   for j=1:n
      out(i,j) = F(i,j)/T(i,j); 
   end
end

out = out+A;

end