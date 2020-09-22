:- use_module(library(lists)).
animal(1,"Viuda negra americana","Latrodectus mactans",3,2,0.001,145000,0.038,america).
animal(2,"Mariposa monarca","Danaus plexippus",0.75,13.33,0.0005,3507000,0.102,europa).
animal(3,"Escopion rojo indio","Hottentotta tamulus",1,1,0.002,85007000,0.09,asia).
animal(4,"Arania tigre","Scytodes globula",2,2.5,0.001,800000000,0.07,asia).
animal(5,"Mantis religiosa","Dictyoptera mantidae",0.5,1.8,0.0015,2500000,0.08,america).
animal(6,"Raya fina","Potamotrygon motoro",5,25,125,3760,2,asia).
animal(7,"atun comun","Thunnus thynnus",15,3.49,20,3605000,1.2,asia).
animal(8,"Pez espada","Xiphias gladius",10,27.78,540,15000,2,america).
animal(9,"Pez payaso","Amphiprion ocellaris",15,1.2,0.01,10000,0.1,oceania).
animal(10,"Tiburon martillo","Sphyrna mokarran",25,11.11,450,8300,3.5,africa).
animal(11,"Piquero Patiazul","Sula nebouxii",17,30.6,1.5,1320,1,africa).
animal(12,"buitre negro americano","Coragyps atratus",10,11.11,1.5,202500,2,america).
animal(13,"paloma blanca","Columbidae",6,6.67,0.36,8000000,0.3,america).
animal(14,"canario doméstico","Serinus canaria",10,10,0.0084,4600000,0.2,europa).
animal(15,"Colibri","Trochilinae",5,91.94,0.0059,800000,0.05,asia).
animal(16,"Sapo","Bufo bufo",12,2.22,0.08,500000,0.25,africa).
animal(17,"Salamandra","Salamandra salamandra",30,3,0.019,25500000,0.45,asia).
animal(18,"Rana dorada","Phyllobates terribilis",10,5,0.03,8200000,0.05,europa).
animal(19,"Rana punta de flecha","Dendrobatidae",10,5.3,0.003,600000,0.02,america).
animal(20,"Ajolote","Ambystoma mexicanum",12,6.5,0.227,4500000,0.15,oceania).
animal(21,"Perro","Canis lupus familiaris",13,8.5,40,7500000,50,america).
animal(22,"Gato","Felis silvestris catus",16,13,4,8820000,0.23,africa).
animal(23,"Chimpance","Pan paniscus",39,11.11,50,65000,0.63,africa).
animal(24,"Elefante","Elephantidae",60,30,5000,45500,3.2,africa).
animal(25,"Conejo","Oryctolagus cuniculus",9,16,2.5,12000000,0.15,europa).


pertenece_a(artropodos,1).
pertenece_a(artropodos,2).
pertenece_a(artropodos,3).
pertenece_a(artropodos,4).
pertenece_a(artropodos,5).
pertenece_a(peces,6).
pertenece_a(peces,7).
pertenece_a(peces,8).
pertenece_a(peces,9).
pertenece_a(peces,10).
pertenece_a(aves,11).
pertenece_a(aves,12).
pertenece_a(aves,13).
pertenece_a(aves,14).
pertenece_a(aves,15).
pertenece_a(anfibios,16).
pertenece_a(anfibios,17).
pertenece_a(anfibios,18).
pertenece_a(anfibios,19).
pertenece_a(anfibios,20).
pertenece_a(mamiferos,21).
pertenece_a(mamiferos,22).
pertenece_a(mamiferos,23).
pertenece_a(mamiferos,24).
pertenece_a(mamiferos,25).

cola(20).
cola(7).

exoesqueleto(X,Y) :- pertenece_a(artropodos,X), animal(X,Y,_,_,_,_,_,_,_).

vertebrados(X) :- pertenece_a(peces,X).
vertebrados(X) :- pertenece_a(anfibios,X).
vertebrados(X) :- pertenece_a(aves,X).
vertebrados(X) :- pertenece_a(mamiferos,X).

invertebrados(X) :- pertenece_a(artropodos,X).

nacen_en_agua(X) :- pertenece_a(anfibios,X).

viven_en_agua(X) :- pertenece_a(peces,X).

oviparos(X) :- pertenece_a(peces,X).
oviparos(X) :- pertenece_a(aves,X).

tiene_alas(X) :- pertenece_a(aves,X).

sangre_caliente(X) :- pertenece_a(mamiferos,X).

veven_leche(X) :- pertenece_a(mamiferos,X).

longevidad_baja(X) :- animal(X,_,_,Y,_,_,_,_,_),Y<10.

longevidad_media(X) :- animal(X,_,_,Y,_,_,_,_,_),Y>=10,Y<60.

longevidad_alta(X) :- animal(X,_,_,Y,_,_,_,_,_),Y>=60.

animal_vulnerable(X) :- animal(X,_,_,_,_,_,Y,_,_),Y<5000.

animal_no_vulnerable(X) :- animal(X,_,_,_,_,_,Y,_,_),Y>=5000.

animal_grande(X) :- animal(X,_,_,_,_,Y,_,_,_),Y>50.
animal_grande(X) :- animal(X,_,_,_,_,_,_,Y,_),Y>1.

animal_peque(X) :- animal(X,_,_,_,_,Y,_,Z,_),Y=<50,Z=<1.

animal_lento(X) :- animal(X,_,_,_,Y,_,_,_,_),Y<1.

animal_rapido(X) :- animal(X,_,_,_,Y,_,_,_,_),Y>10.

animal_normal(X) :- animal(X,_,_,_,Y,_,_,_,_),Y>=1,Y=<10.
