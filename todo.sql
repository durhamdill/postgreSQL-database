-- Create database and switch to it:
createdb todolist
psql todolist

-- Write the CREATE TABLE statement to make this table:
CREATE TABLE todos (
 id SERIAL PRIMARY KEY,
 title VARCHAR(255) NOT NULL,
 details TEXT NULL,
 priority INTEGER NOT NULL DEFAULT 1,
 created_at TIMESTAMP NOT NULL,
 completed_at TIMESTAMP NULL
);

-- Write INSERT statements to insert five todos into this table, with one of them completed:
INSERT INTO todos (title, details, priority, created_at, completed_at) VALUES
    ('Get in daily workout', 'go to gym, walk dog, and/or workout at home/work', 3, current_timestamp, current_timestamp),
    ('Complete weekly project', 'create login/registration and snippet submit form', 1, current_timestamp, null),
    ('Work on resume updates', 'review existing resume and make edits/outline additions', 2, current_timestamp, null),
    ('Pick up prescriptions for dog', 'prescriptions have already been called in to vet', 2, current_timestamp, null),
    ('90s motivational post', 'brainstorm concept/make graphic for 90s song lyrics', 3, current_timestamp, null);

-- Write a SELECT statement to find all incomplete todos:
SELECT title FROM todos WHERE completed_at IS NULL;

-- Write a SELECT statement to find all todos with a priority above 1:
SELECT title FROM todos WHERE priority > 1;

-- Write an UPDATE statement to complete one todo by its id. Your ids may differ, so you will choose the id to up:
UPDATE todos SET completed_at = current_timestamp WHERE id = 4;

-- Write a DELETE statement to delete all completed todos.
DELETE FROM todos WHERE completed_at IS NOT NULL;
