from faker import Faker
import sqlite3

fake = Faker()

conn = sqlite3.connect('ДЗ_2.sqlite')
cursor = conn.cursor()

statuses = [('new',), ('in progress',), ('completed',)]
for i, value in enumerate(statuses, start=1):
    cursor.execute('INSERT INTO status (id, name) VALUES (?, ?)', (i, value[0]))

for i in range(1, 11):
    cursor.execute('INSERT INTO users (id, fullname, email) VALUES (?, ?, ?)',
                   (i, fake.name(), fake.email()))

for i in range(1, 31):
    cursor.execute('''
    INSERT INTO tasks (id, title, description, status_id, user_id)
    VALUES (?, ?, ?, ?, ?)
    ''', (i, fake.sentence(), fake.text(), fake.random_int(min=1, max=3), fake.random_int(min=1, max=10)))

conn.commit()
conn.close()

