-- Ensure the 'patient' table exists
CREATE TABLE IF NOT EXISTS patient
(
    id              UUID PRIMARY KEY,
    name            VARCHAR(255) NOT NULL,
    email           VARCHAR(255) UNIQUE NOT NULL,
    address         VARCHAR(255) NOT NULL,
    date_of_birth   DATE NOT NULL,
    registered_date DATE NOT NULL
);

-- Insert multiple patients in a single query
INSERT INTO patient (id, name, email, address, date_of_birth, registered_date)
VALUES
    ('123e4567-e89b-12d3-a456-426614174000', 'John Doe', 'john.doe@example.com', '123 Main Street, New York, NY 10001', '1990-05-15', '2024-01-10'),
    ('223e4567-e89b-12d3-a456-426614174001', 'Jane Smith', 'jane.smith@example.com', '456 Oak Avenue, Los Angeles, CA 90001', '1985-08-22', '2024-01-11'),
    ('323e4567-e89b-12d3-a456-426614174002', 'Michael Johnson', 'michael.johnson@example.com', '789 Pine Road, Chicago, IL 60601', '1978-12-03', '2024-01-12'),
    ('423e4567-e89b-12d3-a456-426614174003', 'Emily Davis', 'emily.davis@example.com', '321 Maple Drive, Houston, TX 77001', '1995-03-30', '2024-01-13'),
    ('523e4567-e89b-12d3-a456-426614174004', 'Robert Brown', 'robert.brown@example.com', '654 Elm Street, Phoenix, AZ 85001', '1982-07-19', '2024-01-14')
ON CONFLICT (email) DO NOTHING;