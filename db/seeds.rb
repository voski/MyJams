# users
User.create(email: 'gizmogizmo', password: 'gizmogizmo')


# bands
Band.create(name: 'System Of A Down')

# albums
Album.create(band_id: 1, name: 'System Of A Down', album_type: 'studio')
Album.create(band_id: 1, name: 'Toxicity', album_type: 'studio')
Album.create(band_id: 1, name: 'Steal This Album!', album_type: 'studio')
Album.create(band_id: 1, name: 'Mezmerize', album_type: 'studio')
Album.create(band_id: 1, name: 'Hypnotize', album_type: 'studio')

# tracks
Track.create(album_id: 1, name: 'Suite-Pee', track_type: 'regular')
Track.create(album_id: 1, name: 'Know', track_type: 'regular')
Track.create(album_id: 1, name: 'Sugar', track_type: 'regular')
Track.create(album_id: 1, name: 'Suggestions', track_type: 'regular')
Track.create(album_id: 1, name: 'Spiders', track_type: 'regular')
Track.create(album_id: 1, name: 'DDevil', track_type: 'regular')
Track.create(album_id: 1, name: 'Soil', track_type: 'regular')
Track.create(album_id: 1, name: 'War?', track_type: 'regular')
Track.create(album_id: 1, name: 'Mind', track_type: 'regular')
Track.create(album_id: 1, name: 'Peephole', track_type: 'regular')
Track.create(album_id: 1, name: 'CUBErt', track_type: 'regular')
Track.create(album_id: 1, name: 'Darts', track_type: 'regular')
Track.create(album_id: 1, name: 'P.L.U.C.K', track_type: 'regular')
