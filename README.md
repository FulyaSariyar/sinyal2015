FULYA SARIYAR
030113010
sinyal isleme
Proje:MATLAB ile sentezleme



notalar.png:Ýsleyecegim müzik notalarinin görseli bulunmaktadir.


frek.m:Notalar ile oktavlar arasindaki iliskiyi hesaplayan fonksiyon bulunmaktadir.
fn=referans*2^((oktav-4)+(Nota-10)/12)
fn:frekans
referans: f0 yani La4=440


note.m:Disaridan aldigi parametrelere göre sinüs sinyali döndürür ve icerisinde sinüs sinyali zarflanmistir.


notalar.txt:Ýcerisinde nota,oktav,ölcü bilgileri bu sirada bulunmaktadir.


sentez.m:Müzigin sentezlendigi dosyadir.