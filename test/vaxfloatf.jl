@testset "Vax Float F" begin
    f4_vax = [  0x00004080,
                0x0000C080,
                0x00004160,
                0x0000C160,
                0x0FD04149,
                0x0FD0C149,
                0xBDC27DF0,
                0xBDC2FDF0,
                0x1CEA0308,
                0x1CEA8308,
                0x0652409E,
                0x0652C09E ]

    f4_ieee = Array{Float32}([  1.000000,
                               -1.000000,
                                3.500000,
                               -3.500000,
                                3.141590,
                               -3.141590,
                                9.9999999E+36,
                               -9.9999999E+36,
                                9.9999999E-38,
                               -9.9999999E-38,
                                1.23456789,
                               -1.23456789 ])

    for (vax, ieee) in zip(f4_vax, f4_ieee)
        @test VaxFloatF(vax) == VaxFloatF(ieee)
        @test convert(Float32,VaxFloatF(vax)) == ieee
    end
end