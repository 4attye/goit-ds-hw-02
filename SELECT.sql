SELECT * 
FROM tasks 
WHERE user_id = 5;


SELECT * 
FROM tasks
WHERE status_id = (SELECT id FROM status WHERE name = 'new');


UPDATE tasks SET status_id = (SELECT id FROM status WHERE name = 'in progress') WHERE id = 4;


SELECT * 
FROM users 
WHERE id NOT IN (SELECT DISTINCT user_id FROM tasks);


INSERT INTO tasks (id, title, description, status_id, user_id) VALUES (31
, 'Stage situation middle attention grow.'
, 'Rock about Republican partner firm structure college. Parent Democrat experience. Control moment want available.Because protect likely physical fund machine. Blue relate big world mission kitchen.'
, 1
, 7);


SELECT *
FROM tasks 
WHERE status_id != (SELECT id FROM status WHERE name = 'completed');


DELETE FROM tasks WHERE id = 31;


SELECT * 
FROM users WHERE email LIKE '%@example.com';


UPDATE users SET fullname = 'Richard Wise' WHERE id = 9;


SELECT status.name, COUNT(tasks.id) FROM tasks 
JOIN status ON tasks.status_id = status.id 
GROUP BY status.name;


SELECT tasks.* FROM tasks
JOIN users ON tasks.user_id = users.id
WHERE users.email LIKE '%@example.com';


SELECT * 
FROM tasks 
WHERE description IS NULL;


SELECT users.fullname, tasks.title FROM tasks
JOIN users ON tasks.user_id = users.id
WHERE tasks.status_id = (SELECT id FROM status WHERE name = 'in progress');


SELECT users.fullname, COUNT(tasks.id) as task_count FROM users
LEFT JOIN tasks ON users.id = tasks.user_id
GROUP BY users.id;
