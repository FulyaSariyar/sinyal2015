function [xx,tt] = note(frekans,vurus)
    fs=8192;%ornekleme frekansi
    tt=0:1/fs:vurus; 
    
    A=[linspace(0,1.5,2*fs*vurus/8),...;%attack süresi
    linspace(1.5,1,fs*vurus/8),...;     %decay süresi   
    linspace(1,1,4*fs*vurus/8),...;     %sustain süresi
    linspace(1,0,fs*vurus/8+1)];        %release süresi  

    xx=A.*sin(2*pi*frekans*tt);%A vektörü sinüs sinyali ile carpilarak zarfa sokulmus oluyor.
                  
   
    
end