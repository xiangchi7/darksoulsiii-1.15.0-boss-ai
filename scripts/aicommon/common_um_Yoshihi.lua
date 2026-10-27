function YSD_ActRestSetFate(f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4)
    
end

function YSD_ActRest(f2_arg0, f2_arg1, f2_arg2, f2_arg3, f2_arg4, f2_arg5)
    YSD_ActRest_main(f2_arg0, f2_arg1, f2_arg2, f2_arg3, f2_arg4, 3, 100, f2_arg5)
    
end

function YSD_ActRest_main(f3_arg0, f3_arg1, f3_arg2, f3_arg3, f3_arg4, f3_arg5, f3_arg6, f3_arg7)
    
end

function YSD_SpActSelect(f4_arg0, f4_arg1, f4_arg2)
    
end

function YSD_Step(f5_arg0, f5_arg1, f5_arg2, f5_arg3, f5_arg4, f5_arg5, f5_arg6, f5_arg7, f5_arg8, f5_arg9)
    YSD_Step_main(f5_arg0, f5_arg1, f5_arg2, f5_arg3, f5_arg4, f5_arg5, f5_arg6, f5_arg7, f5_arg8, f5_arg9, true)
    
end

function YSD_StepEx(f6_arg0, f6_arg1, f6_arg2, f6_arg3, f6_arg4, f6_arg5, f6_arg6, f6_arg7, f6_arg8, f6_arg9)
    YSD_Step_main(f6_arg0, f6_arg1, f6_arg2, f6_arg3, f6_arg4, f6_arg5, f6_arg6, f6_arg7, f6_arg8, f6_arg9, false)
    
end

function YSD_Step_main(f7_arg0, f7_arg1, f7_arg2, f7_arg3, f7_arg4, f7_arg5, f7_arg6, f7_arg7, f7_arg8, f7_arg9, f7_arg10)
    if f7_arg3 == nil then
        f7_arg3 = 0
    end
    if f7_arg4 == nil then
        f7_arg4 = 4
    end
    if f7_arg5 == nil then
        f7_arg5 = 100
    end
    if f7_arg6 == nil then
        f7_arg6 = 0
    end
    if f7_arg7 == nil then
        f7_arg7 = 0
    end
    if f7_arg8 == nil then
        f7_arg8 = 0
    end
    if f7_arg9 == nil then
        f7_arg9 = 5
    end
    if f7_arg10 == nil then
        f7_arg10 = false
    end
    if f7_arg1:GetDist(TARGET_ENE_0) <= f7_arg9 and f7_arg1:GetRandam_Int(1, 100) <= f7_arg3 then
        local f7_local0 = YSD_SpaceCheck(f7_arg0, f7_arg1, f7_arg2, f7_arg4, 0)
        local f7_local1 = YSD_SpaceCheck(f7_arg0, f7_arg1, f7_arg2, f7_arg4, 180)
        local f7_local2 = YSD_SpaceCheck(f7_arg0, f7_arg1, f7_arg2, f7_arg4, -80)
        local f7_local3 = YSD_SpaceCheck(f7_arg0, f7_arg1, f7_arg2, f7_arg4, 80)
        local f7_local4 = 1
        local f7_local5 = 1
        local f7_local6 = 1
        local f7_local7 = 1
        if f7_local0 == false then
            f7_local4 = 0
            f7_arg8 = 0
        end
        if f7_local1 == false then
            f7_local5 = 0
            f7_arg5 = 0
        end
        if f7_local2 == false then
            f7_local6 = 0
            f7_arg6 = 0
        end
        if f7_local3 == false then
            f7_local7 = 0
            f7_arg7 = 0
        end
        local f7_local8 = 0
        f7_local8 = 100 / (f7_arg8 + f7_arg5 + f7_arg6 + f7_arg7)
        f7_arg8 = f7_arg8 * f7_local8
        f7_arg5 = f7_arg5 * f7_local8
        f7_arg6 = f7_arg6 * f7_local8
        f7_arg7 = f7_arg7 * f7_local8
        local f7_local9 = 0
        local f7_local10 = 0
        local f7_local11 = 0
        local f7_local12 = 0
        f7_local9 = f7_arg8 * f7_local4
        f7_local10 = (f7_arg8 + f7_arg5) * f7_local5
        f7_local11 = (f7_arg8 + f7_arg5 + f7_arg6) * f7_local6
        f7_local12 = (f7_arg8 + f7_arg5 + f7_arg6 + f7_arg7) * f7_local7
        if f7_local9 + f7_local10 + f7_local11 + f7_local12 > 0 then
            if f7_arg10 == true then
                f7_arg2:ClearSubGoal()
            end
            local f7_local13 = 6003
            local f7_local14 = f7_arg1:GetRandam_Int(1, 100)
            if f7_local14 <= f7_local9 then
                f7_arg2:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6000, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
            elseif f7_local14 <= f7_local10 then
                f7_arg2:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6001, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
            elseif f7_local14 <= f7_local11 then
                f7_arg2:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6002, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
            elseif f7_local14 <= f7_local12 then
                f7_arg2:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6003, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
            else
            end
        end
    end
    
end

function YSD_SpaceCheck(f8_arg0, f8_arg1, f8_arg2, f8_arg3, f8_arg4)
    if f8_arg3 == nil then
        f8_arg3 = 5
    end
    if f8_arg4 == nil then
        f8_arg4 = 180
    end
    local f8_local0 = f8_arg1:GetMapHitRadius(TARGET_SELF)
    local f8_local1 = f8_arg1:GetExistMeshOnLineDistSpecifyAngle(TARGET_SELF, f8_arg4, f8_arg3 + f8_local0, AI_SPA_DIR_TYPE_TargetF)
    if f8_arg3 <= f8_local1 then
        return true
    end
    return false
    
end

function YSD_GET_ATTACK_NO(f9_arg0, f9_arg1, f9_arg2, f9_arg3)
    -- Warning: Function 9 using already code-generated block basicblock_34
end

function YSD_CombAttack(f10_arg0, f10_arg1, f10_arg2, f10_arg3, f10_arg4, f10_arg5, f10_arg6, f10_arg7, f10_arg8)
    f10_arg2:AddSubGoal(GOAL_EnemyTunableComboAttack, 10, TARGET_ENE_0, f10_arg3)
    if f10_arg1:GetRandam_Int(1, 100) <= f10_arg4 then
        local f10_local0 = 0
        f10_local0 = YSD_GET_ATTACK_NO(f10_arg0, f10_arg1, f10_arg2, f10_arg3)
        if f10_local0 then
            f10_arg2:AddSubGoal(GOAL_EnemyComboRepeat, 10, TARGET_ENE_0, f10_local0)
        end
        if f10_arg1:GetRandam_Int(1, 100) <= f10_arg5 then
            f10_local0 = YSD_GET_ATTACK_NO(f10_arg0, f10_arg1, f10_arg2, f10_local0)
            if f10_local0 then
                f10_arg2:AddSubGoal(GOAL_EnemyComboRepeat, 10, TARGET_ENE_0, f10_local0)
            end
        end
    end
    
end

function YSD_GetTargetDir(f11_arg0, f11_arg1, f11_arg2, f11_arg3, f11_arg4, f11_arg5, f11_arg6, f11_arg7, f11_arg8, f11_arg9)
    local f11_local0 = 0
    if f11_arg9 == nil then
        f11_arg9 = f11_arg1:GetToTargetAngle(TARGET_ENE_0)
    end
    if -f11_arg3 < f11_arg9 and f11_arg9 < f11_arg3 then
        f11_local0 = 10
    elseif f11_arg3 <= f11_arg9 and f11_arg9 <= f11_arg5 then
        f11_local0 = 50
    elseif f11_arg5 <= f11_arg9 and f11_arg9 <= f11_arg6 then
        f11_local0 = 30
    elseif f11_arg6 <= f11_arg9 and f11_arg9 <= f11_arg4 then
        f11_local0 = 60
    elseif f11_arg9 <= -f11_arg3 and -f11_arg7 <= f11_arg9 then
        f11_local0 = 70
    elseif f11_arg9 <= -f11_arg7 and -f11_arg8 <= f11_arg9 then
        f11_local0 = 40
    elseif f11_arg9 <= -f11_arg8 and -f11_arg4 <= f11_arg9 then
        f11_local0 = 80
    elseif f11_arg9 <= -f11_arg4 or f11_arg4 <= f11_arg9 then
        f11_local0 = 20
    else
        f11_local0 = false
    end
    return f11_local0
    
end

function YSD_SelectEvPoint(f12_arg0, f12_arg1, f12_arg2)
    return YSD_SelectEvPointEx(f12_arg0, f12_arg1, f12_arg2, 1)
    
end

function YSD_SelectEvPointEx(f13_arg0, f13_arg1, f13_arg2, f13_arg3)
    if f13_arg0.YSD_EvPointMax < f13_arg3 then
        f13_arg3 = f13_arg0.YSD_EvPointMax
    end
    local f13_local0 = {}
    local f13_local1 = 0
    local f13_local2 = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0}
    for f13_local3 = 1, f13_arg0.YSD_EvPointMax, 1 do
        f13_arg1:SetEventMoveTarget(f13_arg0.YSD_EvPointList[f13_local3])
        f13_local0[f13_local3] = f13_arg1:GetDist_Point(POINT_EVENT)
    end
    local f13_local3 = 0
    for f13_local4 = 1, f13_arg0.YSD_EvPointMax, 1 do
        f13_local3 = f13_local0[f13_local4]
        for f13_local7 = 1, f13_arg0.YSD_EvPointMax, 1 do
            if f13_local3 <= f13_local0[f13_local7] then
                f13_local2[f13_local4] = f13_local2[f13_local4] + 1
            end
        end
    end
    for f13_local4 = 1, f13_arg0.YSD_EvPointMax, 1 do
        if f13_local2[f13_local4] == f13_arg3 then
            f13_local1 = f13_local4
            break
        end
    end
    return f13_arg0.YSD_EvPointList[f13_local1]
    



end


