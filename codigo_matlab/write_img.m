function write_img(s,img_h,img_w)
    for i=1:300
        fwrite(s,img_h(i,1:300),'uint8');    
    end
    fwrite(s,1,'uint8');
    for j=1:300
        fwrite(s,img_w(j,1:300),'uint8');    
    end
end