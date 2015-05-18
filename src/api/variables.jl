@doc doc"""
The `Sampleability` type is used for setting a *Variable* object to be *Constant*, *Deterministic* or *Random*.

* `Constant`: A *Constant* *Variable* has a fixed value, therefore it is a trivial case of variable. Examples of it
include its dimensions, model size and hyper-parameters.
* `Deterministic`: As opposed to a *Constant*, the value of a *Deterministic* *Variable* can vary, though it is fully
determined given other variables.
* `Random`: A *Random* *Variable* is associated with a (possibly unnormalized) distribution. Its value is randomly
determined either by sampling directly from its distribution or indirectly via Markov Chain Monte Carlo (MCMC) sampling.
"""->
abstract Sampleability

@doc doc"""
Fore more information on `Constant`, see the documentation of `Sampleability`.
"""->
type Constant <: Sampleability end

@doc doc"""
Fore more information on `Deterministic`, see the documentation of `Sampleability`.
"""->
type Deterministic <: Sampleability end

@doc doc"""
Fore more information on `Random`, see the documentation of `Sampleability`.
"""->
type Random <: Sampleability end

### Variable parametric type
###
### VariateForm and ValueSupport types imported from Distributions package

@doc doc"""
"""->
abstract Variable{F<:VariateForm, S<:ValueSupport, A<:Sampleability}

### Variable parametric sub-types
### To avoid elongated parametric sub-type names, the following abbreviations will be used:
### Univariate    : U
### Multivariate  : V
### Matrixvariate : M
