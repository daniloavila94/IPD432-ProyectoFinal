function x=img_rec(imagen)
c = 1;
im_rec = zeros(300,300);
for i=1:150
    for j=1:150
        a0 = imagen(4*c-3);
        a1 = imagen(4*c-2);
        a2 = imagen(4*c-1);
        a3 = imagen(4*c);
        c = c+1;
        im_rec(2*i-1,2*j-1) = a0;
        im_rec(2*i-1,2*j)= a1;
        im_rec(2*i,2*j-1)= a2;
        im_rec(2*i,2*j)= a3;
        
    end
    x=im_rec;
end