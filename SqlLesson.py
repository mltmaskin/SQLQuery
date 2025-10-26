import sqlite3
import os

def create_database():
    if os.path.exists("students.db"):
        os.remove("students.db")

    conn = sqlite3.connect("students.db")
    cursor= conn.cursor()
    return conn, cursor

def create_tables(cursor):
    cursor.execute('''
    CREATE TABLE Students (
     id INTEGER PRIMARY KEY,
     name VARCHAR(255) NOT NULL,
     age INTEGER,
     email VARCHAR UNIQUE,
     city VARCHAR)
    ''' )

    cursor.execute('''
    CREATE TABLE Courses (
     id INTEGER PRIMARY KEY,
     course_name VARCHAR(255) NOT NULL,
     instructor TEXT,
     credits INTEGER)
    ''')




def insert_sample_data(cursor):

      students = [
          (1, 'Alice Johnson', 20, 'alice@gmail.com', 'New York'),
          (2, 'Bob Smith', 19, 'bob@gmail.com', 'Chicago'),
          (3, 'Carol White', 21, 'carol@gmail.com', 'Boston'),
          (4, 'David Brown', 20, 'david@gmail.com', 'New York'),
          (5, 'Emma Davis', 22, 'emma@gmail.com', 'Seattle')
      ]

      cursor.executemany("INSERT INTO Students VALUES (?,?,?,?,?)", students)

      courses = [

          (1, 'Python Programming', 'Dr. Anderson', 3),
          (2,'Web Development', 'Prof.Wilson', 4),
          (3,'Data Science', 'DR. Taylor', 3),
          (4, 'Mobile Apps', 'Prof. Garcia', 2)

      ]

      cursor.executemany("INSERT INTO Courses VALUES (?,?,?,?)", courses)

      print("Sample data inserted succesfully")

def basic_sql_operations(cursor):
    #SELECT ALL
    print("-----Select All-----")
    cursor.execute("SELECT * FROM Students")
    records =cursor.fetchall()
    for row in records:
        print(f"ID: {row[0]}, Name: {row[1]}, Age: {row[2]}, Email: {row[3]}, City:{row[4]}")

    #SELECT COLUMNS
    print("----Select Columns----")
    cursor.execute("SELECT name , age FROM Students")
    records = cursor.fetchall()
    for row in records:
        print(row)

    #WHERE clause
    print("----Where Age = 20----")
    cursor.execute("SELECT * FROM Students WHERE age = 20")
    records = cursor.fetchall()
    print(records)

    #WHERE with string
    print("----Where City : New York----")
    cursor.execute("SELECT * FROM Students WHERE city = 'New York'")
    records = cursor.fetchall()
    print(records)

    # ORDER BY
    print("----Order By age----")
    cursor.execute("SELECT * FROM Students ORDER BY age")
    records = cursor.fetchall()
    print(records)

    # LIMIT
    print("----Lımıt By 3----")
    cursor.execute("SELECT * FROM Students LIMIT 3")
    records=cursor.fetchall()
    for row in records:
        print(row)

def sql_update_delete_insert_operations(conn,cursor):
    #INSERT
    cursor.execute("INSERT INTO Students VALUES(6,'Frank Miller', 23,'frank@gmail.com','Miami')")
    conn.commit()

    #UPDATE
    cursor.execute("UPDATE Students SET age=24 WHERE id=6")
    conn.commit()

    #DELETE
    cursor.execute("DELETE FROM Students WHERE id=6")
    conn.commit()


def aggregate_functions(cursor):
    #COUNT
    print("-----Aggregate Functions Count----")
    cursor.execute("SELECT COUNT (*) FROM Students ")
    result =cursor.fetchone()
    print(result[0])

    #AVERAGE
    print("-----Aggregate Functions Average----")
    cursor.execute("SELECT AVG (age) FROM Students ")
    result = cursor.fetchone()
    print(result[0])

    #MAX-MIN
    print("-----Aggregate Functions Max-Min----")
    cursor.execute("SELECT MAX(age), MIN(age) FROM Students ")
    result = cursor.fetchone()
    print(result)

    #GROUP BY
    print("-----Aggregate Functions Group by----")
    cursor.execute("SELECT city, COUNT(*) FROM Students GROUP BY city ")
    result = cursor.fetchall()
    print(result)



def main():
    conn, cursor = create_database()
    try:
        create_tables(cursor)
        insert_sample_data(cursor)
        sql_update_delete_insert_operations(conn, cursor)
        basic_sql_operations(cursor)
        aggregate_functions(cursor)
        conn.commit()
    except sqlite3.Error as e:
        print(e)
    finally:
        conn.close()

if __name__=="__main__":
    main()