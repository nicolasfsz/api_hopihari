insert into rides (name, waiting_time, status, area)values
("gira gira", 4, "disponivel", "A");

insert into `lines` (id_user, id_ride)
values (10, 11);

insert into notifications (description, status, users_id, rides_id) values
("sua vez na fila se aproxima", true, 5, 9);

insert into users (first_name, last_name, email, password, birth_date, phone)values
("nicolas", "souza", "nicolas@gmail.com", "123", "2008-06-02", 14999020608);

use hopi_hari_db;

desc hopi_hari_db.lines;
select * from users; 
select * from rides;
select * from hopi_hari_db.lines;

insert into hopi_hari_db.lines (id_ride, id_user) values (9,5);

select waiting_time from rides where id_ride = 9; # 5 min
select count(id_user  ) from hopi_hari_db.lines where id_ride = 9; # 1 pessoa

select
(select waiting_time from rides where id_ride = 9) *
(select count(id_user  ) from hopi_hari_db.lines where id_ride = 9)
as total_wait_time;

desc notifications;
insert into notifications (description, rides_id, users_id, status)
values (concat(total_wait_time, "minutos de espera para o brinquedo"), 9, 5, true);





SELECT users.first_name as name, 
	users.id,
	rides.name,
    rides.id
	from `lines`
    
INNER JOIN users 
ON users.id = `lines`.id_user
INNER JOIN 	rides 
on rides.id = `lines`.id_ride


INSERT INTO rides (name, waiting_time, status, areas_id) VALUES
   ("Hadikali", 15, "Normal", (SELECT id FROM areas WHERE name = "Aribabiba")),
  ("Vambatê", 5, "Movimentado", (SELECT id FROM areas WHERE name = "Aribabiba")),
  ("Jambalaia", 8, "Normal", (SELECT id FROM areas WHERE name = "Aribabiba")),
  ("Parangolé", 6, "Movimentado", (SELECT id FROM areas WHERE name = "Aribabiba")),
  ("Aribabobi", 7, "Movimentado", (SELECT id FROM areas WHERE name = "Aribabiba")),
  ("Cinemotion", 7, "Movimentado", (SELECT id FROM areas WHERE name = "Aribabiba")),
  ("SPEEDI ´64", 12, "Movimentado", (SELECT id FROM areas WHERE name = "Aribabiba")),
  
  ("Montezum", 20, "Normal", (SELECT id FROM areas WHERE name = "Mistieri")),
  ("Vurang", 18, "Movimentado", (SELECT id FROM areas WHERE name = "Mistieri")),
  ("Ekatomb", 10, "Normal", (SELECT id FROM areas WHERE name = "Mistieri")),
  ("Simulákron", 8, "Movimentado", (SELECT id FROM areas WHERE name = "Mistieri")),
  ("Vulaviking", 12, "Normal", (SELECT id FROM areas WHERE name = "Mistieri")),
  ("Katakumb", 14, "Movimentado", (SELECT id FROM areas WHERE name = "Mistieri")),
  
  ("Kastel di Lendas", 6, "Normal", (SELECT id FROM areas WHERE name = "Infantasia")),
  ("Giranda Pokotó", 5, "Movimentado", (SELECT id FROM areas WHERE name = "Infantasia")),
  ("Bugabalum", 7, "Normal", (SELECT id FROM areas WHERE name = "Infantasia")),
  ("Astronavi", 5, "Normal", (SELECT id FROM areas WHERE name = "Infantasia")),
  ("Komboio", 8, "Movimentado", (SELECT id FROM areas WHERE name = "Infantasia")),
  ("Dispenkito", 6, "Movimentado", (SELECT id FROM areas WHERE name = "Infantasia")),
  ("Klapi Klapi", 9, "Normal", (SELECT id FROM areas WHERE name = "Infantasia")),
  
   ("Rio Bravo", 10, "Movimentado", (SELECT id FROM areas WHERE name = "Wild-West")),
  ("Evolution", 5, "Normal", (SELECT id FROM areas WHERE name = "Wild-West")),
  ("Bravo Bull", 5, "Movimentado", (SELECT id FROM areas WHERE name = "Wild-West")),
  ("Ghosti Hotel", 12, "Normal", (SELECT id FROM areas WHERE name = "Wild-West")),
  ("Vamvolari", 8, "Movimentado", (SELECT id FROM areas WHERE name = "Wild-West")),
  ("La Mina del Joe Sacramento", 9, "Normal", (SELECT id FROM areas WHERE name = "Wild-West")),
  ("Namuskita", 7, "Movimentado", (SELECT id FROM areas WHERE name = "Wild-West")),
	("Spleshi", 5, "Movimentado", (SELECT id FROM areas WHERE name = "Wild-West")),
  
    ("Giranda Mundi", 5, "Movimentado", (SELECT id FROM areas WHERE name = "Kaminda-Mundi")),
  ("Jogakí di Kaminda", 6, "Normal", (SELECT id FROM areas WHERE name = "Kaminda-Mundi")),
  ("Theatro di Kaminda", 6, "Normal", (SELECT id FROM areas WHERE name = "Kaminda-Mundi")),
  ("Le Voyage", 7, "Movimentado", (SELECT id FROM areas WHERE name = "Kaminda-Mundi"));
  
  ------------------------------------------------------------------------------------------------------------
  INSERT INTO areas (name) VALUES 
("Aribabiba"),
("Mistieri"),
("Infantasia"),
("Kaminda-Mundi"),
("Wild-West");


select name from rides;
update rides set image = "Ekatomb.jpg" where name = "Ekatomb";
update rides set image = "Katatumb.jpg" where name = "Katakumb";
update rides set image = "montezum.jpg" where name = "Montezum";
update rides set image = "Simulákron.png" where name = "Simulákron";
update rides set image = "vulaking.png" where name = "Vulaviking";
update rides set image = "Vurang.webp" where name = "Vurang";
update rides set image = "GirandaMundi.jpg" where name = "Giranda Mundi";
update rides set image = "JogakídiKaminda.jpg" where name = "Jogakí di Kaminda";
update rides set image = "LeVoyage.jpeg" where name = "Le Voyage";
update rides set image = "TheatrodiKaminda.jpg" where name = "Theatro di Kaminda";
update rides set image = "evolution.jpg" where name = "Evolution";
update rides set image = "GhostiHotel.webp" where name = "Ghosti Hotel";
update rides set image = "laMina.jpg" where name = "La Mina del Joe Sacramento";
update rides set image = "namuskita.jpg" where name = "Namuskita";
update rides set image = "rioBravo.jpg" where name = "Rio Bravo";
update rides set image = "vamvolari.jpg" where name = "Vamvolari";
update rides set image = "astronavi.jpeg" where name = "Astronavi";
update rides set image = "bugabalum.jpg" where name = "Bugabalum";
update rides set image = "Dispenkito.webp" where name = "Dispenkito";
update rides set image = "girandaPocoto.jpg" where name = "Giranda Pokotó";
update rides set image = "Kasteldilendas.jpg" where name = "Kastel di Lendas";
update rides set image = "AribaBobbi.webp" where name = "Aribabobi";
update rides set image = "cinemotion.jpg" where name = "Cinemotion";
update rides set image = "speed64.jpg" where name = "SPEEDI ´64";
update rides set image = "vambate.jpg" where name = "Vambatê";
update rides set image = "spleshi.jpg" where name = "Spleshi";
update rides set image = "komboio.jpg" where name = "Komboio";
update rides set image = "klap.jpg" where name = "Klapi Klapi";
update rides set image = "bravo.jpg" where name = "Bravo Bull";
update rides set image = "hadikali.jpg" where name = "Hadikali";
update rides set image = "jambalaia.jpg" where name = "Jambalaia";
update rides set image = "parangole.jpg" where name = "Parangolé";
update rides set image = "jambalaia.jpg" where name = "Jambalaia";


set SQL_SAFE_UPDATES = 0;