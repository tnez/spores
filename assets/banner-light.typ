// Banner: Light variant
// Tune these values to adjust text layout:
#let title-size = 80pt
#let subtitle-size = 21pt
#let tagline-size = 16pt
#let title-tracking = 0.4em
#let text-color = rgb("1a1a1a")
#let subtitle-color = rgb("1a1a1acc")
#let tagline-color = rgb("1a1a1a99")
#let vertical-offset = -20pt

#set page(
  width: 1600pt,
  height: 872pt,
  margin: 0pt,
  background: image("base-light.png", width: 100%, height: 100%),
)

#align(center + horizon)[
  #v(vertical-offset)
  // Semi-transparent backing for legibility on busy background
  #block(
    fill: rgb("ffffff88"),
    radius: 4pt,
    inset: (x: 40pt, y: 24pt),
  )[
    #block(spacing: 0pt)[
      #text(
        font: "Helvetica Neue",
        size: title-size,
        weight: "light",
        tracking: title-tracking,
        fill: text-color,
      )[SPORES]
    ]
    #v(16pt)
    #block(spacing: 0pt)[
      #text(
        font: "Helvetica Neue",
        size: subtitle-size,
        weight: "light",
        tracking: 0.08em,
        fill: subtitle-color,
      )[Self-improving Patterns for Organic, Recursive Evolution of Systems]
    ]
    #v(8pt)
    #block(spacing: 0pt)[
      #text(
        font: "Helvetica Neue",
        size: tagline-size,
        weight: "light",
        tracking: 0.05em,
        fill: tagline-color,
      )[Patterns for growing self-improving agents.]
    ]
  ]
]
