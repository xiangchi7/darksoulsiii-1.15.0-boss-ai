function COMMON_EasySetup3(f1_arg0)
    COMMON_EzSetup(f1_arg0)
    
end

function COMMON_EzSetup(f2_arg0)
    if f2_arg0:GetTimer(15) <= 0 then
        f2_arg0:SetNumber(15, 0)
    end
    _COMMON_SetBattleActLogic(f2_arg0)
    if f2_arg0:IsLadderAct(TARGET_SELF) and not f2_arg0:HasGoal(GOAL_COMMON_LadderAct) then
        local f2_local0 = f2_arg0:GetTopGoal()
        if f2_local0 ~= nil then
            f2_local0:AddSubGoal_Front(GOAL_COMMON_LadderAct, -1, 3000, TARGET_SELF, f2_arg0:GetLadderDirMove(TARGET_SELF))
        else
            f2_arg0:AddTopGoal(GOAL_COMMON_LadderAct, -1, 3000, TARGET_SELF, f2_arg0:GetLadderDirMove(TARGET_SELF))
        end
    end
    
end

function _COMMON_SetBattleActLogic(f3_arg0)
    local f3_local0 = f3_arg0:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__maxBackhomeDist)
    local f3_local1 = f3_arg0:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__backhomeDist)
    local f3_local2 = f3_arg0:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__backhomeBattleDist)
    local f3_local3 = f3_arg0:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__nonBattleActLife)
    local f3_local4 = f3_arg0:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__callHelp_ForgetTimeByArrival)
    local f3_local5 = f3_arg0:IsSearchTarget(TARGET_ENE_0)
    local f3_local6 = f3_arg0:GetMovePointEffectRange()
    local f3_local7 = f3_arg0:GetDist(TARGET_ENE_0)
    if f3_arg0:TeamHelp_IsValidReply() then
        f3_arg0:AddTopGoal(GOAL_COMMON_TeamReplyHelp, f3_local4)
        return true
    elseif f3_arg0:IsForceBattleGoal() then
        f3_arg0:ClearForceBattleGoal()
        f3_arg0:ReqPlatoonState(PLATOON_STATE_Battle)
        _COMMON_AddBattleGoal(f3_arg0)
    elseif f3_local5 == true then
        if f3_arg0:HasSpecialEffectId(TARGET_SELF, 12043) and not f3_arg0:HasSpecialEffectId(TARGET_ENE_0, 4300) and not f3_arg0:HasSpecialEffectId(TARGET_ENE_0, 4310) and f3_arg0:GetHpRate(TARGET_SELF) >= 0.75 then
            _COMMON_AddNonBattleGoal(f3_arg0, 1, -1, false)
            return true
        elseif f3_local0 < f3_local6 then
            _COMMON_AddNonBattleGoal(f3_arg0, f3_local3, -1, false)
            return true
        elseif f3_local1 < f3_local6 then
            if f3_local7 < f3_local2 then
                f3_arg0:ReqPlatoonState(PLATOON_STATE_Battle)
                _COMMON_AddBattleGoal(f3_arg0)
                return true
            else
                _COMMON_AddNonBattleGoal(f3_arg0, f3_local3, f3_local2, false)
                return true
            end
        else
            _COMMON_AddBattleGoal(f3_arg0)
            return true
        end
    else
        _COMMON_AddNonBattleGoal(f3_arg0, f3_local3, -1, true)
        return true
    end
    return false
    
end

function _COMMON_AddBattleGoal(f4_arg0)
    local f4_local0 = f4_arg0:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__battleGoalID)
    local f4_local1 = f4_arg0:GetPrevTargetState()
    local f4_local2 = f4_arg0:GetCurrTargetType()
    local f4_local3 = 0
    if f4_arg0:IsBattleState() then
        f4_arg0:ReqPlatoonState(PLATOON_STATE_Battle)
        f4_arg0:AddTopGoal(f4_local0, -1)
    elseif f4_arg0:IsFindState() then
        f4_arg0:ReqPlatoonState(PLATOON_STATE_Find)
        f4_local3 = 2
        _COMMON_AddCautionAndFindGoal(f4_arg0, f4_local3)
    elseif f4_arg0:IsCautionState() then
        if f4_local2 == AI_TARGET_TYPE__MEMORY_ENEMY then
            f4_local3 = 0
            _COMMON_AddCautionAndFindGoal(f4_arg0, f4_local3)
        else
            f4_arg0:ReqPlatoonState(PLATOON_STATE_Caution)
            f4_local3 = 1
            _COMMON_AddCautionAndFindGoal(f4_arg0, f4_local3)
        end
    else
        _COMMON_AddNonBattleGoal(f4_arg0, -1, -1, true)
    end
    
end

function _COMMON_AddChangeStateActionGoal(f5_arg0, f5_arg1)
    local f5_local0 = f5_arg0:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__changeStateAction_ToNormal)
    local f5_local1 = 0
    local f5_local2 = 1
    local f5_local3 = 2
    local f5_local4 = 0
    local f5_local5 = TARGET_NONE
    local f5_local6 = 1810
    local f5_local7 = f5_arg0:GetRandam_Int(1, 100)
    local f5_local8 = f5_arg0:GetDist(TARGET_ENE_0)
    if f5_arg1 == 0 then
        f5_local4 = f5_local0
        f5_local5 = POINT_INITIAL
    else
        f5_local4 = 0
        f5_local5 = TARGET_ENE_0
    end
    if f5_local4 == f5_local2 then
        if f5_local8 >= 10 or f5_local8 == -1 then
            f5_arg0:AddTopGoal(GOAL_COMMON_AttackTunableSpin, 10, f5_local6, f5_local5, DIST_NONE, 0, -1)
        else
            f5_arg0:AddTopGoal(GOAL_COMMON_Stay, 1, 0, f5_local5)
        end
    elseif f5_local4 == f5_local3 then
        if f5_local8 >= 10 or f5_local8 == -1 then
            f5_arg0:AddTopGoal(GOAL_COMMON_Turn, 3, f5_local5)
            f5_arg0:AddTopGoal(GOAL_COMMON_AttackTunableSpin, 10, f5_local6, f5_local5, DIST_NONE, 0, -1)
        else
            f5_arg0:AddTopGoal(GOAL_COMMON_Stay, 1, 0, f5_local5)
        end
    else
    end
    
end

function _COMMON_AddCautionAndFindGoal(f6_arg0, f6_arg1)
    local f6_local0 = f6_arg0:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__goalAction_ToCaution)
    local f6_local1 = f6_arg0:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__goalAction_ToCautionImportant)
    local f6_local2 = f6_arg0:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__goalAction_ToFind)
    local f6_local3 = f6_arg0:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__goalAction_ToDisappear)
    local f6_local4 = 0
    local f6_local5 = 1
    local f6_local6 = 2
    local f6_local7 = 3
    local f6_local8 = 4
    local f6_local9 = 5
    local f6_local10 = 0
    local f6_local11 = -1
    local f6_local12 = f6_arg0:GetDist(TARGET_ENE_0)
    local f6_local13 = 1
    local f6_local14 = f6_arg0:GetLatestSoundTargetRank()
    if f6_arg1 == 0 then
        f6_local10 = f6_local3
    elseif f6_arg1 == 1 and f6_local14 == AI_SOUND_RANK__IMPORTANT then
        f6_local10 = f6_local1
    elseif f6_arg1 == 1 then
        f6_local10 = f6_local0
    elseif f6_arg1 == 2 then
        f6_local10 = f6_local2
    end
    if f6_local10 == f6_local5 then
        f6_arg0:AddTopGoal(GOAL_COMMON_Stay, 1, 0, TARGET_ENE_0)
    elseif f6_local10 == f6_local6 then
        if f6_local13 + 0.5 < f6_local12 then
            f6_arg0:AddTopGoal(GOAL_COMMON_MoveToSomewhere, f6_local11, TARGET_ENE_0, AI_DIR_TYPE_CENTER, f6_local13, TARGET_SELF, true)
        else
            f6_arg0:AddTopGoal(GOAL_COMMON_Stay, 1, 0, TARGET_ENE_0)
        end
    elseif f6_local10 == f6_local7 then
        if f6_local13 + 0.5 < f6_local12 then
            f6_arg0:AddTopGoal(GOAL_COMMON_MoveToSomewhere, f6_local11, TARGET_ENE_0, AI_DIR_TYPE_CENTER, f6_local13, TARGET_SELF, false)
        else
            f6_arg0:AddTopGoal(GOAL_COMMON_Stay, 1, 0, TARGET_ENE_0)
        end
    elseif f6_local10 == f6_local8 then
        f6_arg0:AddTopGoal(GOAL_COMMON_Stay, 1, 0, TARGET_ENE_0)
    elseif f6_local10 == f6_local9 then
        if f6_local13 <= f6_local12 then
            f6_arg0:AddTopGoal(GOAL_COMMON_Stay, 1, 0, TARGET_ENE_0)
        elseif f6_local13 / 2 <= f6_local12 then
            f6_arg0:AddTopGoal(GOAL_COMMON_LeaveTarget, f6_local11, TARGET_ENE_0, f6_local13, TARGET_ENE_0, true, -1)
        else
            f6_arg0:AddTopGoal(GOAL_COMMON_LeaveTarget, f6_local11, TARGET_ENE_0, f6_local13, TARGET_SELF, false, -1)
        end
    else
        _COMMON_AddNonBattleGoal(f6_arg0, 1, -1, false)
    end
    
end

function _COMMON_AddNonBattleGoal(f7_arg0, f7_arg1, f7_arg2, f7_arg3)
    f7_arg0:TeamHelp_ValidateCall()
    f7_arg0:TeamHelp_ValidateReply()
    if f7_arg0:IsChangeState() and (not (f7_arg0:IsBattleState() or f7_arg0:IsFindState() or f7_arg0:IsCautionState())) then
        local f7_local0 = 0
        f7_local0 = 0
        _COMMON_AddChangeStateActionGoal(f7_arg0, f7_local0)
    end
    f7_arg0:AddTopGoal(GOAL_COMMON_NonBattleAct, f7_arg1, f7_arg2, f7_arg3, false, POINT_INIT_POSE, 0, 0)
    
end

function COMMON_Interrupt(f8_arg0, f8_arg1)
    local f8_local0 = false
    if f8_arg0:IsInterupt(INTERUPT_MovedEnd_OnFailedPath) then
        f8_arg0:DecideWalkAroundPos()
        local f8_local1 = f8_arg0:GetActTypeOnFailedPathEnd()
        if 0 == f8_local1 then
            f8_local0 = true
        elseif 1 == f8_local1 then
            f8_arg1:ClearSubGoal()
            f8_arg1:AddSubGoal(GOAL_COMMON_Wait_On_FailedPath, -1, 1)
            f8_local0 = true
        elseif 2 == f8_local1 then
            f8_arg1:ClearSubGoal()
            f8_arg1:AddSubGoal(GOAL_COMMON_Wait_On_FailedPath, 2, 1)
            f8_local0 = true
        elseif 3 == f8_local1 then
            f8_arg1:ClearSubGoal()
            f8_arg1:AddSubGoal(GOAL_COMMON_WalkAround_On_FailedPath, -1, 1)
            f8_local0 = true
        elseif 4 == f8_local1 then
            f8_arg1:ClearSubGoal()
            f8_arg1:AddSubGoal(GOAL_COMMON_BackToHome_On_FailedPath, 100, 1, 2)
            f8_local0 = true
        end
    end
    return f8_local0
    
end


