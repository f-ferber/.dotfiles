return {

  s({trig = "def"},
    fmta(
      [[
        \begin{definition}[<>]\label{def:<>}
            <>
        \end{definition}
      ]],
      { i(1, "summary"), i(2, "label"), i(3, "body") }
    )
  ),

  s({trig = "prop"},
    fmta(
      [[
        \begin{proposition}[<>]\label{prop:<>}
            <>
        \end{proposition}
        \begin{proof}
            <>
        \end{proof}
      ]],
      { i(1, "summary"), i(2, "label"), i(3, "body"), i(4, "proof") }
    )
  ),

  s({trig = "eq"},
    fmta(
      [[
        \begin{equation*}
            <>
        \end{equation*}
      ]],
      { i(1) }
    )
  ),

  s({trig = "\\fr"},
    fmta(
      [[
        \frac{<>}{<>}
      ]],
      { i(1), i(2) }
    )
  ),
}
