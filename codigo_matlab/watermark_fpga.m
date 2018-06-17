%El siguiente código se usa para la comunicación UART FPGA-PC, se deben
%enviar dos imagenes de 1 canal 300x300 a la FPGA para que esta realice el
%proceso de watermarking. Se tienen las funcinoes write_cmd() para
%indicarle a la FPGA que es lo que se desea realizar.
% Se tiene la funcion write(img) para enviar las imagenes a trabajar a la
% FPGA.
% Luego de enviar las dos imagenes la FPGA por defecto enviara la imagen
% marcada la cual debe ser guardada en unt vector de largo 90000.
% Una vez realizado esto se pueden enviar nuevas imagenes o se puede
% recuperar la imagen host original o la imagen usada para el watermark,
% para esto se vuelve a usar la funcion write_cmd() con el comando
% respectivo y la FPGA calculara la transformada inversa correspondiente,
% el resultado debe ser almacenado en un vector de largo 90000.
% Finalmente para dejar en forma matriciar la información enviada por la
% FPGA se usa el comando  img_rec(datos_fpga), la cual entrega como
% resultado la imagen que se desea ver en forma matricial.



%% Lectura de imagenes

imagen_host = rgb2gray(imread('airplane.png'));
imagen_watermark = (imread('boat.png'));
imagen_host = imresize(imagen_host,[300 300]);
imagen_watermark = imresize(imagen_watermark,[300 300]);


%fclose(instrfind);

% Comandos
start_watermarking = 1;
recuperar_host_img = 2;
recuperar_watermark_img = 3;

%%%%%%%% ABRIR PUERTO UART %%%%%%%%%%%%%%%%%%
prompt = {'Enter COM Port'};dlg_title = 'Input';num_lines = 1;defaultans = {'COM4'};
COM = inputdlg(prompt,dlg_title,num_lines,defaultans);
COM = 'COM4';
s = serial(COM,'BaudRate',115200,'Parity','none','DataBits',8,'StopBits',1);
set(s,'InputBufferSize',100000);
s.OutPutBufferSize = 1e6;
fopen(s);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%




%%%%%%%% Escritura %%%%%%%%%%%%%%%%%%%%%%
write_cmd(s,start_watermarking);
write_img(s,imagen_host,imagen_watermark);
imagen_marcada = fread(s,90000,'uint8');
write_cmd(s,recuperar_host_img);
img_host_rec = fread(s,90000,'uint8');
write_cmd(s,recuperar_watermark_img);
img_wm_rec = fread(s,90000,'uint8');




%%%%%%%%%%% Resultados %%%%%%%%%%%%%%%%%%%%%
img_wm_final =  img_rec(imagen_marcada);
watermark_recuperada = img_rec(img_wm_rec);
figure(1);
imshow(uint8(img_wm_final));
figure(2);
imshow(uint8(watermark_recuperada));
