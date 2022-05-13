clear all;
close all;
clc;

src_path = '***.jpg'; % Enter your dusty image path
dusty_img = imread(src_path);
Na=0.3; Nb=0.8;
dedust_img = dedust(dusty_img,7,Na,Nb);

subplot(1,2,1); imshow(dusty_img);    title('Dusty image')
subplot(1,2,2); imshow(dedust_img); title('De-dusted image')


