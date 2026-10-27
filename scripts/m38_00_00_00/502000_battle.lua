RegisterTableGoal(GOAL_CrimsonBat_502000_Battle, "CrimsonBat_502000_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_CrimsonBat_502000_Battle, true)

Goal.Initialize = function (f1_arg0, f1_arg1, f1_arg2, f1_arg3)
    
end

Goal.Activate = function (f2_arg0, f2_arg1, f2_arg2)
    Init_Pseudo_Global(f2_arg1, f2_arg2)
    f2_arg1:SetStringIndexedNumber("Dist_SideStep", 10)
    f2_arg1:SetStringIndexedNumber("Dist_BackStep", 10)
    local f2_local0 = {}
    local f2_local1 = {}
    local f2_local2 = {}
    Common_Clear_Param(f2_local0, f2_local1, f2_local2)
    f2_arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5404)
    f2_arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    f2_arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    f2_arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    f2_arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    f2_arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    f2_arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5031)
    f2_arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5032)
    f2_arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5033)
    f2_arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 15025)
    f2_arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 15026)
    local f2_local3 = f2_arg1:GetDist(TARGET_ENE_0)
    local f2_local4 = f2_arg1:GetDist(TARGET_FRI_0)
    local f2_local5 = f2_arg1:GetRandam_Int(1, 100)
    local f2_local6 = f2_arg1:GetRandam_Int(1, 100)
    local f2_local7 = f2_arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    local f2_local8 = f2_arg1:GetEventRequest()
    local f2_local9 = f2_arg1:GetHpRate(TARGET_SELF)
    if not f2_arg1:HasSpecialEffectId(TARGET_SELF, 5404) then
        if f2_arg1:HasSpecialEffectId(TARGET_SELF, 15045) and not f2_arg1:HasSpecialEffectId(TARGET_SELF, 5021) then
            f2_local0[90] = 1000
        elseif f2_arg1:HasSpecialEffectId(TARGET_SELF, 15046) and not f2_arg1:HasSpecialEffectId(TARGET_SELF, 5021) then
            f2_local0[91] = 1000
        elseif f2_arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 100) and f2_local3 <= 6 then
            f2_local0[42] = 400
            f2_local0[70] = 300
            f2_local0[80] = 300
        elseif f2_arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 100) and f2_local3 <= 6 then
            f2_local0[43] = 400
            f2_local0[70] = 300
            f2_local0[79] = 300
        elseif f2_arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 90) and f2_local3 <= 6 then
            f2_local0[41] = 500
            f2_local0[70] = 200
            f2_local0[78] = 300
        elseif f2_arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 250) then
            f2_local0[70] = 1000
        elseif f2_arg1:HasSpecialEffectId(TARGET_SELF, 15026) and f2_local7 == 1 and (f2_arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku or f2_arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki) then
            if f2_arg1:IsInsideTarget(TARGET_FRI_0, AI_DIR_TYPE_F, 60) and f2_local4 < 5 then
                f2_local0[78] = 800
                f2_local0[1] = 50
                f2_local0[2] = 50
                f2_local0[71] = 100
            elseif f2_local3 > 16 then
                f2_local0[3] = 200
                f2_local0[6] = 50
                f2_local0[40] = 50
                f2_local0[46] = 100
                f2_local0[47] = 100
                f2_local0[48] = 500
            elseif f2_local3 > 8 then
                f2_local0[3] = 250
                f2_local0[6] = 50
                f2_local0[40] = 150
                f2_local0[46] = 150
                f2_local0[47] = 200
                f2_local0[48] = 300
                f2_local0[71] = 50
            elseif f2_local3 > 4 then
                f2_local0[3] = 200
                f2_local0[6] = 50
                f2_local0[40] = 100
                f2_local0[46] = 100
                f2_local0[47] = 200
                f2_local0[48] = 200
                f2_local0[71] = 50
            else
                f2_local0[2] = 250
                f2_local0[6] = 50
                f2_local0[40] = 100
                f2_local0[46] = 100
                f2_local0[47] = 200
                f2_local0[48] = 100
                f2_local0[71] = 100
            end
        elseif f2_arg1:HasSpecialEffectId(TARGET_SELF, 15026) then
            if f2_local3 > 18 then
                f2_local0[3] = 300
                f2_local0[40] = 100
                f2_local0[48] = 600
            elseif f2_local3 > 8 then
                f2_local0[3] = 300
                f2_local0[6] = 50
                f2_local0[40] = 125
                f2_local0[46] = 125
                f2_local0[47] = 200
                f2_local0[48] = 300
            elseif f2_local3 > 4 then
                f2_local0[3] = 300
                f2_local0[6] = 100
                f2_local0[40] = 100
                f2_local0[46] = 100
                f2_local0[47] = 200
                f2_local0[48] = 200
            else
                f2_local0[2] = 300
                f2_local0[6] = 100
                f2_local0[40] = 100
                f2_local0[46] = 100
                f2_local0[47] = 200
                f2_local0[48] = 200
            end
        elseif f2_local7 == 1 and (f2_arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku or f2_arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki) then
            if f2_arg1:IsInsideTarget(TARGET_FRI_0, AI_DIR_TYPE_F, 80) and f2_local4 < 8 and f2_local6 < 60 then
                f2_local0[78] = 700
                f2_local0[71] = 300
            elseif f2_local3 > 40 then
                f2_local0[73] = 1000
            elseif f2_local3 > 26 then
                f2_local0[28] = 400
            elseif f2_local3 > 16 then
                f2_local0[26] = 250
                f2_local0[27] = 300
                f2_local0[28] = 400
                f2_local0[72] = 0
                f2_local0[73] = 150
                f2_local0[76] = 0
                f2_local0[77] = 0
            elseif f2_local3 > 10 then
                f2_local0[26] = 350
                f2_local0[27] = 450
                f2_local0[28] = 200
                f2_local0[72] = 0
                f2_local0[76] = 0
                f2_local0[77] = 0
            else
                f2_local0[1] = 75
                f2_local0[5] = 75
                f2_local0[6] = 75
                f2_local0[7] = 75
                f2_local0[26] = 250
                f2_local0[27] = 450
                f2_local0[72] = 0
                f2_local0[76] = 0
                f2_local0[77] = 0
            end
        elseif f2_local3 > 23 then
            f2_local0[26] = 100
            f2_local0[27] = 100
            f2_local0[28] = 500
            f2_local0[72] = 0
            f2_local0[73] = 300
        elseif f2_local3 > 16 then
            f2_local0[26] = 250
            f2_local0[27] = 250
            f2_local0[28] = 500
            f2_local0[72] = 0
        elseif f2_local3 > 8 then
            f2_local0[26] = 350
            f2_local0[27] = 400
            f2_local0[28] = 250
            f2_local0[72] = 0
        elseif f2_local3 > 4 then
            f2_local0[26] = 300
            f2_local0[27] = 500
            f2_local0[28] = 200
            f2_local0[72] = 0
        else
            f2_local0[1] = 50
            f2_local0[5] = 50
            f2_local0[6] = 50
            f2_local0[7] = 50
            f2_local0[26] = 250
            f2_local0[27] = 400
            f2_local0[28] = 0
            f2_local0[72] = 150
        end
    elseif not f2_arg1:HasSpecialEffectId(TARGET_SELF, 5020) then
        f2_local0[94] = 1500
    elseif f2_local9 <= 0.65 and not f2_arg1:HasSpecialEffectId(TARGET_SELF, 5022) then
        f2_local0[55] = 1500
    elseif f2_arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 100) and f2_local3 <= 7 then
        f2_local0[42] = 300
        f2_local0[58] = 300
        f2_local0[70] = 0
        f2_local0[80] = 200
        f2_local0[50] = 200
        f2_local0[55] = 1500
        f2_local0[56] = 1500
    elseif f2_arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 100) and f2_local3 <= 7 then
        f2_local0[43] = 300
        f2_local0[59] = 300
        f2_local0[70] = 0
        f2_local0[79] = 200
        f2_local0[50] = 200
        f2_local0[55] = 1500
        f2_local0[56] = 1500
    elseif f2_arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 90) and f2_local3 <= 10 then
        f2_local0[41] = 500
        f2_local0[70] = 100
        f2_local0[78] = 200
        f2_local0[50] = 200
        f2_local0[55] = 1500
        f2_local0[56] = 1500
    elseif f2_arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 250) then
        f2_local0[70] = 1000
    elseif f2_local3 >= 24 then
        f2_local0[51] = 400
        f2_local0[53] = 400
        f2_local0[49] = 100
        f2_local0[48] = 100
    elseif f2_local3 >= 19 then
        f2_local0[51] = 300
        f2_local0[53] = 350
        f2_local0[49] = 150
        f2_local0[48] = 200
        if f2_arg1:HasSpecialEffectId(TARGET_SELF, 15045) then
        else
            f2_local0[57] = 100
        end
    elseif f2_local3 >= 16 then
        f2_local0[3] = 200
        f2_local0[45] = 50
        f2_local0[46] = 50
        f2_local0[47] = 50
        f2_local0[49] = 450
        f2_local0[48] = 200
    elseif f2_local3 >= 12 then
        f2_local0[3] = 200
        f2_local0[10] = 0
        f2_local0[45] = 0
        f2_local0[46] = 0
        f2_local0[47] = 0
        f2_local0[49] = 300
        f2_local0[48] = 400
        f2_local0[50] = 100
        f2_local0[55] = 5000
        f2_local0[56] = 1500
        if f2_arg1:HasSpecialEffectId(TARGET_SELF, 15045) then
        else
            f2_local0[57] = 300
        end
    elseif f2_local3 >= 7.5 then
        f2_local0[3] = 100
        f2_local0[10] = 150
        f2_local0[45] = 50
        f2_local0[46] = 25
        f2_local0[47] = 75
        f2_local0[49] = 200
        f2_local0[48] = 250
        f2_local0[50] = 150
        f2_local0[55] = 5000
        f2_local0[56] = 1500
        if f2_arg1:HasSpecialEffectId(TARGET_SELF, 15045) then
        else
            f2_local0[57] = 200
        end
    elseif f2_local3 >= 3 then
        f2_local0[3] = 200
        f2_local0[10] = 200
        f2_local0[45] = 75
        f2_local0[46] = 75
        f2_local0[47] = 150
        f2_local0[48] = 200
        f2_local0[50] = 100
        f2_local0[55] = 5000
        f2_local0[56] = 1500
    else
        f2_local0[2] = 200
        f2_local0[45] = 25
        f2_local0[46] = 25
        f2_local0[47] = 50
        f2_local0[48] = 100
        f2_local0[58] = 175
        f2_local0[59] = 175
        f2_local0[50] = 300
        f2_local0[55] = 5000
        f2_local0[56] = 1000
    end
    if f2_arg1:IsFinishTimer(3) == false and not f2_arg1:HasSpecialEffectId(TARGET_SELF, 15047) then
        f2_local0[29] = 0
    end
    if f2_arg1:IsFinishTimer(3) == true and not f2_arg1:HasSpecialEffectId(TARGET_SELF, 5404) and not f2_arg1:HasSpecialEffectId(TARGET_SELF, 5406) and not f2_arg1:HasSpecialEffectId(TARGET_SELF, 15026) and f2_arg1:HasSpecialEffectId(TARGET_SELF, 5021) then
        f2_local0[29] = 50000
    end
    if f2_arg1:HasSpecialEffectId(TARGET_SELF, 15047) and not f2_arg1:HasSpecialEffectId(TARGET_SELF, 5404) and not f2_arg1:HasSpecialEffectId(TARGET_SELF, 5406) and not f2_arg1:HasSpecialEffectId(TARGET_SELF, 15026) and f2_arg1:HasSpecialEffectId(TARGET_SELF, 5021) then
        f2_local0[29] = 50000
    end
    if f2_arg1:IsFinishTimer(3) == false then
        f2_local0[4] = 0
    end
    if f2_arg1:IsFinishTimer(4) == true and not f2_arg1:HasSpecialEffectId(TARGET_SELF, 5404) and not f2_arg1:HasSpecialEffectId(TARGET_SELF, 5406) and not f2_arg1:HasSpecialEffectId(TARGET_SELF, 15047) and f2_arg1:HasSpecialEffectId(TARGET_SELF, 15026) and f2_arg1:HasSpecialEffectId(TARGET_SELF, 5021) then
        f2_local0[4] = 50000
    end
    if f2_arg1:IsFinishTimer(6) == false then
        f2_local0[55] = 1
        f2_local0[56] = 1
    end
    if f2_arg1:IsEventFlag(15005840) == true then
        f2_local0[20] = 0
    end
    if f2_arg1:IsEventFlag(15005841) == true or f2_arg1:IsEventFlag(15005842) == true or f2_arg1:IsEventFlag(15005840) == true then
        f2_local0[21] = 0
        f2_local0[57] = 0
    end
    f2_local0[1] = SetCoolTime(f2_arg1, f2_arg2, 3000, 10, f2_local0[1], 1)
    f2_local0[10] = SetCoolTime(f2_arg1, f2_arg2, 3011, 30, f2_local0[10], 1)
    f2_local0[20] = SetCoolTime(f2_arg1, f2_arg2, 3038, 10, f2_local0[20], 0)
    f2_local0[20] = SetCoolTime(f2_arg1, f2_arg2, 3012, 20, f2_local0[20], 0)
    f2_local0[21] = SetCoolTime(f2_arg1, f2_arg2, 3012, 20, f2_local0[21], 0)
    f2_local0[26] = SetCoolTime(f2_arg1, f2_arg2, 3028, 14, f2_local0[26], 1)
    f2_local0[27] = SetCoolTime(f2_arg1, f2_arg2, 3029, 14, f2_local0[27], 1)
    f2_local0[28] = SetCoolTime(f2_arg1, f2_arg2, 3030, 3, f2_local0[28], 1)
    f2_local0[44] = SetCoolTime(f2_arg1, f2_arg2, 3014, 20, f2_local0[44], 1)
    f2_local0[49] = SetCoolTime(f2_arg1, f2_arg2, 3024, 8, f2_local0[49], 1)
    f2_local0[48] = SetCoolTime(f2_arg1, f2_arg2, 3004, 18, f2_local0[48], 1)
    f2_local0[50] = SetCoolTime(f2_arg1, f2_arg2, 3019, 40, f2_local0[50], 1)
    f2_local0[51] = SetCoolTime(f2_arg1, f2_arg2, 3020, 10, f2_local0[51], 1)
    f2_local0[53] = SetCoolTime(f2_arg1, f2_arg2, 3022, 10, f2_local0[53], 1)
    f2_local0[55] = SetCoolTime(f2_arg1, f2_arg2, 3012, 75, f2_local0[55], 1)
    f2_local0[55] = SetCoolTime(f2_arg1, f2_arg2, 3014, 75, f2_local0[55], 1)
    f2_local0[56] = SetCoolTime(f2_arg1, f2_arg2, 3025, 30, f2_local0[56], 1)
    f2_local0[56] = SetCoolTime(f2_arg1, f2_arg2, 3026, 55, f2_local0[56], 1)
    f2_local0[57] = SetCoolTime(f2_arg1, f2_arg2, 3023, 40, f2_local0[57], 1)
    f2_local0[58] = SetCoolTime(f2_arg1, f2_arg2, 3036, 12, f2_local0[58], 1)
    f2_local0[59] = SetCoolTime(f2_arg1, f2_arg2, 3037, 12, f2_local0[59], 1)
    f2_local0[76] = SetCoolTime(f2_arg1, f2_arg2, 6001, 8, f2_local0[76], 1)
    f2_local0[77] = SetCoolTime(f2_arg1, f2_arg2, 6002, 8, f2_local0[77], 1)
    f2_local0[77] = SetCoolTime(f2_arg1, f2_arg2, 6003, 8, f2_local0[77], 1)
    f2_local0[78] = SetCoolTime(f2_arg1, f2_arg2, 6002, 8, f2_local0[78], 1)
    f2_local0[78] = SetCoolTime(f2_arg1, f2_arg2, 6003, 8, f2_local0[78], 1)
    f2_local0[79] = SetCoolTime(f2_arg1, f2_arg2, 6003, 8, f2_local0[79], 1)
    f2_local0[80] = SetCoolTime(f2_arg1, f2_arg2, 6002, 8, f2_local0[80], 1)
    f2_local0[81] = SetCoolTime(f2_arg1, f2_arg2, 3033, 8, f2_local0[81], 1)
    f2_local0[81] = SetCoolTime(f2_arg1, f2_arg2, 3034, 8, f2_local0[81], 1)
    f2_local1[1] = REGIST_FUNC(f2_arg1, f2_arg2, CrimsonBat_502000_Battle_Act01)
    f2_local1[2] = REGIST_FUNC(f2_arg1, f2_arg2, CrimsonBat_502000_Battle_Act02)
    f2_local1[3] = REGIST_FUNC(f2_arg1, f2_arg2, CrimsonBat_502000_Battle_Act03)
    f2_local1[4] = REGIST_FUNC(f2_arg1, f2_arg2, CrimsonBat_502000_Battle_Act04)
    f2_local1[5] = REGIST_FUNC(f2_arg1, f2_arg2, CrimsonBat_502000_Battle_Act05)
    f2_local1[6] = REGIST_FUNC(f2_arg1, f2_arg2, CrimsonBat_502000_Battle_Act06)
    f2_local1[7] = REGIST_FUNC(f2_arg1, f2_arg2, CrimsonBat_502000_Battle_Act07)
    f2_local1[10] = REGIST_FUNC(f2_arg1, f2_arg2, CrimsonBat_502000_Battle_Act10)
    f2_local1[20] = REGIST_FUNC(f2_arg1, f2_arg2, CrimsonBat_502000_Battle_Act20)
    f2_local1[21] = REGIST_FUNC(f2_arg1, f2_arg2, CrimsonBat_502000_Battle_Act21)
    f2_local1[22] = REGIST_FUNC(f2_arg1, f2_arg2, CrimsonBat_502000_Battle_Act22)
    f2_local1[25] = REGIST_FUNC(f2_arg1, f2_arg2, CrimsonBat_502000_Battle_Act25)
    f2_local1[26] = REGIST_FUNC(f2_arg1, f2_arg2, CrimsonBat_502000_Battle_Act26)
    f2_local1[27] = REGIST_FUNC(f2_arg1, f2_arg2, CrimsonBat_502000_Battle_Act27)
    f2_local1[28] = REGIST_FUNC(f2_arg1, f2_arg2, CrimsonBat_502000_Battle_Act28)
    f2_local1[29] = REGIST_FUNC(f2_arg1, f2_arg2, CrimsonBat_502000_Battle_Act29)
    f2_local1[40] = REGIST_FUNC(f2_arg1, f2_arg2, CrimsonBat_502000_Battle_Act40)
    f2_local1[41] = REGIST_FUNC(f2_arg1, f2_arg2, CrimsonBat_502000_Battle_Act41)
    f2_local1[42] = REGIST_FUNC(f2_arg1, f2_arg2, CrimsonBat_502000_Battle_Act42)
    f2_local1[43] = REGIST_FUNC(f2_arg1, f2_arg2, CrimsonBat_502000_Battle_Act43)
    f2_local1[44] = REGIST_FUNC(f2_arg1, f2_arg2, CrimsonBat_502000_Battle_Act44)
    f2_local1[45] = REGIST_FUNC(f2_arg1, f2_arg2, CrimsonBat_502000_Battle_Act45)
    f2_local1[46] = REGIST_FUNC(f2_arg1, f2_arg2, CrimsonBat_502000_Battle_Act46)
    f2_local1[47] = REGIST_FUNC(f2_arg1, f2_arg2, CrimsonBat_502000_Battle_Act47)
    f2_local1[48] = REGIST_FUNC(f2_arg1, f2_arg2, CrimsonBat_502000_Battle_Act48)
    f2_local1[49] = REGIST_FUNC(f2_arg1, f2_arg2, CrimsonBat_502000_Battle_Act49)
    f2_local1[50] = REGIST_FUNC(f2_arg1, f2_arg2, CrimsonBat_502000_Battle_Act50)
    f2_local1[51] = REGIST_FUNC(f2_arg1, f2_arg2, CrimsonBat_502000_Battle_Act51)
    f2_local1[52] = REGIST_FUNC(f2_arg1, f2_arg2, CrimsonBat_502000_Battle_Act52)
    f2_local1[53] = REGIST_FUNC(f2_arg1, f2_arg2, CrimsonBat_502000_Battle_Act53)
    f2_local1[54] = REGIST_FUNC(f2_arg1, f2_arg2, CrimsonBat_502000_Battle_Act54)
    f2_local1[55] = REGIST_FUNC(f2_arg1, f2_arg2, CrimsonBat_502000_Battle_Act55)
    f2_local1[56] = REGIST_FUNC(f2_arg1, f2_arg2, CrimsonBat_502000_Battle_Act56)
    f2_local1[57] = REGIST_FUNC(f2_arg1, f2_arg2, CrimsonBat_502000_Battle_Act57)
    f2_local1[58] = REGIST_FUNC(f2_arg1, f2_arg2, CrimsonBat_502000_Battle_Act58)
    f2_local1[59] = REGIST_FUNC(f2_arg1, f2_arg2, CrimsonBat_502000_Battle_Act59)
    f2_local1[70] = REGIST_FUNC(f2_arg1, f2_arg2, CrimsonBat_502000_Battle_Act70)
    f2_local1[71] = REGIST_FUNC(f2_arg1, f2_arg2, CrimsonBat_502000_Battle_Act71)
    f2_local1[72] = REGIST_FUNC(f2_arg1, f2_arg2, CrimsonBat_502000_Battle_Act72)
    f2_local1[73] = REGIST_FUNC(f2_arg1, f2_arg2, CrimsonBat_502000_Battle_Act73)
    f2_local1[74] = REGIST_FUNC(f2_arg1, f2_arg2, CrimsonBat_502000_Battle_Act74)
    f2_local1[76] = REGIST_FUNC(f2_arg1, f2_arg2, CrimsonBat_502000_Battle_Act76)
    f2_local1[77] = REGIST_FUNC(f2_arg1, f2_arg2, CrimsonBat_502000_Battle_Act77)
    f2_local1[78] = REGIST_FUNC(f2_arg1, f2_arg2, CrimsonBat_502000_Battle_Act78)
    f2_local1[79] = REGIST_FUNC(f2_arg1, f2_arg2, CrimsonBat_502000_Battle_Act79)
    f2_local1[80] = REGIST_FUNC(f2_arg1, f2_arg2, CrimsonBat_502000_Battle_Act80)
    f2_local1[81] = REGIST_FUNC(f2_arg1, f2_arg2, CrimsonBat_502000_Battle_Act81)
    f2_local1[82] = REGIST_FUNC(f2_arg1, f2_arg2, CrimsonBat_502000_Battle_Act82)
    f2_local1[83] = REGIST_FUNC(f2_arg1, f2_arg2, CrimsonBat_502000_Battle_Act83)
    f2_local1[90] = REGIST_FUNC(f2_arg1, f2_arg2, CrimsonBat_502000_Battle_Act90)
    f2_local1[91] = REGIST_FUNC(f2_arg1, f2_arg2, CrimsonBat_502000_Battle_Act91)
    f2_local1[92] = REGIST_FUNC(f2_arg1, f2_arg2, CrimsonBat_502000_Battle_Act92)
    f2_local1[93] = REGIST_FUNC(f2_arg1, f2_arg2, CrimsonBat_502000_Battle_Act93)
    f2_local1[94] = REGIST_FUNC(f2_arg1, f2_arg2, CrimsonBat_502000_Battle_Act94)
    f2_local1[98] = REGIST_FUNC(f2_arg1, f2_arg2, CrimsonBat_502000_Battle_Act98)
    f2_local1[99] = REGIST_FUNC(f2_arg1, f2_arg2, CrimsonBat_502000_Battle_Act99)
    local f2_local10 = REGIST_FUNC(f2_arg1, f2_arg2, CrimsonBat_502000_Battle_ActAfter_AdjustSpace)
    Common_Battle_Activate(f2_arg1, f2_arg2, f2_local0, f2_local1, f2_local10, f2_local2)
    
end

function CrimsonBat_502000_Battle_Act01(f3_arg0, f3_arg1, f3_arg2)
    local f3_local0 = 8 - f3_arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local1 = f3_local0
    local f3_local2 = f3_local0 + 0
    local f3_local3 = 100
    local f3_local4 = 0
    local f3_local5 = 2
    local f3_local6 = 5.5
    if f3_arg0:HasSpecialEffectId(TARGET_SELF, 5404) or f3_arg0:HasSpecialEffectId(TARGET_SELF, 15026) then
    else
        f3_local2 = 999
        f3_local3 = 0
    end
    Approach_Act_Flex(f3_arg0, f3_arg1, f3_local0, f3_local1, f3_local2, f3_local3, f3_local4, f3_local5, f3_local6)
    local f3_local7 = 999
    local f3_local8 = 0
    local f3_local9 = 0
    local f3_local10 = f3_arg0:GetRandam_Int(1, 100)
    f3_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, 10 - f3_arg0:GetMapHitRadius(TARGET_SELF), f3_local8, f3_local9)
    if f3_arg0:HasSpecialEffectId(TARGET_SELF, 5404) or f3_arg0:HasSpecialEffectId(TARGET_SELF, 15026) then
        f3_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, 9.5 - f3_arg0:GetMapHitRadius(TARGET_SELF))
        f3_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, f3_local7)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function CrimsonBat_502000_Battle_Act02(f4_arg0, f4_arg1, f4_arg2)
    local f4_local0 = 3 - f4_arg0:GetMapHitRadius(TARGET_SELF)
    local f4_local1 = f4_local0
    local f4_local2 = f4_local0 + 0
    local f4_local3 = 100
    local f4_local4 = 0
    local f4_local5 = 2
    local f4_local6 = 5.5
    if f4_arg0:HasSpecialEffectId(TARGET_SELF, 5404) then
        f4_arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5033)
    end
    local f4_local7 = 999
    local f4_local8 = 0
    local f4_local9 = 0
    local f4_local10 = f4_arg0:GetRandam_Int(1, 100)
    local f4_local11 = f4_arg0:GetRandam_Int(1, 100)
    local f4_local12 = f4_arg0:GetRandam_Int(1, 100)
    f4_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3005, TARGET_ENE_0, 8.5, f4_local8, f4_local9, 0, 0)
    if f4_arg0:HasSpecialEffectId(TARGET_SELF, 5404) or f4_arg0:HasSpecialEffectId(TARGET_SELF, 15026) then
        if f4_local10 <= 30 then
            f4_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3016, TARGET_ENE_0, 9.5 - f4_arg0:GetMapHitRadius(TARGET_SELF), f4_local8, f4_local9, 0, 0)
            f4_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, 999, f4_local8, f4_local9, 0, 0)
        elseif f4_local10 <= 80 then
            f4_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3018, TARGET_ENE_0, 999, f4_local8, f4_local9, 0, 0)
        end
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function CrimsonBat_502000_Battle_Act03(f5_arg0, f5_arg1, f5_arg2)
    local f5_local0 = 14 - f5_arg0:GetMapHitRadius(TARGET_SELF)
    local f5_local1 = f5_local0
    local f5_local2 = f5_local0 + 0
    local f5_local3 = 100
    local f5_local4 = 0
    local f5_local5 = 2
    local f5_local6 = 5.5
    if f5_arg0:HasSpecialEffectId(TARGET_SELF, 5404) then
        f5_arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5033)
    end
    if f5_arg0:HasSpecialEffectId(TARGET_SELF, 5404) or f5_arg0:HasSpecialEffectId(TARGET_SELF, 15026) then
    else
        f5_local2 = 999
        f5_local3 = 0
    end
    Approach_Act_Flex(f5_arg0, f5_arg1, f5_local0, f5_local1, f5_local2, f5_local3, f5_local4, f5_local5, f5_local6)
    local f5_local7 = 999
    local f5_local8 = 0
    local f5_local9 = 0
    local f5_local10 = f5_arg0:GetRandam_Int(1, 100)
    local f5_local11 = f5_arg0:GetRandam_Int(1, 100)
    local f5_local12 = f5_arg0:GetRandam_Int(1, 100)
    f5_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3006, TARGET_ENE_0, 8.5, f5_local8, f5_local9, 0, 0)
    if f5_arg0:HasSpecialEffectId(TARGET_SELF, 5404) or f5_arg0:HasSpecialEffectId(TARGET_SELF, 15026) then
        if f5_local10 <= 30 then
            f5_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3016, TARGET_ENE_0, 10 - f5_arg0:GetMapHitRadius(TARGET_SELF), f5_local8, f5_local9, 0, 0)
            f5_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, 999, f5_local8, f5_local9, 0, 0)
        elseif f5_local10 <= 80 then
            f5_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3018, TARGET_ENE_0, 999, f5_local8, f5_local9, 0, 0)
        end
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function CrimsonBat_502000_Battle_Act04(f6_arg0, f6_arg1, f6_arg2)
    local f6_local0 = 8
    local f6_local1 = 8
    local f6_local2 = 8
    local f6_local3 = 100
    local f6_local4 = 0
    local f6_local5 = 4
    local f6_local6 = 8
    f6_arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 15025)
    Approach_Act_Flex(f6_arg0, f6_arg1, f6_local0, f6_local1, f6_local2, f6_local3, f6_local4, f6_local5, f6_local6)
    local f6_local7 = 999
    local f6_local8 = 1.5
    local f6_local9 = 90
    local f6_local10 = f6_arg0:GetRandam_Int(1, 100)
    local f6_local11 = f6_arg0:GetRandam_Int(1, 100)
    local f6_local12 = f6_arg0:GetRandam_Int(1, 100)
    f6_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3031, TARGET_ENE_0, f6_local7, f6_local8, f6_local9, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function CrimsonBat_502000_Battle_Act05(f7_arg0, f7_arg1, f7_arg2)
    local f7_local0 = 10.2 - f7_arg0:GetMapHitRadius(TARGET_SELF)
    local f7_local1 = 10.2 - f7_arg0:GetMapHitRadius(TARGET_SELF)
    local f7_local2 = 999
    local f7_local3 = 0
    local f7_local4 = 0
    local f7_local5 = 4
    local f7_local6 = 8
    Approach_Act_Flex(f7_arg0, f7_arg1, f7_local0, f7_local1, f7_local2, f7_local3, f7_local4, f7_local5, f7_local6)
    local f7_local7 = 999
    local f7_local8 = 0
    local f7_local9 = 0
    local f7_local10 = f7_arg0:GetRandam_Int(1, 100)
    local f7_local11 = f7_arg0:GetRandam_Int(1, 100)
    local f7_local12 = f7_arg0:GetRandam_Int(1, 100)
    f7_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3016, TARGET_ENE_0, f7_local7, f7_local8, f7_local9, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function CrimsonBat_502000_Battle_Act06(f8_arg0, f8_arg1, f8_arg2)
    local f8_local0 = 11.5 - f8_arg0:GetMapHitRadius(TARGET_SELF)
    local f8_local1 = 11.5 - f8_arg0:GetMapHitRadius(TARGET_SELF)
    local f8_local2 = 11.5 - f8_arg0:GetMapHitRadius(TARGET_SELF)
    local f8_local3 = 100
    local f8_local4 = 0
    local f8_local5 = 4
    local f8_local6 = 8
    if f8_arg0:HasSpecialEffectId(TARGET_SELF, 5404) or f8_arg0:HasSpecialEffectId(TARGET_SELF, 15026) then
    else
        f8_local2 = 999
        f8_local3 = 0
    end
    Approach_Act_Flex(f8_arg0, f8_arg1, f8_local0, f8_local1, f8_local2, f8_local3, f8_local4, f8_local5, f8_local6)
    local f8_local7 = 999
    local f8_local8 = 0
    local f8_local9 = 0
    local f8_local10 = f8_arg0:GetRandam_Int(1, 100)
    local f8_local11 = f8_arg0:GetRandam_Int(1, 100)
    local f8_local12 = f8_arg0:GetRandam_Int(1, 100)
    f8_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3017, TARGET_ENE_0, f8_local7, f8_local8, f8_local9, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function CrimsonBat_502000_Battle_Act07(f9_arg0, f9_arg1, f9_arg2)
    local f9_local0 = 10 - f9_arg0:GetMapHitRadius(TARGET_SELF)
    local f9_local1 = 10 - f9_arg0:GetMapHitRadius(TARGET_SELF)
    local f9_local2 = 999
    local f9_local3 = 0
    local f9_local4 = 0
    local f9_local5 = 4
    local f9_local6 = 8
    Approach_Act_Flex(f9_arg0, f9_arg1, f9_local0, f9_local1, f9_local2, f9_local3, f9_local4, f9_local5, f9_local6)
    local f9_local7 = 999
    local f9_local8 = 0
    local f9_local9 = 0
    local f9_local10 = f9_arg0:GetRandam_Int(1, 100)
    local f9_local11 = f9_arg0:GetRandam_Int(1, 100)
    local f9_local12 = f9_arg0:GetRandam_Int(1, 100)
    f9_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3018, TARGET_ENE_0, f9_local7, f9_local8, f9_local9, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function CrimsonBat_502000_Battle_Act10(f10_arg0, f10_arg1, f10_arg2)
    local f10_local0 = 10
    local f10_local1 = 10
    local f10_local2 = 10
    local f10_local3 = 100
    local f10_local4 = 0
    local f10_local5 = 5
    local f10_local6 = 5
    local f10_local7 = f10_arg0:GetRandam_Int(1, 2)
    local f10_local8 = 6002
    Approach_Act_Flex(f10_arg0, f10_arg1, f10_local0, f10_local1, f10_local2, f10_local3, f10_local4, f10_local5, f10_local6)
    if f10_local7 == 1 then
        f10_local8 = 6003
    end
    if SpaceCheck(f10_arg0, f10_arg1, 180, 13) == false then
        f10_arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, f10_local8, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
    end
    local f10_local9 = 3011
    local f10_local10 = 999
    local f10_local11 = 0
    local f10_local12 = 0
    local f10_local13 = f10_arg0:GetRandam_Int(1, 100)
    f10_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f10_local9, TARGET_ENE_0, f10_local10, f10_local11, f10_local12, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function CrimsonBat_502000_Battle_Act20(f11_arg0, f11_arg1, f11_arg2)
    local f11_local0 = 3012
    local f11_local1 = 999
    local f11_local2 = 0
    local f11_local3 = 0
    local f11_local4 = f11_arg0:GetRandam_Int(1, 100)
    f11_arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f11_local0, TARGET_ENE_0, f11_local1, f11_local2, f11_local3, 0, 0)
    f11_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3038, TARGET_ENE_0, f11_local1, f11_local2, f11_local3, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function CrimsonBat_502000_Battle_Act21(f12_arg0, f12_arg1, f12_arg2)
    local f12_local0 = 3013
    local f12_local1 = 999
    local f12_local2 = 0
    local f12_local3 = 0
    local f12_local4 = f12_arg0:GetRandam_Int(1, 100)
    f12_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f12_local0, TARGET_ENE_0, f12_local1, f12_local2, f12_local3, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function CrimsonBat_502000_Battle_Act22(f13_arg0, f13_arg1, f13_arg2)
    local f13_local0 = 3038
    local f13_local1 = 999
    local f13_local2 = 0
    local f13_local3 = 0
    local f13_local4 = f13_arg0:GetRandam_Int(1, 100)
    f13_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f13_local0, TARGET_ENE_0, f13_local1, f13_local2, f13_local3, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function CrimsonBat_502000_Battle_Act26(f14_arg0, f14_arg1, f14_arg2)
    local f14_local0 = 17.5
    local f14_local1 = 19
    local f14_local2 = 999
    local f14_local3 = 0
    local f14_local4 = 0
    local f14_local5 = 2
    local f14_local6 = 2
    Approach_Act_Flex(f14_arg0, f14_arg1, f14_local0, f14_local1, f14_local2, f14_local3, f14_local4, f14_local5, f14_local6)
    local f14_local7 = 3029
    local f14_local8 = 999
    local f14_local9 = 0
    local f14_local10 = 0
    local f14_local11 = f14_arg0:GetRandam_Int(1, 100)
    f14_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f14_local7, TARGET_ENE_0, f14_local8, f14_local9, f14_local10, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function CrimsonBat_502000_Battle_Act27(f15_arg0, f15_arg1, f15_arg2)
    local f15_local0 = f15_arg0:GetDist(TARGET_ENE_0)
    local f15_local1 = 7.5
    local f15_local2 = f15_local1
    local f15_local3 = 999
    local f15_local4 = 0
    local f15_local5 = 0
    local f15_local6 = 2
    local f15_local7 = 2
    if not f15_arg0:HasSpecialEffectId(TARGET_SELF, 5404) then
        f15_local3 = 999
        f15_local4 = 0
    end
    Approach_Act_Flex(f15_arg0, f15_arg1, f15_local1, f15_local2, f15_local3, f15_local4, f15_local5, f15_local6, f15_local7)
    local f15_local8 = 3028
    local f15_local9 = 999
    local f15_local10 = 0
    local f15_local11 = 0
    local f15_local12 = f15_arg0:GetRandam_Int(1, 100)
    f15_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f15_local8, TARGET_ENE_0, f15_local9, f15_local10, f15_local11, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function CrimsonBat_502000_Battle_Act28(f16_arg0, f16_arg1, f16_arg2)
    local f16_local0 = 32
    local f16_local1 = 0
    local f16_local2 = 999
    local f16_local3 = 0
    local f16_local4 = 0
    local f16_local5 = 2
    local f16_local6 = 2
    if not f16_arg0:HasSpecialEffectId(TARGET_SELF, 5404) then
        f16_local2 = 999
        f16_local3 = 0
    end
    Approach_Act_Flex(f16_arg0, f16_arg1, f16_local0, f16_local1, f16_local2, f16_local3, f16_local4, f16_local5, f16_local6)
    local f16_local7 = 3030
    local f16_local8 = 999
    local f16_local9 = 0
    local f16_local10 = 0
    local f16_local11 = f16_arg0:GetRandam_Int(1, 100)
    f16_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f16_local7, TARGET_ENE_0, f16_local8, f16_local9, f16_local10, 0, 0)
    local f16_local12 = 10
    local f16_local13 = true
    local f16_local14 = -1
    local f16_local15 = 2
    f16_arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, f16_local15, TARGET_ENE_0, f16_local12, TARGET_SELF, f16_local13, f16_local14):SetLifeEndSuccess(true)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function CrimsonBat_502000_Battle_Act29(f17_arg0, f17_arg1, f17_arg2)
    local f17_local0 = 30
    local f17_local1 = 30
    local f17_local2 = 999
    local f17_local3 = 0
    local f17_local4 = 0
    local f17_local5 = 2
    local f17_local6 = 5.5
    f17_arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 15026)
    if not f17_arg0:HasSpecialEffectId(TARGET_SELF, 5404) then
        f17_local2 = 999
        f17_local3 = 0
    end
    Approach_Act_Flex(f17_arg0, f17_arg1, f17_local0, f17_local1, f17_local2, f17_local3, f17_local4, f17_local5, f17_local6)
    local f17_local7 = 3035
    local f17_local8 = 999
    local f17_local9 = 0
    local f17_local10 = 0
    local f17_local11 = f17_arg0:GetRandam_Int(1, 100)
    f17_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f17_local7, TARGET_ENE_0, f17_local8, f17_local9, f17_local10, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function CrimsonBat_502000_Battle_Act29(f18_arg0, f18_arg1, f18_arg2)
    local f18_local0 = 30
    local f18_local1 = 30
    local f18_local2 = 999
    local f18_local3 = 0
    local f18_local4 = 0
    local f18_local5 = 2
    local f18_local6 = 5.5
    f18_arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 15026)
    if not f18_arg0:HasSpecialEffectId(TARGET_SELF, 5404) then
        f18_local2 = 999
        f18_local3 = 0
    end
    Approach_Act_Flex(f18_arg0, f18_arg1, f18_local0, f18_local1, f18_local2, f18_local3, f18_local4, f18_local5, f18_local6)
    local f18_local7 = 3035
    local f18_local8 = 999
    local f18_local9 = 0
    local f18_local10 = 0
    local f18_local11 = f18_arg0:GetRandam_Int(1, 100)
    f18_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f18_local7, TARGET_ENE_0, f18_local8, f18_local9, f18_local10, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function CrimsonBat_502000_Battle_Act40(f19_arg0, f19_arg1, f19_arg2)
    local f19_local0 = 8 - f19_arg0:GetMapHitRadius(TARGET_SELF)
    local f19_local1 = 8 - f19_arg0:GetMapHitRadius(TARGET_SELF) + 0
    local f19_local2 = 8 - f19_arg0:GetMapHitRadius(TARGET_SELF) + 0
    local f19_local3 = 90
    local f19_local4 = 0
    local f19_local5 = 4
    if f19_arg0:HasSpecialEffectId(TARGET_SELF, 5404) or f19_arg0:HasSpecialEffectId(TARGET_SELF, 15026) then
    else
        f19_local2 = 999
        f19_local3 = 0
    end
    Approach_Act_Flex(f19_arg0, f19_arg1, f19_local0, f19_local1, f19_local2, f19_local3, f19_local4, f19_local5, RunLife)
    local f19_local6 = 999
    local f19_local7 = 0
    local f19_local8 = 0
    local f19_local9 = f19_arg0:GetRandam_Int(1, 100)
    if f19_local9 <= 10 then
        f19_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, f19_local6, f19_local7, f19_local8, 0, 0)
    elseif f19_local9 <= 40 then
        f19_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, 10 - f19_arg0:GetMapHitRadius(TARGET_SELF), f19_local7, f19_local8, 0, 0)
        f19_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3001, TARGET_ENE_0, f19_local6, 0, 0)
    else
        f19_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, 10 - f19_arg0:GetMapHitRadius(TARGET_SELF), f19_local7, f19_local8, 0, 0)
        f19_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, 9.5 - f19_arg0:GetMapHitRadius(TARGET_SELF), f19_local7, f19_local8, 0, 0)
        f19_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, f19_local6, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function CrimsonBat_502000_Battle_Act41(f20_arg0, f20_arg1, f20_arg2)
    local f20_local0 = 999
    local f20_local1 = 0
    local f20_local2 = 0
    local f20_local3 = f20_arg0:GetRandam_Int(1, 100)
    local f20_local4 = f20_arg0:GetRandam_Int(1, 100)
    local f20_local5 = f20_arg0:GetRandam_Int(1, 100)
    f20_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3003, TARGET_ENE_0, 10.2 - f20_arg0:GetMapHitRadius(TARGET_SELF), f20_local1, f20_local2, 0, 0)
    if f20_arg0:HasSpecialEffectId(TARGET_SELF, 5404) or f20_arg0:HasSpecialEffectId(TARGET_SELF, 15026) then
        f20_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3016, TARGET_ENE_0, 10 - f20_arg0:GetMapHitRadius(TARGET_SELF), f20_local1, f20_local2, 0, 0)
        if f20_local4 <= 40 then
            f20_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3000, TARGET_ENE_0, 10 - f20_arg0:GetMapHitRadius(TARGET_SELF), f20_local1, f20_local2, 0, 0)
            if f20_local5 <= 35 then
                f20_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3016, TARGET_ENE_0, 10 - f20_arg0:GetMapHitRadius(TARGET_SELF), f20_local1, f20_local2, 0, 0)
                f20_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3017, TARGET_ENE_0, 10 - f20_arg0:GetMapHitRadius(TARGET_SELF), f20_local1, f20_local2, 0, 0)
            elseif f20_local5 <= 70 then
                f20_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3017, TARGET_ENE_0, 10 - f20_arg0:GetMapHitRadius(TARGET_SELF), f20_local1, f20_local2, 0, 0)
            end
        elseif f20_local4 <= 80 then
            f20_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3017, TARGET_ENE_0, 10 - f20_arg0:GetMapHitRadius(TARGET_SELF), f20_local1, f20_local2, 0, 0)
        end
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function CrimsonBat_502000_Battle_Act42(f21_arg0, f21_arg1, f21_arg2)
    local f21_local0 = 999
    local f21_local1 = 0
    local f21_local2 = 0
    local f21_local3 = f21_arg0:GetRandam_Int(1, 100)
    local f21_local4 = f21_arg0:GetRandam_Int(1, 100)
    local f21_local5 = f21_arg0:GetRandam_Int(1, 100)
    f21_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3007, TARGET_ENE_0, 10.2 - f21_arg0:GetMapHitRadius(TARGET_SELF), f21_local1, f21_local2, 0, 0)
    if f21_arg0:HasSpecialEffectId(TARGET_SELF, 5404) or f21_arg0:HasSpecialEffectId(TARGET_SELF, 15026) then
        f21_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3000, TARGET_ENE_0, 10 - f21_arg0:GetMapHitRadius(TARGET_SELF), f21_local1, f21_local2, 0, 0)
        if f21_local4 <= 30 then
            f21_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3016, TARGET_ENE_0, 10 - f21_arg0:GetMapHitRadius(TARGET_SELF), f21_local1, f21_local2, 0, 0)
            if f21_local5 <= 20 then
                f21_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3000, TARGET_ENE_0, 10 - f21_arg0:GetMapHitRadius(TARGET_SELF), f21_local1, f21_local2, 0, 0)
                f21_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3017, TARGET_ENE_0, 10 - f21_arg0:GetMapHitRadius(TARGET_SELF), f21_local1, f21_local2, 0, 0)
            elseif f21_local5 <= 80 then
                f21_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3017, TARGET_ENE_0, 10 - f21_arg0:GetMapHitRadius(TARGET_SELF), f21_local1, f21_local2, 0, 0)
            end
        elseif f21_local4 <= 80 then
            f21_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3017, TARGET_ENE_0, 10 - f21_arg0:GetMapHitRadius(TARGET_SELF), f21_local1, f21_local2, 0, 0)
        end
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function CrimsonBat_502000_Battle_Act43(f22_arg0, f22_arg1, f22_arg2)
    local f22_local0 = 999
    local f22_local1 = 0
    local f22_local2 = 0
    local f22_local3 = f22_arg0:GetRandam_Int(1, 100)
    local f22_local4 = f22_arg0:GetRandam_Int(1, 100)
    local f22_local5 = f22_arg0:GetRandam_Int(1, 100)
    f22_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3009, TARGET_ENE_0, 10.2 - f22_arg0:GetMapHitRadius(TARGET_SELF), f22_local1, f22_local2, 0, 0)
    if f22_arg0:HasSpecialEffectId(TARGET_SELF, 5404) or f22_arg0:HasSpecialEffectId(TARGET_SELF, 15026) then
        f22_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3016, TARGET_ENE_0, 10 - f22_arg0:GetMapHitRadius(TARGET_SELF), f22_local1, f22_local2, 0, 0)
        if f22_local4 <= 30 then
            f22_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3000, TARGET_ENE_0, 10 - f22_arg0:GetMapHitRadius(TARGET_SELF), f22_local1, f22_local2, 0, 0)
            if f22_local5 <= 20 then
                f22_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3016, TARGET_ENE_0, 10 - f22_arg0:GetMapHitRadius(TARGET_SELF), f22_local1, f22_local2, 0, 0)
                f22_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3017, TARGET_ENE_0, 10 - f22_arg0:GetMapHitRadius(TARGET_SELF), f22_local1, f22_local2, 0, 0)
            elseif f22_local5 <= 80 then
                f22_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3017, TARGET_ENE_0, 10 - f22_arg0:GetMapHitRadius(TARGET_SELF), f22_local1, f22_local2, 0, 0)
            end
        elseif f22_local4 <= 80 then
            f22_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3017, TARGET_ENE_0, 10 - f22_arg0:GetMapHitRadius(TARGET_SELF), f22_local1, f22_local2, 0, 0)
        end
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function CrimsonBat_502000_Battle_Act44(f23_arg0, f23_arg1, f23_arg2)
    local f23_local0 = 999
    local f23_local1 = 0
    local f23_local2 = 0
    local f23_local3 = f23_arg0:GetRandam_Int(1, 100)
    f23_arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5031)
    f23_arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3014, TARGET_ENE_0, f23_local0, f23_local1, f23_local2, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function CrimsonBat_502000_Battle_Act45(f24_arg0, f24_arg1, f24_arg2)
    local f24_local0 = 8 - f24_arg0:GetMapHitRadius(TARGET_SELF)
    local f24_local1 = 8 - f24_arg0:GetMapHitRadius(TARGET_SELF) + 0
    local f24_local2 = 8 - f24_arg0:GetMapHitRadius(TARGET_SELF) + 0
    local f24_local3 = 90
    local f24_local4 = 0
    local f24_local5 = 4
    local f24_local6 = 8
    if f24_arg0:HasSpecialEffectId(TARGET_SELF, 5404) then
        f24_arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    end
    if f24_arg0:HasSpecialEffectId(TARGET_SELF, 5404) or f24_arg0:HasSpecialEffectId(TARGET_SELF, 15026) then
    else
        f24_local2 = 999
        f24_local3 = 0
    end
    Approach_Act_Flex(f24_arg0, f24_arg1, f24_local0, f24_local1, f24_local2, f24_local3, f24_local4, f24_local5, f24_local6)
    local f24_local7 = 999
    local f24_local8 = 0
    local f24_local9 = 0
    local f24_local10 = f24_arg0:GetRandam_Int(1, 100)
    local f24_local11 = f24_arg0:GetRandam_Int(1, 100)
    local f24_local12 = f24_arg0:GetRandam_Int(1, 100)
    f24_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, f24_local7, f24_local8, f24_local9, 0, 0)
    if f24_local10 <= 60 then
        f24_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, 10 - f24_arg0:GetMapHitRadius(TARGET_SELF) + 1, f24_local8, f24_local9, 0, 0)
        if f24_local11 <= 50 then
            f24_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3000, TARGET_ENE_0, 10 - f24_arg0:GetMapHitRadius(TARGET_SELF) + 1, f24_local8, f24_local9, 0, 0)
            f24_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3017, TARGET_ENE_0, 10 - f24_arg0:GetMapHitRadius(TARGET_SELF) + 1, f24_local8, f24_local9, 0, 0)
        elseif f24_local11 <= 80 then
            f24_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, 10 - f24_arg0:GetMapHitRadius(TARGET_SELF) + 1, f24_local8, f24_local9, 0, 0)
        end
    elseif f24_local10 <= 80 then
        f24_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3017, TARGET_ENE_0, 10 - f24_arg0:GetMapHitRadius(TARGET_SELF) + 1, f24_local8, f24_local9, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function CrimsonBat_502000_Battle_Act46(f25_arg0, f25_arg1, f25_arg2)
    local f25_local0 = 8 - f25_arg0:GetMapHitRadius(TARGET_SELF)
    local f25_local1 = 8 - f25_arg0:GetMapHitRadius(TARGET_SELF) + 0
    local f25_local2 = 8 - f25_arg0:GetMapHitRadius(TARGET_SELF) + 0
    local f25_local3 = 90
    local f25_local4 = 0
    local f25_local5 = 4
    local f25_local6 = 8
    if f25_arg0:HasSpecialEffectId(TARGET_SELF, 5404) then
        f25_arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    end
    if f25_arg0:HasSpecialEffectId(TARGET_SELF, 5404) or f25_arg0:HasSpecialEffectId(TARGET_SELF, 15026) then
    else
        f25_local2 = 999
        f25_local3 = 0
    end
    Approach_Act_Flex(f25_arg0, f25_arg1, f25_local0, f25_local1, f25_local2, f25_local3, f25_local4, f25_local5, f25_local6)
    local f25_local7 = 999
    local f25_local8 = 0
    local f25_local9 = 0
    local f25_local10 = f25_arg0:GetRandam_Int(1, 100)
    local f25_local11 = f25_arg0:GetRandam_Int(1, 100)
    local f25_local12 = f25_arg0:GetRandam_Int(1, 100)
    f25_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3016, TARGET_ENE_0, f25_local7, f25_local8, f25_local9, 0, 0)
    if f25_local10 <= 30 then
        f25_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3018, TARGET_ENE_0, 999, f25_local8, f25_local9, 0, 0)
    elseif f25_local10 <= 90 then
        f25_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3018, TARGET_ENE_0, 10 - f25_arg0:GetMapHitRadius(TARGET_SELF) + 1, f25_local8, f25_local9, 0, 0)
        f25_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3017, TARGET_ENE_0, 10 - f25_arg0:GetMapHitRadius(TARGET_SELF) + 1, f25_local8, f25_local9, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function CrimsonBat_502000_Battle_Act47(f26_arg0, f26_arg1, f26_arg2)
    local f26_local0 = 10 - f26_arg0:GetMapHitRadius(TARGET_SELF)
    local f26_local1 = 10 - f26_arg0:GetMapHitRadius(TARGET_SELF) + 0
    local f26_local2 = 10 - f26_arg0:GetMapHitRadius(TARGET_SELF) + 0
    local f26_local3 = 90
    local f26_local4 = 0
    local f26_local5 = 4
    local f26_local6 = 8
    if f26_arg0:HasSpecialEffectId(TARGET_SELF, 5404) then
        f26_arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    end
    if f26_arg0:HasSpecialEffectId(TARGET_SELF, 5404) or f26_arg0:HasSpecialEffectId(TARGET_SELF, 15026) then
    else
        f26_local2 = 999
        f26_local3 = 0
    end
    Approach_Act_Flex(f26_arg0, f26_arg1, f26_local0, f26_local1, f26_local2, f26_local3, f26_local4, f26_local5, f26_local6)
    local f26_local7 = 999
    local f26_local8 = 0
    local f26_local9 = 0
    local f26_local10 = f26_arg0:GetRandam_Int(1, 100)
    local f26_local11 = f26_arg0:GetRandam_Int(1, 100)
    local f26_local12 = f26_arg0:GetRandam_Int(1, 100)
    f26_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3018, TARGET_ENE_0, 10.2 - f26_arg0:GetMapHitRadius(TARGET_SELF), f26_local8, f26_local9, 0, 0)
    if f26_local11 <= 60 then
        f26_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3016, TARGET_ENE_0, 11.5 - f26_arg0:GetMapHitRadius(TARGET_SELF) + 2, f26_local8, f26_local9, 0, 0)
        f26_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3017, TARGET_ENE_0, 999, f26_local8, f26_local9, 0, 0)
    elseif f26_local11 <= 90 then
        f26_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3016, TARGET_ENE_0, 999, f26_local8, f26_local9, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function CrimsonBat_502000_Battle_Act48(f27_arg0, f27_arg1, f27_arg2)
    local f27_local0 = 25
    local f27_local1 = 25
    local f27_local2 = 25
    local f27_local3 = 100
    local f27_local4 = 0
    local f27_local5 = 4
    local f27_local6 = 8
    f27_arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5032)
    Approach_Act_Flex(f27_arg0, f27_arg1, f27_local0, f27_local1, f27_local2, f27_local3, f27_local4, f27_local5, f27_local6)
    local f27_local7 = 1.5
    local f27_local8 = 90
    local f27_local9 = f27_arg0:GetRandam_Int(1, 100)
    local f27_local10 = f27_arg0:GetDist(TARGET_ENE_0)
    f27_arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3004, TARGET_ENE_0, 999, f27_local7, f27_local8)
    if f27_local10 >= 15 then
        f27_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3008, TARGET_ENE_0, 999, 0, 0, 0, 0)
        f27_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3008, TARGET_ENE_0, 999, 0, 0, 0, 0)
    elseif f27_local10 >= 5 then
        f27_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3008, TARGET_ENE_0, 999, 0, 0, 0, 0)
    end
    f27_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3010, TARGET_ENE_0, 999)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function CrimsonBat_502000_Battle_Act49(f28_arg0, f28_arg1, f28_arg2)
    local f28_local0 = 23
    local f28_local1 = 23
    local f28_local2 = 23
    local f28_local3 = 90
    local f28_local4 = 0
    local f28_local5 = 4
    local f28_local6 = 8
    f28_arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    Approach_Act_Flex(f28_arg0, f28_arg1, f28_local0, f28_local1, f28_local2, f28_local3, f28_local4, f28_local5, f28_local6)
    local f28_local7 = 999
    local f28_local8 = 0
    local f28_local9 = 0
    local f28_local10 = f28_arg0:GetRandam_Int(1, 100)
    local f28_local11 = f28_arg0:GetRandam_Int(1, 100)
    local f28_local12 = f28_arg0:GetRandam_Int(1, 100)
    f28_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3024, TARGET_ENE_0, 10, f28_local8, f28_local9, 0, 0)
    
end

function CrimsonBat_502000_Battle_Act50(f29_arg0, f29_arg1, f29_arg2)
    local f29_local0 = 0
    local f29_local1 = 0
    local f29_local2 = f29_arg0:GetRandam_Int(1, 100)
    f29_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3019, TARGET_ENE_0, SuccessDist, f29_local0, f29_local1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function CrimsonBat_502000_Battle_Act51(f30_arg0, f30_arg1, f30_arg2)
    local f30_local0 = 45
    local f30_local1 = f30_local0
    local f30_local2 = f30_local0
    local f30_local3 = 100
    local f30_local4 = 0
    local f30_local5 = 4
    local f30_local6 = 8
    Approach_Act_Flex(f30_arg0, f30_arg1, f30_local0, f30_local1, f30_local2, f30_local3, f30_local4, f30_local5, f30_local6)
    local f30_local7 = 1.5
    local f30_local8 = 90
    local f30_local9 = f30_arg0:GetRandam_Int(1, 100)
    f30_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3020, TARGET_ENE_0, 999, f30_local7, f30_local8, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function CrimsonBat_502000_Battle_Act53(f31_arg0, f31_arg1, f31_arg2)
    local f31_local0 = 30
    local f31_local1 = f31_local0
    local f31_local2 = f31_local0
    local f31_local3 = 100
    local f31_local4 = 0
    local f31_local5 = 4
    local f31_local6 = 8
    Approach_Act_Flex(f31_arg0, f31_arg1, f31_local0, f31_local1, f31_local2, f31_local3, f31_local4, f31_local5, f31_local6)
    local f31_local7 = 1.5
    local f31_local8 = 90
    local f31_local9 = f31_arg0:GetRandam_Int(1, 100)
    f31_arg0:SetNumber(6, 1)
    f31_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3022, TARGET_ENE_0, 15, f31_local7, f31_local8)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function CrimsonBat_502000_Battle_Act55(f32_arg0, f32_arg1, f32_arg2)
    local f32_local0 = 1.5
    local f32_local1 = 90
    local f32_local2 = f32_arg0:GetRandam_Int(1, 100)
    local f32_local3 = f32_arg0:GetRandam_Int(1, 2)
    local f32_local4 = 3033
    if f32_local3 == 1 then
        f32_local4 = 3033
    else
        f32_local4 = 3034
    end
    if SpaceCheck(f32_arg0, f32_arg1, 180, 10) == false then
        if SpaceCheck(f32_arg0, f32_arg1, 90, 10) == true and SpaceCheck(f32_arg0, f32_arg1, 270, 10) == true then
            f32_arg1:AddSubGoal(GOAL_COMMON_SpinStep, 10, f32_local4, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
        elseif SpaceCheck(f32_arg0, f32_arg1, 90, 10) == true then
            f32_arg1:AddSubGoal(GOAL_COMMON_SpinStep, 10, 3034, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 0)
        else
            f32_arg1:AddSubGoal(GOAL_COMMON_SpinStep, 10, 3033, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 0)
        end
    end
    if f32_arg0:HasSpecialEffectId(TARGET_SELF, 15046) and f32_arg0:IsEventFlag(15005841) == false and f32_arg0:IsEventFlag(15005842) == false and f32_arg0:IsEventFlag(15005840) == false then
        f32_arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 60, 3013, TARGET_ENE_0, 999, f32_local0, f32_local1, 0, 0)
        f32_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 60, 3025, TARGET_ENE_0, 999, 0, 0)
        f32_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 60, 3012, TARGET_ENE_0, 999, 0, 0)
        f32_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 60, 3038, TARGET_ENE_0, 999, 0, 0)
    elseif f32_arg0:HasSpecialEffectId(TARGET_SELF, 15045) then
        f32_arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5031)
        f32_arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 60, 3025, TARGET_ENE_0, 999, f32_local0, f32_local1, 0, 0)
        f32_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 60, 3014, TARGET_ENE_0, 999, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function CrimsonBat_502000_Battle_Act56(f33_arg0, f33_arg1, f33_arg2)
    local f33_local0 = 1.5
    local f33_local1 = 90
    local f33_local2 = f33_arg0:GetRandam_Int(1, 100)
    f33_arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    f33_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3026, TARGET_ENE_0, SuccessDist, f33_local0, f33_local1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function CrimsonBat_502000_Battle_Act57(f34_arg0, f34_arg1, f34_arg2)
    local f34_local0 = 0
    local f34_local1 = 0
    local f34_local2 = f34_arg0:GetRandam_Int(1, 100)
    f34_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3023, TARGET_ENE_0, 14, f34_local0, f34_local1)
    f34_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 60, 3002, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function CrimsonBat_502000_Battle_Act58(f35_arg0, f35_arg1, f35_arg2)
    local f35_local0 = 0
    local f35_local1 = 0
    local f35_local2 = f35_arg0:GetRandam_Int(1, 100)
    f35_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3036, TARGET_ENE_0, 10, f35_local0, f35_local1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function CrimsonBat_502000_Battle_Act59(f36_arg0, f36_arg1, f36_arg2)
    local f36_local0 = 0
    local f36_local1 = 0
    local f36_local2 = f36_arg0:GetRandam_Int(1, 100)
    f36_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3037, TARGET_ENE_0, 10, f36_local0, f36_local1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function CrimsonBat_502000_Battle_Act70(f37_arg0, f37_arg1, f37_arg2)
    f37_arg1:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, f37_arg0:GetRandam_Int(20, 30))
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function CrimsonBat_502000_Battle_Act71(f38_arg0, f38_arg1, f38_arg2)
    local f38_local0 = 0
    local f38_local1 = f38_arg0:GetRandam_Int(1, 100)
    local f38_local2 = f38_arg0:GetDist(TARGET_ENE_0)
    local f38_local3 = f38_arg0:GetRandam_Float(1.2, 2)
    f38_arg1:AddSubGoal(GOAL_COMMON_SidewayMove, f38_local3, TARGET_ENE_0, f38_arg0:GetRandam_Int(0, 1), f38_arg0:GetRandam_Int(50, 65), true, true, -1):SetTargetRange(1, 8, 999)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function CrimsonBat_502000_Battle_Act72(f39_arg0, f39_arg1, f39_arg2)
    local f39_local0 = f39_arg0:GetDist(TARGET_ENE_0)
    local f39_local1 = 10
    local f39_local2 = 999
    local f39_local3 = 0
    local f39_local4 = f39_arg0:GetRandam_Float(0.8, 2.5)
    f39_arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, f39_local4, TARGET_ENE_0, f39_local0 + 8, TARGET_ENE_0, true, -1)
    
end

function CrimsonBat_502000_Battle_Act73(f40_arg0, f40_arg1, f40_arg2)
    local f40_local0 = 20
    local f40_local1 = true
    local f40_local2 = -1
    local f40_local3 = 3
    f40_arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, f40_local3, TARGET_ENE_0, f40_local0, TARGET_SELF, f40_local1, f40_local2):SetLifeEndSuccess(true)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function CrimsonBat_502000_Battle_Act74(f41_arg0, f41_arg1, f41_arg2)
    local f41_local0 = 0
    local f41_local1 = f41_arg0:GetRandam_Int(1, 100)
    local f41_local2 = f41_arg0:GetDist(TARGET_ENE_0)
    local f41_local3 = f41_arg0:GetRandam_Float(1, 3.5)
    f41_arg1:AddSubGoal(GOAL_COMMON_SidewayMove, f41_local3, TARGET_ENE_0, f41_arg0:GetRandam_Int(0, 1), f41_arg0:GetRandam_Int(50, 65), true, true, -1):SetTargetRange(1, 8, 999)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function CrimsonBat_502000_Battle_Act76(f42_arg0, f42_arg1, f42_arg2)
    local f42_local0 = f42_arg0:GetRandam_Int(1, 2)
    local f42_local1 = 6002
    if f42_local0 == 1 then
        f42_local1 = 6003
    end
    if SpaceCheck(f42_arg0, f42_arg1, 180, 10) == true then
        f42_arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6001, TARGET_ENE_0, 0, AI_DIR_TYPE_B, f42_arg0:GetStringIndexedNumber("Dist_BackStep"))
    else
        f42_arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, f42_local1, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function CrimsonBat_502000_Battle_Act77(f43_arg0, f43_arg1, f43_arg2)
    local f43_local0 = f43_arg0:GetRandam_Int(1, 2)
    local f43_local1 = 6002
    if f43_local0 == 1 then
        f43_local1 = 6003
    end
    if SpaceCheck(f43_arg0, f43_arg1, 90, 10) == true and SpaceCheck(f43_arg0, f43_arg1, 270, 10) == true then
        f43_arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, f43_local1, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
    elseif SpaceCheck(f43_arg0, f43_arg1, 90, 10) == true then
        f43_arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6003, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 0)
    elseif SpaceCheck(f43_arg0, f43_arg1, 270, 10) == true then
        f43_arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6002, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function CrimsonBat_502000_Battle_Act78(f44_arg0, f44_arg1, f44_arg2)
    local f44_local0 = f44_arg0:GetRandam_Int(1, 2)
    local f44_local1 = 6002
    if f44_local0 == 1 then
        f44_local1 = 6003
    end
    if f44_arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 120) and targetDist <= 14 and SpaceCheck(f44_arg0, f44_arg1, 270, 10) == true then
        f44_arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6002, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 0)
    elseif f44_arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 120) and targetDist <= 14 and SpaceCheck(f44_arg0, f44_arg1, 90, 10) == true then
        f44_arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6003, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 0)
    elseif SpaceCheck(f44_arg0, f44_arg1, 90, 10) == true and SpaceCheck(f44_arg0, f44_arg1, 270, 10) == true then
        f44_arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, f44_local1, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
    elseif SpaceCheck(f44_arg0, f44_arg1, 90, 10) == true then
        f44_arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6003, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 0)
    elseif SpaceCheck(f44_arg0, f44_arg1, 270, 10) == true then
        f44_arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6002, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function CrimsonBat_502000_Battle_Act79(f45_arg0, f45_arg1, f45_arg2)
    if SpaceCheck(f45_arg0, f45_arg1, 90, 10) == true then
        f45_arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6003, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function CrimsonBat_502000_Battle_Act80(f46_arg0, f46_arg1, f46_arg2)
    if SpaceCheck(f46_arg0, f46_arg1, 90, 10) == true then
        f46_arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6002, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function CrimsonBat_502000_Battle_Act81(f47_arg0, f47_arg1, f47_arg2)
    local f47_local0 = 999
    local f47_local1 = 0
    local f47_local2 = 0
    local f47_local3 = f47_arg0:GetRandam_Int(1, 100)
    local f47_local4 = f47_arg0:GetRandam_Int(1, 2)
    local f47_local5 = 3033
    if f47_local4 == 1 then
        f47_local5 = 3033
    else
        f47_local5 = 3034
    end
    if f47_local3 <= 20 then
        if SpaceCheck(f47_arg0, f47_arg1, 90, 15) == true and SpaceCheck(f47_arg0, f47_arg1, 270, 15) == true then
            f47_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 5, f47_local5, TARGET_ENE_0, 999, f47_local1, f47_local2)
            f47_arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, f47_local5, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
        elseif SpaceCheck(f47_arg0, f47_arg1, 90, 15) == true then
            f47_arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 3033, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 0)
        elseif SpaceCheck(f47_arg0, f47_arg1, 270, 15) == true then
            f47_arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 3034, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 0)
        elseif SpaceCheck(f47_arg0, f47_arg1, 90, 10) == true and SpaceCheck(f47_arg0, f47_arg1, 270, 10) == true then
            f47_arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, f47_local5, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
        elseif SpaceCheck(f47_arg0, f47_arg1, 90, 10) == true then
            f47_arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 3033, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 0)
        elseif SpaceCheck(f47_arg0, f47_arg1, 270, 10) == true then
            f47_arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 3034, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 0)
        else
            f47_arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, f47_local5, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
        end
    else
        f47_arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
        if SpaceCheck(f47_arg0, f47_arg1, 90, 15) == true and SpaceCheck(f47_arg0, f47_arg1, 270, 15) == true then
            f47_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 5, f47_local5, TARGET_ENE_0, 999, f47_local1, f47_local2)
        elseif SpaceCheck(f47_arg0, f47_arg1, 90, 15) == true then
            f47_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 5, 3033, TARGET_ENE_0, 999, f47_local1, f47_local2)
        elseif SpaceCheck(f47_arg0, f47_arg1, 270, 15) == true then
            f47_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 5, 3034, TARGET_ENE_0, 999, f47_local1, f47_local2)
        elseif SpaceCheck(f47_arg0, f47_arg1, 90, 10) == true and SpaceCheck(f47_arg0, f47_arg1, 270, 10) == true then
            f47_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 5, f47_local5, TARGET_ENE_0, 999, f47_local1, f47_local2)
        elseif SpaceCheck(f47_arg0, f47_arg1, 90, 10) == true then
            f47_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 5, 3033, TARGET_ENE_0, 999, f47_local1, f47_local2)
        elseif SpaceCheck(f47_arg0, f47_arg1, 270, 10) == true then
            f47_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 5, 3034, TARGET_ENE_0, 999, f47_local1, f47_local2)
        else
            f47_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 5, f47_local5, TARGET_ENE_0, 999, f47_local1, f47_local2)
        end
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function CrimsonBat_502000_Battle_Act82(f48_arg0, f48_arg1, f48_arg2)
    local f48_local0 = 999
    local f48_local1 = 0
    local f48_local2 = 0
    local f48_local3 = f48_arg0:GetRandam_Int(1, 100)
    if SpaceCheck(f48_arg0, f48_arg1, 90, 7) == true then
        f48_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3033, TARGET_ENE_0, f48_local0, f48_local1, f48_local2, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function CrimsonBat_502000_Battle_Act83(f49_arg0, f49_arg1, f49_arg2)
    local f49_local0 = 999
    local f49_local1 = 0
    local f49_local2 = 0
    local f49_local3 = f49_arg0:GetRandam_Int(1, 100)
    if SpaceCheck(f49_arg0, f49_arg1, 270, 7) == true then
        f49_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3034, TARGET_ENE_0, f49_local0, f49_local1, f49_local2, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function CrimsonBat_502000_Battle_Act90(f50_arg0, f50_arg1, f50_arg2)
    local f50_local0 = 0
    local f50_local1 = 0
    local f50_local2 = f50_arg0:GetRandam_Int(1, 100)
    f50_arg0:SetTimer(4, 38)
    f50_arg1:AddSubGoal(GOAL_COMMON_Wait, 2, TARGET_NONE, 0, 0, 0)
    f50_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3032, TARGET_ENE_0, 999, f50_local0, f50_local1)
    f50_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3022, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function CrimsonBat_502000_Battle_Act91(f51_arg0, f51_arg1, f51_arg2)
    local f51_local0 = 25
    local f51_local1 = true
    local f51_local2 = -1
    local f51_local3 = 3
    f51_arg0:SetTimer(3, 13)
    f51_arg1:AddSubGoal(GOAL_COMMON_Wait, 1, TARGET_NONE, 0, 0, 0)
    f51_arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, f51_local3, TARGET_ENE_0, f51_local0, TARGET_SELF, f51_local1, f51_local2):SetLifeEndSuccess(true)
    local f51_local4 = 0
    local f51_local5 = 0
    local f51_local6 = f51_arg0:GetRandam_Int(1, 100)
    f51_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3030, TARGET_ENE_0, 999, f51_local4, f51_local5, 0, 0):SetLifeEndSuccess(true)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function CrimsonBat_502000_Battle_Act93(f52_arg0, f52_arg1, f52_arg2)
    local f52_local0 = 999
    local f52_local1 = 1
    local f52_local2 = 60
    local f52_local3 = f52_arg0:GetRandam_Int(1, 100)
    local f52_local4 = f52_arg0:GetDist(TARGET_ENE_0)
    local f52_local5 = f52_arg0:GetRandam_Int(1, 2)
    local f52_local6 = 3033
    f52_arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5031)
    if f52_local5 == 1 then
        f52_local6 = 3033
    else
        f52_local6 = 3034
    end
    if SpaceCheck(f52_arg0, f52_arg1, 180, 15) == false then
        if SpaceCheck(f52_arg0, f52_arg1, 90, 10) == true and SpaceCheck(f52_arg0, f52_arg1, 270, 10) == true then
            f52_arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, f52_local6, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
        elseif SpaceCheck(f52_arg0, f52_arg1, 90, 10) == true then
            f52_arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 3034, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 0)
        else
            f52_arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 3033, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 0)
        end
    end
    if f52_local4 <= 12 then
        f52_arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3025, TARGET_ENE_0, f52_local0, f52_local1, f52_local2, 0, 0)
        f52_arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3014, TARGET_ENE_0, f52_local0, f52_local1, f52_local2, 0, 0)
    else
        f52_arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 60, 3014, TARGET_ENE_0, f52_local0, f52_local1, f52_local2, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function CrimsonBat_502000_Battle_Act94(f53_arg0, f53_arg1, f53_arg2)
    local f53_local0 = 1.5
    local f53_local1 = 90
    local f53_local2 = f53_arg0:GetRandam_Int(1, 100)
    f53_arg0:SetTimer(6, 20)
    f53_arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    if f53_arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 280) and not f53_arg0:HasSpecialEffectId(TARGET_SELF, 5020) then
        f53_arg1:AddSubGoal(GOAL_COMMON_Turn, 10, TARGET_ENE_0, f53_arg0:GetRandam_Int(20, 30))
    end
    f53_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3026, TARGET_ENE_0, SuccessDist, f53_local0, f53_local1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function CrimsonBat_502000_Battle_Act98(f54_arg0, f54_arg1, f54_arg2)
    local f54_local0 = 3000
    local f54_local1 = 6002
    local f54_local2 = 3006
    local f54_local3 = 0
    local f54_local4 = 0
    local f54_local5 = f54_arg0:GetRandam_Int(1, 100)
    f54_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3004, TARGET_ENE_0, 999, f54_local3, f54_local4)
    f54_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3008, TARGET_ENE_0, 999)
    f54_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3010, TARGET_ENE_0, 999)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function CrimsonBat_502000_Battle_Act99(f55_arg0, f55_arg1, f55_arg2)
    local f55_local0 = 3018
    local f55_local1 = 3016
    local f55_local2 = 3018
    local f55_local3 = 0
    local f55_local4 = 0
    local f55_local5 = f55_arg0:GetRandam_Int(1, 100)
    f55_arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3037, TARGET_ENE_0, 999, f55_local3, f55_local4)
    f55_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3000, TARGET_ENE_0, 999)
    f55_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3010, TARGET_ENE_0, 999)
    f55_arg1:AddSubGoal(GOAL_COMMON_Wait, 1, TARGET_ENE_0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function CrimsonBat_502000_Battle_ActAfter_AdjustSpace(f56_arg0, f56_arg1, f56_arg2)
    f56_arg1:AddSubGoal(GOAL_CrimsonBat_502000_AfterAttackAct, 10)
    
end

Goal.Update = function (f57_arg0, f57_arg1, f57_arg2)
    return Update_Default_NoSubGoal(f57_arg0, f57_arg1, f57_arg2)
    
end

Goal.Terminate = function (f58_arg0, f58_arg1, f58_arg2)
    
end

Goal.Interrupt = function (f59_arg0, f59_arg1, f59_arg2)
    local f59_local0 = f59_arg1:GetDist(TARGET_ENE_0)
    local f59_local1 = f59_arg1:GetRandam_Int(1, 100)
    local f59_local2 = f59_arg1:GetRandam_Int(1, 100)
    local f59_local3 = f59_arg1:GetRandam_Int(1, 100)
    local f59_local4 = f59_arg1:GetRandam_Int(1, 100)
    local f59_local5 = f59_arg1:GetRandam_Int(1, 100)
    if f59_arg1:IsInterupt(INTERUPT_Inside_ObserveArea) then
        if f59_arg1:IsInsideObserve(3) then
            f59_arg2:ClearSubGoal()
            f59_arg1:Replaning()
            f59_arg1:DeleteObserve(3)
            return true
        end
    elseif f59_arg1:IsInterupt(INTERUPT_TargetOutOfRange) and f59_arg1:HasSpecialEffectId(TARGET_SELF, 5404) then
        if f59_arg1:IsTargetOutOfRangeInterruptSlot(0) then
            f59_arg2:ClearSubGoal()
            f59_arg1:Replaning()
            return true
        elseif f59_arg1:IsTargetOutOfRangeInterruptSlot(1) then
            f59_arg2:ClearSubGoal()
            f59_arg1:Replaning()
            return true
        end
    end
    if f59_arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) then
        if f59_arg1:GetSpecialEffectActivateInterruptType(0) == 5026 and f59_local0 >= 18 then
            f59_arg2:ClearSubGoal()
            if f59_arg1:GetAttackPassedTime(3020) <= 200 then
                if f59_local1 <= 60 and f59_local0 <= 42 then
                    f59_arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3020, TARGET_ENE_0, 999, 0, 0)
                elseif f59_local0 <= 38 then
                    f59_arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3022, TARGET_ENE_0, 999, 0, 0)
                    f59_arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3032, TARGET_ENE_0, 999, 0, 0)
                end
            elseif f59_local1 <= 90 and f59_local0 <= 42 then
                f59_arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3020, TARGET_ENE_0, 999, 0, 0)
            elseif f59_local0 <= 38 then
                f59_arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3022, TARGET_ENE_0, 999, 0, 0)
                f59_arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3032, TARGET_ENE_0, 999, 0, 0)
            end
        elseif f59_arg1:GetSpecialEffectActivateInterruptType(0) == 5027 then
            f59_arg2:ClearSubGoal()
            if f59_local0 <= 3 then
                f59_arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3005, TARGET_ENE_0, 9, 0, 0)
                if f59_local1 <= 40 then
                    f59_arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3036, TARGET_ENE_0, 999, 0, 0)
                elseif f59_local1 <= 80 then
                    f59_arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3037, TARGET_ENE_0, 999, 0, 0)
                else
                    f59_arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3019, TARGET_ENE_0, 999, 0, 0)
                    f59_arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3032, TARGET_ENE_0, 999, 0, 0)
                end
            elseif f59_local0 <= 14 then
                f59_arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3006, TARGET_ENE_0, 9, 0, 0)
                if f59_local1 <= 40 then
                    f59_arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3036, TARGET_ENE_0, 999, 0, 0)
                elseif f59_local1 <= 80 then
                    f59_arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3037, TARGET_ENE_0, 999, 0, 0)
                else
                    f59_arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3019, TARGET_ENE_0, 999, 0, 0)
                    f59_arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3032, TARGET_ENE_0, 999, 0, 0)
                end
            end
        elseif f59_arg1:GetSpecialEffectActivateInterruptType(0) == 5028 and f59_arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 80) and f59_local0 <= 7 then
            f59_arg2:ClearSubGoal()
            f59_arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5028)
            f59_arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3007, TARGET_ENE_0, 9, 0, 0)
            if f59_local1 <= 60 then
                f59_arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3018, TARGET_ENE_0, 999, 0, 0)
            else
                f59_arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3017, TARGET_ENE_0, 999, 0, 0)
            end
        elseif f59_arg1:GetSpecialEffectActivateInterruptType(0) == 5028 and f59_local0 >= 1 and f59_local0 <= 10 then
            f59_arg2:ClearSubGoal()
            f59_arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5028)
            if f59_local1 <= 70 then
                f59_arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, 10, 0, 0)
                if f59_local2 <= 80 then
                    f59_arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3000, TARGET_ENE_0, 10, 0, 0)
                    if f59_local3 <= 50 then
                        f59_arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3010, TARGET_ENE_0, 999, 0, 0)
                    else
                        f59_arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3036, TARGET_ENE_0, 999, 0, 0)
                    end
                end
            else
                f59_arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3037, TARGET_ENE_0, 8, 0, 0)
                f59_arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3000, TARGET_ENE_0, 14, 0, 0)
                f59_arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3010, TARGET_ENE_0, 999, 0, 0)
            end
        elseif f59_arg1:GetSpecialEffectActivateInterruptType(0) == 5029 and f59_arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 80) and f59_local0 <= 7 then
            f59_arg2:ClearSubGoal()
            f59_arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5029)
            f59_arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3009, TARGET_ENE_0, 9, 0, 0)
            f59_arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3016, TARGET_ENE_0, 9, 0, 0)
            if f59_local1 <= 50 then
                f59_arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3018, TARGET_ENE_0, 999, 0, 0)
            elseif f59_local1 <= 80 then
                f59_arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3017, TARGET_ENE_0, 999, 0, 0)
            end
        elseif f59_arg1:GetSpecialEffectActivateInterruptType(0) == 5029 and f59_local0 >= 1 then
            f59_arg2:ClearSubGoal()
            if f59_local1 <= 50 and f59_local0 <= 10 then
                f59_arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3039, TARGET_ENE_0, 10 - f59_arg1:GetMapHitRadius(TARGET_SELF) + 1, 0, 0)
                if f59_local2 <= 80 then
                    f59_arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3010, TARGET_ENE_0, 10 - f59_arg1:GetMapHitRadius(TARGET_SELF) + 1, 0, 0)
                end
            elseif f59_local1 <= 80 and f59_local0 <= 15 then
                f59_arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3017, TARGET_ENE_0, 999, 0, 0)
            elseif f59_local0 <= 11 then
                f59_arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3037, TARGET_ENE_0, 8, 0, 0)
                f59_arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3000, TARGET_ENE_0, 14, 0, 0)
                f59_arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3010, TARGET_ENE_0, 999, 0, 0)
            end
        elseif f59_arg1:GetSpecialEffectActivateInterruptType(0) == 5030 and f59_local0 >= 1 and f59_local0 <= 4 then
            f59_arg2:ClearSubGoal()
            f59_arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3005, TARGET_ENE_0, 999, 0, 0)
        elseif f59_arg1:GetSpecialEffectActivateInterruptType(0) == 5030 and f59_local0 >= 4 and f59_local0 <= 8 then
            f59_arg2:ClearSubGoal()
            f59_arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3000, TARGET_ENE_0, 10, 0, 0)
            f59_arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, 10, 0, 0)
            f59_arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, 999, 0, 0)
        elseif f59_arg1:GetSpecialEffectActivateInterruptType(0) == 5030 and f59_local0 >= 8 and f59_local0 <= 15 then
            f59_arg2:ClearSubGoal()
            f59_arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, 999, 0, 0)
        elseif f59_arg1:GetSpecialEffectActivateInterruptType(0) == 5031 then
            f59_arg2:ClearSubGoal()
            f59_arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3015, TARGET_ENE_0, 999, 0, 0)
        elseif f59_arg1:GetSpecialEffectActivateInterruptType(0) == 5032 and f59_arg1:HasSpecialEffectId(TARGET_SELF, 5404) then
            if f59_arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 120) and f59_local0 <= 10 and f59_local1 <= 80 then
                f59_arg2:ClearSubGoal()
                f59_arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3003, TARGET_ENE_0, 999, 0, 0)
            end
        elseif f59_arg1:GetSpecialEffectActivateInterruptType(0) == 5033 then
            f59_arg2:ClearSubGoal()
            f59_arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5033)
            if f59_local1 <= 30 and f59_arg1:GetAttackPassedTime(3019) >= 30 then
                if f59_local0 <= 3.5 then
                    f59_arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3019, TARGET_ENE_0, 999, 0, 0)
                    f59_arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3032, TARGET_ENE_0, 999, 0, 0)
                elseif f59_local0 <= 14 then
                    f59_arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3019, TARGET_ENE_0, 999, 0, 0)
                    f59_arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3032, TARGET_ENE_0, 999, 0, 0)
                end
            elseif f59_local1 <= 80 then
                f59_arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3018, TARGET_ENE_0, 10 - f59_arg1:GetMapHitRadius(TARGET_SELF) + 1, 0, 0)
                f59_arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3017, TARGET_ENE_0, 10 - f59_arg1:GetMapHitRadius(TARGET_SELF) + 1, 0, 0)
            end
        elseif f59_arg1:GetSpecialEffectActivateInterruptType(0) == 5404 and not f59_arg1:HasSpecialEffectId(TARGET_SELF, 5020) then
            f59_arg2:ClearSubGoal()
            f59_arg1:Replaning()
        elseif f59_arg1:GetSpecialEffectActivateInterruptType(0) == 15025 then
            if f59_arg1:HasSpecialEffectId(TARGET_SELF, 140393) or f59_arg1:HasSpecialEffectId(TARGET_SELF, 140403) then
                f59_arg1:SetTimer(3, 40)
                f59_arg2:ClearSubGoal()
            else
                f59_arg1:SetTimer(3, 60)
                f59_arg2:ClearSubGoal()
            end
        elseif f59_arg1:GetSpecialEffectActivateInterruptType(0) == 15026 then
            if f59_arg1:HasSpecialEffectId(TARGET_SELF, 140393) or f59_arg1:HasSpecialEffectId(TARGET_SELF, 140403) then
                f59_arg1:SetTimer(4, 90)
                f59_arg2:ClearSubGoal()
            else
                f59_arg1:SetTimer(4, 60)
                f59_arg2:ClearSubGoal()
                f59_arg1:Replaning()
            end
        elseif f59_arg1:GetSpecialEffectActivateInterruptType(0) == 15047 then
            f59_arg2:ClearSubGoal()
            f59_arg1:Replaning()
        end
        return true
    end
    return false
    
end

RegisterTableGoal(GOAL_CrimsonBat_502000_AfterAttackAct, "GOAL_CrimsonBat_502000_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_CrimsonBat_502000_AfterAttackAct, true)

Goal.Activate = function (f60_arg0, f60_arg1, f60_arg2)
    local f60_local0 = f60_arg1:GetDist(TARGET_ENE_0)
    local f60_local1 = f60_arg1:GetToTargetAngle(TARGET_ENE_0)
    local f60_local2 = f60_arg1:GetHpRate(TARGET_SELF)
    local f60_local3 = f60_arg1:GetRandam_Int(1, 100)
    local f60_local4 = f60_arg1:GetRandam_Int(1, 100)
    local f60_local5 = {}
    if f60_arg1:HasSpecialEffectId(TARGET_SELF, 5404) then
        f60_local5[1] = 60
    elseif f60_arg1:HasSpecialEffectId(TARGET_SELF, 15026) then
        if f60_local0 >= 10 then
            f60_local5[1] = 100
            f60_local5[2] = 0
            f60_local5[3] = 0
            f60_local5[4] = 0
        else
            f60_local5[1] = 40
            f60_local5[2] = 0
            f60_local5[3] = 0
            f60_local5[4] = 60
        end
    elseif f60_local0 >= 20 then
        f60_local5[1] = 0
        f60_local5[2] = 100
        f60_local5[3] = 0
        f60_local5[4] = 0
    elseif f60_local0 >= 14 then
        f60_local5[1] = 20
        f60_local5[2] = 80
        f60_local5[3] = 0
        f60_local5[4] = 0
    else
        f60_local5[1] = 40
        f60_local5[2] = 0
        f60_local5[3] = 0
        f60_local5[4] = 60
    end
    local f60_local6 = SelectOddsIndex(f60_arg1, f60_local5)
    if f60_local6 == 1 then
    elseif f60_local6 == 2 then
        CrimsonBat_502000_Battle_Act74(f60_arg1, f60_arg2, paramTbl)
    elseif f60_local6 == 3 then
        CrimsonBat_502000_Battle_Act76(f60_arg1, f60_arg2, paramTbl)
    elseif f60_local6 == 4 then
        CrimsonBat_502000_Battle_Act71(f60_arg1, f60_arg2, paramTbl)
    end
    
end

Goal.Update = function (f61_arg0, f61_arg1, f61_arg2)
    return Update_Default_NoSubGoal(f61_arg0, f61_arg1, f61_arg2)
    
end


