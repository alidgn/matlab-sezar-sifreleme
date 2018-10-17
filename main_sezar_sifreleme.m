% ###################### ÞÝFRELEME BLOÐU BAÞLANGICI ######################

% Ne kadar harf kaydýrýlacaðý burada alýnýr.
HH = findobj(gcf,'Tag','txt_kaydir_sifrele');      % txt_kaydir_sifrele etiketli nesneyi arar.
txt_kaydir_sifrele = str2double(get(HH,'String')); % Girilen deðeri double'a dönüþtürür.

% Þifrelenecek metin burada alýnýr.
HH = findobj(gcf,'Tag','txt_sifrele'); % "txt_sifrele" etiketli nesneyi arar.
txt_sifrele = get(HH,'String'); % "txt_sifrele" kutusundaki metin bir deðiþkene yazýlýr.

% Kaydýrýlacak harf sayýsýnýn kontrolü yapýlýr.
if txt_kaydir_sifrele>26
    txt_sifrelenmis = ['Hatalý Girdi! Lütfen 0-26 arasý bir sayý giriniz.'];
    txt_sifrelenmis = txt_sifrelenmis; % Deðiþkenden textBox'a yazýlýr.
    HH = findobj(gcf,'Tag','txt_sifrelenmis'); % "txt_sifrelenmis" alanýný arar.
    set(HH,'String',txt_sifrelenmis) % "txt_sifrelenmis" alanýna yazýlýr.
else 
    C=txt_sifrele+txt_kaydir_sifrele; % C dizisine girilen metindeki her karakterin ascii deðerine kaydýrma miktarý eklenir.
    dizi=find(C>122); % "dizi" adlý indis tutan bir diziye C dizisindeki, ascii deðeri 122'den büyük deðerlerin indisleri atýlýr.
    C(dizi)=C(dizi)-26; % C'nin "dizi"de tutulan indis deðerlerine karþýlýk gelen ascii deðerlerinden 26 çýkarýlýr.
	dizi=find(C>90&C<97); % Daha sonra büyük harf kontrolü yapýlýr ve dönen indisler tutulur.
    C(dizi)=C(dizi)-26; % Tutulan bu büyük harflerin ascii kodlarýndan da 26 çýkarýlýr.
    dizi=find(txt_sifrele==32); % Boþluk kontrolü yapýlýr
    C(dizi)=32; % boþluk varsa deðeri eski haline getirilir.
    txt_sifrelenmis=char(C); % Bir deðiþkene tüm yeni deðerler atanýr.
    HH = findobj(gcf,'Tag','txt_sifrelenmis'); % "txt_sifrelenmis" etiketli nesneyi arar.
    set(HH,'String',txt_sifrelenmis) % Bulunan bu text alanýna deðiþkende tutulanlar yazdýrýlýr.
end
% ######################### ÞÝFRELEME BLOÐU SONU #########################



% ##################### ÞÝFRE ÇÖZME BLOÐU BAÞLANGICI #####################

% Ne kadar harf kaydýrýlacaðý burada alýnýr.
HH = findobj(gcf,'Tag','txt_kaydir_coz'); % "txt_kaydir_coz" etiketli nesneyi arar.
txt_kaydir_coz = str2double(get(HH,'String')); % Girilen deðeri double'a dönüþtürür.

% Þifreli metin burada alýnýr.
HH = findobj(gcf,'Tag','txt_coz'); % "txt_coz" etiketli nesneyi arar.
txt_coz = get(HH,'String'); % "txt_coz" kutusundaki metin bir deðiþkene yazýlýr.

% Kaydýrýlacak harf sayýsýnýn kontrolü yapýlýr.
if txt_kaydir_coz>26
    txt_cozulmus = ['Hatalý Girdi! Lütfen 0-26 arasý bir sayý giriniz.'];
    txt_cozulmus=txt_cozulmus; % Deðiþkenden textBox'a yazýlýr.
    HH = findobj(gcf,'Tag','txt_cozulmus'); % "txt_cozulmus" alanýný arar.
    set(HH,'String',txt_cozulmus) % "txt_cozulmus" alanýna yazýlýr.
else 
    % Þifreleme iþleminde yapýlanlarýn tersi iþlemleri yapýlýr.
    txt_cozulmus=txt_coz-txt_kaydir_coz; 
    dizi=find(txt_cozulmus<65);
    txt_cozulmus(dizi)=txt_cozulmus(dizi)+26;    
    dizi=find(txt_cozulmus<97&txt_cozulmus>90);
    txt_cozulmus(dizi)=txt_cozulmus(dizi)+26;
    %dizi=find(txt_cozulmus<90&txt_cozulmus>70);
    %txt_cozulmus(dizi)=txt_cozulmus(dizi)+26; 
    dizi=find(txt_coz==32);
    txt_cozulmus(dizi)=32;
    txt_cozulmus=char(txt_cozulmus);
    HH = findobj(gcf,'Tag','txt_cozulmus'); 
    set(HH,'String',txt_cozulmus)
end
% ######################## ÞÝFRE ÇÖZME BLOÐU SONU ########################