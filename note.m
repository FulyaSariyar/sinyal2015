function [h,tt] = note(frekans,vurus)
    fs=8192;%ornekleme frekansi
    tt=0:1/fs:vurus; 
    x=sin(2*pi*frekans*tt);
    
    A=[linspace(0,1.5,2*fs*vurus/8),...;%attack süresi
    linspace(1.5,1,fs*vurus/8),...;     %decay süresi   
    linspace(1,1,4*fs*vurus/8),...;     %sustain süresi
    linspace(1,0,fs*vurus/8+1)];        %release süresi  

    xx=A.*sin(2*pi*frekans*tt);%A vektörü sinüs sinyali ile carpilarak zarfa sokulmus oluyor.
                               %burada sin(2*pi*frekans*tt)yerine direk x'de yazabilirdim.
                           
                               
                              
                  
    h1=0.80*sin(2*pi*frekans*tt*2); %1. harmonik (%80)
    h2=0.40*sin(2*pi*frekans*tt*3); %2. harmonik (%40)
    h3=0.10*sin(2*pi*frekans*tt*4); %3. harmonik (%10)
    h=x+h1+h2+h3;
    plot(tt,h);
end