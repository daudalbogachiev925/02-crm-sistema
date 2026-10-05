CREATE TABLE clients (id SERIAL PRIMARY KEY, name TEXT, email TEXT,
    phone TEXT, source TEXT, created DATE);
CREATE TABLE leads (id SERIAL PRIMARY KEY, client_id INT, status TEXT,
    score INT, created DATE);
CREATE TABLE deals (id SERIAL PRIMARY KEY, client_id INT, amount NUMERIC,
    stage TEXT, closed_at DATE, owner_id INT);
CREATE TABLE activities (id BIGSERIAL PRIMARY KEY, deal_id INT,
    kind TEXT, note TEXT, created TIMESTAMP);
