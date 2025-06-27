// THIS FILE WOULD BE COMPILED INTO PDF
#import "@preview/hydra:0.6.1": hydra
#import "@preview/zebraw:0.5.5": *
#set text(font: "Sarasa Gothic SC", lang: "zh", region: "cn")
#set par(justify: true, first-line-indent: (amount: 2em, all: true))
#show heading: set block(above: 1.4em, below: 1em)
#set heading(numbering: "1.")
#show raw: set text(font: "Sarasa Mono SC", size: 1.25em)
#show heading.where(level: 1): it => {
  pagebreak(weak: true)
  it
}
#show heading.where(level: 2): it => {
  pagebreak(weak: true)
  it
}
#let title = [「边缘世界」简体中文翻译勘误]
#set page(
  paper: "a4",
  header: context {
    hydra(2)
    h(1fr)
    title
  },
)

= 前言

「边缘世界」开发至今已有十余载，汉化的 GitHub 仓库也有近十年历史#footnote[准确值为#numbering("一", int((datetime.today() - datetime(year: 2016, month: 4, day: 11)).days()))天。参见：https://github.com/Ludeon/RimWorld-ChineseSimplified/commit/d31c7c1d4e5c63a9258dfe8408b97c5f2974ba4e]。本文档旨在记录汉化当中的不足之处与错误，供参考用。

本文档的作者是 GitHub\@WenSimEHRP。

本文档中的很大一部分内容是作者的个人观点，可能与其他汉化者的观点不一致，还请谅解。

排版方面的相关内容请参考「中文排版标准」#footnote[https://www.w3.org/TR/clreq/]

翻译相关文档以 PDF 形式发布，方便阅读。相关的翻译仓库与分支翻译仓库均托管在 GitHub 上#footnote[
  官方版为 https://github.com/Ludeon/RimWorld-ChineseSimplified/，作者个人开发的分支版为\ https://github.com/WenSimEHRP/RimWorld-ChineseSimplified
]。

#outline()

= 错误一览

#include "requires_game_modification.typ"
#include "format.typ"
#include "westernized.typ"
#include "translation_errors.typ"

= 翻译`diff`文件

此处为翻译差异的 `diff` 文件，本 PDF 另有一份嵌入的 `diff` 文件供参考。

#show: zebraw.with(..zebraw-themes.zebra)
#show raw: set text(size: .8em)
#raw(read("../langdiff.diff"), lang: "diff", block: true)

#pdf.embed(
  "../langdiff.diff",
  relationship: "supplement",
  description: "边缘世界简体中文翻译差异",
  mime-type: "text/x-diff; charset=utf-8",
)
