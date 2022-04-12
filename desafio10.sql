SELECT
  spotify_songs.song_name AS 'nome',
  COUNT(spotify_songs.song_id) AS 'reproducoes'
FROM
  SpotifyClone.music_history AS spotify_music_history
  INNER JOIN SpotifyClone.songs AS spotify_songs
  ON spotify_music_history.song_id = spotify_songs.song_id
  INNER JOIN SpotifyClone.user AS spotify_user
  ON spotify_music_history.user_id = spotify_user.user_id
  INNER JOIN SpotifyClone.signature AS spotify_signature
  ON spotify_user.signature_id = spotify_signature.signature_id
WHERE
  spotify_signature.signature_type IN('gratuito', 'pessoal')
GROUP BY
  spotify_songs.song_name
ORDER BY
  spotify_songs.song_name;