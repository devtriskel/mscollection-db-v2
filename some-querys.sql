-- -----------------------------------------------------
-- Artist/Bands where Jimmy Page was involved
-- -----------------------------------------------------
SELECT
	art.name AS artist
FROM music_collection.people AS plp
INNER JOIN music_collection.artists AS art ON (art.id = plp.artist_id)
WHERE
	plp.name = 'Jimmy Page';


-- -----------------------------------------------------
-- Artist/Bands which has some spark Rock taste on it
-- -----------------------------------------------------
SELECT DISTINCT
	art.name AS artist
FROM music_collection.styles AS sty
INNER JOIN music_collection.artists_styles AS ast ON (ast.style_id = sty.id)
INNER JOIN music_collection.artists AS art ON (art.id = ast.artist_id)
WHERE
	sty.name LIKE '%rock%';


-- -----------------------------------------------------
-- Bring all Artist/Bands which has some relation between
-- -----------------------------------------------------
SELECT
	ar1.name AS artist,
	ar2.name AS artist_related
FROM music_collection.related_artists AS rel
INNER JOIN music_collection.artists AS ar1 ON (ar1.id = rel.artist_id)
INNER JOIN music_collection.artists AS ar2 ON (ar2.id = rel.related_artist_id)
ORDER BY 
	ar1.name,
    ar2.name