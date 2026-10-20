#import "@preview/touying:0.6.1": *
#import themes.simple: *
#show: simple-theme.with(
  aspect-ratio: "16-9",
  header: []
)


= #text(size: 40pt)[AI for writing code]

== What is an _agent_?

#slide[
  #image("images/chatbot.png", height: 80%)
  #place(right + top, dy: 2cm, dx: 2cm)[
    #set align(left)
    #box(width: 30%)[
      chatbot
      - can "reason", \ use tools, \ access the web
      - interactive
    ]
  ]
  #colbreak()

  #place(right + top, dy: -1.5em, dx: 1em)[
    #image("images/agent.png", width: 85%)
  ]
  #place(bottom, dy: 1em)[
    agent
    - access to local tools and files, ability to act on the environment
    - typically more autonomy, asyncronous interaction
  ]
]

== So much more code

#slide[
  #alternatives()[
    #place(left + bottom)[
      #image(
        "images/52a19d636c659cf4515dc0d7d70b8ceb1bbfd768-2200x1276.webp", 
        width: 80%
      )
    ]
    #place(bottom, dy: 1.5em)[
      #set text(fill: gray, size: 0.5em)
      https://www.anthropic.com/institute/recursive-self-improvement
    ]
  ][
    #place(left + bottom, dx: -1em)[
      #image(
        "images/Across the company, engineers are shipping code faster.svg", 
        width: 80%
      )
    ]
    #place(bottom + left, dy: 1.5em)[
      #set text(fill: gray, size: 0.5em)
      https://openai.com/index/research-acceleration-view-inside-openai/
    ]
  ]
]

== Reactions

#slide[
  #place(left + bottom)[
    #image(
      "images/godot-policy.png",
      height: 45%
    )
    #v(-1em)
    #image(
      "images/zig-policy.png",
      height: 45%
    )
  ]
  #place(bottom + center, dy: 1.5em)[
    #set text(fill: gray, size: 0.5em)
    https://godotengine.org/article/contribution-policy-2026/
    \
    https://ziglang.org/code-of-conduct/#strict-no-llm-no-ai-policy
  ]

  #place(right + horizon, dy: 3em, dx: 0.75em)[
    #set align(left)
    - mainteners overwhelmed
    - educating contributors
  ]
]

#slide[
  #grid(columns: (1fr, 1fr))[
    #image("images/arxiv-policy.png")
    #image("images/arxiv-policy2.png")
  ][
    #image("images/arXiv-Monthly-Submissions-September-2026.webp", width: 112%)
  ]
  #place(bottom + left, dy: 1.5em)[
    #set text(fill: gray, size: 0.5em)
    https://blog.arxiv.org/2026/10/01/updated-rate-limit-policy/
  ]
]

== Automated theorem proving

#slide[
  #only(1)[
    #image("images/lean.png")

    #place(bottom + left, dy: 1.5em)[
      #set text(fill: gray, size: 0.5em)
      https://lean-lang.org/
    ]
  ]
  #only(2)[
    #image("images/flt.png", width: 65%)
    
    - dozen of autonomous parallel agents
    - 11 days
    - 13 million loc #h(0.5em) (5x Mathlib)
    - software engineering problem (Prove2Me)
    
    #place(bottom + left, dy: 1.5em)[
      #set text(fill: gray, size: 0.5em)
      https://www.anthropic.com/news/formalizing-fermats-last-theorem
      \
      https://beta.prove2.me/about
      \
      https://arxiv.org/pdf/2608.28433
    ]
  ]
  #only(3)[
    #v(1em)
    #image("images/kernel-bug.png")

    #place(bottom + left, dy: 1.5em)[
      #set text(fill: gray, size: 0.5em)
      https://leodemoura.github.io/blog/2026-8-1-postmortem-for-kernel-soundness-bug-14576/
      \
      https://leodemoura.github.io/blog/2026-8-24-postmortem-for-the-kernel-soundness-bug-hunt/
    ]
  ]
  #only(4)[
    #place(bottom, dy: 1.5em)[
      #image("images/lost-in-translation.png")
    ]

    #place(horizon + left, dy: 2.5em)[
      #set text(fill: gray, size: 0.5em)
      https://arxiv.org/pdf/2610.08144
    ]
  ]
  #only(5)[
    #image("images/problem-solving.png")

    #place(bottom)[
      #box(width: 65%)[
        #set text(size: 18pt)
        #quote(block: true)[
          By canonization, I mean the process of taking a local, one-off formalization and turning it into library mathematics: *general, reusable, coherent, efficient, and compatible* with the rest of the monorepo. Canonization is not mere refactoring.
        ]
      ]
    ]

    #place(bottom + left, dy: 1.5em)[
      #set text(fill: gray, size: 0.47em)
      https://alexkontorovich.wordpress.com/2026/04/05/lecture-interactions-of-ai-with-research-math-and-formalization-at-newton-insitute-cambridge/
    ]

    #place(left + horizon, dx: -1em, dy: -1.5em)[
      #rotate(-90deg, reflow: true)[
        #set text(fill: gray, size: 0.5em)
        https://arxiv.org/pdf/2608.16753
      ]
    ]
  ]

  #place(right + horizon, dy: -0.5em)[
    #set align(left)
    #pause
    - increasingly capable
    #pause
    - bug exploit
    #pause
    - lost in translation
      - NL #sym.crossmark.heavy $arrow.r.squiggly$ FL #sym.checkmark.heavy
      - NL #sym.checkmark.heavy $underbrace(eq.not, "proof")$ FL #sym.checkmark.heavy
      - NL ? $underbrace(gt.neq, "claim")$ FL #sym.checkmark.heavy
    #pause
    - _canonization_
  ]
]


= My experiences// \ (be patient)

== 1) splines-KAN

#slide[
  #v(-0.75em)
  #text(fill: blue, size: 20pt)[
    https://github.com/HunterNise/splines-KAN
  ]

  - \~11k loc (\~20k w/ text)
  - 02 March - 03 June \
    $quad$ (92 days, 30 active)
  - GitHub Copilot, \
    $quad$ mainly Claude Sonnet 4.6
  - GitHub Copilot Pro \
    $quad$ (\$10 USD / month)
  - total cost: \$20 \
    $quad$ (first trial month free)

  #place(top + right, dy: 2em, dx: 1em)[
    #image("images/pipeline3.svg", width: 65%)
  ]
  #place(bottom + right, dy: 1.5em, dx: -2em)[
    #image("images/kan-notation.png", height: 60%)
  ]
]

#slide[
  #grid(columns: (50%, 50%))[
    role of AI: #underline(offset: 4pt)[*assistant*]
    - discuss implementation
    - analyze code/results and \ make suggestions
    - generate drafts and snippets
    - debug and understand errors
    - speed up documentation use
    //#colbreak()
    #set text(size: 19pt)
    later on
    - autonomous implementation for boring tasks
    - full design/research loop (still manual)
  ][
    my role: #underline(offset: 4pt)[*research lead*]
    - read and understand the literature
    - define goals, constraints, \ what counts as meaningful result
    - write the business logic
    - run training, inspect plots, compare outputs
    - owns architecture, design, \ (most of) implementation, \ (most of) review
  ]
]

#slide[
  judgement: *neutral*
  - the project was not too technically demanding, \ the models were not too smart, and \ I did not have much experience
  - nice to have a conversational partner
  - useful to have an assistant for \ boring/annoying/unknown tasks
  - main frustration: iteration cost
  - workflow disruption: GitHub billing change

  #place(right + top, dx: 2em)[
    #image("images/replace-string.jpg", width: 39%)
  ]
]

== 2) nmopt-project

#slide[
  #v(-0.75em)
  #text(fill: blue, size: 20pt)[
    https://github.com/HunterNise/nmopt-project
  ]

  - \~83k loc (\~193k w/ text)
  - 27 July - 03 October \
    $quad$ (68 days, 49 active)
  - Codex, GPT-5.6 xHigh
  - ChatGPT Plus (23€ / month)
  - total cost: 46 + 60 = \~100€

  #place(left + bottom, dy: 1.5em)[
    #image("images/dealii_logo-768x185.png", width: 35%)
    #v(-1em)
    1997 - now \
    \~550k loc (\~1m w/ text)
  ]

  #place(right + top, dy: 2em)[
    $
      -Delta y &= f + u &&quad "in" Omega, \
             y &= 0     &&quad "on" partial Omega
    $
    #v(-0.75em)
    $
      min_(y, u) #h(0.5em) 1/2 norm(y - z_d)_(L^2(Omega))^2
                        + beta/2 norm(u)_(L^2(Omega))^2
    $
  ]
  #place(right + bottom)[
    #grid(columns: 2)[
      #image("images/state.png", height: 45%)
    ][
      #image("images/control.png", height: 45%)
    ]
  ]
]

#slide[
  #grid(columns: (50%, 55%))[
    role of AI: #underline(offset: 4pt)[*guided/full agent*]
    - write all the code and much of documentation
    - discuss specs, turn them in concrete iterable plans, and implement them
    - analyze architecture, literature and provide feedback
    - owns (most of) design, implementation, (most of) review
  ][
    my role: #underline(offset: 4pt)[*supervisor*]
    - decide direction, scope, boundaries
    - orchestrate agents, dispatch work, monitor progress, check results
    - improve environment and external harness for more reliable development
    - owns (most of) architecture, results validation (no code review)
  ]
]

#slide[
  judgement: *negative*
  - a lot more scaffolding and harness engineering
  #only(1)[
    #place(bottom, dy: 1.5em)[
      #image("images/scaffolding.png", width: 100%)
    ]
    #place(right + top, dy: -1cm)[
      #image("images/dot-agents.png", height: 65%)
    ]
  ]
  #pause
  - plenty of human effort to babysit chats, oversee what is done, \ read reports, recover from consequences
  - intent drifts and codebase gradually becomes unwieldy
  #pause
  - insufferable jargon, hard to understand (which implies hard to judge)
  - inconsistent balance for tool permission
  #pause
  - quota restrictions, resets chasing
  #only(4)[
    #place(top, dy: 1.2em)[
      #image("images/tibo.png")
    ]
    #place(bottom + right)[
      #image("images/reset.png", width: 50%)
    ]
  ]
  #pause
  - result: an enormous edifice, quite cool, yet totally incomprehensible
]

== 3) italy-fuel-price

#slide[
  #v(-0.75em)
  #text(fill: blue, size: 20pt)[
    https://github.com/HunterNise/italy-fuel-price
  ]

  - \~7k loc (\~9k w/ text)
  - 19 September - 11 October \
    $quad$ (22 days, 5 active) \
    $quad$ [more like 1/2 + 2]
  - ChatGPT, GPT-5.6 Sol High
  - still on Plus
  - total cost: \~free(?)

  #place(horizon + right, dx: 5cm, dy: 1.2cm)[
    #link("https://hunternise.github.io/italy-fuel-price/")[
      #image("images/fuel-map.png", height: 85%)
    ]
  ]
]

#slide[
  #grid(columns: (50%, 50%))[
    role of AI: #underline(offset: 4pt)[*full-stack developer*]
    - go from poorly specified ideas to a concrete application
    - owns the complete \ development cycle
  ][
    my role: #underline(offset: 4pt)[*customer*]
    - have eyes, a bit of taste, and \ close the loop
    - do not understand (almost) anything, just build
  ]
  #v(1em)
  judgement: *positive*
  - realize dream of turning ideas into products
  - opens possiblities to side-projects that would never existed otherwise
]

== End

#place(top + right)[
  #image("images/Typst.svg.webp", width: 20%)
]
#place(bottom + center)[
  https://github.com/HunterNise/seminarietto-AI-2
  #v(-1em)
  #image("images/qr-code.png", width: 35%)
]


==

#slide[
  #place(left, dx: -2cm, dy: -1cm)[
    #image("images/diagrammini.jpg", height: 120%)
  ]
  #place(right, dx: 2cm)[
    #image("images/diagrammini2.png")
  ]
]

== Many uses

#slide[
  #alternatives[
    #image("images/ai-approach.png")

    #place(bottom + left, dy: 1em)[
      #set text(fill: gray, size: 0.5em)
      https://mudlej.com/articles/ai-development-approaches/
    ]
  ][
    #set list(spacing: 1.25em)
    - Architecture — Structure \
      What components do we need, and how do they interact?
    - Design — Behavior \
      How should each component accomplish its task?
    - Implementation — Construction \
      Write the actual program.
    - Review — Inspection \
      Examine whether the code is correct, appropriate and maintainable.
  ]
]

= 

#slide[
  *context*: amount of stuff the model can keep at once (limited)

  can only see what is in the context window, \
  filling up context degrades model performance

  *compaction*: summarize the conversation and start again (lossy)

  #line(length: 100%, stroke: 1.5pt + gray)

  *ChatGPT workflow* (w/ GitHub connector)
  #grid(columns: (50%, 50%))[
    1. discuss ideas
    2. implement (sandbox VM)
    3. download zip package
  ][
    4. apply changes, review, test
    5. commit and push to remote
    6. access from chat and iterate
  ]
]

== I hate Sol

#slide[
  #place(bottom, dy: 1.5cm)[
    #alternatives[
      #image("images/sol1.jpg")
    ][
      #image("images/sol2.jpg")
    ][
      #image("images/sol3.jpg")
    ]
  ]
]

== Reinforcement Learning is hard!

#slide[
  Why can't we just ask: \ "Solve the Riemann hypothesis. Make no mistakes and don't cheat, pls."

  #place(bottom + left)[
    #link("https://www.youtube.com/watch?v=TaXUZfwACVE&list=PL5278ezwmoxQODgYB0hWnC0-Ob09GZGe2&index=9")[
      #image("images/spec-gaming.png")
    ]
  ]
  #place(bottom + right)[
    #image("images/magikarp.jpg", width: 50%)
  ]

  #place(bottom + left, dy: 1em)[
    #set text(fill: gray, size: 0.5em)
    https://www.youtube.com/watch?v=TaXUZfwACVE&list=PL5278ezwmoxQODgYB0hWnC0-Ob09GZGe2&index=9
  ]
  #place(horizon + right, dy: -1.5em)[
    #set text(fill: gray, size: 0.5em)
    https://youtu.be/DcYLT37ImBY
  ]
]

== More links

#set text(size: 20pt)

=== Thurston
-	https://arxiv.org/pdf/math/9404236
- https://mathoverflow.net/questions/43690/whats-a-mathematician-to-do/44213#44213

=== Gowers
- https://www.youtube.com/watch?v=Zuf8bJY7Zuk
- https://gowers.wordpress.com/2026/08/12/what-sort-of-maths-are-llms-good-at/

=== Tao
- https://mathstodon.xyz/@tao/117207849921390904
-	https://arxiv.org/pdf/2608.16753
- https://www.youtube.com/watch?v=bAnwMdfcMVw

=== Others
- https://terrytao.wordpress.com/2026/09/12/after-math/
- https://terrytao.wordpress.com/2026/09/18/if-math-is-more-than-proof-we-need-to-better-celebrate-the-rest-of-it/
- https://terrytao.wordpress.com/2026/10/15/why-are-we-even-doing-all-this/
- https://davidbessis.substack.com/p/the-fall-of-the-theorem-economy
- https://arxiv.org/pdf/2603.03684
- https://arxiv.org/pdf/2502.14874

=== Lean
- https://archive.is/xwkmp
- https://alexkontorovich.wordpress.com/2026/04/05/lecture-interactions-of-ai-with-research-math-and-formalization-at-newton-insitute-cambridge/
- https://xenaproject.wordpress.com/2026/10/16/how-to-formalize-all-of-mathematics/
- https://www.stephendiehl.com/posts/dependently_typed_future/

=== RL and specification gaming
- https://docs.google.com/spreadsheets/d/e/2PACX-1vRPiprOaC3HsCf5Tuum8bRfzYUiKLRqJmbOoC-32JorNdfyTiRRsR7Ea5eWtvsWzuxo8bjOxCG84dAg/pubhtml
- https://gwern.net/tank#alternative-examples
- https://youtu.be/DcYLT37ImBY

=== Various
- https://proofsandprompts.com/
- https://blog.pragmaticengineer.com/stack-overflow-is-almost-dead/
- https://math.meta.stackexchange.com/questions/39600/is-the-large-decline-in-questions-over-past-few-years-due-to-people-losing-
