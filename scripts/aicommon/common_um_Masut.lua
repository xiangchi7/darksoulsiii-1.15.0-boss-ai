function MSI_AfterAttakAct_Debug(f1_arg0, f1_arg1, f1_arg2)
    local f1_local0 = f1_arg0:GetStringIndexedNumber("DistMin_AAA")
    local f1_local1 = f1_arg0:GetStringIndexedNumber("DistMax_AAA")
    local f1_local2 = f1_arg0:GetStringIndexedNumber("BaseDir_AAA")
    local f1_local3 = f1_arg0:GetStringIndexedNumber("Angle_AAA")
    local f1_local4 = f1_arg0:GetStringIndexedNumber("Odds_Guard_AAA")
    local f1_local5 = f1_arg0:GetStringIndexedNumber("Odds_NoAct_AAA")
    local f1_local6 = f1_arg0:GetStringIndexedNumber("Odds_BackAndSide_AAA")
    local f1_local7 = f1_arg0:GetStringIndexedNumber("Odds_Back_AAA")
    local f1_local8 = f1_arg0:GetStringIndexedNumber("Odds_Backstep_AAA")
    local f1_local9 = f1_arg0:GetStringIndexedNumber("Odds_Sidestep_AAA")
    local f1_local10 = f1_arg0:GetStringIndexedNumber("Odds_BitWait_AAA")
    local f1_local11 = f1_arg0:GetStringIndexedNumber("Odds_BsAndSide_AAA")
    local f1_local12 = f1_arg0:GetStringIndexedNumber("Odds_BsAndSs_AAA")
    if f1_local2 == 1 then
        f1_local2 = 0
    elseif f1_local2 == 2 then
        f1_local2 = 180
    elseif f1_local2 == 3 then
        f1_local2 = -90
    elseif f1_local2 == 4 then
        f1_local2 = 90
    else
    end
    f1_arg1:AddSubGoal(f1_arg2, 20, f1_local0, f1_local1, f1_local2, f1_local3, f1_local4, f1_local5, f1_local6, f1_local7, f1_local8, f1_local9, f1_local10, f1_local11, f1_local12)
    
end

function MSI_SetValue(f2_arg0, f2_arg1, f2_arg2, f2_arg3, f2_arg4, f2_arg5, f2_arg6, f2_arg7, f2_arg8)
    local f2_local0 = num_0
    local f2_local1 = f2_arg0:GetDist(f2_local0)
    if f2_arg5 < f2_local1 and f2_local1 < f2_arg6 and f2_arg0:IsInsideTarget(f2_local0, f2_arg7, f2_arg8) then
        return f2_arg3
    else
        return f2_arg4
    end
    
end

function MSI_Probability_Compare_Int(f3_arg0, f3_arg1, f3_arg2, f3_arg3)
    if f3_arg2 == nil then
        f3_arg2 = 1
    end
    if f3_arg3 == nil then
        f3_arg3 = 100
    end
    if f3_arg0:GetRandam_Int(f3_arg2, f3_arg3) <= f3_arg1 then
        return true
    else
        return false
    end
    
end

function MSI_Probability_Compare_Int(f4_arg0, f4_arg1, f4_arg2, f4_arg3)
    if f4_arg2 == nil then
        f4_arg2 = 1
    end
    if f4_arg3 == nil then
        f4_arg3 = 100
    end
    if f4_arg0:GetRandam_Float(f4_arg2, f4_arg3) <= f4_arg1 then
        return true
    else
        return false
    end
    
end

function MSI_InsideDir(f5_arg0, f5_arg1, f5_arg2, f5_arg3, f5_arg4)
    local f5_local0 = 0
    if f5_arg2 == TARGET_SELF then
        f5_local0 = f5_arg0:GetRelativeAngleFromTarget(TARGET_ENE_0)
    elseif f5_arg2 == TARGET_ENE_0 then
        f5_local0 = f5_arg0:GetToTargetAngle(TARGET_ENE_0)
    else
        return false
    end
    local f5_local1 = 0
    if f5_arg3 < 0 then
        f5_local1 = -1
    else
        f5_local1 = 1
    end
    if f5_arg3 + f5_arg4 / -2 <= f5_local0 and f5_local0 <= f5_arg3 + f5_arg4 / 2 or f5_arg3 + f5_arg4 / -2 <= f5_local0 + 360 * f5_local1 and f5_local0 + 360 * f5_local1 <= f5_arg3 + f5_arg4 / 2 then
        return true
    else
        return false
    end
    
end

function MSI_DbgSetaiNumber(f6_arg0, f6_arg1, f6_arg2)
    if f6_arg0:GetNumber(f6_arg2) == 0 then
        return f6_arg0:GetNumber(f6_arg1)
    elseif f6_arg0:GetNumber(f6_arg2) == 1 then
        return f6_arg0:GetNumber(f6_arg1) * -1
    end
    
end

function MSI_Dumy(f7_arg0, f7_arg1, f7_arg2)
    
end

function MSI_SelectStepAndGuard_FindAttackSimple(f8_arg0, f8_arg1, f8_arg2, f8_arg3)
    if f8_arg0:IsInterupt(INTERUPT_FindAttack) then
        if f8_arg2 == nil or f8_arg2 < 0 then
            f8_arg2 = 0
        end
        if f8_arg3 == nil or f8_arg3 < 0 then
            f8_arg3 = 0
        end
        local f8_local0 = 0
        local f8_local1 = 50
        local f8_local2 = 25
        local f8_local3 = 25
        local f8_local4 = f8_arg0:GetRandam_Float(2, 4)
        local f8_local5 = 0
        local f8_local6 = 60
        local f8_local7 = 20
        local f8_local8 = 20
        local f8_local9 = 0
        local f8_local10 = 0
        local f8_local11 = 0
        local f8_local12 = 180
        local f8_local13 = 0
        local f8_local14 = 180
        local f8_local15 = -999
        local f8_local16 = 3
        local f8_local17 = false
        return Select_StepAndGuard(f8_arg0, f8_arg1, f8_arg2, f8_arg3, f8_local0, f8_local1, f8_local2, f8_local3, f8_local4, f8_local5, f8_local6, f8_local7, f8_local8, f8_local9, f8_local10, f8_local11, f8_local12, f8_local13, f8_local14, f8_local15, f8_local16, f8_local17)
    end
    return false
    
end

function MSI_SelectStepAndGuard_FindAttackNormal(f9_arg0, f9_arg1, f9_arg2, f9_arg3, f9_arg4, f9_arg5, f9_arg6, f9_arg7, f9_arg8, f9_arg9, f9_arg10, f9_arg11)
    if f9_arg0:IsInterupt(INTERUPT_FindAttack) then
        if f9_arg2 == nil or f9_arg2 < 0 then
            f9_arg2 = 0
        end
        if f9_arg3 == nil or f9_arg3 < 0 then
            f9_arg3 = 0
        end
        if f9_arg4 == nil or f9_arg4 < 0 then
            f9_arg4 = 50
        end
        if f9_arg5 == nil or f9_arg5 < 0 then
            f9_arg5 = 25
        end
        if f9_arg6 == nil or f9_arg6 < 0 then
            f9_arg6 = 25
        end
        if f9_arg7 == nil or f9_arg7 < 0 then
            f9_arg7 = 60
        end
        if f9_arg8 == nil or f9_arg8 < 0 then
            f9_arg8 = 20
        end
        if f9_arg9 == nil or f9_arg9 < 0 then
            f9_arg9 = 20
        end
        if f9_arg10 == nil or f9_arg10 < 0 then
            f9_arg10 = 0
        end
        if f9_arg11 == nil then
            f9_arg11 = 3
        end
        local f9_local0 = 0
        local f9_local1 = f9_arg0:GetRandam_Float(2, 4)
        local f9_local2 = 0
        local f9_local3 = 0
        local f9_local4 = 0
        local f9_local5 = 180
        local f9_local6 = 0
        local f9_local7 = 180
        local f9_local8 = -999
        local f9_local9 = false
        return Select_StepAndGuard(f9_arg0, f9_arg1, f9_arg2, f9_arg3, f9_local0, f9_arg4, f9_arg5, f9_arg6, f9_local1, f9_local2, f9_arg7, f9_arg8, f9_arg9, f9_arg10, f9_local3, f9_local4, f9_local5, f9_local6, f9_local7, f9_local8, f9_arg11, f9_local9)
    end
    return false
    
end

function MSI_SelectStepAndGuard_FindAttack(f10_arg0, f10_arg1, f10_arg2, f10_arg3, f10_arg4, f10_arg5, f10_arg6, f10_arg7, f10_arg8, f10_arg9, f10_arg10, f10_arg11, f10_arg12, f10_arg13, f10_arg14, f10_arg15, f10_arg16)
    if f10_arg0:IsInterupt(INTERUPT_FindAttack) then
        if f10_arg2 == nil or f10_arg2 < 0 then
            f10_arg2 = 0
        end
        if f10_arg3 == nil or f10_arg3 < 0 then
            f10_arg3 = 0
        end
        if f10_arg4 == nil or f10_arg4 < 0 then
            f10_arg4 = 50
        end
        if f10_arg5 == nil or f10_arg5 < 0 then
            f10_arg5 = 25
        end
        if f10_arg6 == nil or f10_arg6 < 0 then
            f10_arg6 = 25
        end
        if f10_arg7 == nil then
            f10_arg7 = f10_arg0:GetRandam_Float(2, 4)
        end
        if f10_arg8 == nil or f10_arg8 < 0 then
            f10_arg8 = 60
        end
        if f10_arg9 == nil or f10_arg9 < 0 then
            f10_arg9 = 20
        end
        if f10_arg10 == nil or f10_arg10 < 0 then
            f10_arg10 = 20
        end
        if f10_arg11 == nil or f10_arg11 < 0 then
            f10_arg11 = 0
        end
        if f10_arg12 == nil then
            f10_arg12 = 0
        end
        if f10_arg13 == nil or f10_arg13 < 0 then
            f10_arg13 = 180
        end
        if f10_arg14 == nil then
            f10_arg14 = 0
        end
        if f10_arg15 == nil or f10_arg15 < 0 then
            f10_arg15 = 180
        end
        if f10_arg16 == nil then
            f10_arg16 = 3
        end
        local f10_local0 = 0
        local f10_local1 = 0
        local f10_local2 = 0
        local f10_local3 = -999
        local f10_local4 = false
        return Select_StepAndGuard(f10_arg0, f10_arg1, f10_arg2, f10_arg3, f10_local0, f10_arg4, f10_arg5, f10_arg6, f10_arg7, f10_local1, f10_arg8, f10_arg9, f10_arg10, f10_arg11, f10_local2, f10_arg12, f10_arg13, f10_arg14, f10_arg15, f10_local3, f10_arg16, f10_local4)
    end
    return false
    
end

function MSI_Interrupt_DamagedAct_Simple(f11_arg0, f11_arg1, f11_arg2, f11_arg3)
    if f11_arg0:IsInterupt(INTERUPT_Damaged) then
        if f11_arg2 == nil or f11_arg2 < 0 then
            f11_arg2 = 0
        end
        if f11_arg3 == nil or f11_arg3 < 0 then
            f11_arg3 = 0
        end
        local f11_local0 = 0
        local f11_local1 = 50
        local f11_local2 = 25
        local f11_local3 = 25
        local f11_local4 = f11_arg0:GetRandam_Float(2, 4)
        local f11_local5 = 0
        local f11_local6 = 60
        local f11_local7 = 20
        local f11_local8 = 20
        local f11_local9 = 0
        local f11_local10 = 0
        local f11_local11 = 0
        local f11_local12 = 240
        local f11_local13 = 0
        local f11_local14 = 360
        local f11_local15 = 3
        local f11_local16 = -999
        local f11_local17 = true
        return Select_StepAndGuard(f11_arg0, f11_arg1, f11_arg2, f11_arg3, f11_local0, f11_local1, f11_local2, f11_local3, f11_local4, f11_local5, f11_local6, f11_local7, f11_local8, f11_local9, f11_local10, f11_local11, f11_local12, f11_local13, f11_local14, f11_local16, f11_local15, f11_local17)
    end
    return false
    
end

function MSI_Interrupt_DamagedAct_Normal(f12_arg0, f12_arg1, f12_arg2, f12_arg3, f12_arg4, f12_arg5, f12_arg6, f12_arg7, f12_arg8, f12_arg9, f12_arg10)
    if f12_arg0:IsInterupt(INTERUPT_Damaged) then
        if f12_arg2 == nil or f12_arg2 < 0 then
            f12_arg2 = 0
        end
        if f12_arg3 == nil or f12_arg3 < 0 then
            f12_arg3 = 0
        end
        if f12_arg4 == nil or f12_arg4 < 0 then
            f12_arg4 = 50
        end
        if f12_arg5 == nil or f12_arg5 < 0 then
            f12_arg5 = 25
        end
        if f12_arg6 == nil or f12_arg6 < 0 then
            f12_arg6 = 25
        end
        if f12_arg7 == nil or f12_arg7 < 0 then
            f12_arg7 = 60
        end
        if f12_arg8 == nil or f12_arg8 < 0 then
            f12_arg8 = 20
        end
        if f12_arg9 == nil or f12_arg9 < 0 then
            f12_arg9 = 20
        end
        if f12_arg10 == nil or f12_arg10 < 0 then
            f12_arg10 = 0
        end
        local f12_local0 = 0
        local f12_local1 = f12_arg0:GetRandam_Float(2, 4)
        local f12_local2 = 0
        local f12_local3 = 0
        local f12_local4 = 0
        local f12_local5 = 240
        local f12_local6 = 0
        local f12_local7 = 360
        local f12_local8 = 3
        local f12_local9 = -999
        local f12_local10 = true
        return Select_StepAndGuard(f12_arg0, f12_arg1, f12_arg2, f12_arg3, f12_local0, f12_arg4, f12_arg5, f12_arg6, f12_local1, f12_local2, f12_arg7, f12_arg8, f12_arg9, f12_arg10, f12_local3, f12_local4, f12_local5, f12_local6, f12_local7, f12_local9, f12_local8, f12_local10)
    end
    return false
    
end

function MSI_Interrupt_DamagedAct(f13_arg0, f13_arg1, f13_arg2, f13_arg3, f13_arg4, f13_arg5, f13_arg6, f13_arg7, f13_arg8, f13_arg9, f13_arg10, f13_arg11, f13_arg12, f13_arg13, f13_arg14, f13_arg15)
    if f13_arg0:IsInterupt(INTERUPT_Damaged) then
        if f13_arg2 == nil or f13_arg2 < 0 then
            f13_arg2 = 0
        end
        if f13_arg3 == nil or f13_arg3 < 0 then
            f13_arg3 = 0
        end
        if f13_arg4 == nil or f13_arg4 < 0 then
            f13_arg4 = 50
        end
        if f13_arg5 == nil or f13_arg5 < 0 then
            f13_arg5 = 25
        end
        if f13_arg6 == nil or f13_arg6 < 0 then
            f13_arg6 = 25
        end
        if f13_arg7 == nil then
            f13_arg7 = f13_arg0:GetRandam_Float(2, 4)
        end
        if f13_arg8 == nil or f13_arg8 < 0 then
            f13_arg8 = 60
        end
        if f13_arg9 == nil or f13_arg9 < 0 then
            f13_arg9 = 20
        end
        if f13_arg10 == nil or f13_arg10 < 0 then
            f13_arg10 = 20
        end
        if f13_arg11 == nil or f13_arg11 < 0 then
            f13_arg11 = 0
        end
        if f13_arg12 == nil then
            f13_arg12 = 0
        end
        if f13_arg13 == nil or f13_arg13 < 0 then
            f13_arg13 = 240
        end
        if f13_arg14 == nil then
            f13_arg14 = 3
        end
        if f13_arg15 == nil then
            f13_arg15 = false
        end
        local f13_local0 = 0
        local f13_local1 = 0
        local f13_local2 = 0
        local f13_local3 = 0
        local f13_local4 = 360
        local f13_local5 = -999
        local f13_local6 = true
        return Select_StepAndGuard(f13_arg0, f13_arg1, f13_arg2, f13_arg3, f13_local0, f13_arg4, f13_arg5, f13_arg6, f13_arg7, f13_local1, f13_arg8, f13_arg9, f13_arg10, f13_arg11, f13_local2, f13_arg12, f13_arg13, f13_local3, f13_local4, f13_local5, f13_arg14, f13_local6)
    end
    return false
    
end

function MSI_Interrupt_ReboundByOpponentGuardAct_Simple(f14_arg0, f14_arg1, f14_arg2, f14_arg3)
    if f14_arg0:IsInterupt(INTERUPT_ReboundByOpponentGuard) then
        if f14_arg2 == nil or f14_arg2 < 0 then
            f14_arg2 = 0
        end
        if f14_arg3 == nil then
            f14_arg3 = false
        end
        local f14_local0 = 0
        local f14_local1 = 50
        local f14_local2 = 25
        local f14_local3 = 25
        local f14_local4 = 0
        local f14_local5 = 0
        local f14_local6 = 0
        local f14_local7 = 0
        local f14_local8 = 0
        local f14_local9 = 0
        local f14_local10 = 0
        local f14_local11 = 0
        local f14_local12 = 0
        local f14_local13 = 360
        local f14_local14 = 0
        local f14_local15 = 360
        local f14_local16 = -999
        local f14_local17 = 3
        local f14_local18 = false
        return Select_StepAndGuard(f14_arg0, f14_arg1, f14_arg2, f14_local4, f14_local0, f14_local1, f14_local2, f14_local3, f14_local5, f14_local6, f14_local7, f14_local8, f14_local9, f14_local10, f14_local11, f14_local12, f14_local13, f14_local14, f14_local15, f14_local16, f14_local17, f14_local18)
    end
    return false
    
end

function MSI_Interrupt_ReboundByOpponentGuardAct_Normal(f15_arg0, f15_arg1, f15_arg2, f15_arg3, f15_arg4, f15_arg5, f15_arg6)
    if f15_arg0:IsInterupt(INTERUPT_ReboundByOpponentGuard) then
        if f15_arg2 == nil or f15_arg2 < 0 then
            f15_arg2 = 0
        end
        if f15_arg3 == nil or f15_arg3 < 0 then
            f15_arg3 = 50
        end
        if f15_arg4 == nil or f15_arg4 < 0 then
            f15_arg4 = 25
        end
        if f15_arg5 == nil or f15_arg5 < 0 then
            f15_arg5 = 25
        end
        if f15_arg6 == nil then
            f15_arg6 = false
        end
        local f15_local0 = 0
        local f15_local1 = 0
        local f15_local2 = 0
        local f15_local3 = 0
        local f15_local4 = 0
        local f15_local5 = 0
        local f15_local6 = 0
        local f15_local7 = 0
        local f15_local8 = 0
        local f15_local9 = 0
        local f15_local10 = 360
        local f15_local11 = 0
        local f15_local12 = 360
        local f15_local13 = -999
        local f15_local14 = 3
        local f15_local15 = false
        return Select_StepAndGuard(f15_arg0, f15_arg1, f15_arg2, f15_local1, f15_local0, f15_arg3, f15_arg4, f15_arg5, f15_local2, f15_local3, f15_local4, f15_local5, f15_local6, f15_local7, f15_local8, f15_local9, f15_local10, f15_local11, f15_local12, f15_local13, f15_local14, f15_local15)
    end
    return false
    
end

function MSI_Interrupt_ReboundByOpponentGuardAct(f16_arg0, f16_arg1, f16_arg2, f16_arg3, f16_arg4, f16_arg5, f16_arg6, f16_arg7)
    if f16_arg0:IsInterupt(INTERUPT_ReboundByOpponentGuard) then
        if f16_arg2 == nil or f16_arg2 < 0 then
            f16_arg2 = 0
        end
        if f16_arg3 == nil or f16_arg3 < 0 then
            f16_arg3 = 50
        end
        if f16_arg4 == nil or f16_arg4 < 0 then
            f16_arg4 = 25
        end
        if f16_arg5 == nil or f16_arg5 < 0 then
            f16_arg5 = 25
        end
        if f16_arg6 == nil then
            f16_arg6 = 3
        end
        if f16_arg7 == nil then
            f16_arg7 = false
        end
        local f16_local0 = 0
        local f16_local1 = 0
        local f16_local2 = 0
        local f16_local3 = 0
        local f16_local4 = 0
        local f16_local5 = 0
        local f16_local6 = 0
        local f16_local7 = 0
        local f16_local8 = 0
        local f16_local9 = 0
        local f16_local10 = 360
        local f16_local11 = 0
        local f16_local12 = 360
        local f16_local13 = -999
        local f16_local14 = false
        return Select_StepAndGuard(f16_arg0, f16_arg1, f16_arg2, f16_local1, f16_local0, f16_arg3, f16_arg4, f16_arg5, f16_local2, f16_local3, f16_local4, f16_local5, f16_local6, f16_local7, f16_local8, f16_local9, f16_local10, f16_local11, f16_local12, f16_local13, f16_arg6, f16_local14)
    end
    return false
    
end

function MSI_Interrupt_ShootAct_Simple(f17_arg0, f17_arg1, f17_arg2, f17_arg3, f17_arg4, f17_arg5, f17_arg6)
    if f17_arg0:IsInterupt(INTERUPT_Shoot) then
        if f17_arg2 == nil or f17_arg2 < 0 then
            f17_arg2 = 0
        end
        if f17_arg3 == nil or f17_arg3 < 0 then
            f17_arg3 = 0
        end
        if f17_arg4 == nil then
            f17_arg4 = 0
        end
        if f17_arg5 == nil then
            f17_arg5 = 0
        end
        if f17_arg6 == nil then
            f17_arg6 = false
        end
        local f17_local0 = 0
        local f17_local1 = 0
        local f17_local2 = 50
        local f17_local3 = 50
        local f17_local4 = f17_arg0:GetRandam_Float(2, 4)
        local f17_local5 = 100
        local f17_local6 = 0
        local f17_local7 = 0
        local f17_local8 = 0
        local f17_local9 = 0
        local f17_local10 = 0
        local f17_local11 = 0
        local f17_local12 = 120
        local f17_local13 = 0
        local f17_local14 = 90
        return Select_StepAndGuard(f17_arg0, f17_arg1, f17_arg2, f17_arg3, f17_local0, f17_local1, f17_local2, f17_local3, f17_local4, f17_local5, f17_local6, f17_local7, f17_local8, f17_local9, f17_local10, f17_local11, f17_local12, f17_local13, f17_local14, f17_arg4, f17_arg5, f17_arg6)
    end
    return false
    
end

function MSI_Interrupt_ShootAct_Normal(f18_arg0, f18_arg1, f18_arg2, f18_arg3, f18_arg4, f18_arg5, f18_arg6, f18_arg7, f18_arg8, f18_arg9, f18_arg10, f18_arg11, f18_arg12)
    if f18_arg0:IsInterupt(INTERUPT_Shoot) then
        if f18_arg2 == nil or f18_arg2 < 0 then
            f18_arg2 = 0
        end
        if f18_arg3 == nil or f18_arg3 < 0 then
            f18_arg3 = 0
        end
        if f18_arg4 == nil or f18_arg4 < 0 then
            f18_arg4 = 0
        end
        if f18_arg5 == nil or f18_arg5 < 0 then
            f18_arg5 = 50
        end
        if f18_arg6 == nil or f18_arg6 < 0 then
            f18_arg6 = 50
        end
        if f18_arg7 == nil or f18_arg7 < 0 then
            f18_arg7 = 100
        end
        if f18_arg8 == nil or f18_arg8 < 0 then
            f18_arg8 = 0
        end
        if f18_arg9 == nil or f18_arg9 < 0 then
            f18_arg9 = 0
        end
        if f18_arg10 == nil then
            f18_arg10 = 0
        end
        if f18_arg11 == nil then
            f18_arg11 = 0
        end
        if f18_arg12 == nil then
            f18_arg12 = false
        end
        local f18_local0 = 0
        local f18_local1 = f18_arg0:GetRandam_Float(2, 4)
        local f18_local2 = 0
        local f18_local3 = 0
        local f18_local4 = 0
        local f18_local5 = 0
        local f18_local6 = 120
        local f18_local7 = 0
        local f18_local8 = 90
        local f18_local9 = false
        return Select_StepAndGuard(f18_arg0, f18_arg1, f18_arg2, f18_arg3, f18_local0, f18_arg4, f18_arg5, f18_arg6, f18_local1, f18_arg7, f18_local2, f18_local3, f18_local4, f18_arg8, f18_arg9, f18_local5, f18_local6, f18_local7, f18_local8, f18_arg10, f18_arg11, f18_local9)
    end
    return false
    
end

function MSI_Interrupt_ShootAct(f19_arg0, f19_arg1, f19_arg2, f19_arg3, f19_arg4, f19_arg5, f19_arg6, f19_arg7, f19_arg8, f19_arg9, f19_arg10, f19_arg11, f19_arg12, f19_arg13, f19_arg14, f19_arg15, f19_arg16, f19_arg17)
    if f19_arg0:IsInterupt(INTERUPT_Shoot) then
        if f19_arg2 == nil or f19_arg2 < 0 then
            f19_arg2 = 0
        end
        if f19_arg3 == nil or f19_arg3 < 0 then
            f19_arg3 = 0
        end
        if f19_arg4 == nil or f19_arg4 < 0 then
            f19_arg4 = 0
        end
        if f19_arg5 == nil or f19_arg5 < 0 then
            f19_arg5 = 50
        end
        if f19_arg6 == nil or f19_arg6 < 0 then
            f19_arg6 = 50
        end
        if f19_arg7 == nil then
            f19_arg7 = f19_arg0:GetRandam_Float(2, 4)
        end
        if f19_arg8 == nil or f19_arg8 < 0 then
            f19_arg8 = 100
        end
        if f19_arg9 == nil or f19_arg9 < 0 then
            f19_arg9 = 0
        end
        if f19_arg10 == nil or f19_arg10 < 0 then
            f19_arg10 = 0
        end
        if f19_arg11 == nil then
            f19_arg11 = 0
        end
        if f19_arg12 == nil or f19_arg12 < 0 then
            f19_arg12 = 120
        end
        if f19_arg13 == nil then
            f19_arg13 = 0
        end
        if f19_arg14 == nil or f19_arg14 < 0 then
            f19_arg14 = 90
        end
        if f19_arg15 == nil then
            f19_arg15 = 0
        end
        if f19_arg16 == nil then
            f19_arg16 = 0
        end
        if f19_arg17 == nil then
            f19_arg17 = false
        end
        local f19_local0 = 0
        local f19_local1 = 0
        local f19_local2 = 0
        local f19_local3 = 0
        return Select_StepAndGuard(f19_arg0, f19_arg1, f19_arg2, f19_arg3, f19_local0, f19_arg4, f19_arg5, f19_arg6, f19_arg7, f19_arg8, f19_local1, f19_local2, f19_local3, f19_arg9, f19_arg10, f19_arg11, f19_arg12, f19_arg13, f19_arg14, f19_arg15, f19_arg16, f19_arg17)
    end
    return false
    
end

function Select_StepAndGuard(f20_arg0, f20_arg1, f20_arg2, f20_arg3, f20_arg4, f20_arg5, f20_arg6, f20_arg7, f20_arg8, f20_arg9, f20_arg10, f20_arg11, f20_arg12, f20_arg13, f20_arg14, f20_arg15, f20_arg16, f20_arg17, f20_arg18, f20_arg19, f20_arg20, f20_arg21)
    if f20_arg0:IsStartAttack() == false or f20_arg21 == true then
        local f20_local0 = f20_arg0:GetDist(TARGET_ENE_0)
        local f20_local1 = f20_arg0:GetToTargetAngle(TARGET_ENE_0)
        local f20_local2 = f20_arg0:GetRelativeAngleFromTarget(TARGET_ENE_0)
        local f20_local3 = 0
        if f20_arg15 < 0 then
            f20_local3 = -1
        else
            f20_local3 = 1
        end
        local f20_local4 = 0
        if f20_arg17 < 0 then
            f20_local4 = -1
        else
            f20_local4 = 1
        end
        if f20_arg19 <= f20_local0 and f20_local0 <= f20_arg20 and (f20_arg15 + f20_arg18 / -2 <= f20_local1 and f20_local1 <= f20_arg15 + f20_arg18 / 2 or f20_arg15 + f20_arg18 / -2 <= f20_local1 + 360 * f20_local3 and f20_local1 + 360 * f20_local3 <= f20_arg15 + f20_arg18 / 2) and (f20_arg17 + f20_arg18 / -2 <= f20_local2 and f20_local2 <= f20_arg17 + f20_arg18 / 2 or f20_arg17 + f20_arg18 / -2 <= f20_local2 + 360 * f20_local4 and f20_local2 + 360 * f20_local4 <= f20_arg17 + f20_arg18 / 2) then
            local f20_local5 = {}
            local f20_local6 = 1
            f20_local5[f20_local6] = f20_arg2
            f20_local6 = f20_local6 + 1
            f20_local5[f20_local6] = f20_arg3
            f20_local6 = f20_local6 + 1
            if f20_arg2 + f20_arg3 < 100 then
                f20_local5[f20_local6] = 100 - (f20_arg2 + f20_arg3)
                f20_local6 = f20_local6 + 1
            end
            local f20_local7 = SelectOddsIndex(f20_arg0, f20_local5)
            if f20_local7 == 1 then
                f20_arg1:ClearSubGoal()
                local f20_local8 = 1
                return MSI_Select_Step(f20_arg0, f20_arg1, f20_local8, f20_arg4, f20_arg5, f20_arg6, f20_arg7)
            elseif f20_local7 == 2 then
                f20_arg1:ClearSubGoal()
                local f20_local8 = 1
                local f20_local9 = 5
                return MSI_Select_Guard(f20_arg0, f20_arg1, f20_arg8, f20_arg9, f20_arg10, f20_arg11, f20_arg12, f20_arg13, f20_local8, f20_local9, f20_arg14)
            elseif f20_local7 == 3 then
                return false
            end
        end
    end
    return false
    
end

function MSI_Select_Step(f21_arg0, f21_arg1, f21_arg2, f21_arg3, f21_arg4, f21_arg5, f21_arg6)
    local f21_local0 = 1
    local f21_local1 = {}
    local f21_local2 = {}
    local f21_local3, f21_local4, f21_local5, f21_local6 = MSI_Probe_Safety(f21_arg0, f21_arg1, TARGET_SELF, f21_arg0:GetStringIndexedNumber("Dist_BackStep"), f21_arg0:GetStringIndexedNumber("Dist_BackStep"), f21_arg0:GetStringIndexedNumber("Dist_SideStep"), f21_arg0:GetStringIndexedNumber("Dist_SideStep"))
    f21_local2[4] = f21_local6
    f21_local2[3] = f21_local5
    f21_local2[2] = f21_local4
    f21_local2[1] = f21_local3
    f21_local3 = {[1] = f21_arg3, [2] = f21_arg4, [3] = f21_arg5, [4] = f21_arg6}
    for f21_local4 = 1, 4, 1 do
        if f21_local3[f21_local4] <= 0 or f21_local2[f21_local4] == 0 then
            f21_local1[f21_local4] = 0
        else
            f21_local1[f21_local4] = f21_local3[f21_local4]
        end
    end
    local f21_local4 = SelectOddsIndex(f21_arg0, f21_local1)
    if f21_local4 == 1 then
        f21_arg1:AddSubGoal(GOAL_COMMON_SpinStep, f21_arg2, 6000, TARGET_ENE_0, 0, AI_DIR_TYPE_F, -1)
    elseif f21_local4 == 2 then
        f21_arg1:AddSubGoal(GOAL_COMMON_SpinStep, f21_arg2, 6001, TARGET_ENE_0, 0, AI_DIR_TYPE_B, -1)
    elseif f21_local4 == 3 then
        f21_arg1:AddSubGoal(GOAL_COMMON_SpinStep, f21_arg2, 6002, TARGET_ENE_0, 0, AI_DIR_TYPE_L, -1)
    elseif f21_local4 == 4 then
        f21_arg1:AddSubGoal(GOAL_COMMON_SpinStep, f21_arg2, 6003, TARGET_ENE_0, 0, AI_DIR_TYPE_R, -1)
    end
    return true
    

end

function MSI_Select_Guard(f22_arg0, f22_arg1, f22_arg2, f22_arg3, f22_arg4, f22_arg5, f22_arg6, f22_arg7, f22_arg8, f22_arg9, f22_arg10)
    local f22_local0 = 0
    local f22_local1 = {}
    local f22_local2 = {}
    local f22_local3 = 1
    local f22_local4 = 1
    local f22_local5 = 1
    local f22_local6 = 1
    local f22_local7 = {[1] = f22_arg3, [2] = f22_arg4, [3] = f22_arg5, [4] = f22_arg6, [5] = f22_arg7}
    local f22_local8, f22_local9, f22_local10, f22_local11 = MSI_Probe_Safety(f22_arg0, f22_arg1, TARGET_SELF, f22_local3, f22_local4, f22_local5, f22_local6)
    f22_local2[4] = f22_local11
    f22_local2[3] = f22_local10
    f22_local2[2] = f22_local9
    f22_local2[1] = f22_local8
    f22_local2[5] = 1
    for f22_local8 = 1, 5, 1 do
        if f22_local7[f22_local8] <= 0 or f22_local2[f22_local8] == 0 then
            f22_local1[f22_local8] = 0
        else
            f22_local1[f22_local8] = f22_local7[f22_local8]
        end
    end
    local f22_local8 = SelectOddsIndex(f22_arg0, f22_local1)
    if f22_local8 == 1 then
        local f22_local9 = f22_arg0:GetRandam_Int(1, 100)
        local f22_local10 = true
        if f22_local9 <= f22_arg10 then
            f22_local10 = false
        end
        f22_arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, f22_arg2, TARGET_ENE_0, f22_arg8, TARGET_SELF, f22_local10, 9910):SetLifeEndSuccess(true)
    elseif f22_local8 == 2 then
        f22_arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, f22_arg2, TARGET_ENE_0, f22_arg9, TARGET_ENE_0, true, 9910):SetLifeEndSuccess(true)
    elseif f22_local8 == 3 then
        f22_arg1:AddSubGoal(GOAL_COMMON_SidewayMove, f22_arg2, TARGET_ENE_0, 1, 45, true, true, 9910):SetFailedEndOption(AI_GOAL_FAILED_END_OPT__PARENT_NEXT_SUB_GOAL)
    elseif f22_local8 == 4 then
        f22_arg1:AddSubGoal(GOAL_COMMON_SidewayMove, f22_arg2, TARGET_ENE_0, 0, 45, true, true, 9910):SetFailedEndOption(AI_GOAL_FAILED_END_OPT__PARENT_NEXT_SUB_GOAL)
    elseif f22_local8 == 5 then
        f22_arg1:AddSubGoal(GOAL_COMMON_Guard, f22_arg2, 9910, TARGET_ENE_0, true, 0):SetFailedEndOption(AI_GOAL_FAILED_END_OPT__PARENT_NEXT_SUB_GOAL)
    end
    return true
    

end

function MSI_Probe_Safety(f23_arg0, f23_arg1, f23_arg2, f23_arg3, f23_arg4, f23_arg5, f23_arg6)
    local f23_local0 = f23_arg0:GetMapHitRadius(TARGET_SELF)
    local f23_local1 = 0
    local f23_local2 = 0
    local f23_local3 = 0
    local f23_local4 = 0
    if f23_arg3 <= f23_arg0:GetExistMeshOnLineDistEx(f23_arg2, AI_DIR_TYPE_F, f23_arg3 + 3, f23_local0, f23_local0) then
        f23_local1 = 1
    end
    if f23_arg4 <= f23_arg0:GetExistMeshOnLineDistEx(f23_arg2, AI_DIR_TYPE_B, f23_arg4 + 3, f23_local0, f23_local0) then
        f23_local2 = 1
    end
    if f23_arg5 <= f23_arg0:GetExistMeshOnLineDistEx(f23_arg2, AI_DIR_TYPE_L, f23_arg5 + 3, f23_local0, f23_local0) then
        f23_local3 = 1
    end
    if f23_arg6 <= f23_arg0:GetExistMeshOnLineDistEx(f23_arg2, AI_DIR_TYPE_R, f23_arg6 + 3, f23_local0, f23_local0) then
        f23_local4 = 1
    end
    return f23_local1, f23_local2, f23_local3, f23_local4
    
end

function MSI_Select_Attack(f24_arg0, f24_arg1, f24_arg2, f24_arg3, f24_arg4, f24_arg5, f24_arg6, f24_arg7, f24_arg8, f24_arg9, f24_arg10, f24_arg11, f24_arg12, f24_arg13, f24_arg14, f24_arg15, f24_arg16, f24_arg17, f24_arg18, f24_arg19, f24_arg20, f24_arg21, f24_arg22, f24_arg23, f24_arg24, f24_arg25, f24_arg26, f24_arg27, f24_arg28, f24_arg29, f24_arg30, f24_arg31)
    local f24_local0 = {}
    local f24_local1 = {}
    local f24_local2 = {}
    local f24_local3 = {}
    local f24_local4 = {}
    local f24_local5 = {}
    f24_local0[1] = f24_arg2
    f24_local1[1] = f24_arg3
    f24_local2[1] = f24_arg4
    f24_local3[1] = f24_arg5
    f24_local4[1] = f24_arg6
    f24_local5[1] = f24_arg7
    f24_local0[2] = f24_arg8
    f24_local1[2] = f24_arg9
    f24_local2[2] = f24_arg10
    f24_local3[2] = f24_arg11
    f24_local4[2] = f24_arg12
    f24_local5[2] = f24_arg13
    f24_local0[3] = f24_arg14
    f24_local1[3] = f24_arg15
    f24_local2[3] = f24_arg16
    f24_local3[3] = f24_arg17
    f24_local4[3] = f24_arg18
    f24_local5[3] = f24_arg19
    f24_local0[4] = f24_arg20
    f24_local1[4] = f24_arg21
    f24_local2[4] = f24_arg22
    f24_local3[4] = f24_arg23
    f24_local4[4] = f24_arg24
    f24_local5[4] = f24_arg25
    f24_local0[5] = f24_arg26
    f24_local1[5] = f24_arg27
    f24_local2[5] = f24_arg28
    f24_local3[5] = f24_arg29
    f24_local4[5] = f24_arg30
    f24_local5[5] = f24_arg31
    local f24_local6 = 1
    local f24_local7 = table.getn(f24_local0)
    local f24_local8 = f24_arg0:GetDist(TARGET_ENE_0)
    local f24_local9 = f24_arg0:GetToTargetAngle(TARGET_ENE_0)
    local f24_local10 = 0
    for f24_local11 = 1, f24_local7, 1 do
        if f24_local2[f24_local11] < f24_local8 and f24_local8 <= f24_local3[f24_local11] and (f24_local4[f24_local11] + f24_local5[f24_local11] / -2 <= f24_local9 and f24_local9 <= f24_local4[f24_local11] + f24_local5[f24_local11] / 2 or f24_local4[f24_local11] + f24_local5[f24_local11] / -2 <= f24_local9 + 360 * flag1 and f24_local9 + 360 * flag1 <= f24_local4[f24_local11] + f24_local5[f24_local11] / 2) then
            f24_local10 = f24_arg0:GetRandam_Int(1, 100)
            if f24_local10 <= f24_local1[f24_local11] then
                f24_arg1:ClearSubGoal()
                f24_arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 2, f24_local0[f24_local11], TARGET_ENE_0, 999, 0, -1, 180, 180)
                return true
            end
        end
    end
    return false
    

end

function MSI_Counter_Act(f25_arg0, f25_arg1, f25_arg2, f25_arg3, f25_arg4)
    if f25_arg2 == nil then
        f25_arg2 = 4
    end
    local f25_local0 = f25_arg0:GetRandam_Int(0, 99)
    local f25_local1 = f25_arg0:GetNumber(15)
    if f25_arg0:IsFinishTimer(15) == true then
        f25_local1 = f25_arg2
        f25_arg0:SetNumber(15, 0)
    end
    f25_arg0:SetTimer(15, f25_arg4)
    if f25_local1 == 0 then
        f25_local1 = f25_arg2
    end
    f25_arg0:SetNumber(15, f25_local1 * 2)
    if f25_local1 >= 100 then
        f25_arg0:SetNumber(15, 100)
    end
    if f25_local0 < f25_arg0:GetNumber(15) then
        f25_arg0:SetNumber(15, 0)
        f25_arg1:ClearSubGoal()
        f25_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 0.5, f25_arg3, TARGET_ENE_0, DIST_None, 0, 180, 180, 180, 180)
        return true
    end
    return false
    
end


