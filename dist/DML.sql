SELECT users.first_name as name, 
	users.id,
	rides.name,
    rides.id
	from `lines`
    
INNER JOIN users 
ON users.id = `lines`.id_user
INNER JOIN 	rides 
on rides.id = `lines`.id_ride


