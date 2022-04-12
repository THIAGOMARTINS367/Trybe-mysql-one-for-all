SELECT
  COUNT(spotify_music_history.song_id) AS 'quantidade_musicas_no_historico'
FROM
  SpotifyClone.music_history AS spotify_music_history
  INNER JOIN SpotifyClone.user AS spotify_user
  ON spotify_music_history.user_id = spotify_user.user_id
  WHERE spotify_user.user_name = 'Bill';