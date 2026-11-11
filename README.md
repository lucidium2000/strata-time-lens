# Strata Time Lens (prototype)

Point your phone at a place: AR tags float over the camera view, and a time dial lets you
scrub from today back through the 1900s, 1800s, colonial and Indigenous eras, the Ice Age,
and deep geologic time.

## Try it on a phone
Camera, GPS and compass only work over HTTPS. Easiest: drag this folder onto
https://app.netlify.com/drop (or any static host / GitHub Pages) and open the URL on your phone.
Tap **Start the live lens**, allow camera, location and motion.

## Files
- `app.html` – the app (body-only; this form is what gets published as a Claude artifact)
- `index.html` – standalone page built from app.html (`./build.sh`)

## Data sources in live mode (no keys needed)
- What's here now: OpenStreetMap Nominatim reverse geocoding
- Nearby history: Wikipedia geosearch (era guessed from the earliest year in each summary)
- Deep time: Macrostrat geologic map API (bedrock unit, age, lithology)

## Where it goes next
- An AI layer (Claude via a small backend) to write era narratives for any spot and answer questions;
  the artifact version already does this with Claude built in.
- Better heading accuracy (sensor fusion / ARKit-ARCore via a native shell such as Capacitor).
- Curated Indigenous-history and Ice Age sources; historic photo overlays ("then vs now").
