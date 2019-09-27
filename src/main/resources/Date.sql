create schema if not exists Restaurant;
USE Restaurant;

create table if not exists Restaurant.categorie_produs
(
  id_categorie_produs int not null auto_increment primary key,
  nume_categorie_produs varchar(45) not null
);

insert into Restaurant.categorie_produs (nume_categorie_produs) values
  ('Gustari'),
  ('Ciorbe'),
  ('Salate speciale'),
  ('Peste'),
  ('Gratar'),
  ('Preparate calde'),
  ('Salate'),
  ('Desert'),
  ('Racoritoare'),
  ('Cafea/Ceai'),
  ('Bere'),
  ('Diverse bucatarie');

create table if not exists Restaurant.produse
(
  id_produs int not null auto_increment primary key,
  id_categorie int not null,
  nume_produs varchar(60) not null,
  descriere_produs varchar(250) default null,
  pret_unitar DECIMAL(7,2) default 0 not null,
  constraint id_categorie foreign key (id_categorie) references Restaurant.categorie_produs (id_categorie_produs)
);

create index id_categorie_idx on Restaurant.produse (id_categorie);

insert into Restaurant.produse (id_categorie, nume_produs, descriere_produs, pret_unitar) values
  (1, 'Cașcaval pane cu cartofi prăjiți', '', 19.50),
  (1, 'Fasole bătută ca la Buzău (250g)', 'Cu ceapă călită şi usturoi - produs vegetarian', 9.50),
  (1, 'Gustarea bibliotecarului (520g)', 'Frigărui de pui cu bacon, chifteluțe cu susan, bulete de cașcaval, ciuperci umplute cu brânză de burduf, ardei gras', 30.50),
  (1, 'Gustarea francezului (300g)', 'Parfait din ficat de pui, fasole bătută cu ulei de trufe, castraveciori murați', 24.50),
  (1, 'Taifas (400g)', 'Hummus, sos Pesto, pastă de ardei copt, bastonete de legume, ardei iute murat', 27.50),
  (1, 'Gustarea ciobanului (500g)', 'Mămăligă cu brânză, smântână și ou', 23.50),
  (1, 'Gustarea grădinarului (390g)', 'Salată de vinete proaspete, zacuscă tradiţională, fasole bătută, roșii, ceapă, măsline Kalamata, pâine prăjită', 9.50),
  (1, 'Salată de vinete oltenească (280g)', 'Vinete proaspete coapte pe tablă și tocate la mână - produs vegetarian', 9.50),
  (2, 'Borș de cocoș cu tăiței de casă (420g)', 'Servit cu ardei iute', 14.00),
  (2, 'Ciorbă de burtă (430 g)', 'Servită cu ardei iute', 14.50),
  (2, 'Ciorbă de fasole cu afumătură (440 g)', 'Servită cu ceapă', 13.50),
  (2, 'Ciorbă de văcuță (350g)', 'Servită cu ardei iute', 14.50),
  (2, 'Cremă de legume cu crutoane (400g)', '', 12.50),
  (2, 'Cremă de roșii cu crutoane', '', 12.50),
  (3, 'Salată Atena (490g)', 'Castraveţi, roșii, brânză tip Feta, ulei de măsline, ceapă roșie, ardei gras, măsline Kalamata', 27.00),
  (3, 'Salată Genova (240g)', 'Mix de salată, mușchi de vițel pregătit la grătar, mango, roșii cherry, parmezan, muguri de pin, dressing vinaigrette', 38.00),
  (3, 'Salată Lyon (350g)', 'Salată Romaine, piept de pui, ardei gras roșu, ardei gras galben, morcovi, brânză gorgonzola, mere roșii, dressing bluecheese, semințe susan negru', 29.50),
  (3, 'Salată Nisa (345g)', 'Ton, anchois, ou fiert, cartofi nature, fasole verde, mix de salată, dressing vinaigrette', 33.50),
  (3, 'Salată Normandia (220g)', 'Mix de salată, piept de rață afumat, sfeclă roșie, pere, brânză capră, muguri de pin, rodie, dressing vinaigrette, semințe susan negru, ulei măsline extra virgin, baghetă', 30.00),
  (3, 'Salată vegetariană (290g)', 'Avocado, porumb, țelină Apio, năut fiert, roșii cherry, nucă, rodie, morcov, dressing Vinaigrette, mix de salată, semințe de susan negru', 23.50),
  (4, 'Somon la grătar (200g)', 'Cu sos de roșii și usturoi, lămâie', 43.50),
  (4, 'Doradă la grătar (230g)', 'Cu sos de roșii și usturoi, lămâie', 44.50),
  (4, 'Păstrăv la grătar (240g)', 'Cu sos de roșii și usturoi, lămâie', 35.00),
  (4, 'Șalău la cuptor cu legume (235g)', 'Cu baby spanac și ridichi', 36.50),
  (5, 'Platou marele grătar (600g/ 250g/ 100g)', 'Mușchi de vită , pulpă de pui dezosată, 2 mici de Medgidia, frigăruie de porc, cârnați afumați, cartofi copți cu parmezan, castraveți murați, sos barbeque, muștar', 82.00),
  (5, 'Platoul Micilor (640g/ 360g)', '2 mici de Obor, 2 mici de Medgidia, 2 mici de Lehliu Gară, 2 mici de-ai lui Iordache, serviți cu cartofi prăjiți si 2 tipuri de muștar', 49.50),
  (5, 'Friptura lui Pintea Hipsterul (450g/ 360g/ 200g)', 'Friptură de porc servită cu cartofi prăjiţi și varză albă', 44.50),
  (5, 'Coaste de porc marinate la cuptor (500g/ 180g/ 50g)', 'Servite cu cartofi prăjiți și sos Barbeque', 53.50),
  (5, 'Platou de bere (4 persoane) (2400 g)', 'Fleică de porc, ceafă de porc, mici de Medgidia (8 buc), cârnați de porc, aripioare de pui, cartofi prăjiți, mujdei de usturoi cu smântână, muștar', 135.50),
  (5, 'Platou tradițional (1025g)', 'Cârnați de Pleșcoi, micii lui Iordache, frigăruie de berbecuț, pastramă de oaie, brânză de burduf, mămăligă friptă, salată de varză murată', 86.00),
  (5, 'Antricot Uruguay Angus (250g/ 150g/ 25g)', 'Servit cu cartofi copţi cu parmezan și mix de salată', 68.50),
  (5, 'Ceafă de porc la grătar (200g)', 'Servită cu cartofi prăjiți', 31.50),
  (5, 'Frigăruie de oaie cu ceapă (200g/ 300g)', 'Servită cu mămăligă rumenită', 39.00),
  (5, 'Frigăruie de porc cu legume (200g / 180g)', 'Servită cu cartofi prăjiţi', 29.00),
  (5, 'Mușchi de vițel rosé (210g/ 100g/ 25g)', 'Servit cu cartofi copţi cu parmezan și mix de salată', 78.00),
  (5, 'Pulpe de pui aurii la grătar (290g)', 'Servite cu cartofi prăjiţi', 30.50),
  (5, 'Pastramă de oaie (240 g / 300 g / 50 g)', 'Cu mămăligă rumenită și brânză de burduf', 41.50),
  (6, 'Pui la ceaun (700 g / 300 g / 50 g)', 'Cu mămăliguță rumenită și mujdei', 28.50),
  (6, 'Sărmăluțe românești (400g / 300g)', 'Cu mămăliguță și ciușcă de ardei iute', 30.50),
  (6, 'Tocăniță sănătoasă cu mămăligă (300g / 300g)', 'Din legume zemoase și gustoase, servită cu mămăligă - produs vegetarian', 17.50),
  (6, 'Varză a la Cluj (400 g)', 'Varză murată, carne tocată porc-vită, smântână', 24.50),
  (6, 'Mâncarea grăbitului (200g/ 300g/ 200g)', 'Carne la garniță și cârnați, mămăligă și salată de varză murată', 44.50),
  (6, 'Bărcuțe de vinete umplute cu carne (280g)', '', 26.50),
  (6, 'Sărmăluțe românești (400g / 300g)', 'Cu mămăliguță și ciușcă de ardei iute', 29.90),
  (6, 'Șnițel Franz Iosif (220g)', 'Piept de pui sănătos tras în pesmet', 24.00),
  (6, 'Tigaie de duminică (280g)', 'Bucăţi aurii de pui trase la tigaie cu legume proaspete', 26.50),
  (7, 'Mix de salată (50g)', 'Produs vegetarian', 9.50),
  (7, 'Salată de ardei copți (210g)', 'Produs vegetarian', 12.00),
  (7, 'Salată de castraveți murați (200g)', '', 9.00),
  (7, 'Salată de ceapă roșie (210g)', '', 5.50),
  (7, 'Salată de roșii (300g)', '', 9.90),
  (7, 'Salată de roșii și castraveți (230g)', 'Produs vegetarian', 9.90),
  (7, 'Salată de varză albă (200g)', 'Produs vegetarian', 8.90),
  (7, 'Salată de varză murată (200g)', '', 8.90),
  (8, 'Tort de ciocolată și  vișine (220g)', '', 18.00),
  (8, 'Budincă de curmale (260g)', 'Desert din curmale și unt, cu înghețată de vanilie și caramel', 21.00),
  (8, 'Clătite cu dulceaţă de vişine (200g)', '', 13.00),
  (8, 'Clătite cu brânză dulce și stafide (200g)', '', 13.50),
  (8, 'Înghețată facută-n casă (150g)', '', 18.00),
  (8, 'Papanași (400g)', 'Cu smântână și dulceață', 19.50),
  (8, 'Tartă de mere cu bezea (210g)', '', 13.50),
  (8, 'Tort de biscuiți (200g)', '', 16.00),
  (9, 'Apă plată / minerală Borsec (330ml)', '', 8.00),
  (9, 'Apă plată / minerală Borsec (750ml)', '', 11.50),
  (9, 'Apă plată / minerală Bucovina (330ml)', '', 7.50),
  (9, 'Apă plată / minerală Bucovina (750ml)', '', 11.50),
  (9, 'Citronadă miere (500ml)', '', 16.00),
  (9, 'Evervess (250ml)', '', 9.00),
  (9, 'Fresh de grapefruit (330 ml)', '', 18.00),
  (9, 'Fresh de grapefruit (500 ml)', '', 25.50),
  (9, 'Fresh de mere (330ml)', '', 15.50),
  (9, 'Fresh de mere (500ml)', '', 25.00),
  (9, 'Fresh portocale și grapefruit (330 ml)', '', 17.50),
  (9, 'Fresh portocale și grapefruit (500ml)', '', 25.00),
  (9, 'Fresh de portocale (500ml)', '', 24.00),
  (9, 'Lapte dulce (330ml)', '', 6.50),
  (9, 'Limonadă cu cătină (500ml)', '', 18.00),
  (9, 'Limonadă cu sirop de soc (500ml)', '', 15.50),
  (9, 'Pepsi, Mirinda, 7up, Mountain Dew (250ml)', '', 9.00),
  (9, 'Red Bull energizant (250ml)', '', 16.00),
  (10, 'Affogato Coffee', 'Espresso, îngheţată', 12.00),
  (10, 'Amaretto Coffee', 'Espresso, amaretto', 15.50),
  (10, 'Amaretto Frappe', '', 16.50),
  (10, 'Amaretto Frappe', '', 11.50),
  (10, 'Cappuccino', '', 11.90),
  (10, 'Cappuccino fără cofeină', '', 11.90),
  (10, 'Ceai românesc', 'Mușețel, tei, sunătoare, busuioc, mentă, salvie și  liniște de vară (amestec de plante)', 8.20),
  (10, 'Ceai Julius Meinl', 'Darjeeling Monteviot, Earl Grey, Wild Cherry, Chinese Jasmine, Mentă, Mușetel', 8.00),
  (10, 'Ciocolată Caldă Julius Meinl', 'Arome: Moro Ciok și Bianca Bahia', 13.00),
  (10, 'Espresso', '', 9.20),
  (10, 'Espresso dublu', '', 16.00),
  (10, 'Espresso fără cofeină', '', 9.20),
  (10, 'Irish Coffee', '', 17.50),
  (10, 'Sweet Frappé', 'Cafea instant, lapte, frișcă, topping, îngheţată, zahăr', 18.00),
  (11, 'Azuga nepasteurizată (500ml)', '', 16.00),
  (11, 'Cidru Kingswood (400ml)', '', 11.50),
  (11, 'Grolsch (400ml)', '', 11.50),
  (11, 'Grolsch (500ml)', '', 12.00),
  (11, 'Grolsch swing top (450ml)', '', 15.50),
  (11, 'Grolsch Weizen (500ml)', '', 15.50),
  (11, 'Peroni la metru', '', 82.00),
  (11, 'Ursus la metru', '', 66.50),
  (11, 'Metru Ursus Nefiltrată', '', 89.00),
  (11, 'Peroni Nastro Azurro (330ml)', '', 11.50),
  (11, 'Peroni Nastro Azzurro (400ml)', 'draught', 10.50),
  (11, 'Ursus Premium (400ml)', 'draught', 8.50),
  (11, 'Ursus Premium (500ml)', '', 10.00),
  (11, 'Ursus Black (500ml)', '', 11.00),
  (11, 'Ursus Cooler (500ml)', '', 11.50),
  (12, 'Pâine rustică albă (200g)', '', 5.20),
  (12, 'Pâine rustică neagră (200g)', '', 6.00),
  (12, 'Baghetă rustică (150g)', '', 5.00),
  (12, 'Pâine rustică albă (100g)', '', 2.60),
  (12, 'Ardei iute (1 buc)', '', 0.50),
  (12, 'Bacon (50g)', '', 3.80),
  (12, 'Brânză feta (50g)', '', 2.70),
  (12, 'Brânză gorgonzola (50g)', '', 7.00),
  (12, 'Dulceață (50g)', '', 3.20),
  (12, 'Maioneză (50g)', '', 3.00),
  (12, 'Măsline (50g)', '', 2.70),
  (12, 'Mujdei (50g)', '', 2.00),
  (12, 'Smântână (70g)', '', 2.50);


create table if not exists Restaurant.stoc_produse
(
  id_intrare int not null auto_increment primary key,
  id_produs int not null unique,
  nivel_existent int not null,
  nivel_alerta int default 10 not null,
  foreign key (id_produs) references Restaurant.produse (id_produs)
);

insert into Restaurant.stoc_produse (id_produs, nivel_existent, nivel_alerta) values
  (1, 30, 5),
  (2, 20, 3),
  (3, 20, 5),
  (4, 15, 5),
  (5, 30, 5),
  (6, 50, 5),
  (7, 30, 5),
  (8, 30, 5),
  (9, 30, 5),
  (10, 30, 5),
  (11, 30, 5),
  (12, 30, 5),
  (13, 30, 5),
  (14, 30, 5),
  (15, 30, 5),
  (16, 30, 5),
  (17, 30, 5),
  (18, 30, 5),
  (19, 30, 5),
  (20, 30, 5),
  (21, 30, 5),
  (22, 30, 5),
  (23, 30, 5),
  (24, 30, 5),
  (25, 30, 5),
  (26, 30, 5),
  (27, 30, 5),
  (28, 30, 5),
  (29, 30, 5),
  (30, 30, 5),
  (31, 30, 5),
  (32, 30, 5),
  (33, 30, 5),
  (34, 30, 5),
  (35, 30, 5),
  (36, 30, 5),
  (37, 30, 5),
  (38, 30, 5),
  (39, 30, 5),
  (40, 30, 5),
  (41, 30, 5),
  (42, 30, 5),
  (43, 30, 5),
  (44, 30, 5),
  (45, 30, 5),
  (46, 30, 5),
  (47, 30, 5),
  (48, 30, 5),
  (49, 30, 5),
  (50, 30, 5),
  (51, 30, 5),
  (52, 30, 5),
  (53, 30, 5),
  (54, 30, 5),
  (55, 30, 5),
  (56, 30, 5),
  (57, 30, 5),
  (58, 30, 5),
  (59, 30, 5),
  (60, 30, 5),
  (61, 30, 5),
  (62, 30, 5),
  (63, 300, 5),
  (64, 300, 5),
  (65, 300, 5),
  (66, 300, 5),
  (67, 30, 5),
  (68, 30, 5),
  (69, 30, 5),
  (70, 30, 5),
  (71, 30, 5),
  (72, 30, 5),
  (73, 30, 5),
  (74, 30, 5),
  (75, 30, 5),
  (76, 30, 5),
  (77, 30, 5),
  (78, 30, 5),
  (79, 30, 5),
  (80, 30, 5),
  (81, 30, 5),
  (82, 30, 5),
  (83, 30, 5),
  (84, 30, 5),
  (85, 30, 5),
  (86, 30, 5),
  (87, 30, 5),
  (88, 30, 5),
  (89, 30, 5),
  (90, 30, 5),
  (91, 30, 5),
  (92, 30, 5),
  (93, 30, 5),
  (94, 30, 5),
  (95, 30, 5),
  (96, 30, 5),
  (97, 30, 5),
  (98, 30, 5),
  (99, 30, 5),
  (100, 30, 5),
  (101, 30, 5),
  (102, 30, 5),
  (103, 30, 5),
  (104, 30, 5),
  (105, 30, 5),
  (106, 30, 5),
  (107, 30, 5),
  (108, 30, 5),
  (109, 30, 5),
  (110, 30, 5),
  (111, 30, 5),
  (112, 30, 5),
  (113, 30, 5),
  (114, 30, 5),
  (115, 30, 5),
  (116, 30, 5),
  (117, 30, 5),
  (118, 30, 5),
  (119, 30, 5),
  (120, 30, 5),
  (121, 30, 5),
  (122, 30, 5);


create table if not exists Restaurant.ospatari
(
  id_ospatar int auto_increment primary key,
  nume_ospatar varchar(45) not null,
  prenume_ospatar varchar(45) null
);

insert into Restaurant.ospatari (nume_ospatar, prenume_ospatar) values
  ('Cristina', 'ENE'),
  ('Brad','PITT'),
  ('Kim','KARDASHIAN'),
  ('Miley','CYRUS'),
  ('Taylor','SWIFT'),
  ('Ben','AFFLEK'),
  ('Jennifer','ANISTON'),
  ('Angelina','JOLIE'),
  ('Tom','CRUISE'),
  ('Rihana',''),
  ('Mila','KUNIS'),
  ('Paris','HILTON'),
  ('George', 'CLOONEY'),
  ('Charlize', 'THERON')
;

create table if not exists Restaurant.mese
(
  id_masa int auto_increment primary key,
  numar_masa int not null,
  capacitate_masa int not null
);

insert into Restaurant.mese (numar_masa, capacitate_masa) values
  (1, 4),
  (2, 4),
  (3, 4),
  (4, 4),
  (5, 6),
  (6, 4),
  (7, 4),
  (8, 4),
  (9, 3),
  (10, 4)
;
create index numar_masa_idx on Restaurant.mese (numar_masa);


create table if not exists Restaurant.mese_ospatari
(
  data date not null,
  numar_masa int not null,
  id_ospatar int not null,
  constraint foreign key(numar_masa) references Restaurant.mese (numar_masa),
  constraint foreign key(id_ospatar) references Restaurant.ospatari (id_ospatar)
);

insert into Restaurant.mese_ospatari (data, numar_masa, id_ospatar) values
  ('2019-05-21', 1, 1),
  ('2019-05-21', 2, 1),
  ('2019-05-21', 3, 1),
  ('2019-05-21', 4, 2),
  ('2019-05-21', 5, 2),
  ('2019-05-21', 6, 3),
  ('2019-05-21', 7, 3),
  ('2019-05-21', 8, 3),
  ('2019-05-21', 9, 4),
  ('2019-05-21', 10, 4),
  ('2019-05-22', 1, 5),
  ('2019-05-22', 2, 5),
  ('2019-05-22', 3, 5),
  ('2019-05-22', 4, 6),
  ('2019-05-22', 5, 6),
  ('2019-05-22', 6, 7),
  ('2019-05-22', 7, 7),
  ('2019-05-22', 8, 7),
  ('2019-05-22', 9, 8),
  ('2019-05-22', 10, 8),
  ('2019-05-23', 1, 9),
  ('2019-05-23', 2, 9),
  ('2019-05-23', 3, 9),
  ('2019-05-23', 4, 10),
  ('2019-05-23', 5, 10),
  ('2019-05-23', 6, 11),
  ('2019-05-23', 7, 11),
  ('2019-05-23', 8, 11),
  ('2019-05-23', 9, 12),
  ('2019-05-23', 10, 12)
;

create table if not exists Restaurant.comenzi
(
  id_comanda int not null auto_increment primary key,
  id_masa int not null,
  data_comanda datetime not null,
  pret_total_comanda DECIMAL(7,2) null,
  incasat DECIMAL(7,2) default 0 not null,
  data_incasare datetime not null,
#   foreign key (incasat) references Restaurant.comanda_curenta (incasat),
  #  TODO de verificat cum pot rezolva problema solicitarii e FK dintr-un tabel necreat inca - o alternativa: alter dupa crearea tabeluilui
#   foreign key (data_incasare) references Restaurant.comanda_curenta (data_incasare),
  foreign key (id_masa) references Restaurant.mese (id_masa)
);
create index id_masa_idx on Restaurant.comenzi (id_masa);
create index id_comanda_idx on Restaurant.comenzi (id_comanda);
create index data_comanda_idx on Restaurant.comenzi (data_comanda);

create table  if not exists Restaurant.comanda_curenta # TODO Cred ca trebuie revizuit formatul. Introducem date in plus
(
  id_comanda_curenta int not null primary key, # = numarul liniei din comanda curenta
  id_comanda int not null, # = numarul comenzii 
  data_comanda datetime not null, # = data si ora la care u fost introduse datele din linia respectiva
  id_produs int null,
  nr_produse int not null,
  pret_echivalent decimal(7,2) not null, # TODO se calculeaza, nu este o valoare fixa - poate fi scos din tabel
  livrat int default 0 null,# TODO panou/fisier confirmare livrare
  pret_total_comanda decimal(7,2) not null, # TODO se calculeaza, nu este o valoare fixa - poate fi scos din tabel
  incasat decimal(7,2) not null,
  data_incasare datetime not null,
  id_masa int not null,
  constraint id_masa foreign key (id_masa) references Restaurant.mese (id_masa),
  constraint id_comanda foreign key (id_comanda) references Restaurant.comenzi (id_comanda),
  constraint id_produs foreign key (id_produs) references Restaurant.produse (id_produs)
);
create index id_masa_idx on Restaurant.comanda_curenta (id_masa);
create index id_comanda_idx on Restaurant.comanda_curenta (id_comanda);
create index id_produs_idx on Restaurant.comanda_curenta (id_produs);


create table  if not exists Restaurant.arhiva_comenzi_curente # comenzile inchise sunt adaugate in acest tabel
(
  id_inregistrare int not null primary key, # = numarul inregistrarii din acest tabel
  id_comanda_curenta int not null, # = numarul liniei din comanda curenta
  id_comanda int not null, # = numarul comenzii
  data_comanda datetime not null, # data si ora deschiderii comenzii 
  id_produs int null,
  nr_produse int not null,
  pret_echivalent decimal not null,
  livrat int default 0 null,
  pret_total_comanda decimal(7,2) not null,
  incasat decimal(7,2) not null,
  data_incasare datetime not null,
  id_masa int not null
);