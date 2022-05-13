function dc = get_dark_channel(image, patch_size)

[m, n, ~] = size(image);

ps = floor(patch_size/2);

pi = padarray(image, [ps ps], Inf);

dc = zeros(m, n); 

for j = 1 : m
    for i = 1 : n
        patch = pi(j : j + (patch_size-1), i : i + (patch_size-1), :);

        dc(j,i) = min(patch(:));
     end
end

end