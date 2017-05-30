Artist.destroy_all
Song.destroy_all
Photo.destroy_all


juan_luis_guerra = Artist.create(name: "Juan Luis Guerra")
pablo_alboran = Artist.create(name: "Pablo Alborán")
mana = Artist.create(name: "Maná")
dread_mar_i = Artist.create(name: "Dread Mar I")

frio_frio = Song.create(name: "Frío, Frío", artist: juan_luis_guerra, album: "Areíto", release_date: "1992")
muchatita_linda = Song.create(name: "Muchatita Linda", artist: juan_luis_guerra, album: "Todo Tiene Su Hora", release_date: "2014")
bachata_rosa = Song.create(name: "Bachata Rosa", artist: juan_luis_guerra, album: "Bachata Rosa", release_date: "1990")
la_hormiguita = Song.create(name: "La Hormiguita", artist: juan_luis_guerra, album: "Ni Es Lo Mismo Ni Es Igual", release_date: "1998")
perdoname = Song.create(name: "Perdóname", artist: pablo_alboran, album: "Pablo Alborán", release_date: "2011")
pasos_de_cero = Song.create(name: "Pasos De Cero", artist: pablo_alboran, album: "Terral", release_date: "2014")
donde_esta_el_amor = Song.create(name: "Dónde Está El Amor", artist: pablo_alboran, album: "Tanto", release_date: "2012")
solamente_tu = Song.create(name: "Solamente Tú", artist: pablo_alboran, album: "Pablo Alboran", release_date: "2011")
mi_verdad = Song.create(name: "Mi Verdad", artist: mana, album: "Cama Incendiada", release_date: "2015")
mariposa_traicionera = Song.create(name: "Mariposa Traicionera", artist: mana, album: "Revolución De Amor", release_date: "2002")
labios_compartidos = Song.create(name: "Labios Compartidos", artist: mana, album: "Amar Es Combatir", release_date: "2006")
en_el_muelle_de_san_blas = Song.create(name: "En El Muelle De San Blas", artist: mana, album: "Sueños líquidos", release_date: "1997")
que_hago_yo = Song.create(name: "Que Hago Yo", artist: dread_mar_i, album: "En El Sendero", release_date: "2014")
tu_sin_mi = Song.create(name: "Tú Sin Mi", artist: dread_mar_i, album: "10 Años", release_date: "2016")
hoja_en_blanco = Song.create(name: "Hoja En Blanco", artist: dread_mar_i, album: "10 Años", release_date: "2016")
arbol_sin_hojas = Song.create(name: "Arbol Sin Hojas", artist: dread_mar_i, album: "10 Años", release_date: "2016")

photo1 = Photo.create(remote_image_url: "http://res.cloudinary.com/maressajoseph/image/upload/v1495873577/Noticias-15693-jlg2_630_mag8ip.jpg", artist: juan_luis_guerra)
photo2 = Photo.create(remote_image_url: "http://res.cloudinary.com/maressajoseph/image/upload/c_scale,h_400,w_630/v1495873607/pablo_alboran_zd1pxv.jpg", artist: pablo_alboran)
photo3 = Photo.create(remote_image_url: "http://res.cloudinary.com/maressajoseph/image/upload/c_scale,w_630/v1495874360/udslfbftxvzxiuv7pvfl.jpg", artist: mana)
photo4 = Photo.create(remote_image_url: "http://res.cloudinary.com/maressajoseph/image/upload/c_scale,h_429,w_634/a_0/v1495896354/photo_kbffe5.jpg", artist: dread_mar_i)
