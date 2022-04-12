SELECT
  spotify_user.user_name AS 'usuario',
  IF(
    YEAR(MAX(spotify_music_history.reproduction_date)) = 2021,
    'Usuário ativo',
    'Usuário inativo'
  ) AS 'condicao_usuario'
FROM
  SpotifyClone.user AS spotify_user
  INNER JOIN SpotifyClone.music_history AS spotify_music_history
  ON spotify_user.user_id = spotify_music_history.user_id
GROUP BY
  spotify_user.user_id
ORDER BY
  spotify_user.user_name