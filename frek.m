function [ frekans ] = frek( nota, oktav )
f0=440; %Temel frekans(referans) degeri La4
if nargin == 1; 
    oktav = '4';% oktav degeri verilmemisse 4. oktav kabul eder.
end
switch nota %girilen notaya göre deger 
        case 'Do'
        Nota=1;
        case 'Dod'
        Nota=2;
        case 'Re'
        Nota=3;
        case 'Mib'
        Nota=4;
        case 'Mi'
        Nota=5;
        case 'Fa'
        Nota=6;
        case 'Fad'
        Nota=7;
        case 'Sol'
        Nota=8;
        case 'Sold'
        Nota=9;
        case 'La'
        Nota=10;
        case 'Sib'
        Nota=11;
        case 'Si'
        Nota=12;
        case 'sus'
        Nota=13;
        if Nota==13
            frekans=NULL;%Nota degeri 13 oldugu zaman frekans NULL döndürülür.
        end
    otherwise 
        Nota=NULL;%girilen nota yoksa NULL döndürür.
        
end
frekans=f0*2^((oktav-4)+(Nota-10)/12);%nota tablosundaki frekanslar arasi iliskinin matematiksel formülüdür.
                                      %f0=440 temel frekansdir.
end
