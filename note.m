function [y] = note( altsinir, ustsinir )%ciktisi y olan ve altsinir, ustsinir arg�manlarini alan note adindaki fonksiyon.
tt=altsinir:(ustsinir-altsinir)/100:ustsinir;%�stsinir ve altsinir arasinda degisen bir vekt�r.Artis miktari 'ustsinir-altsinir' degerinin y�zde biridir. 
y=sin(tt);%y ciktisi bir sin�s sinyalidir.
plot(y);%sinyalin grafigini �izer.
end

