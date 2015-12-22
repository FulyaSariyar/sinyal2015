function [xx,tt]=note(frekans,vurus)
fs=8192;
tt=0:1/fs:vurus;
xx=sin(2*pi*frekans*tt);
t1=0:1/fs:2*vurus/8;
x1=3/2*sin(2*pi*frekans*t1)
t2=2*vurus/8:1/fs:3*vurus/8
x2=2/3*sin(2*pi*frekans*t2)
t3=3*vurus/8:1/fs:7*vurus/8
x3=1
t4=7*vurus/8:1/fs:8*vurus/8
x4=sin(2*pi*frekans*t4)

end