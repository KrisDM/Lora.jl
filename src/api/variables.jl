abstract Sampleability
type Constant      <: Sampleability end
type Deterministic <: Sampleability end
type Stochastic    <: Sampleability end

# VariateForm and ValueSupport types imported from Distributions package

abstract Variable{F<:VariateForm, S<:ValueSupport, A<:Sampleability}
