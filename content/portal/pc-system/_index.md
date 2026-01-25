---
title: 🎯 The PC System
subtitle: The Personal-Collective System for objective setting
---

The Personal-Collective System (PC System) is a concise, structured framework
developed by Dense Analysis to help individuals and groups pursue meaningful,
high-value objectives. It uses a four-dimensional scoring model broken down
into **Fun** ("Will I enjoy it?"), **Achievement** ("What will I gain?"),
**Ease** ("How little effort is required?"), and **Impact** ("How much good
does it do?"). A reference tool is available to visualize where the best
objectives may lie. The system is designed to support both solo goal setting
and collaborative planning, with guidance, tools, and best practices
contributed and refined through real-world use.

## Conventional Wisdom and Connected Ideas

> 💡 **Note:** Please consult the following sub-pages for collective wisdom from
> authors and thinkers from around the world and across time that complement
> the PC System and build toward a shared Dense Analysis philosophy.

- 🤝 [How To Win Friends and Influence People](how-to-win-friends-influence-people/)
- 🏛️ [The Mythical Man-Month](the-mythical-man-month/)
- 👑 [King, Warrior, Magician, Lover](king-warrior-magician-lover/)
- 🎚️ [The Eisenhower Matrix](the-eisenhower-matrix/)
- 🗣️ [Radical Candor](radical-candor/)

## Why Have a System?

Systematizing objective setting helps clarify a vague and difficult topic: how
to set goals for yourself or others. The PC System provides a means to quickly
and efficiently discover the most appropriate goals for an individual by
weighing personal interests and growth opportunities against goals of a
collective. Adding clarity and efficiency to objective setting reduces tensions
between individuals as each individual will tend to achieve more for themselves
and others.

The PC System introduces an algorithmic guide for objective setting to function
as an advisory tool, complete with a reference implementation that is
[freely available online](https://denseanalysis.org/pc-system/). The PC System
tool can be applied with the web browser reference implementation. It can be
sketched out on paper, drawn on a whiteboard, or otherwise applied.

The PC System encourages general application of a Dense Analysis philosophy for
work that combines the conventional wisdom of several key authors, lecturers,
project managers, philosophers, and more. Importantly, the PC System and the
shared Dense Analysis philosophy of work encourage critical thinking, with the
ultimate aim of selecting the most valuable work and improving performance,
both personal and collective, in pursuit of high-level goals.

## The System --- Two Worlds, Two Planes

The PC System captures the following four dimensions, that answer four
important questions, which are separate factors. You may rate an objective
separately higher or lower across these four dimensions. The goal is to find
objectives that optimize the most for all four dimensions.

1. **(F) "Fun"** --- Will you personally enjoy working on the objective? How
   much happiness will completing the objective bring you as you work on it?
2. **(A) "Achievement"** --- Will you personally gain from completing the
   objective? How much will you achieve from completing the objective?
3. **(E) "Ease"** --- Will completing the objective be easy or require low
   collective effort? How easy will completing the objective be?
4. **(I) "Impact"** --- Will completing the objective have a high collective
   impact? How impactful will completing the objective be?

In the western world we read information from left to right, and the system has
been designed such that the dimensions can be drawn on two personal and
collective planes where the label for a vertical y-axis appears first, and the
label for a horizontal x-axis appears second. Written as a series of
mathematical values as four dimensions, we can see the four dimensions
mathematically as such.

$$
(A, F, I, E)
$$

You can remember which dimensional components the system includes by the sound
"/a fee/," or you can say "a fee," as in, "you pay a fee in time to complete
objectives." The four dimensions can be split into separate coordinates for the
personal and collective sides as such.

$$
((A, F), (I, E))
$$

Splitting the four dimensions into two separate planes makes it possible to
plot values on a graph. For the system we will constrain all values to be
normalized between `0` and `1`, and values can be multiplied by the size of a
plot on a computer screen to fit to any size of chart. Let us take an example
where we have defined three objectives, and we have already arrived at numeric
values between `0` and `1` to rate those four objectives.

| **Name** | **(A) Achievement** | **(F) Fun** | **(E) Ease** | **(I) Impact** |
| --- | --- | --- | --- | --- |
| **Objective 1** | 1 | 0 | 0.56 | 1 |
| **Objective 2** | 0.82 | 0.91 | 0.85 | 0.83 |
| **Objective 3** | 0.16 | 0.12 | 0.19 | 0.16 |

Splitting the **Personal** and **Collective** dimensional components into two
separate planes, we could achieve drawings as such.

![Personal plane scores](/img/portal/pc-system/personal-plane-scores.png)

![Collective plane scores](/img/portal/pc-system/collective-plane-scores.png)

Being able to visualize how objectives compare against each other in each
separate plane simplifies how you think about those objectives. It is important
to view the **Personal** and **Collective** benefits separately. It is also
important to view the combined values for how much an objective would benefit
either the **Personal** or the **Collective**. In order to do this, we need a
means of dimensional reduction to again view the values on a simple
two-dimensional plane, where we arrive at the values `(C, P)` from a function
`f` like so:

$$
(C, P) = (f(A, F), f(I, E))
$$

We will define our function `f` mathematically as such:

$$
f(x, y) = \frac{\frac{\sqrt{x^2 + y^2}}{\sqrt{2}} + x \cdot y}{2}
$$

This dimensional reduction function `f` is composed of the following steps.

1. **Euclidean Norm** ($\sqrt{x^2 + y^2}$) --- The distance from the origin for
   the two dimensions.
2. **Normalization** --- Dividing the Euclidean Norm by the square root of 2
   ($\frac{...}{\sqrt{2}}$) normalizes the result of the Euclidean Norm between
   $0$ and $1$, producing a normalized Euclidean Norm.
3. **Multiplication** ($x \cdot y$) --- Produces a simple adjustment on the
   strength of the two dimensions, to bias results lower if one value falls
   lower.
4. **Average** ($\frac{...}{2}$) --- Produces the average of both the normalized
   Euclidean Norm and also multiplication to arrive at a value that is pushed
   smoothly along from $0$ to $1$, biasing slightly to lower results where one
   value falls lower, without pushing values too extremely low.

By applying our function `f` to the results above, we can arrive at the
following results in a combined PC plane. (Results rounded up to three decimal
places.)

| **Name** | **(C) Collective** |  **(P) Personal** |
| --- | --- | --- |
| **Objective 1** | 0.685 | 0.354 |
| **Objective 2** | 0.773 | 0.806 |
| **Objective 3** | 0.103 | 0.08 |

![Combined personal and collective plane](/img/portal/pc-system/combined-plane-scores.png)

You can view the results in the
[reference PC System tool](https://denseanalysis.org/pc-system/) by uploading
the following CSV.

```
name,achievement,fun,impact,ease
Objective 1,1,0,0.56,1
Objective 2,0.82,0.91,0.85,0.83
Objective 3,0.16,0.12,0.19,0.16
```

## Improving "Ease"

One important consideration when applying the system is you may consistently
arrive at results that suggest that some or all objectives are not easy enough.
You should be encouraged to provide training, apply the correct tools, and find
any means necessary to make objectives easier to achieve. By weighting
objectives down by "Ease" you may find a need for more training to promote the
"Ease" value for an employee, or you may find the need for the application of
particular tools to improve "Ease."

Dense Analysis recommends the following tools for making your life easier.

1. When writing code, use [the DAFT](/projects/daft/).
   Good editors, linters, code fixers, and AI tools will make writing code and
   working with DSLs much easier.
2. Choose simpler solutions over more complex solutions wherever possible.
   Follow the [KISS principle](https://en.wikipedia.org/wiki/KISS_principle).

## Applying the PC System in the Real World

One of the purposes of the PC System is to assist employers and workers with a
means to get more for themselves, and to assist companies and work groups with
getting the best out of employees and workers. Consider the following example
scenarios where dimensions might be weighted differently and in the balance
give a clearer picture as to which objectives are the most important and how to
select them.

### Scenario: Mid-level engineer at risk of burnout

An engineer regularly delivers but feels stagnant. Management assigns them to
co-lead a small R&D project exploring a new tech stack they are curious about.

- *Collective benefit:* Retains a reliable, experienced team member and avoids
  disruption from turnover. The R&D project surfaces new tooling insights that
  benefit multiple teams.
- *Personal gain:* High "Fun" and "Achievement" through creative work and skill
  development. Renewed motivation leads them to stay and re-engage with broader
  technical goals.

### Scenario: Senior contributor re-engagement

A long-standing contributor feels their work has become repetitive. They are
asked to lead a hack week on experimentation or shadow a product manager for a
sprint.

- *Collective benefit:* A visible senior team member sets a tone of curiosity
  and initiative, inspiring others and generating new experimentation pathways.
- *Personal gain:* Gains "Fun," "Impact," and "Achievement" by breaking
  monotony, expanding perspective, and influencing product direction and
  reigniting their sense of purpose.

### Scenario: Giving up a preferred tech stack for team alignment

An experienced contributor prefers a bleeding-edge stack but is asked to build
using a legacy system to ensure maintainability and faster ramp-up for new
hires. This is an example where personal "Fun" might be low, but an objective
is otherwise weighted high.

- *Collective benefit:* Reduced onboarding time, unified tooling. The solution
  may favor "Ease" at equal "Impact" so the collective benefits to the same
  degree in a smaller time frame.
- *Personal tradeoff:* Less fun, more constraints.
- *Long-term gain:* They become the recognized expert on migration strategy and
  tech debt management, leading future replatforming efforts, which scores high
  in terms of "Achievement." The collective may achieve their goals with less
  delay to ship if estimated effort can be shown to be less.

### Scenario: Building an internal joke tool for during downtime

An idea is formed to spend time building an internal joke tool for boosting
employee morale. This is an example where an objective may be quite "Fun" but
might not be selected due to low weighting along other dimensions.

- *Collective benefit:* Low direct impact, but may raise morale.
- *Personal tradeoff:* Low achievement and impact formally.
- *Personal gain:* High fun, high ease, and potential indirect impact through
  team bonding.

## Deciding Numeric Values

It is difficult to quantify objectives in terms of numeric values from `0` to
`1` by examining objectives in isolation. Dense Analysis recommends considering
at least a handful of objectives and weighting them against each other in terms
of each of the individual four dimensions. Similar to rating your favorite
songs or movies, it is much easier to set a numerical rating for each
individual selection when weighting several examples together. The reference
tool sliders will help with visually balancing different objectives. As an
alternative, you might write each of the objectives ranked from top to bottom
along each individual objective and then use the ranking to decide numerical
weights.

In the example below we have taken a series of objectives, and individually
ranked them in order top to bottom. The objectives described here are arbitrary
and used simply to demonstrate how to rank objectives along different
dimensions.

| **Rank** | **Fun** | **Achievement** | **Ease** | **Impact** |
| --- | --- | --- | --- | --- |
| 1 | (a) Lead Hack Week | (c) Give Conference Talk | (h) Team Health Check | (j) Refactor Legacy Code |
| 2 | (b) Build Slack Bot | (d) Experimental R&D Sprint | (b) Build Slack Bot | (a) Lead Hack Week |
| 3 | (c) Give Conference Talk | (a) Lead Hack Week | (g) Write Docs | (c) Give Conference Talk |
| 4 | (d) Experimental R&D Sprint | (j) Refactor Legacy Code | **(f) Improve Onboarding** | **(f) Improve Onboarding** |
| 5 | (e) Mentorship Program | (e) Mentorship Program | (i) Accessibility Audit | (e) Mentorship Program |
| 6 | **(f) Improve Onboarding** | (b) Build Slack Bot | (d) Experimental R&D Sprint | (g) Write Docs |
| 7 | (g) Write Docs | (g) Write Docs | (j) Refactor Legacy Code | (d) Experimental R&D Sprint |
| 8 | (h) Team Health Check | **(f) Improve Onboarding** | (c) Give Conference Talk | (b) Build Slack Bot |
| 9 | (i) Accessibility Audit | (i) Accessibility Audit | (e) Mentorship Program | (i) Accessibility Audit |
| 10 | (j) Refactor Legacy Code | (h) Team Health Check | (a) Lead Hack Week | (h) Team Health Check |

You can determine values with the formula
`v = ((n - x) / (n - 1))` where `n` is the bottom rank number, in this case
`10`, and `x` is the rank of an individual item. For example, the
"(f) Improve Onboarding" objective, bolded above, would rank along each
dimension as such.

---

$F = ((10 - 6) / (10 - 1)) = 0.44...$

$A = ((10 - 8) / (10 - 1)) = 0.22...$

$E = ((10 - 4) / (10 - 1)) = 0.66...$

$I = ((10 - 4) / (10 - 1)) = 0.66...$

$P = f(A, F) = \frac{\frac{\sqrt{A^2 + F^2}}{\sqrt{2}} + A \cdot F}{2}
\approx 0.23$

$C = f(I, E) = \frac{\frac{\sqrt{I^2 + E^2}}{\sqrt{2}} + I \cdot E}{2}
\approx 0.55$

---

Below we have computed the values for every objective and displayed them
ranked by collective and personal scores.

| **Objective** | **Fun** | **Achievement** | **Ease** | **Impact** | **Personal** | **Collective** |
| --- | --- | --- | --- | --- | --- | --- |
| (f) Improve Onboarding | 0.44 | 0.22 | 0.67 | 0.67 | 0.23 | 0.55 |
| (j) Refactor Legacy Code | 0.00 | 0.67 | 0.33 | 1.00 | 0.24 | 0.54 |
| (g) Write Docs | 0.33 | 0.33 | 0.78 | 0.44 | 0.22 | 0.49 |
| (b) Build Slack Bot | 0.89 | 0.44 | 0.89 | 0.22 | 0.55 | 0.42 |
| (c) Give Conference Talk | 0.78 | 1.00 | 0.22 | 0.78 | 0.84 | 0.37 |
| (h) Team Health Check | 0.22 | 0.00 | 1.00 | 0.00 | 0.08 | 0.35 |
| (a) Lead Hack Week | 1.00 | 0.78 | 0.00 | 0.89 | 0.84 | 0.31 |
| (d) Experimental R&D Sprint | 0.66 | 0.89 | 0.44 | 0.33 | 0.69 | 0.27 |
| (e) Mentorship Program | 0.56 | 0.56 | 0.11 | 0.56 | 0.43 | 0.23 |
| (i) Accessibility Audit | 0.11 | 0.11 | 0.56 | 0.11 | 0.06 | 0.23 |

## Your Own Collective

One important consideration for the **PC System** is that the system can be used
entirely for setting objectives for sole traders, self-employed individuals, in
your own personal life, and so on. The "collective" for the collective aspect of
the system could extend only as far as your friend group, your family, or even
yourself alone. The system can be used entirely to benefit only an individual as
well as it could mutually benefit a wider collective as well as the individual.
The system is therefore not merely a bridge between individualism and
collectivism, but a universal tool. Examples of objectives solely for an
individual may include the following.

1. **Filing personal taxes** --- Most would not find filing personal taxes
   enjoyable, so not much "Fun," but doing so achieves a lot for the
   individual, so high "Achievement." Filing personal taxes has a massive
   "Impact." Filing taxes may not be easy, so low "Ease." Note that you might
   select tax filing tools to improve the ease of completing the work.
2. **Physical fitness** --- Depending on the individual, maintaining physical
   fitness may require an attitude change for it to be considered "Fun" and is
   certainly not easy for most individuals, so low "Ease." Still, any sensible
   person must agree that being in greater physical health carries a high
   "Impact" and is a great "Achievement." A healthier individual is able to
   live longer and achieve more for themselves and others.
