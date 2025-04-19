-- Enable PostGIS extension (run once per database)
CREATE EXTENSION IF NOT EXISTS postgis;

-- Create the damage_assessment table
CREATE TABLE public.damage_assessment (
    id SERIAL PRIMARY KEY,
    head_of_household TEXT,
    first_name TEXT,
    street TEXT,
    city TEXT,
    postal_code TEXT,
    phone TEXT,
    dob TEXT,
    family_size INTEGER,
    adults INTEGER,
    children INTEGER,
    family_status TEXT,
    victims INTEGER,
    displaced BOOLEAN,
    housing_type TEXT,
    habitable BOOLEAN,
    structural_damage TEXT,
    material_damage TEXT,
    services_access TEXT,
    received_aid BOOLEAN,
    needed_aid TEXT,
    comments TEXT,
    photo TEXT,
    geom GEOMETRY(Point, 4326)
);

-- Add French aliases as column comments
COMMENT ON COLUMN damage_assessment.head_of_household IS 'Nom du chef de ménage';
COMMENT ON COLUMN damage_assessment.first_name IS 'Prénom';
COMMENT ON COLUMN damage_assessment.street IS 'Rue';
COMMENT ON COLUMN damage_assessment.city IS 'Ville';
COMMENT ON COLUMN damage_assessment.postal_code IS 'Code postal';
COMMENT ON COLUMN damage_assessment.phone IS 'Téléphone';
COMMENT ON COLUMN damage_assessment.dob IS 'Date de naissance';
COMMENT ON COLUMN damage_assessment.family_size IS 'Taille de la famille';
COMMENT ON COLUMN damage_assessment.adults IS 'Nombre d''adultes';
COMMENT ON COLUMN damage_assessment.children IS 'Nombre d''enfants';
COMMENT ON COLUMN damage_assessment.family_status IS 'Situation familiale';
COMMENT ON COLUMN damage_assessment.victims IS 'Nombre de victimes';
COMMENT ON COLUMN damage_assessment.displaced IS 'Déplacé';
COMMENT ON COLUMN damage_assessment.housing_type IS 'Type de logement';
COMMENT ON COLUMN damage_assessment.habitable IS 'Habitable';
COMMENT ON COLUMN damage_assessment.structural_damage IS 'Dommages structurels';
COMMENT ON COLUMN damage_assessment.material_damage IS 'Dommages matériels';
COMMENT ON COLUMN damage_assessment.services_access IS 'Accès aux services';
COMMENT ON COLUMN damage_assessment.received_aid IS 'Aide reçue';
COMMENT ON COLUMN damage_assessment.needed_aid IS 'Aide nécessaire';
COMMENT ON COLUMN damage_assessment.comments IS 'Commentaires';
COMMENT ON COLUMN damage_assessment.photo IS 'Photo';
COMMENT ON COLUMN damage_assessment.geom IS 'Localisation';
