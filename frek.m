function [ frekans ] = frek( nota, oktav )
notalar={'Do','Dod','Re','Mib','Mi','Fa','Fad','Sol','Sold','La','Sib','Si','sus'}; %notalari tanimladim.
frekans=0; %frekans sus gelme ihtimaline karsi sifirlandi.

if nargin < 2  % eger oktav belirtilmemisse,
    oktav = 4; % 4.oktav kabul ediliyor.
end

nota=find(ismember(notalar,nota)); 
%arguman olarak disaridan girilen nota, notalar dizisinde bulunuyorsa
%kacinci eleman olarak bulunduguna bakilir ve frekans hesabinda
%kullanilir.
if nota ~= 13 %eger 13.nota(sus) geldiyse frekans hesaplanmaz.                                        
    f0 = 440; %Temel frekans(referans) degeri La4
    frekans=f0*2^((nota-10)/12 + (oktav-4)); 
    %nota tablosundaki frekanslar arasi iliskinin matematiksel formülüdür.
    %f0=440 temel frekansdir.
end

end