# /// script
# requires-python = ">=3.11"
# dependencies = [
#   "google-genai>=1.0.0",
#   "Pillow>=10.0.0",
# ]
# ///
"""Generate SPORES README banner base images using Imagen 3."""

import os
import sys
from google import genai
from google.genai import types
from PIL import Image
from io import BytesIO

PROJECT_ID = os.environ.get("GCP_PROJECT_ID", "your-project-id")
LOCATION = "us-central1"

client = genai.Client(
    vertexai=True,
    project=PROJECT_ID,
    location=LOCATION,
)

DARK_PROMPT = """A cinematic wide banner image of a dark forest floor at night. Bioluminescent mycelium networks spread across the ground, glowing in teal and warm amber/orange. The mycelium forms an interconnected web of glowing nodes and filaments. Dark tree trunks rise from the ground. The atmosphere is mysterious and alive. The center of the image should have a slightly darker, cleaner area suitable for overlaying text. No text in the image."""

LIGHT_PROMPT = """A cinematic wide banner image of a sunlit forest floor in warm morning light. Delicate mycelium networks and fine root structures spread across rich dark soil, catching golden sunlight. Soft light filters through trees. Small mushrooms and spores dot the forest floor. The atmosphere is warm, organic, and hopeful. The center of the image should have a slightly lighter, cleaner area suitable for overlaying text. No text in the image."""


def generate_banner(prompt: str, output_path: str):
    """Generate a banner base image using Imagen 3."""
    print(f"Generating {output_path}...")

    response = client.models.generate_images(
        model="imagen-3.0-generate-002",
        prompt=prompt,
        config=types.GenerateImagesConfig(
            number_of_images=1,
            aspect_ratio="16:9",
            safety_filter_level="BLOCK_ONLY_HIGH",
        ),
    )

    if not response.generated_images:
        print(f"ERROR: No images generated for {output_path}")
        return False

    img_bytes = response.generated_images[0].image.image_bytes
    img = Image.open(BytesIO(img_bytes))
    print(f"  Generated: {img.size[0]}x{img.size[1]}")

    # Resize to 1600px wide, maintaining aspect ratio
    target_width = 1600
    ratio = target_width / img.size[0]
    target_height = int(img.size[1] * ratio)
    img = img.resize((target_width, target_height), Image.LANCZOS)
    print(f"  Resized: {target_width}x{target_height}")

    img.save(output_path, "PNG", optimize=True)
    size_kb = os.path.getsize(output_path) / 1024
    print(f"  Saved: {size_kb:.0f} KB")
    return True


def main():
    assets_dir = os.path.dirname(os.path.abspath(__file__))

    dark_ok = generate_banner(DARK_PROMPT, os.path.join(assets_dir, "base-dark.png"))
    light_ok = generate_banner(LIGHT_PROMPT, os.path.join(assets_dir, "base-light.png"))

    if dark_ok and light_ok:
        print("\nDone! Base images ready for text compositing.")
    else:
        print("\nWARNING: Some images failed to generate.")
        sys.exit(1)


if __name__ == "__main__":
    main()
