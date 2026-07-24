DROP TABLE IF EXISTS login_events;
DROP TABLE IF EXISTS user_accounts;
DROP TABLE IF EXISTS eligibility;
DROP TABLE IF EXISTS employees;
DROP TABLE IF EXISTS clients;

CREATE TABLE clients (
    client_id TEXT PRIMARY KEY,
    client_name TEXT NOT NULL,
    status TEXT NOT NULL,
    implementation_date TEXT
);

CREATE TABLE employees (
    employee_record_id INTEGER PRIMARY KEY AUTOINCREMENT,
    employee_id TEXT NOT NULL,
    client_id TEXT NOT NULL,
    first_name TEXT NOT NULL,
    last_name TEXT NOT NULL,
    email TEXT,
    employment_status TEXT NOT NULL
);

CREATE TABLE eligibility (
    eligibility_id INTEGER PRIMARY KEY AUTOINCREMENT,
    employee_id TEXT NOT NULL,
    client_id TEXT NOT NULL,
    eligible INTEGER NOT NULL,
    effective_date TEXT
);

CREATE TABLE user_accounts (
    account_id INTEGER PRIMARY KEY AUTOINCREMENT,
    employee_id TEXT NOT NULL,
    email TEXT,
    account_status TEXT NOT NULL,
    created_date TEXT
);

CREATE TABLE login_events (
    event_id INTEGER PRIMARY KEY AUTOINCREMENT,
    employee_id TEXT NOT NULL,
    event_time TEXT NOT NULL,
    status TEXT NOT NULL,
    failure_reason TEXT
);