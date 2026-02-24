// Banner: Dark variant
// Tune these values to adjust text layout:
#let title-size = 80pt
#let subtitle-size = 21pt
#let tagline-size = 16pt
#let title-tracking = 0.4em
#let text-color = white
#let subtitle-color = rgb("ffffffdd")
#let tagline-color = rgb("ffffffaa")
#let vertical-offset = -20pt

#set page(
  width: 1600pt,
  height: 872pt,
  margin: 0pt,
  background: image("base-dark.png", width: 100%, height: 100%),
)

#align(center + horizon)[
  #v(vertical-offset)
  // Subtle dark backdrop for legibility over bright mycelium
  #block(
    fill: rgb("00000066"),
    radius: 4pt,
    inset: (x: 48pt, y: 28pt),
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
