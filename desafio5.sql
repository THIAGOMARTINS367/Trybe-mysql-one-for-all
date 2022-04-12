SELECT
  spotify_songs.song_name AS 'cancao',
  COUNT(spotify_music_history.reproduction_date) AS reproducoes
FROM
  SpotifyClone.music_history AS spotify_music_history
  INNER JOIN SpotifyClone.songs AS spotify_songs
  ON spotify_music_history.song_id = spotify_songs.song_id
GROUP BY
  spotify_music_history.song_id
ORDER BY
  reproducoes DESC,
  spotify_songs.song_name
LIMIT
  2;