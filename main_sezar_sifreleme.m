% ###################### ��FRELEME BLO�U BA�LANGICI ######################

% Ne kadar harf kayd�r�laca�� burada al�n�r.
HH = findobj(gcf,'Tag','txt_kaydir_sifrele');      % txt_kaydir_sifrele etiketli nesneyi arar.
txt_kaydir_sifrele = str2double(get(HH,'String')); % Girilen de�eri double'a d�n��t�r�r.

% �ifrelenecek metin burada al�n�r.
HH = findobj(gcf,'Tag','txt_sifrele'); % "txt_sifrele" etiketli nesneyi arar.
txt_sifrele = get(HH,'String'); % "txt_sifrele" kutusundaki metin bir de�i�kene yaz�l�r.

% Kayd�r�lacak harf say�s�n�n kontrol� yap�l�r.
if txt_kaydir_sifrele>26
    txt_sifrelenmis = ['Hatal� Girdi! L�tfen 0-26 aras� bir say� giriniz.'];
    txt_sifrelenmis = txt_sifrelenmis; % De�i�kenden textBox'a yaz�l�r.
    HH = findobj(gcf,'Tag','txt_sifrelenmis'); % "txt_sifrelenmis" alan�n� arar.
    set(HH,'String',txt_sifrelenmis) % "txt_sifrelenmis" alan�na yaz�l�r.
else 
    C=txt_sifrele+txt_kaydir_sifrele; % C dizisine girilen metindeki her karakterin ascii de�erine kayd�rma miktar� eklenir.
    dizi=find(C>122); % "dizi" adl� indis tutan bir diziye C dizisindeki, ascii de�eri 122'den b�y�k de�erlerin indisleri at�l�r.
    C(dizi)=C(dizi)-26; % C'nin "dizi"de tutulan indis de�erlerine kar��l�k gelen ascii de�erlerinden 26 ��kar�l�r.
	dizi=find(C>90&C<97); % Daha sonra b�y�k harf kontrol� yap�l�r ve d�nen indisler tutulur.
    C(dizi)=C(dizi)-26; % Tutulan bu b�y�k harflerin ascii kodlar�ndan da 26 ��kar�l�r.
    dizi=find(txt_sifrele==32); % Bo�luk kontrol� yap�l�r
    C(dizi)=32; % bo�luk varsa de�eri eski haline getirilir.
    txt_sifrelenmis=char(C); % Bir de�i�kene t�m yeni de�erler atan�r.
    HH = findobj(gcf,'Tag','txt_sifrelenmis'); % "txt_sifrelenmis" etiketli nesneyi arar.
    set(HH,'String',txt_sifrelenmis) % Bulunan bu text alan�na de�i�kende tutulanlar yazd�r�l�r.
end
% ######################### ��FRELEME BLO�U SONU #########################



% ##################### ��FRE ��ZME BLO�U BA�LANGICI #####################

% Ne kadar harf kayd�r�laca�� burada al�n�r.
HH = findobj(gcf,'Tag','txt_kaydir_coz'); % "txt_kaydir_coz" etiketli nesneyi arar.
txt_kaydir_coz = str2double(get(HH,'String')); % Girilen de�eri double'a d�n��t�r�r.

% �ifreli metin burada al�n�r.
HH = findobj(gcf,'Tag','txt_coz'); % "txt_coz" etiketli nesneyi arar.
txt_coz = get(HH,'String'); % "txt_coz" kutusundaki metin bir de�i�kene yaz�l�r.

% Kayd�r�lacak harf say�s�n�n kontrol� yap�l�r.
if txt_kaydir_coz>26
    txt_cozulmus = ['Hatal� Girdi! L�tfen 0-26 aras� bir say� giriniz.'];
    txt_cozulmus=txt_cozulmus; % De�i�kenden textBox'a yaz�l�r.
    HH = findobj(gcf,'Tag','txt_cozulmus'); % "txt_cozulmus" alan�n� arar.
    set(HH,'String',txt_cozulmus) % "txt_cozulmus" alan�na yaz�l�r.
else 
    % �ifreleme i�leminde yap�lanlar�n tersi i�lemleri yap�l�r.
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
% ######################## ��FRE ��ZME BLO�U SONU ########################