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
  ("Tuca do Ugo", 5, "Movimentado", (SELECT id FROM areas WHERE name = "Infantasia")),
  ("Bugabalum", 7, "Normal", (SELECT id FROM areas WHERE name = "Infantasia")),
  ("Astronavi", 5, "Normal", (SELECT id FROM areas WHERE name = "Infantasia")),
  ("Komboio", 8, "Movimentado", (SELECT id FROM areas WHERE name = "Infantasia")),
  ("Giralata", 5, "Normal", (SELECT id FROM areas WHERE name = "Infantasia")),
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
  ("Tirolesa", 15, "Normal", (SELECT id FROM areas WHERE name = "Wild-West")),
  
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