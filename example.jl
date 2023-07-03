using NoLib
const NL = NoLib
using Plots

model = yaml_import("rbc_mc.yaml")

sol = NL.time_iteration(model)

tab = NL.tabulate(model, sol.dr, :k)

plot(tab[:k], tab[:k])


sim = NL.simulate(model, sol.dr)
