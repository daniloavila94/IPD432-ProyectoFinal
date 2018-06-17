# IPD432-ProyectoFinal
Watermarking technique in FPGA

This should work in Artix-7 XC7A100T-CSG324

How to use:

Open in Vivado the "Proyecto_Final_IPD432" Project File, and program the FPGA.


Open with matlab "watermark_fpga.m" then use the next code example:




imagen_host = rgb2gray(imread('airplane.png'));

imagen_watermark = (imread('boat.png'));

imagen_host = imresize(imagen_host,[300 300]);

imagen_watermark = imresize(imagen_watermark,[300 300]);


%fclose(instrfind);

% Comandos
start_watermarking = 1;

recuperar_host_img = 2;

recuperar_watermark_img = 3;


%%%%%%%% OPEN UART %%%%%%%%%%%%%%%%%%

prompt = {'Enter COM Port'};dlg_title = 'Input';num_lines = 1;defaultans = {'COM4'};

COM = inputdlg(prompt,dlg_title,num_lines,defaultans);

COM = 'COM4';

s = serial(COM,'BaudRate',115200,'Parity','none','DataBits',8,'StopBits',1);

set(s,'InputBufferSize',100000);

s.OutPutBufferSize = 1e6;

fopen(s);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%%%%%%%% Write and Read from FPGA %%%%%%%%%%%%%%%%%%%%%%

write_cmd(s,start_watermarking);     // First start the watermarking process

write_img(s,imagen_host,imagen_watermark);   // Send 2 images of 1 Channel!

imagen_marcada = fread(s,90000,'uint8');    // Read the result.


write_cmd(s,recuperar_host_img);        // You can recover the host img with this command

img_host_rec = fread(s,90000,'uint8');

write_cmd(s,recuperar_watermark_img);  // You can recover the watermark img with this command

img_wm_rec = fread(s,90000,'uint8');



%%%%%%%%%%% Results %%%%%%%%%%%%%%%%%%%%%

img_wm_final =  img_rec(imagen_marcada);    //To transform the 90000 long vector in an image use this function.

watermark_recuperada = img_rec(img_wm_rec);

figure(1);

imshow(uint8(img_wm_final));

figure(2);

imshow(uint8(watermark_recuperada));
