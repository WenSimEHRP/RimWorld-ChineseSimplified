== 需要修改游戏的部分

一部分与中文相关的问题仅仅修改翻译无法解决，下述问题均需要开发者方面自行修改游戏。考虑到 Unity 属于比较成熟的游戏引擎，可能有现成的解决方案。

=== 断行处理

传统上中文排版遵循「孤行不成页，孤字不成行」的原则#footnote[https://www.w3.org/TR/clreq/#adjustments_of_orphans_and_widows]。孤行指的是一行的最后一个字单独成行，孤字指的是一行的第一个字单独成行。游戏中目前尚未支持此功能。

=== 中西文间空格

中西文间传统上需添加空格#footnote[https://www.w3.org/TR/clreq/#handling_of_grid_alignment_in_chinese_and_western_mixed_text_composition]。如：

#figure(
  caption: "中西文间空格效果",
  kind: image,
  table(
    columns: 2,
    align: (x, y) => if y > 0 { left } else { auto },
    table.header[添加空格][不添加空格],
    [
      你是一个apple\
      我有banana\
      我还有wiki和orange
    ],
    [
      #set text(cjk-latin-spacing: none)
      你是一个apple\
      我有banana\
      我还有wiki和orange
    ],
  ),
)

但在游戏中，中西文间并没有空格。考虑到部分翻译占位符#footnote[
  即 placeholder，常见形式有 `{0}`、`{1}`、`TargetA` 等
]可能同时展示中文与西文内容（如殖民者名称），因此粗暴地在每个占位符前后添加空格并不可行。

=== Linux 上的字体问题

当前游戏在 Linux 上字体有渲染问题，中文文本完全无法正常显示。

== 需要修改游戏文本与文本逻辑的部分

开发者大量采用了字符串拼接的方式来生成游戏文本。这种方式在英文中也许可行，但是在中文中完全不可行。中文的语法与英文有很大差异，直接拼接会导致语法错误、读不通顺。

=== Do something at...

在英文中，「Do something at somewhere」是个常见的句式，在中文中的对应句式则是「在某地做某事」。但对于此类字符串，开发者采用了简单的字符串拼接方式，导致翻译时无法直接翻译成「在某地做某事」，而是需要翻译成「某某于某地」，如「烹饪于炉灶」、「种植于种植区1」等。

#figure(image("media/do_something_at.png"), caption: [Do something at... 的翻译])

=== Do something in...

「Do something in」通常用来表示「在某时间后做某事」，如「sleep in 3 hours」、「attack in 4 hours」，对应的中文翻译分别为「在3小时后睡觉」与「在4小时后攻击」。与上述「Do something at」的问题类似，开发者采用了字符串拼接的方式，导致翻译时无法直接翻译成「在某时间后做某事」，而是需要翻译成「某某于某时间后」，如「烹饪于3小时后」、「攻击于4小时后」等。

=== 硬编码文本

射速的极限值为「无穷大」，但是在游戏中只能显示为「infinity」，无法翻译。

=== 英文标点符号

英文标点采用「半宽」标点符号，而中文标点除引号之外皆采用「全宽」标点符号#footnote[目前大陆通行的引号在游戏中鲜少使用]。在字符串拼接的过程中，开发者没有正确处理标点符号，导致排版宽度不一致等问题。

#figure(image("media/concat_punctuation.png"), caption: [中文文本中出现的英文标点符号])

上图中每一个打红框的语句均为字符串拼接生成。第一个红框「Ulana，军医」中的逗号是半宽英文逗号加空格，第二个红框「新移民的女性，年龄45（138）」中的逗号是半宽英文逗号加空格，括号是半宽英文括号加空格。第三个红框「闲逛中。.」的问题比较严重，第一个句号是正常的中文句号，但后面却跟着第二个句号，是半宽英文句号。

=== 名称

中文传统人名中姓名之间没有空格，使用中文表达外国人名时中间应插入间隔号「·」。制作组是这样处理的：

#figure(image("media/name.png"), caption: [名称的处理])

在游戏中可以给殖民者指定昵称。在英文中，如若写出某人姓名与昵称，一般采用#text(font: "Sarasa UI SC")[「first name 'nickname' last name」]的形式，昵称用单引号括起来。中文当中没有类似的语法，不过一种可行的方式是「前缀后缀（昵称）」。

#figure(image("media/nickname.png"), caption: [完全没翻译])

=== 并列关系

英文中表达并列关系时直接使用逗号分隔，如「A, B, C」。中文中则需要使用顿号「、」分隔，如「A、B、C」。游戏中开发者直接使用英文逗号拼接。

#figure(image("media/seperation_punctuaion.png"))

=== 中文间空格

正常情况下中文文本之间不应该有空格#footnote[不考虑挪抬等特殊排版情况]，但是字符串拼接的时候开发者没有处理好，导致中文文本之间出现空格。
