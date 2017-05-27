Artist.destroy_all
Song.destroy_all
Photo.destroy_all


juan_luis_guerra = Artist.create(name: "Juan Luis Guerra")
pablo_alboran = Artist.create(name: "Pablo Alborán")
mana = Artist.create(name: "Maná")

frio_frio = Song.create(name: "Frío, Frío", artist: juan_luis_guerra, album: "Areíto", release_date: "1992")
muchatita_linda = Song.create(name: "Muchatita Linda", artist: juan_luis_guerra, album: "Todo Tiene Su Hora", release_date: "2014")
perdoname = Song.create(name: "Perdóname", artist: pablo_alboran, album: "Pablo Alborán", release_date: "2011")
pasos_de_cero = Song.create(name: "Pasos De Cero", artist: pablo_alboran, album: "Terral", release_date: "2014")
mi_verdad = Song.create(name: "Mi Verdad", artist: mana, album: "Cama Incendiada", release_date: "2015")

photo1 = Photo.create(remote_image_url: "http://res.cloudinary.com/maressajoseph/image/upload/v1495873577/Noticias-15693-jlg2_630_mag8ip.jpg", artist: juan_luis_guerra)
photo2 = Photo.create(remote_image_url: "http://res.cloudinary.com/maressajoseph/image/upload/v1495873607/pablo_alboran_zd1pxv.jpg", artist: pablo_alboran)
photo3 = Photo.create(remote_image_url: "http://res.cloudinary.com/maressajoseph/image/upload/v1495873887/358033-mana1_umrdx9.jpg", artist: mana)
