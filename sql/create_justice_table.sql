-- Enable PostGIS extension (run once per database)
CREATE EXTENSION IF NOT EXISTS postgis;

-- Create the Justice table
CREATE TABLE public.justice (
    id SERIAL PRIMARY KEY,
    name TEXT,
    type TEXT,
    jurisdiction TEXT,
    address TEXT,
    city TEXT,
    postal_code TEXT,
    country TEXT,
    phone TEXT,
    email TEXT,
    website TEXT,
    created_at TIMESTAMP DEFAULT now(),
    geom GEOMETRY(Point, 4326)
);
