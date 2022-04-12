SELECT
  MIN(spotify_signature.price) AS 'faturamento_minimo',
  MAX(spotify_signature.price) AS 'faturamento_maximo',
  ROUND(AVG(spotify_signature.price), 2) AS 'faturamento_medio',
  SUM(spotify_signature.price) AS 'faturamento_total'
FROM
  SpotifyClone.signature AS spotify_signature
  INNER JOIN SpotifyClone.user AS spotify_user
  ON spotify_signature.signature_id = spotify_user.signature_id;