return {

  s({trig="eq"},
    fmta(
      [[
        \begin{equation}
            <>
        \end{equation}
      ]],
      { i(1) }
    )
  ),

  s({trig="\\fr"},
    fmta(
      [[
        \frac{<>}{<>}
      ]],
      { i(1), i(2) }
    )
  ),
}
