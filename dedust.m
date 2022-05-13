function out = dedust(src, patch_size,Na,Nb)

dc = get_dark_channel(src,patch_size);
A = estimationAirlight(dc);

x= im2double(src);
Ir=x(:,:,1); Ig=x(:,:,2); Ib=x(:,:,3);

[Tr, Tg, Tb] = newTransmission(Ir,Ig,Ib,A,Na,Nb);
    
H = fspecial('gaussian', [7 7], 0.1);
Tr =imfilter(Tr,H);
Tg =imfilter(Tg,H);
Tb =imfilter(Tb,H);

out_R = remove_dust(Ir,Tr,A);
out_G = remove_dust(Ig,Tg,A);
out_B = remove_dust(Ib,Tb,A);

dedust_img=cat(3,out_R,out_G,out_B);

out = get_guidedimage(dedust_img);

end