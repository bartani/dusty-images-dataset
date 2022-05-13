

function [out_R, out_G, out_B] = newTransmission(R,G,B,A,Na,Nb)
[row, col]=size(R);

% Scaller [a,b]
img_R = ((Nb-Na)*(R - min(R(:)))./(max(R(:)) - min(R(:))))+Na;
img_G = ((Nb-Na)*(G - min(G(:)))./(max(G(:)) - min(G(:))))+Na;
img_B = ((Nb-Na)*(B - min(B(:)))./(max(B(:)) - min(B(:))))+Na;

% Sigmoid

L = .35; [a, b] = sigpara(img_R,img_G,img_B);

Urs = 1./((exp(-((img_R(:,:).*a)-b)).*L)+1);
Ugs = 1./((exp(-((img_G(:,:).*a)-b)).*L)+1);
Ubs = 1./((exp(-((img_B(:,:).*a)-b)).*L)+1);

% Scaller [0,1]
Ur = Urs; % (Urs - min(Urs(:)))./(max(Urs(:)) - min(Urs(:)));
Ug = Ugs; % (Ugs - min(Ugs(:)))./(max(Ugs(:)) - min(Ugs(:)));
Ub = Ubs; % (Ubs - min(Ubs(:)))./(max(Ubs(:)) - min(Ubs(:)));

% Strich
% Ur = (Ur - min(Ur(:)))./(max(Ur(:)) - min(Ur(:)));
% Ug = (Ug - min(Ug(:)))./(max(Ug(:)) - min(Ug(:)));
% Ub = (Ub - min(Ub(:)))./(max(Ub(:)) - min(Ub(:)));

Tr = zeros(row,col); Tg = zeros(row,col); Tb = zeros(row,col);

for j = 1:row
    for k = 1:col        
        Tr(j,k) = 1-((Ur(j,k)-R(j,k))/(Ur(j,k)-A));
        Tg(j,k) = 1-((Ug(j,k)-G(j,k))/(Ug(j,k)-A));
        Tb(j,k) = 1-((Ub(j,k)-B(j,k))/(Ub(j,k)-A));        
    end
end

out_R=Tr;
out_G=Tg;
out_B=Tb;
end
function a = alpa(x)
    a = (-32*(x - .5)^2) + 6.5;
end
function b = beta(x)
b =(5.1/7)*x;
end
function [aveA, aveB] = sigpara(R,G,B)
[row, col]=size(R);
aveA=0; aveB=0;
    for j = 1:row
        for k = 1:col
            inten = (R(j,k)+G(j,k)+B(j,k))/3;
            
            %inten = (aveInten(R(j,k),j,k)+aveInten(G(j,k),j,k)+aveInten(B(j,k),j,k))/3;
            a = alpa(inten);
            aveA = aveA + a; 
            aveB = aveB + beta(a);     
        end
    end
 aveA = aveA/(row*col);
 aveB = aveB/(row*col);
end
function I = aveInten(src,i,j)
    I = src(i,j)+src(i,j+1)+src(i,j-1)+src(i-1,j)+src(i+1,j)+src(i-1,j-1)+src(i+1,j+1)+src(i+1,j-1)+src(i-1,j+1);
    I = I/9;
    
end