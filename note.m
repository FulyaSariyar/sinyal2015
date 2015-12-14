function [y] = note( altsinir, ustsinir )%ciktisi y olan ve altsinir, ustsinir argümanlarini alan note adindaki fonksiyon.
tt=altsinir:(ustsinir-altsinir)/100:ustsinir;%üstsinir ve altsinir arasinda degisen bir vektör.Artis miktari 'ustsinir-altsinir' degerinin yüzde biridir. 
y=sin(tt);%y ciktisi bir sinüs sinyalidir.
plot(y);%sinyalin grafigini çizer.
end

