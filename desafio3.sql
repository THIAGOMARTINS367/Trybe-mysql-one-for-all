SELECT
  spotify_user.user_name AS 'usuario',
  COUNT(spotify_music_history.user_id) AS 'qtde_musicas_ouvidas',
  ROUND(SUM(spotify_songs.duration_seconds) / 60, 2) AS 'duration'
FROM
  SpotifyClone.user AS spotify_user
  INNER JOIN SpotifyClone.music_history AS spotify_music_history
  ON spotify_user.user_id = spotify_music_history.user_id
  INNER JOIN SpotifyClone.songs AS spotify_songs
  ON spotify_music_history.song_id = spotify_songs.song_id
GROUP BY
  spotify_user.user_name
ORDER BY
  spotify_user.user_name;