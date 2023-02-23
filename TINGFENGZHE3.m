function [ A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,X ] = TINGFENGZHE3( ~ )
Fs=8000;
fs=8000;
Y=audiorecorder(Fs,8,1);
Y.record;
pause(10);
Y.pause;
%[y,fs]=audioread('dialWav.wav');
y = Y.getaudiodata ('double');
yf=0.185;%按键音阈值1,声卡，0.2,例子0.02
[mmm,nnn]=size(y);
magf=mmm/9000;%按键音阈值2,声卡，12000,例子0.8
%magff=697;
a=0;
k=1;
l=1;%行数
f0=zeros(11,100);%储存按键音频率
mag0=zeros(11,100);

N=3000;
mag1=zeros(N+1,11);%储存各个按键音幅值
n=0:N-1;
NN=mmm;
nn=0:mmm-1;
Z=fft(y);
Z=fftshift(Z);
MAG=abs(Z)*2*10^3/NN;
F=(0:NN-1)*fs/NN;

while(k>=1&&k<=NN)
if(y(k)>yf)%录音参数：0.3
n=0:N-1;
if(k+N<=NN)
    y1=y(k:k+N);%以3500次分段处理
end;
if(k+N>NN)
    y1=y(NN-N:NN);
end;
z=fft(y1);
z=fftshift(z);
mag=abs(z)*2*10^3/N;
mag1(:,l)=mag;%此处有问题
%an=angle(z)/pi*180;
f=(0:N)*fs/N;

i=1;
j=1;
while(i<=(N/2))
if(mag(i)>magf)    %提取出需要的频率，录音参数8
    f0(l,j)=(N/2-i)*(NN/N)*(79616/NN)/10;
    mag0(l,j)=mag(i);%无用
    j=j+1;
end;
i=i+1;
end;



k=k+N;
l=l+1;
end;
k=k+1;
end;

p=1;
r=zeros(16,2);
r1=zeros(1,16);
vv=1;
mag2=mag1';
[ll,jj]=size(f0);
zzz=0;
%dds=0;
l=1;
while(l>=1&&l<=(ll-zzz))%时刻调整f0行数
    dd=0;
    ddd=0;
    for j=1:jj
        if(f0(l,j)>=670&&f0(l,j)<=960)%删选出不是按键产生的频率
            dd=dd+1;
        end;
        if(f0(l,j)>=1200&&f0(l,j)<=1650)%删选出不是按键产生的频率
            ddd=ddd+1;
        end;
    end;
    if(dd==0||ddd==0)%删除
        f0(l,:)=[];
        mag2(l,:)=[];
        zzz=zzz+1;
        l=0;
    end;
l=l+1;
end;

[lll,jjj]=size(f0);

fff=10;
while(p>=1&&p<=lll)
    q=1;
    while(q>=1&&q<=jjj)
        if(abs(f0(p,q)-697)<=fff)
            r(1,1)=1;
            r(2,1)=1;
            r(3,1)=1;
            r(4,1)=1;
        end;
        if(abs(f0(p,q)-770)<=fff)
            r(5,1)=1;
            r(6,1)=1;
            r(7,1)=1;
            r(8,1)=1;
        end;
        if(abs(f0(p,q)-852)<=fff)
            r(9,1)=1;
            r(10,1)=1;
            r(11,1)=1;
            r(12,1)=1;
        end;
        if(abs(f0(p,q)-941)<=fff)
            r(13,1)=1;
            r(14,1)=1;
            r(15,1)=1;
            r(16,1)=1;
        end;
        if(abs(f0(p,q)-1209)<=fff)
            r(1,2)=1;
            r(5,2)=1;
            r(9,2)=1;
            r(13,2)=1;
        end;
        if(abs(f0(p,q)-1336)<=fff)
            r(2,2)=1;
            r(6,2)=1;
            r(10,2)=1;
            r(14,2)=1;
        end;
        if(abs(f0(p,q)-1477)<=fff)
            r(3,2)=1;
            r(7,2)=1;
            r(11,2)=1;
            r(15,2)=1;
        end;
        if(abs(f0(p,q)-1633)<=fff)
            r(4,2)=1;
            r(8,2)=1;
            r(12,2)=1;
            r(16,2)=1;
        end;
        q=q+1;
    end;

for v=1:16;
    if(r(v,1)==1&&r(v,2)==1)
        r1(vv)=v;
    end;
end;
r=zeros(16,2);
vv=vv+1;
p=p+1;
end;

r2=r1;%电话号码
for iii=1:11%译码
    if(r1(iii)==4)
        r2(iii)=11;
    end;
    if(r1(iii)==5)
        r2(iii)=4;
    end;
    if(r1(iii)==6)
        r2(iii)=5;
    end;
    if(r1(iii)==7)
        r2(iii)=6;
    end;
    if(r1(iii)==8)
        r2(iii)=12;
    end;
    if(r1(iii)==9)
        r2(iii)=7;
    end;
    if(r1(iii)==10)
        r2(iii)=8;
    end;
    if(r1(iii)==11)
        r2(iii)=9;
    end;
    if(r1(iii)==12)
        r2(iii)=13;
    end;
    if(r1(iii)==13)
        r2(iii)=15;
    end;
    if(r1(iii)==14)
        r2(iii)=0;
    end;
    if(r1(iii)==15)
        r2(iii)=16;
    end;
    if(r1(iii)==16)
        r2(iii)=14;
    end;
end

A=r2(1);
B=r2(2);
C=r2(3);
D=r2(4);
E=r2(5);
F=r2(6);
G=r2(7);
H=r2(8);
I=r2(9);
J=r2(10);
K=r2(11);
L=r2(12);
M=r2(13);
N=r2(14);
O=r2(15);
P=r2(16);
X=lll;
end

