
CREATE TABLE species (
    id SERIAL PRIMARY KEY,
    name VARCHAR(50) NOT NULL
);

CREATE TABLE habitats (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL
);

CREATE TABLE abilities (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    effect TEXT
);

CREATE TABLE moves (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    power INT,
    accuracy INT,
    type VARCHAR(50) NOT NULL
);

CREATE TABLE pokemons (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    type_id INT NOT NULL,
    habitat_id INT NOT NULL,
    FOREIGN KEY (type_id) REFERENCES types(id),
    FOREIGN KEY (habitat_id) REFERENCES habitats(id)
);

CREATE TABLE pokemon_moves (
    pokemon_id INT NOT NULL,
    move_id INT NOT NULL,
    PRIMARY KEY (pokemon_id, move_id),
    FOREIGN KEY (pokemon_id) REFERENCES pokemons(id),
    FOREIGN KEY (move_id) REFERENCES moves(id)
);

CREATE TABLE pokemon_abilities (
    pokemon_id INT NOT NULL,
    ability_id INT NOT NULL,
    PRIMARY KEY (pokemon_id, ability_id),
    FOREIGN KEY (pokemon_id) REFERENCES pokemons(id),
    FOREIGN KEY (ability_id) REFERENCES abilities(id)
);


/* schema:
Pokemon: Pokemon detais.
species: Pokemon species (Fire, Water, ... ).
Habitats: habitats voor Pokemons.
Moves: moves voor Pokemons.
Abilities: abilities voor Pokemons.
*/