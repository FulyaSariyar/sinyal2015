fs=8192;%örnekleme frekansi
dz=fs*1/100; %duraklama zamani
t=struct('line',{});

file=fopen('notalar.txt');%notalar.txt dosyasi acilir.
i=1; 
satir=fgetl(file);
while ischar(satir)
t(i).line=satir;%t(i) ve line'ý carptim satir'a atanir.
satir=fgetl(file);
i=i+1;%satiri birer birer arttirir.
fclose(file);%dosyayi kapatir.

for i=1:length(t)
disp(t(i).line);%disp komutu ile ekrana yazdirir.
end

satir='nota,oktav,olcu'; %3 parcaya ayirir. nota, oktav, olcu olarak.
x=strsplit(satir,','); %her virgülde ayirir.
nota=x(1);  %1. string (nota)
oktav=x(2); %2. string (oktav)
olcu=x(3);  %3. string (olcu)
frekans=frek(nota,oktav);    %frekans frek fonksiyonu ile hesaplanir.
sinyal=note(frekans,olcu);   %sinüs sinyali (note.m'deki)
notalar=[notalar sinyal dz]; %notalar matrisi