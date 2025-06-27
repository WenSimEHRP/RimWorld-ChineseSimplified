#import "utils.typ": *

== 错译、漏译

部分翻译不遵循原意，可能导致误解。

=== 精神崩溃

#side-to-side(
  caption: [「精神崩溃」的翻译],
  [`BreakRiskMinor`],
  [minor break risk],[崩溃风险（低）],[轻微精神崩溃风险],
  [`BreakRiskMajor`],
  [major break risk],[崩溃风险（中）],[重大精神崩溃风险],
  [`BreakRiskExtreme`],
  [extreme break risk],[崩溃风险（高）],[严重精神崩溃风险],
)

此处「minor」、「major」、「extreme」修饰的是「严重性」，而不是「风险」。翻译成低、中、高自然让人联想到风险的高低，而不是严重性的高低。

=== 英文中的「they」、「them」用来指代单数时

「they」、「them」在英文中可以用来指代单数的第三人称（用来替代「他」、「她」与「它」），通常在性别不明时使用。虽然中文中对应的用法是「他」#footnote[使用「她」太突出性别，使用「它」对于人而言显然不妥，使用「ta」又矫揉造作，使用「他们」可以打零分。]，但最好根据上下文翻译。所幸此类问题只在 Core 模块中较为常见，往后的 Biotech、Anomaly 资料片翻译中几乎已无此类错误。

#side-to-side(
  caption: [「they」、「them」的翻译],
  [`WitnessedDeathNonAlly.stages.witnessed_outsiders_death.description`],
  [I saw someone die. They were alive one moment, and dead the next.],
  [我看见有人死了，他们前一刻还活着，然后就死了。],
  [我看见有人死了。上一刻还活着，下一刻就死了。],
  [`ColonistBanished.stages.colonist_banished.description`],
  [We just banished someone. I hope they make it, but I'm worried.],
  [我们刚刚把某些人放逐了。我希望他们能好好的，但我实在担心。#footnote[此处用「某些人」代替「某人」实为取巧之举，避免使用「他」或「她」。],],
  [我们刚刚放逐了某人。我希望他能好好的，但我实在担心。],
)
