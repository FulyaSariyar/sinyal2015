function [ frekans ] = frek( nota, oktav )
f0=440; %Temel frekans(referans) degeri La4
switch nota %girilen notaya göre deger (Örn: Do 1, C# 2, vb..)
        case 'Do'
        Nota=1;
        case 'C#'
        Nota=2;
        case 'Re'
        Nota=3;
        case 'Eb'
        Nota=4;
        case 'Mi'
        Nota=5;
        case 'Fa'
        Nota=6;
        case 'F#'
        Nota=7;
        case 'Sol'
        Nota=8;
        case 'G#'
        Nota=9;
        case 'La'
        Nota=10;
        case 'Bb'
        Nota=11;
        case 'Si'
        Nota=12;
    otherwise 
        Nota=NULL;%girilen nota yoksa NULL döndürür.
        
end
frekans=f0*2^((oktav-4)+(Nota-10)/12);%nota tablosundaki frekanslar arasý iliþkinin matematiksel formülüdür.
                                      %f0=440 temel frekansdir.
end
