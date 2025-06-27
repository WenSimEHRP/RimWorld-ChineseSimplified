#let side-to-side(caption: none, ..args) = {
  set par(justify: false)
  figure(
    caption: caption,
    table(
      columns: 3,
      align: (x, y) => if y > 0 { left } else { auto },
      table.header[原文][现行翻译][建议翻译],
      ..{
        let counter = 0
        for x in args.pos() {
          if calc.rem(counter, 4) == 0 {
            (table.cell(colspan: 3, [ID: #x]),)
          } else { (x,) }
          counter += 1
        }
      }
    ),
  )
}
