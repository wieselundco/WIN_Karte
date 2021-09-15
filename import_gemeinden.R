library(sf)

gemeinden <- st_read("PG: host=localhost dbname=swisstopo user=viewer password=viewer port=5432", query = "SELECT * FROM swissboundaries3d.tlm_hoheitsgebiet WHERE objektart = 0")

st_write(gemeinden, "data/gemeinden.gpkg", append = FALSE)
