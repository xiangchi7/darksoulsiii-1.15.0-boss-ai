RegisterTableGoal(GOAL_DarknessDragon621000_Battle, "GOAL_DarknessDragon621000_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_DarknessDragon621000_Battle, true)

Goal.Initialize = function (f1_arg0, f1_arg1, f1_arg2, f1_arg3)
    
end

Goal.Activate = function (f2_arg0, f2_arg1, f2_arg2)
    Init_Pseudo_Global(f2_arg1, f2_arg2)
    f2_arg1:SetStringIndexedNumber("Dist_SideStep", 5)
    f2_arg1:SetStringIndexedNumber("Dist_BackStep", 5)
    f2_arg1:SetStringIndexedNumber("AddDistRun", 0.2)
    local f2_local0 = {}
    local f2_local1 = {}
    local f2_local2 = {}
    Common_Clear_Param(f2_local0, f2_local1, f2_local2)
    local f2_local3 = f2_arg1:GetDist(TARGET_ENE_0)
    local f2_local4 = f2_arg1:GetDistYSigned(TARGET_ENE_0)
    local f2_local5 = f2_arg1:GetRandam_Int(1, 100)
    local f2_local6 = f2_arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkattr_doAdmirer)
    local f2_local7 = f2_arg1:GetEventRequest()
    local f2_local8 = f2_arg1:GetHpRate(TARGET_SELF)
    f2_arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    f2_arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5032)
    f2_arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5033)
    f2_arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5034)
    f2_arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 16218)
    f2_arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 16551)
    f2_arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 16554)
    f2_arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5031)
    f2_arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 16552)
    f2_arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 16557)
    if f2_arg1:HasSpecialEffectId(TARGET_SELF, 5404) then
        if f2_local4 <= 15 and f2_local4 >= -15 then
            if f2_arg1:HasSpecialEffectId(TARGET_SELF, 5029) and InsideRange(f2_arg1, f2_arg2, 65 + 180, 180, -1, 999) then
                if f2_local3 >= 30 then
                    f2_local0[1] = 0
                    f2_local0[2] = 0
                    f2_local0[3] = 0
                    f2_local0[4] = 0
                    f2_local0[5] = 0
                    f2_local0[6] = 1000
                    f2_local0[7] = 0
                    f2_local0[8] = 0
                    f2_local0[10] = 0
                    f2_local0[11] = 0
                    f2_local0[12] = 0
                    f2_local0[13] = 0
                    f2_local0[20] = 0
                    f2_local0[21] = 0
                    f2_local0[25] = 0
                else
                    f2_local0[1] = 0
                    f2_local0[2] = 0
                    f2_local0[3] = 0
                    f2_local0[4] = 0
                    f2_local0[5] = 0
                    f2_local0[6] = 1000
                    f2_local0[7] = 0
                    f2_local0[8] = 0
                    f2_local0[10] = 0
                    f2_local0[11] = 0
                    f2_local0[12] = 0
                    f2_local0[13] = 0
                    f2_local0[20] = 0
                    f2_local0[21] = 0
                    f2_local0[25] = 0
                end
            elseif InsideRange(f2_arg1, f2_arg2, 65 + 180, 180, -1, 999) then
                if f2_local3 >= 65 then
                    f2_local0[1] = 0
                    f2_local0[2] = 0
                    f2_local0[3] = 0
                    f2_local0[4] = 0
                    f2_local0[5] = 0
                    f2_local0[6] = 0
                    f2_local0[7] = 0
                    f2_local0[8] = 0
                    f2_local0[10] = 1000
                    f2_local0[11] = 0
                    f2_local0[12] = 0
                    f2_local0[13] = 0
                    f2_local0[20] = 0
                    f2_local0[21] = 0
                    f2_local0[25] = 0
                elseif f2_local3 >= 60 then
                    f2_local0[1] = 350
                    f2_local0[2] = 0
                    f2_local0[3] = 0
                    f2_local0[4] = 0
                    f2_local0[5] = 0
                    f2_local0[6] = 350
                    f2_local0[7] = 0
                    f2_local0[8] = 0
                    f2_local0[10] = 0
                    f2_local0[11] = 300
                    f2_local0[12] = 0
                    f2_local0[13] = 0
                    f2_local0[20] = 0
                    f2_local0[21] = 0
                    f2_local0[25] = 0
                    if f2_arg1:GetAttackPassedTime(3030) >= 50 then
                        f2_local0[11] = 1000
                    end
                elseif f2_local3 >= 30 then
                    f2_local0[1] = 350
                    f2_local0[2] = 0
                    f2_local0[3] = 0
                    f2_local0[4] = 0
                    f2_local0[5] = 0
                    f2_local0[6] = 350
                    f2_local0[7] = 0
                    f2_local0[8] = 0
                    f2_local0[10] = 0
                    f2_local0[11] = 300
                    f2_local0[12] = 0
                    f2_local0[13] = 0
                    f2_local0[20] = 0
                    f2_local0[21] = 0
                    f2_local0[25] = 0
                    if f2_arg1:GetAttackPassedTime(3030) >= 50 then
                        f2_local0[11] = 1000
                    end
                elseif f2_local3 >= 15 then
                    if InsideRange(f2_arg1, f2_arg2, 103 + 180, 154, -1, 999) then
                        f2_local0[1] = 0
                        f2_local0[2] = 0
                        f2_local0[3] = 0
                        f2_local0[4] = 0
                        f2_local0[5] = 0
                        f2_local0[6] = 300
                        f2_local0[7] = 0
                        f2_local0[8] = 700
                        f2_local0[10] = 0
                        f2_local0[11] = 0
                        f2_local0[12] = 0
                        f2_local0[13] = 0
                        f2_local0[20] = 0
                        f2_local0[21] = 0
                        f2_local0[25] = 0
                        f2_local0[28] = 0
                        f2_local0[29] = 0
                    else
                        f2_local0[1] = 0
                        f2_local0[2] = 0
                        f2_local0[3] = 0
                        f2_local0[4] = 0
                        f2_local0[5] = 0
                        f2_local0[6] = 1000
                        f2_local0[7] = 0
                        f2_local0[8] = 0
                        f2_local0[10] = 0
                        f2_local0[11] = 0
                        f2_local0[12] = 0
                        f2_local0[13] = 0
                        f2_local0[20] = 0
                        f2_local0[21] = 0
                        f2_local0[25] = 0
                        f2_local0[7] = SetCoolTime(f2_arg1, f2_arg2, 3007, 45, f2_local0[7], 0)
                    end
                elseif f2_local3 >= 13 then
                    f2_local0[1] = 0
                    f2_local0[2] = 450
                    f2_local0[3] = 250
                    f2_local0[4] = 0
                    f2_local0[5] = 0
                    f2_local0[6] = 300
                    f2_local0[7] = 0
                    f2_local0[8] = 0
                    f2_local0[10] = 0
                    f2_local0[11] = 0
                    f2_local0[12] = 0
                    f2_local0[13] = 0
                    f2_local0[20] = 0
                    f2_local0[21] = 0
                    f2_local0[25] = 0
                    if f2_arg1:GetAttackPassedTime(3001) <= 30 and f2_arg1:GetAttackPassedTime(3002) <= 30 and f2_arg1:GetAttackPassedTime(3006) <= 30 and f2_arg1:GetAttackPassedTime(3007) >= 20 then
                        f2_local0[7] = 997
                    end
                    if not f2_arg1:HasSpecialEffectId(TARGET_SELF, 5022) then
                        f2_local0[1] = 0
                        f2_local0[2] = 0
                        f2_local0[3] = 0
                        f2_local0[4] = 0
                        f2_local0[5] = 0
                        f2_local0[6] = 0
                        f2_local0[7] = 1000
                        f2_local0[8] = 0
                        f2_local0[10] = 0
                        f2_local0[11] = 0
                        f2_local0[12] = 0
                        f2_local0[13] = 0
                        f2_local0[20] = 0
                        f2_local0[21] = 0
                        f2_local0[25] = 0
                    end
                    if f2_local8 <= 0.6 and not f2_arg1:HasSpecialEffectId(TARGET_SELF, 5023) and f2_arg1:GetAttackPassedTime(3007) >= 10 then
                        f2_local0[1] = 0
                        f2_local0[2] = 0
                        f2_local0[3] = 0
                        f2_local0[4] = 0
                        f2_local0[5] = 0
                        f2_local0[6] = 0
                        f2_local0[7] = 1000
                        f2_local0[8] = 0
                        f2_local0[10] = 0
                        f2_local0[11] = 0
                        f2_local0[12] = 0
                        f2_local0[13] = 0
                        f2_local0[20] = 0
                        f2_local0[21] = 0
                        f2_local0[25] = 0
                    end
                elseif f2_local3 >= 8 then
                    f2_local0[1] = 0
                    f2_local0[2] = 600
                    f2_local0[3] = 400
                    f2_local0[4] = 0
                    f2_local0[5] = 0
                    f2_local0[6] = 0
                    f2_local0[7] = 0
                    f2_local0[8] = 0
                    f2_local0[10] = 0
                    f2_local0[11] = 0
                    f2_local0[12] = 0
                    f2_local0[13] = 0
                    f2_local0[20] = 0
                    f2_local0[21] = 0
                    f2_local0[25] = 0
                    if f2_arg1:GetAttackPassedTime(3001) <= 30 and f2_arg1:GetAttackPassedTime(3002) <= 30 and f2_arg1:GetAttackPassedTime(3007) >= 20 then
                        f2_local0[7] = 1000
                    end
                    if not f2_arg1:HasSpecialEffectId(TARGET_SELF, 5022) then
                        f2_local0[1] = 0
                        f2_local0[2] = 0
                        f2_local0[3] = 0
                        f2_local0[4] = 0
                        f2_local0[5] = 0
                        f2_local0[6] = 0
                        f2_local0[7] = 1000
                        f2_local0[8] = 0
                        f2_local0[10] = 0
                        f2_local0[11] = 0
                        f2_local0[12] = 0
                        f2_local0[13] = 0
                        f2_local0[20] = 0
                        f2_local0[21] = 0
                        f2_local0[25] = 0
                    end
                    if f2_local8 <= 0.6 and not f2_arg1:HasSpecialEffectId(TARGET_SELF, 5023) and f2_arg1:GetAttackPassedTime(3007) >= 10 then
                        f2_local0[1] = 0
                        f2_local0[2] = 0
                        f2_local0[3] = 0
                        f2_local0[4] = 0
                        f2_local0[5] = 0
                        f2_local0[6] = 0
                        f2_local0[7] = 1000
                        f2_local0[8] = 0
                        f2_local0[10] = 0
                        f2_local0[11] = 0
                        f2_local0[12] = 0
                        f2_local0[13] = 0
                        f2_local0[20] = 0
                        f2_local0[21] = 0
                        f2_local0[25] = 0
                    end
                else
                    f2_local0[1] = 0
                    f2_local0[2] = 0
                    f2_local0[3] = 0
                    f2_local0[4] = 0
                    f2_local0[5] = 0
                    f2_local0[6] = 0
                    f2_local0[7] = 2
                    f2_local0[8] = 0
                    f2_local0[10] = 0
                    f2_local0[11] = 0
                    f2_local0[12] = 999
                    f2_local0[13] = 0
                    f2_local0[20] = 0
                    f2_local0[21] = 0
                    f2_local0[25] = 0
                    f2_local0[7] = SetCoolTime(f2_arg1, f2_arg2, 3007, 20, f2_local0[7], 0)
                    if not f2_arg1:HasSpecialEffectId(TARGET_SELF, 5022) then
                        f2_local0[1] = 0
                        f2_local0[2] = 0
                        f2_local0[3] = 0
                        f2_local0[4] = 0
                        f2_local0[5] = 0
                        f2_local0[6] = 0
                        f2_local0[7] = 1000
                        f2_local0[8] = 0
                        f2_local0[10] = 0
                        f2_local0[11] = 0
                        f2_local0[12] = 0
                        f2_local0[13] = 0
                        f2_local0[20] = 0
                        f2_local0[21] = 0
                        f2_local0[25] = 0
                    end
                    if f2_local8 <= 0.6 and not f2_arg1:HasSpecialEffectId(TARGET_SELF, 5023) and f2_arg1:GetAttackPassedTime(3007) >= 10 then
                        f2_local0[1] = 0
                        f2_local0[2] = 0
                        f2_local0[3] = 0
                        f2_local0[4] = 0
                        f2_local0[5] = 0
                        f2_local0[6] = 0
                        f2_local0[7] = 1000
                        f2_local0[8] = 0
                        f2_local0[10] = 0
                        f2_local0[11] = 0
                        f2_local0[12] = 0
                        f2_local0[13] = 0
                        f2_local0[20] = 0
                        f2_local0[21] = 0
                        f2_local0[25] = 0
                    end
                end
            elseif InsideRange(f2_arg1, f2_arg2, -35 + 180, 20, -1, 20) then
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 0
                f2_local0[4] = 999
                f2_local0[5] = 0
                f2_local0[6] = 0
                f2_local0[7] = 2
                f2_local0[8] = 0
                f2_local0[10] = 0
                f2_local0[11] = 0
                f2_local0[12] = 0
                f2_local0[13] = 0
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[25] = 0
                f2_local0[7] = SetCoolTime(f2_arg1, f2_arg2, 3007, 25, f2_local0[7], 0)
            elseif f2_local3 >= 25 then
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[5] = 0
                f2_local0[6] = 0
                f2_local0[7] = 0
                f2_local0[8] = 0
                f2_local0[10] = 0
                f2_local0[11] = 0
                f2_local0[12] = 0
                f2_local0[13] = 0
                f2_local0[20] = 1000
                f2_local0[21] = 0
                f2_local0[25] = 0
            elseif f2_local3 >= 10 then
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[5] = 0
                f2_local0[6] = 0
                f2_local0[7] = 500
                f2_local0[8] = 0
                f2_local0[10] = 0
                f2_local0[11] = 0
                f2_local0[12] = 0
                f2_local0[13] = 500
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[25] = 0
                f2_local0[7] = SetCoolTime(f2_arg1, f2_arg2, 3007, 25, f2_local0[7], 0)
            else
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 0
                f2_local0[4] = 980
                f2_local0[5] = 0
                f2_local0[6] = 0
                f2_local0[7] = 10
                f2_local0[8] = 0
                f2_local0[10] = 0
                f2_local0[11] = 0
                f2_local0[12] = 0
                f2_local0[13] = 10
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[25] = 0
                f2_local0[7] = SetCoolTime(f2_arg1, f2_arg2, 3007, 25, f2_local0[7], 0)
            end
            if f2_local8 <= 0.4 and f2_local8 > 0.2 and f2_local3 <= 30 and not f2_arg1:HasSpecialEffectId(TARGET_SELF, 5021) then
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[5] = 0
                f2_local0[6] = 0
                f2_local0[7] = 0
                f2_local0[8] = 0
                f2_local0[10] = 0
                f2_local0[11] = 0
                f2_local0[12] = 0
                f2_local0[13] = 0
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[25] = 1000
            end
        else
            f2_local0[1] = 0
            f2_local0[2] = 0
            f2_local0[3] = 0
            f2_local0[4] = 0
            f2_local0[5] = 0
            f2_local0[6] = 0
            f2_local0[7] = 0
            f2_local0[8] = 0
            f2_local0[10] = 1000
            f2_local0[11] = 0
            f2_local0[12] = 0
            f2_local0[13] = 0
            f2_local0[20] = 0
            f2_local0[21] = 0
        end
        f2_local0[1] = SetCoolTime(f2_arg1, f2_arg2, 3000, 13, f2_local0[1], 1)
        f2_local0[1] = SetCoolTime(f2_arg1, f2_arg2, 3028, 13, f2_local0[1], 1)
        f2_local0[1] = SetCoolTime(f2_arg1, f2_arg2, 3007, 15, f2_local0[1], 0)
        f2_local0[1] = SetCoolTime(f2_arg1, f2_arg2, 3020, 15, f2_local0[1], 0)
        f2_local0[2] = SetCoolTime(f2_arg1, f2_arg2, 3001, 5, f2_local0[2], 1)
        f2_local0[3] = SetCoolTime(f2_arg1, f2_arg2, 3002, 10, f2_local0[3], 1)
        f2_local0[4] = SetCoolTime(f2_arg1, f2_arg2, 3003, 20, f2_local0[4], 1)
        f2_local0[4] = SetCoolTime(f2_arg1, f2_arg2, 3015, 20, f2_local0[4], 1)
        f2_local0[5] = SetCoolTime(f2_arg1, f2_arg2, 3004, 15, f2_local0[5], 1)
        f2_local0[6] = SetCoolTime(f2_arg1, f2_arg2, 3006, 11, f2_local0[6], 1)
        f2_local0[6] = SetCoolTime(f2_arg1, f2_arg2, 3029, 11, f2_local0[6], 1)
        f2_local0[6] = SetCoolTime(f2_arg1, f2_arg2, 3016, 11, f2_local0[6], 0)
        f2_local0[8] = SetCoolTime(f2_arg1, f2_arg2, 3026, 15, f2_local0[8], 1)
        f2_local0[11] = SetCoolTime(f2_arg1, f2_arg2, 3030, 30, f2_local0[11], 0)
        f2_local0[12] = SetCoolTime(f2_arg1, f2_arg2, 3021, 20, f2_local0[12], 1)
        f2_local0[13] = SetCoolTime(f2_arg1, f2_arg2, 3020, 30, f2_local0[13], 1)
        f2_local0[20] = SetCoolTime(f2_arg1, f2_arg2, 3011, 15, f2_local0[20], 1)
        f2_local0[28] = SetCoolTime(f2_arg1, f2_arg2, 3028, 13, f2_local0[28], 1)
        f2_local0[28] = SetCoolTime(f2_arg1, f2_arg2, 3001, 13, f2_local0[28], 1)
        f2_local0[29] = SetCoolTime(f2_arg1, f2_arg2, 3029, 11, f2_local0[29], 1)
        f2_local0[29] = SetCoolTime(f2_arg1, f2_arg2, 3006, 11, f2_local0[29], 1)
    elseif f2_local4 <= -8 and f2_local4 >= -33 then
        if f2_arg1:HasSpecialEffectId(TARGET_SELF, 5400) and f2_arg1:HasSpecialEffectId(TARGET_SELF, 5026) then
            if f2_arg1:HasSpecialEffectId(TARGET_SELF, 16558) then
                f2_local0[10] = 0
                f2_local0[31] = 1000
                f2_local0[32] = 0
            else
                if InsideRange(f2_arg1, f2_arg2, 47.5 + 180, 85, 63, 999) or f2_local4 >= -12 then
                    f2_local0[10] = 0
                    f2_local0[31] = 1000
                elseif not (not InsideRange(f2_arg1, f2_arg2, -46 + 180, 108, -1, 999) or InsideRange(f2_arg1, f2_arg2, -110 + 180, 140, 60, 999)) or InsideRange(f2_arg1, f2_arg2, -12.5 + 180, 65, 30, 50) and f2_local4 <= -15 then
                    if InsideRange(f2_arg1, f2_arg2, 25 + 180, 130, 23, 29) then
                        f2_local0[10] = 200
                        f2_local0[31] = 0
                        f2_local0[32] = 800
                    else
                        f2_local0[10] = 0
                        f2_local0[31] = 1000
                    end
                else
                    f2_local0[10] = 1000
                    f2_local0[31] = 0
                end
                f2_local0[32] = SetCoolTime(f2_arg1, f2_arg2, 3002, 60, f2_local0[32], 0)
            end
        elseif f2_arg1:HasSpecialEffectId(TARGET_SELF, 5405) and f2_arg1:HasSpecialEffectId(TARGET_SELF, 5027) and f2_local4 <= -8 then
            if f2_arg1:HasSpecialEffectId(TARGET_SELF, 16558) then
                f2_local0[10] = 1000
                f2_local0[33] = 0
            elseif InsideRange(f2_arg1, f2_arg2, 47.5 + 180, 85, 63, 999) or f2_local4 >= -12 then
                f2_local0[10] = 1000
                f2_local0[33] = 0
            elseif InsideRange(f2_arg1, f2_arg2, -35 + 180, 130, -1, 999) and not InsideRange(f2_arg1, f2_arg2, -75 + 180, 30, 60, 999) then
                if InsideRange(f2_arg1, f2_arg2, 25 + 180, 130, 23, 29) or InsideRange(f2_arg1, f2_arg2, 5 + 180, 20, 55, 999) and (f2_local4 <= -23 or f2_local3 >= 80) then
                    f2_local0[10] = 1000
                    f2_local0[33] = 0
                else
                    f2_local0[10] = 0
                    f2_local0[33] = 1000
                end
            else
                f2_local0[10] = 1000
                f2_local0[33] = 0
            end
        end
    end
    f2_local1[1] = REGIST_FUNC(f2_arg1, f2_arg2, GOAL_621000_DarknessDragon_Act01)
    f2_local1[2] = REGIST_FUNC(f2_arg1, f2_arg2, GOAL_621000_DarknessDragon_Act02)
    f2_local1[3] = REGIST_FUNC(f2_arg1, f2_arg2, GOAL_621000_DarknessDragon_Act03)
    f2_local1[4] = REGIST_FUNC(f2_arg1, f2_arg2, GOAL_621000_DarknessDragon_Act04)
    f2_local1[5] = REGIST_FUNC(f2_arg1, f2_arg2, GOAL_621000_DarknessDragon_Act05)
    f2_local1[6] = REGIST_FUNC(f2_arg1, f2_arg2, GOAL_621000_DarknessDragon_Act06)
    f2_local1[7] = REGIST_FUNC(f2_arg1, f2_arg2, GOAL_621000_DarknessDragon_Act07)
    f2_local1[8] = REGIST_FUNC(f2_arg1, f2_arg2, GOAL_621000_DarknessDragon_Act08)
    f2_local1[10] = REGIST_FUNC(f2_arg1, f2_arg2, GOAL_621000_DarknessDragon_Act10)
    f2_local1[11] = REGIST_FUNC(f2_arg1, f2_arg2, GOAL_621000_DarknessDragon_Act11)
    f2_local1[12] = REGIST_FUNC(f2_arg1, f2_arg2, GOAL_621000_DarknessDragon_Act12)
    f2_local1[13] = REGIST_FUNC(f2_arg1, f2_arg2, GOAL_621000_DarknessDragon_Act13)
    f2_local1[19] = REGIST_FUNC(f2_arg1, f2_arg2, GOAL_621000_DarknessDragon_Act19)
    f2_local1[20] = REGIST_FUNC(f2_arg1, f2_arg2, GOAL_621000_DarknessDragon_Act20)
    f2_local1[21] = REGIST_FUNC(f2_arg1, f2_arg2, GOAL_621000_DarknessDragon_Act21)
    f2_local1[25] = REGIST_FUNC(f2_arg1, f2_arg2, GOAL_621000_DarknessDragon_Act25)
    f2_local1[28] = REGIST_FUNC(f2_arg1, f2_arg2, GOAL_621000_DarknessDragon_Act28)
    f2_local1[29] = REGIST_FUNC(f2_arg1, f2_arg2, GOAL_621000_DarknessDragon_Act29)
    f2_local1[31] = REGIST_FUNC(f2_arg1, f2_arg2, GOAL_621000_DarknessDragon_Act31)
    f2_local1[32] = REGIST_FUNC(f2_arg1, f2_arg2, GOAL_621000_DarknessDragon_Act32)
    f2_local1[33] = REGIST_FUNC(f2_arg1, f2_arg2, GOAL_621000_DarknessDragon_Act33)
    local f2_local9 = REGIST_FUNC(f2_arg1, f2_arg2, GOAL_621000_DarknessDragon_ActAfter_AdjustSpace)
    Common_Battle_Activate(f2_arg1, f2_arg2, f2_local0, f2_local1, f2_local9, f2_local2)
    
end

function GOAL_621000_DarknessDragon_Act01(f3_arg0, f3_arg1, f3_arg2)
    local f3_local0 = 3000
    local f3_local1 = 999
    local f3_local2 = 0
    local f3_local3 = 0
    local f3_local4 = f3_arg0:GetRandam_Int(1, 100)
    f3_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 20, f3_local0, TARGET_ENE_0, f3_local1, f3_local2, f3_local3, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function GOAL_621000_DarknessDragon_Act02(f4_arg0, f4_arg1, f4_arg2)
    local f4_local0 = 3001
    local f4_local1 = 3002
    local f4_local2 = 3021
    local f4_local3 = 3030
    local f4_local4 = 25
    local f4_local5 = 999
    local f4_local6 = 0
    local f4_local7 = 0
    local f4_local8 = f4_arg0:GetRandam_Int(1, 100)
    f4_arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 16554)
    f4_arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5031)
    if f4_local8 <= 35 then
        f4_arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f4_local0, TARGET_ENE_0, f4_local4, f4_local6, f4_local7, 0, 0)
        f4_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, f4_local1, TARGET_ENE_0, f4_local4, 0, 0)
        f4_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, f4_local2, TARGET_ENE_0, f4_local5, 0, 0)
    else
        f4_arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f4_local0, TARGET_ENE_0, f4_local4, f4_local6, f4_local7, 0, 0)
        f4_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, f4_local1, TARGET_ENE_0, f4_local5, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function GOAL_621000_DarknessDragon_Act03(f5_arg0, f5_arg1, f5_arg2)
    local f5_local0 = 3002
    local f5_local1 = 3021
    local f5_local2 = 3001
    local f5_local3 = 3030
    local f5_local4 = 25
    local f5_local5 = 999
    local f5_local6 = 0
    local f5_local7 = 0
    local f5_local8 = f5_arg0:GetRandam_Int(1, 100)
    f5_arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 16554)
    f5_arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 16552)
    if f5_local8 <= 35 then
        f5_arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f5_local0, TARGET_ENE_0, f5_local4, f5_local6, f5_local7, 0, 0)
        f5_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, f5_local1, TARGET_ENE_0, f5_local4, 0, 0)
        f5_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, f5_local2, TARGET_ENE_0, f5_local5, 0, 0)
    else
        f5_arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f5_local0, TARGET_ENE_0, f5_local4, f5_local6, f5_local7, 0, 0)
        f5_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, f5_local1, TARGET_ENE_0, f5_local5, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function GOAL_621000_DarknessDragon_Act04(f6_arg0, f6_arg1, f6_arg2)
    local f6_local0 = 3003
    local f6_local1 = 3015
    local f6_local2 = 999
    local f6_local3 = 0
    local f6_local4 = 0
    local f6_local5 = f6_arg0:GetRandam_Int(1, 100)
    local f6_local6 = f6_arg0:GetDist(TARGET_ENE_0)
    if f6_local6 >= 10 then
        f6_arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 20, f6_local1, TARGET_ENE_0, f6_local2, f6_local3, f6_local4, 0, 0)
    elseif f6_local5 <= 50 then
        f6_arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 20, f6_local0, TARGET_ENE_0, f6_local2, f6_local3, f6_local4, 0, 0)
        f6_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, f6_local1, TARGET_ENE_0, DistToAttNext, 0, 0)
    else
        f6_arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 20, f6_local1, TARGET_ENE_0, f6_local2, f6_local3, f6_local4, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function GOAL_621000_DarknessDragon_Act05(f7_arg0, f7_arg1, f7_arg2)
    local f7_local0 = 3004
    local f7_local1 = 999
    local f7_local2 = 0
    local f7_local3 = 0
    local f7_local4 = f7_arg0:GetRandam_Int(1, 100)
    f7_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 20, f7_local0, TARGET_ENE_0, f7_local1, f7_local2, f7_local3, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function GOAL_621000_DarknessDragon_Act06(f8_arg0, f8_arg1, f8_arg2)
    local f8_local0 = 3006
    local f8_local1 = 999
    local f8_local2 = 0
    local f8_local3 = 0
    local f8_local4 = f8_arg0:GetRandam_Int(1, 100)
    f8_arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f8_local0, TARGET_ENE_0, f8_local1, f8_local2, f8_local3, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function GOAL_621000_DarknessDragon_Act07(f9_arg0, f9_arg1, f9_arg2)
    local f9_local0 = 3007
    local f9_local1 = 999
    local f9_local2 = 0
    local f9_local3 = 0
    local f9_local4 = f9_arg0:GetRandam_Int(1, 100)
    f9_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 20, f9_local0, TARGET_ENE_0, f9_local1, f9_local2, f9_local3, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function GOAL_621000_DarknessDragon_Act08(f10_arg0, f10_arg1, f10_arg2)
    local f10_local0 = 3030
    local f10_local1 = 3026
    local f10_local2 = 999
    local f10_local3 = 0
    local f10_local4 = 0
    local f10_local5 = f10_arg0:GetRandam_Int(1, 100)
    f10_arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f10_local1, TARGET_ENE_0, f10_local2, f10_local3, f10_local4, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function GOAL_621000_DarknessDragon_Act10(f11_arg0, f11_arg1, f11_arg2)
    local f11_local0 = f11_arg0:GetRandam_Int(0.5, 0.8)
    f11_arg1:AddSubGoal(GOAL_COMMON_Wait, f11_local0, TARGET_ENE_0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GOAL_621000_DarknessDragon_Act11(f12_arg0, f12_arg1, f12_arg2)
    local f12_local0 = 3030
    local f12_local1 = 999
    local f12_local2 = 0
    local f12_local3 = 0
    local f12_local4 = f12_arg0:GetRandam_Int(1, 100)
    f12_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 20, f12_local0, TARGET_ENE_0, f12_local1, f12_local2, f12_local3, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function GOAL_621000_DarknessDragon_Act12(f13_arg0, f13_arg1, f13_arg2)
    local f13_local0 = 3021
    local f13_local1 = 3002
    local f13_local2 = 3001
    local f13_local3 = 3030
    local f13_local4 = 25
    local f13_local5 = 999
    local f13_local6 = 0
    local f13_local7 = 0
    local f13_local8 = f13_arg0:GetRandam_Int(1, 100)
    f13_arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 16554)
    if f13_local8 <= 35 then
        f13_arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f13_local0, TARGET_ENE_0, f13_local4, f13_local6, f13_local7, 0, 0)
        f13_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, f13_local1, TARGET_ENE_0, f13_local4, 0, 0)
        f13_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, f13_local2, TARGET_ENE_0, f13_local5, 0, 0)
    else
        f13_arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f13_local0, TARGET_ENE_0, f13_local4, f13_local6, f13_local7, 0, 0)
        f13_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, f13_local1, TARGET_ENE_0, f13_local5, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function GOAL_621000_DarknessDragon_Act13(f14_arg0, f14_arg1, f14_arg2)
    local f14_local0 = 3020
    local f14_local1 = 999
    local f14_local2 = 0
    local f14_local3 = 0
    local f14_local4 = f14_arg0:GetRandam_Int(1, 100)
    f14_arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 16557)
    f14_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 20, f14_local0, TARGET_ENE_0, f14_local1, f14_local2, f14_local3, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function GOAL_621000_DarknessDragon_Act19(f15_arg0, f15_arg1, f15_arg2)
    local f15_local0 = 3007
    local f15_local1 = 3017
    local f15_local2 = 3001
    local f15_local3 = 3001
    local f15_local4 = 3003
    local f15_local5 = 3001
    local f15_local6 = 999
    local f15_local7 = 0
    local f15_local8 = 0
    local f15_local9 = f15_arg0:GetRandam_Int(1, 100)
    f15_arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 20, f15_local0, TARGET_ENE_0, 999, f15_local7, f15_local8, 0, 0)
    f15_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 20, f15_local1, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GOAL_621000_DarknessDragon_Act20(f16_arg0, f16_arg1, f16_arg2)
    local f16_local0 = 3010
    local f16_local1 = 999
    local f16_local2 = 0
    local f16_local3 = 0
    local f16_local4 = f16_arg0:GetRandam_Int(1, 100)
    f16_arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f16_local0, TARGET_ENE_0, f16_local1, f16_local2, f16_local3, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function GOAL_621000_DarknessDragon_Act21(f17_arg0, f17_arg1, f17_arg2)
    local f17_local0 = 3027
    local f17_local1 = 999
    local f17_local2 = 0
    local f17_local3 = 0
    local f17_local4 = f17_arg0:GetRandam_Int(1, 100)
    f17_arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f17_local0, TARGET_ENE_0, f17_local1, f17_local2, f17_local3, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function GOAL_621000_DarknessDragon_Act25(f18_arg0, f18_arg1, f18_arg2)
    local f18_local0 = 3025
    local f18_local1 = 3030
    local f18_local2 = 999
    local f18_local3 = 0
    local f18_local4 = 0
    local f18_local5 = f18_arg0:GetRandam_Int(1, 100)
    local f18_local6 = f18_arg0:GetDist(TARGET_ENE_0)
    if not InsideRange(f18_arg0, f18_arg1, 65 + 180, 180, -1, 999) and f18_arg0:GetAttackPassedTime(3020) >= 10 then
        f18_arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 20, 3020, TARGET_ENE_0, f18_local2, f18_local3, f18_local4, 0, 0)
        f18_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 20, f18_local0, TARGET_ENE_0, 999, 0, 0)
    else
        f18_arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 20, f18_local0, TARGET_ENE_0, f18_local2, f18_local3, f18_local4, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function GOAL_621000_DarknessDragon_Act28(f19_arg0, f19_arg1, f19_arg2)
    local f19_local0 = 3028
    local f19_local1 = 999
    local f19_local2 = 0
    local f19_local3 = 0
    local f19_local4 = f19_arg0:GetRandam_Int(1, 100)
    f19_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 20, f19_local0, TARGET_ENE_0, f19_local1, f19_local2, f19_local3, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function GOAL_621000_DarknessDragon_Act29(f20_arg0, f20_arg1, f20_arg2)
    local f20_local0 = 3029
    local f20_local1 = 999
    local f20_local2 = 0
    local f20_local3 = 0
    local f20_local4 = f20_arg0:GetRandam_Int(1, 100)
    f20_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 20, f20_local0, TARGET_ENE_0, f20_local1, f20_local2, f20_local3, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function GOAL_621000_DarknessDragon_Act31(f21_arg0, f21_arg1, f21_arg2)
    local f21_local0 = 3000
    local f21_local1 = 999
    local f21_local2 = 0
    local f21_local3 = 0
    local f21_local4 = f21_arg0:GetRandam_Int(1, 100)
    f21_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f21_local0, TARGET_ENE_0, f21_local1, f21_local2, f21_local3, 0, 0)
    f21_arg1:AddSubGoal(GOAL_COMMON_Wait, 0.5, TARGET_ENE_0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function GOAL_621000_DarknessDragon_Act32(f22_arg0, f22_arg1, f22_arg2)
    local f22_local0 = 3002
    local f22_local1 = 999
    local f22_local2 = 0
    local f22_local3 = 0
    local f22_local4 = f22_arg0:GetRandam_Int(1, 100)
    f22_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f22_local0, TARGET_ENE_0, f22_local1, f22_local2, f22_local3, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function GOAL_621000_DarknessDragon_Act33(f23_arg0, f23_arg1, f23_arg2)
    local f23_local0 = 3001
    local f23_local1 = 999
    local f23_local2 = 0
    local f23_local3 = 0
    local f23_local4 = f23_arg0:GetRandam_Int(1, 100)
    f23_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f23_local0, TARGET_ENE_0, f23_local1, f23_local2, f23_local3, 0, 0)
    f23_arg1:AddSubGoal(GOAL_COMMON_Wait, 0.5, TARGET_ENE_0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Update = function (f24_arg0, f24_arg1, f24_arg2)
    return Update_Default_NoSubGoal(f24_arg0, f24_arg1, f24_arg2)
    
end

Goal.Terminate = function (f25_arg0, f25_arg1, f25_arg2)
    
end

Goal.Interrupt = function (f26_arg0, f26_arg1, f26_arg2)
    local f26_local0 = f26_arg1:GetDist(TARGET_ENE_0)
    local f26_local1 = f26_arg1:GetDistYSigned(TARGET_ENE_0)
    local f26_local2 = f26_arg1:GetRandam_Int(1, 100)
    local f26_local3 = f26_arg1:GetRandam_Int(1, 100)
    local f26_local4 = f26_arg1:GetRandam_Int(1, 100)
    local f26_local5 = f26_arg1:GetHpRate(TARGET_SELF)
    if f26_arg1:IsInterupt(INTERUPT_Damaged) and f26_local5 <= 0.4 and f26_local5 > 0.2 and f26_local0 <= 30 and not f26_arg1:HasSpecialEffectId(TARGET_SELF, 5021) then
        f26_arg2:ClearSubGoal()
        GOAL_621000_DarknessDragon_Act25(f26_arg1, f26_arg2, paramTbl)
        return true
    end
    if f26_arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) then
        if f26_arg1:GetSpecialEffectActivateInterruptType(0) == 16554 and InsideRange(f26_arg1, f26_arg2, 65 + 180, 180, -1, 999) and f26_local0 >= 15 and f26_local2 <= 65 then
            f26_arg2:ClearSubGoal()
            f26_arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 20, 3006, TARGET_ENE_0, 999, 0, 0)
            return true
        end
        if f26_arg1:GetSpecialEffectActivateInterruptType(0) == 5031 and InsideRange(f26_arg1, f26_arg2, 65 + 180, 180, -1, 999) then
            f26_arg2:ClearSubGoal()
            f26_arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 20, 3030, TARGET_ENE_0, 999, 0, 0)
            f26_arg2:AddSubGoal(GOAL_COMMON_Wait, 1.2, TARGET_ENE_0, 0, 0, 0)
            return true
        end
        if f26_arg1:GetSpecialEffectActivateInterruptType(0) == 16552 and InsideRange(f26_arg1, f26_arg2, 65 + 180, 180, -1, 999) then
            f26_arg2:ClearSubGoal()
            f26_arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 20, 3030, TARGET_ENE_0, 999, 0, 0)
            f26_arg2:AddSubGoal(GOAL_COMMON_Wait, 1.2, TARGET_ENE_0, 0, 0, 0)
            return true
        end
        if f26_arg1:GetSpecialEffectActivateInterruptType(0) == 16557 and InsideRange(f26_arg1, f26_arg2, 65 + 180, 180, -1, 999) then
            f26_arg2:ClearSubGoal()
            f26_arg2:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3030, TARGET_ENE_0, SuccessDist, TurnTime, FrontAngle, 0, 0)
            f26_arg2:AddSubGoal(GOAL_COMMON_Wait, 0.5, TARGET_ENE_0, 0, 0, 0)
            return true
        end
        if f26_arg1:GetSpecialEffectActivateInterruptType(0) == 5030 and InsideRange(f26_arg1, f26_arg2, -135 + 180, 180, 10, 999) then
            local f26_local6 = 3011
            if f26_local2 <= 50 then
                f26_local6 = 3013
            end
            if f26_arg1:GetAttackPassedTime(3011) <= 10 then
                f26_local6 = 3013
            end
            if f26_arg1:GetAttackPassedTime(3013) <= 10 then
                f26_local6 = 3011
            end
            if f26_local1 >= 9 or f26_local1 <= -15 then
                f26_local6 = 3012
            end
            f26_arg2:ClearSubGoal()
            f26_arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 20, f26_local6, TARGET_ENE_0, 999, 0, 0)
            return true
        end
        if f26_arg1:GetSpecialEffectActivateInterruptType(0) == 5032 and InsideRange(f26_arg1, f26_arg2, 65 + 180, 180, -1, 999) and f26_local3 <= 60 then
            if f26_local0 >= 30 then
                if f26_local2 <= 50 then
                    if f26_arg1:GetAttackPassedTime(3016) >= 11 then
                        f26_arg2:ClearSubGoal()
                        f26_arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 20, 3016, TARGET_ENE_0, 999, 0, 0)
                        f26_arg2:AddSubGoal(GOAL_COMMON_Wait, 1.8, TARGET_ENE_0, 0, 0, 0)
                        return true
                    end
                elseif f26_arg1:GetAttackPassedTime(3016) >= 11 then
                    f26_arg2:ClearSubGoal()
                    f26_arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 20, 3000, TARGET_ENE_0, 999, 0, 0)
                    return true
                end
            elseif f26_local0 >= 15 and f26_arg1:GetAttackPassedTime(3009) >= 45 and f26_local2 <= 50 and (f26_arg1:HasSpecialEffectId(TARGET_SELF, 5022) and f26_local5 <= 0.8 or f26_local5 <= 0.6) and not InsideRange(f26_arg1, f26_arg2, 103 + 180, 154, 15, 30) then
                f26_arg2:ClearSubGoal()
                f26_arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 20, 3009, TARGET_ENE_0, 999, 0, 0)
                return true
            end
        end
        if f26_arg1:GetSpecialEffectActivateInterruptType(0) == 16551 and InsideRange(f26_arg1, f26_arg2, 65 + 180, 180, -1, 999) and f26_local0 >= 30 and f26_arg1:GetAttackPassedTime(3016) >= 11 and f26_local2 <= 60 then
            f26_arg2:ClearSubGoal()
            f26_arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 20, 3016, TARGET_ENE_0, 999, 0, 0)
            f26_arg2:AddSubGoal(GOAL_COMMON_Wait, 1.8, TARGET_ENE_0, 0, 0, 0)
            return true
        end
        if f26_arg1:GetSpecialEffectActivateInterruptType(0) == 5033 then
            if not InsideRange(f26_arg1, f26_arg2, 65 + 180, 180, -1, 999) then
                f26_arg2:ClearSubGoal()
                f26_arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 20, 3008, TARGET_ENE_0, 999, 0, 0)
                f26_arg2:AddSubGoal(GOAL_COMMON_Wait, 2, TARGET_ENE_0, 0, 0, 0)
                return true
            else
                if f26_arg1:HasSpecialEffectId(TARGET_SELF, 5023) and f26_local2 <= 60 then
                    f26_arg2:ClearSubGoal()
                    f26_arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 20, 3017, TARGET_ENE_0, 999, 0, 0)
                    return true
                end
                if (f26_arg1:HasSpecialEffectId(TARGET_SELF, 5022) and f26_local5 <= 0.8 or f26_local5 <= 0.6) and not InsideRange(f26_arg1, f26_arg2, 103 + 180, 154, 15, 30) then
                else
                    f26_arg2:ClearSubGoal()
                    f26_arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 20, 3017, TARGET_ENE_0, 999, 0, 0)
                    return true
                end
            end
        end
        if f26_arg1:GetSpecialEffectActivateInterruptType(0) == 5034 then
            f26_arg2:ClearSubGoal()
            f26_arg1:Replaning()
            return true
        end
        if f26_arg1:GetSpecialEffectActivateInterruptType(0) == 16218 and f26_arg1:HasSpecialEffectId(TARGET_SELF, 5400) and f26_arg1:HasSpecialEffectId(TARGET_SELF, 5026) and f26_local1 <= -16 and f26_local1 >= -33 and InsideRange(f26_arg1, f26_arg2, -30 + 180, 180, -1, 80) and f26_arg1:GetAttackPassedTime(3002) >= 30 then
            if not f26_arg1:HasSpecialEffectId(TARGET_SELF, 5020) then
                f26_local2 = 0
            end
            if f26_local2 <= 50 then
                f26_arg2:ClearSubGoal()
                f26_arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 20, 3002, TARGET_ENE_0, 999, 0, 0)
                return true
            end
        end
    end
    if f26_arg1:IsInterupt(INTERUPT_Damaged) and f26_local1 <= -16 then
        f26_arg2:ClearSubGoal()
        GOAL_621000_DarknessDragon_Act21(f26_arg1, f26_arg2, paramTbl)
        return true
    end
    return false
    
end

function GOAL_621000_DarknessDragon_ActAfter_AdjustSpace(f27_arg0, f27_arg1, f27_arg2)
    f27_arg1:AddSubGoal(GOAL_DarknessDragon621000_Battle_AfterAttackAct, 10)
    
end

RegisterTableGoal(GOAL_DarknessDragon621000_Battle_AfterAttackAct, "GOAL_DarknessDragon621000_Battle_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_DarknessDragon621000_Battle_AfterAttackAct, true)

Goal.Activate = function (f28_arg0, f28_arg1, f28_arg2)
    local f28_local0 = f28_arg1:GetDist(TARGET_ENE_0)
    local f28_local1 = f28_arg1:GetHpRate(TARGET_SELF)
    local f28_local2 = {}
    if f28_local0 >= 30 then
        f28_local2[1] = 100
        f28_local2[2] = 0
    else
        f28_local2[1] = 100
        f28_local2[2] = 0
    end
    if InsideRange(f28_arg1, f28_arg2, -135 + 180, 180, 10, 999) then
        f28_local2[1] = 100
        f28_local2[2] = 0
    end
    local f28_local3 = SelectOddsIndex(f28_arg1, f28_local2)
    if f28_local3 == 1 then
    elseif f28_local3 == 2 then
        GOAL_621000_DarknessDragon_Act10(f28_arg1, f28_arg2, paramTbl)
    end
    
end

Goal.Update = function (f29_arg0, f29_arg1, f29_arg2)
    return Update_Default_NoSubGoal(f29_arg0, f29_arg1, f29_arg2)
    
end


