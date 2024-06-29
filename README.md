# test github

---

## Build OTP

```
mkdir data_map
sudo curl -L https://download.geofabrik.de/asia/japan/chubu-latest.osm.pbf -o data_map/osm.pbf
sudo docker run --rm -v "$(pwd)/data_map:/var/opentripplanner" docker.io/opentripplanner/opentripplanner:latest --build --save 
sudo docker run -it --rm -p 8080:8080 -v "$(pwd)/data_map:/var/opentripplanner" docker.io/opentripplanner/opentripplanner:latest --load --serve
```
