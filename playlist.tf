resource "spotify playlis" "Bollywood" {
    name="Bollywood"
    tracks= ["121yybV7A3TmC34a0qEBuB"]

  
}

data "spotify_search_track" "eminem"  {

    artist="Eminem"
}
resource "spotify_search_track" "slimshady" {
    name="Slim Shady"
    tracks=["data.spotify_search_track.eminem.tracks[0].id"]
}