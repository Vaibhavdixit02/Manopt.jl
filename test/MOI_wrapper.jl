using Test
using LinearAlgebra
using Manifolds
using Manopt
using JuMP

function test_sphere()
    model = Model(Manopt.JuMP_Optimizer)
    start = normalize(1:3)
    @variable(model, x[i=1:3] in Sphere(2), start = start[i])

    @objective(model, Min, sum(x))
    @test MOI.get(unsafe_backend(model), MOI.ResultCount()) == 0
    optimize!(model)
    @test MOI.get(unsafe_backend(model), MOI.NumberOfVariables()) == 3
    @test termination_status(model) == MOI.LOCALLY_SOLVED
    @test primal_status(model) == MOI.FEASIBLE_POINT
    @test primal_status(model) == MOI.FEASIBLE_POINT
    @test dual_status(model) == MOI.NO_SOLUTION
    @test objective_value(model) ≈ -√3
    @test value.(x) ≈ -inv(√3) * ones(3) rtol = 1e-2
    @test raw_status(model) isa String
    @test raw_status(model)[end] != '\n'

    @objective(model, Max, sum(x))
    set_start_value.(x, start)
    optimize!(model)
    @test objective_value(model) ≈ -√3
    @test value.(x) ≈ inv(√3) * ones(3) rtol = 1e-2
    @test raw_status(model) isa String
    @test raw_status(model)[end] != '\n'

    @objective(model, Min, sum(xi^4 for xi in x))
    set_start_value.(x, start)
    optimize!(model)
    @test objective_value(model) ≈ 1 / 3 rtol = 1e-4
    @test value.(x) ≈ inv(√3) * ones(3) rtol = 1e-2
    @test raw_status(model) isa String
    @test raw_status(model)[end] != '\n'

    set_objective_sense(model, MOI.FEASIBILITY_SENSE)
    optimize!(model)
    @test sum(value.(x) .^ 2) ≈ 1

    set_start_value(x[3], nothing)
    err = ErrorException("No starting value specified for `3`th variable.")
    @test_throws err optimize!(model)
    set_start_value(x[3], 1.0)

    @variable(model, [1:2, 1:2] in Stiefel(2, 2))
    @test_throws MOI.AddConstraintNotAllowed optimize!(model)
end

function _test_stiefel(solver)
    A = [
        1 -1
        -1 1
    ]
    # Use `add_bridges = false` in order to test `copy_to`
    model = Model(Manopt.JuMP_Optimizer; add_bridges=false)
    dst = "descent_state_type"
    @test MOI.supports(unsafe_backend(model), MOI.RawOptimizerAttribute(dst))
    set_attribute(model, dst, solver)
    @test get_attribute(model, dst) == solver
    @variable(model, U[1:2, 1:2] in Stiefel(2, 2), start = 1.0)

    @objective(model, Min, sum((A - U) .^ 2))
    optimize!(model)
    @test objective_value(model) ≈ 2
    @test value.(U) ≈ [1 0; 0 1]
    return nothing
end

function test_stiefel()
    return _test_stiefel(Manopt.GradientDescentState)
end

@testset "JuMP tests" begin
    test_sphere()
    test_stiefel()
end

function test_runtests()
    optimizer = Manopt.JuMP_Optimizer()
    config = MOI.Test.Config(; exclude=Any[MOI.ListOfModelAttributesSet])
    return MOI.Test.runtests(
        optimizer,
        config;
        exclude=String[
            # See https://github.com/jump-dev/MathOptInterface.jl/pull/2195
            "test_model_copy_to_UnsupportedConstraint",
            "test_model_copy_to_UnsupportedAttribute",
            "test_model_ScalarFunctionConstantNotZero",
            # See https://github.com/jump-dev/MathOptInterface.jl/pull/2196/
            "test_objective_ScalarQuadraticFunction_in_ListOfModelAttributesSet",
            "test_objective_ScalarAffineFunction_in_ListOfModelAttributesSet",
            "test_objective_VariableIndex_in_ListOfModelAttributesSet",
            "test_objective_set_via_modify",
            "test_objective_ObjectiveSense_in_ListOfModelAttributesSet",
        ],
    )
end

@testset "MOI tests" begin
    test_runtests()
end
