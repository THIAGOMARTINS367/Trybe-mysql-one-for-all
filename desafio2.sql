SELECT
  COUNT(DISTINCT spotify_songs.song_name) AS 'cancoes',
  COUNT(DISTINCT spotify_artist.artist_name) AS 'artistas',
  COUNT(DISTINCT spotify_songs.album_id) AS 'albuns'
FROM
  SpotifyClone.songs AS spotify_songs
  INNER JOIN SpotifyClone.artist AS spotify_artist;