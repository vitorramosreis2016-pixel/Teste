-- Exemplo SQL: criar uma tabela e consultar dados.
CREATE TABLE IF NOT EXISTS experiments (
    id INTEGER PRIMARY KEY,
    name TEXT NOT NULL,
    language TEXT NOT NULL
);

INSERT INTO experiments (id, name, language)
VALUES (1, 'Olá, mundo!', 'SQL')
ON CONFLICT(id) DO NOTHING;

SELECT id, name, language FROM experiments;
