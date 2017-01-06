{-# OPTIONS_GHC -w #-}
{-# OPTIONS_GHC -fno-warn-incomplete-patterns -fno-warn-overlapping-patterns #-}
module Core.Par where
import Core.Abs
import Core.Lex
import Core.ErrM
import Control.Applicative(Applicative(..))
import Control.Monad (ap)

-- parser produced by Happy Version 1.19.5

data HappyAbsSyn 
	= HappyTerminal (Token)
	| HappyErrorToken Int
	| HappyAbsSyn15 (Ident)
	| HappyAbsSyn16 (CaseTk)
	| HappyAbsSyn17 (DataTk)
	| HappyAbsSyn18 (Exp)
	| HappyAbsSyn22 (Decl)
	| HappyAbsSyn23 (Patt)
	| HappyAbsSyn25 (Summand)
	| HappyAbsSyn26 ([Summand])
	| HappyAbsSyn27 (Branch)
	| HappyAbsSyn28 ([Branch])
	| HappyAbsSyn29 ([Ident])

{- to allow type-synonyms as our monads (likely
 - with explicitly-specified bind and return)
 - in Haskell98, it seems that with
 - /type M a = .../, then /(HappyReduction M)/
 - is not allowed.  But Happy is a
 - code-generator that can just substitute it.
type HappyReduction m = 
	   Int 
	-> (Token)
	-> HappyState (Token) (HappyStk HappyAbsSyn -> [(Token)] -> m HappyAbsSyn)
	-> [HappyState (Token) (HappyStk HappyAbsSyn -> [(Token)] -> m HappyAbsSyn)] 
	-> HappyStk HappyAbsSyn 
	-> [(Token)] -> m HappyAbsSyn
-}

action_0,
 action_1,
 action_2,
 action_3,
 action_4,
 action_5,
 action_6,
 action_7,
 action_8,
 action_9,
 action_10,
 action_11,
 action_12,
 action_13,
 action_14,
 action_15,
 action_16,
 action_17,
 action_18,
 action_19,
 action_20,
 action_21,
 action_22,
 action_23,
 action_24,
 action_25,
 action_26,
 action_27,
 action_28,
 action_29,
 action_30,
 action_31,
 action_32,
 action_33,
 action_34,
 action_35,
 action_36,
 action_37,
 action_38,
 action_39,
 action_40,
 action_41,
 action_42,
 action_43,
 action_44,
 action_45,
 action_46,
 action_47,
 action_48,
 action_49,
 action_50,
 action_51,
 action_52,
 action_53,
 action_54,
 action_55,
 action_56,
 action_57,
 action_58,
 action_59,
 action_60,
 action_61,
 action_62,
 action_63,
 action_64,
 action_65,
 action_66,
 action_67,
 action_68,
 action_69,
 action_70,
 action_71,
 action_72,
 action_73,
 action_74,
 action_75,
 action_76,
 action_77,
 action_78,
 action_79,
 action_80,
 action_81,
 action_82,
 action_83,
 action_84,
 action_85,
 action_86,
 action_87,
 action_88,
 action_89,
 action_90,
 action_91,
 action_92,
 action_93,
 action_94,
 action_95,
 action_96,
 action_97,
 action_98,
 action_99,
 action_100,
 action_101,
 action_102,
 action_103,
 action_104,
 action_105,
 action_106,
 action_107,
 action_108,
 action_109,
 action_110,
 action_111 :: () => Int -> ({-HappyReduction (Err) = -}
	   Int 
	-> (Token)
	-> HappyState (Token) (HappyStk HappyAbsSyn -> [(Token)] -> (Err) HappyAbsSyn)
	-> [HappyState (Token) (HappyStk HappyAbsSyn -> [(Token)] -> (Err) HappyAbsSyn)] 
	-> HappyStk HappyAbsSyn 
	-> [(Token)] -> (Err) HappyAbsSyn)

happyReduce_12,
 happyReduce_13,
 happyReduce_14,
 happyReduce_15,
 happyReduce_16,
 happyReduce_17,
 happyReduce_18,
 happyReduce_19,
 happyReduce_20,
 happyReduce_21,
 happyReduce_22,
 happyReduce_23,
 happyReduce_24,
 happyReduce_25,
 happyReduce_26,
 happyReduce_27,
 happyReduce_28,
 happyReduce_29,
 happyReduce_30,
 happyReduce_31,
 happyReduce_32,
 happyReduce_33,
 happyReduce_34,
 happyReduce_35,
 happyReduce_36,
 happyReduce_37,
 happyReduce_38,
 happyReduce_39,
 happyReduce_40,
 happyReduce_41,
 happyReduce_42,
 happyReduce_43,
 happyReduce_44,
 happyReduce_45,
 happyReduce_46,
 happyReduce_47,
 happyReduce_48,
 happyReduce_49,
 happyReduce_50,
 happyReduce_51,
 happyReduce_52,
 happyReduce_53,
 happyReduce_54 :: () => ({-HappyReduction (Err) = -}
	   Int 
	-> (Token)
	-> HappyState (Token) (HappyStk HappyAbsSyn -> [(Token)] -> (Err) HappyAbsSyn)
	-> [HappyState (Token) (HappyStk HappyAbsSyn -> [(Token)] -> (Err) HappyAbsSyn)] 
	-> HappyStk HappyAbsSyn 
	-> [(Token)] -> (Err) HappyAbsSyn)

action_0 (30) = happyShift action_36
action_0 (31) = happyShift action_37
action_0 (39) = happyShift action_38
action_0 (40) = happyShift action_39
action_0 (44) = happyShift action_40
action_0 (45) = happyShift action_49
action_0 (46) = happyShift action_50
action_0 (47) = happyShift action_41
action_0 (48) = happyShift action_42
action_0 (49) = happyShift action_51
action_0 (51) = happyShift action_31
action_0 (52) = happyShift action_32
action_0 (54) = happyShift action_13
action_0 (55) = happyShift action_52
action_0 (56) = happyShift action_53
action_0 (15) = happyGoto action_33
action_0 (16) = happyGoto action_43
action_0 (17) = happyGoto action_44
action_0 (18) = happyGoto action_55
action_0 (19) = happyGoto action_34
action_0 (21) = happyGoto action_47
action_0 (22) = happyGoto action_48
action_0 _ = happyFail

action_1 (31) = happyShift action_37
action_1 (39) = happyShift action_38
action_1 (40) = happyShift action_39
action_1 (44) = happyShift action_40
action_1 (47) = happyShift action_41
action_1 (48) = happyShift action_42
action_1 (54) = happyShift action_13
action_1 (15) = happyGoto action_33
action_1 (19) = happyGoto action_54
action_1 _ = happyFail

action_2 (30) = happyShift action_36
action_2 (31) = happyShift action_37
action_2 (39) = happyShift action_38
action_2 (40) = happyShift action_39
action_2 (44) = happyShift action_40
action_2 (45) = happyShift action_49
action_2 (46) = happyShift action_50
action_2 (47) = happyShift action_41
action_2 (48) = happyShift action_42
action_2 (49) = happyShift action_51
action_2 (51) = happyShift action_31
action_2 (52) = happyShift action_32
action_2 (54) = happyShift action_13
action_2 (55) = happyShift action_52
action_2 (56) = happyShift action_53
action_2 (15) = happyGoto action_33
action_2 (16) = happyGoto action_43
action_2 (17) = happyGoto action_44
action_2 (18) = happyGoto action_45
action_2 (19) = happyGoto action_34
action_2 (20) = happyGoto action_46
action_2 (21) = happyGoto action_47
action_2 (22) = happyGoto action_48
action_2 _ = happyFail

action_3 (30) = happyShift action_36
action_3 (31) = happyShift action_37
action_3 (39) = happyShift action_38
action_3 (40) = happyShift action_39
action_3 (44) = happyShift action_40
action_3 (47) = happyShift action_41
action_3 (48) = happyShift action_42
action_3 (54) = happyShift action_13
action_3 (15) = happyGoto action_33
action_3 (19) = happyGoto action_34
action_3 (21) = happyGoto action_35
action_3 _ = happyFail

action_4 (51) = happyShift action_31
action_4 (52) = happyShift action_32
action_4 (22) = happyGoto action_30
action_4 _ = happyFail

action_5 (31) = happyShift action_26
action_5 (50) = happyShift action_27
action_5 (54) = happyShift action_13
action_5 (15) = happyGoto action_24
action_5 (23) = happyGoto action_28
action_5 (24) = happyGoto action_29
action_5 _ = happyFail

action_6 (31) = happyShift action_26
action_6 (50) = happyShift action_27
action_6 (54) = happyShift action_13
action_6 (15) = happyGoto action_24
action_6 (24) = happyGoto action_25
action_6 _ = happyFail

action_7 (54) = happyShift action_13
action_7 (15) = happyGoto action_20
action_7 (25) = happyGoto action_23
action_7 _ = happyFail

action_8 (54) = happyShift action_13
action_8 (15) = happyGoto action_20
action_8 (25) = happyGoto action_21
action_8 (26) = happyGoto action_22
action_8 _ = happyReduce_46

action_9 (54) = happyShift action_13
action_9 (15) = happyGoto action_16
action_9 (27) = happyGoto action_19
action_9 _ = happyFail

action_10 (54) = happyShift action_13
action_10 (15) = happyGoto action_16
action_10 (27) = happyGoto action_17
action_10 (28) = happyGoto action_18
action_10 _ = happyReduce_50

action_11 (54) = happyShift action_13
action_11 (15) = happyGoto action_14
action_11 (29) = happyGoto action_15
action_11 _ = happyFail

action_12 (54) = happyShift action_13
action_12 _ = happyFail

action_13 _ = happyReduce_12

action_14 (54) = happyShift action_13
action_14 (15) = happyGoto action_14
action_14 (29) = happyGoto action_78
action_14 _ = happyReduce_53

action_15 (57) = happyAccept
action_15 _ = happyFail

action_16 (35) = happyShift action_77
action_16 _ = happyFail

action_17 (53) = happyShift action_76
action_17 _ = happyReduce_51

action_18 (57) = happyAccept
action_18 _ = happyFail

action_19 (57) = happyAccept
action_19 _ = happyFail

action_20 (31) = happyShift action_37
action_20 (39) = happyShift action_38
action_20 (40) = happyShift action_39
action_20 (44) = happyShift action_40
action_20 (47) = happyShift action_41
action_20 (48) = happyShift action_42
action_20 (54) = happyShift action_13
action_20 (15) = happyGoto action_33
action_20 (19) = happyGoto action_75
action_20 _ = happyFail

action_21 (53) = happyShift action_74
action_21 _ = happyReduce_47

action_22 (57) = happyAccept
action_22 _ = happyFail

action_23 (57) = happyAccept
action_23 _ = happyFail

action_24 _ = happyReduce_43

action_25 (57) = happyAccept
action_25 _ = happyFail

action_26 (31) = happyShift action_26
action_26 (50) = happyShift action_27
action_26 (54) = happyShift action_13
action_26 (15) = happyGoto action_24
action_26 (23) = happyGoto action_73
action_26 (24) = happyGoto action_29
action_26 _ = happyFail

action_27 _ = happyReduce_42

action_28 (57) = happyAccept
action_28 _ = happyFail

action_29 (34) = happyShift action_72
action_29 _ = happyReduce_41

action_30 (57) = happyAccept
action_30 _ = happyFail

action_31 (31) = happyShift action_26
action_31 (50) = happyShift action_27
action_31 (54) = happyShift action_13
action_31 (15) = happyGoto action_24
action_31 (24) = happyGoto action_71
action_31 _ = happyFail

action_32 (31) = happyShift action_26
action_32 (50) = happyShift action_27
action_32 (54) = happyShift action_13
action_32 (15) = happyGoto action_24
action_32 (24) = happyGoto action_70
action_32 _ = happyFail

action_33 _ = happyReduce_29

action_34 (37) = happyShift action_56
action_34 (38) = happyShift action_57
action_34 _ = happyReduce_37

action_35 (31) = happyShift action_37
action_35 (39) = happyShift action_38
action_35 (40) = happyShift action_39
action_35 (44) = happyShift action_40
action_35 (47) = happyShift action_41
action_35 (48) = happyShift action_42
action_35 (54) = happyShift action_13
action_35 (57) = happyAccept
action_35 (15) = happyGoto action_33
action_35 (19) = happyGoto action_62
action_35 _ = happyFail

action_36 (54) = happyShift action_13
action_36 (15) = happyGoto action_69
action_36 _ = happyFail

action_37 (30) = happyShift action_36
action_37 (31) = happyShift action_37
action_37 (39) = happyShift action_38
action_37 (40) = happyShift action_39
action_37 (44) = happyShift action_40
action_37 (45) = happyShift action_49
action_37 (46) = happyShift action_50
action_37 (47) = happyShift action_41
action_37 (48) = happyShift action_42
action_37 (49) = happyShift action_51
action_37 (51) = happyShift action_31
action_37 (52) = happyShift action_32
action_37 (54) = happyShift action_13
action_37 (55) = happyShift action_52
action_37 (56) = happyShift action_53
action_37 (15) = happyGoto action_33
action_37 (16) = happyGoto action_43
action_37 (17) = happyGoto action_44
action_37 (18) = happyGoto action_45
action_37 (19) = happyGoto action_34
action_37 (20) = happyGoto action_68
action_37 (21) = happyGoto action_47
action_37 (22) = happyGoto action_48
action_37 _ = happyFail

action_38 _ = happyReduce_26

action_39 _ = happyReduce_25

action_40 _ = happyReduce_31

action_41 _ = happyReduce_24

action_42 _ = happyReduce_30

action_43 (31) = happyShift action_67
action_43 _ = happyFail

action_44 (31) = happyShift action_66
action_44 _ = happyFail

action_45 (34) = happyShift action_65
action_45 _ = happyReduce_34

action_46 (57) = happyAccept
action_46 _ = happyFail

action_47 (31) = happyShift action_37
action_47 (33) = happyShift action_63
action_47 (35) = happyShift action_64
action_47 (39) = happyShift action_38
action_47 (40) = happyShift action_39
action_47 (44) = happyShift action_40
action_47 (47) = happyShift action_41
action_47 (48) = happyShift action_42
action_47 (54) = happyShift action_13
action_47 (15) = happyGoto action_33
action_47 (19) = happyGoto action_62
action_47 _ = happyReduce_23

action_48 (42) = happyShift action_61
action_48 _ = happyFail

action_49 (31) = happyShift action_26
action_49 (50) = happyShift action_27
action_49 (54) = happyShift action_13
action_49 (15) = happyGoto action_24
action_49 (24) = happyGoto action_60
action_49 _ = happyFail

action_50 (31) = happyShift action_26
action_50 (50) = happyShift action_27
action_50 (54) = happyShift action_13
action_50 (15) = happyGoto action_24
action_50 (24) = happyGoto action_59
action_50 _ = happyFail

action_51 (31) = happyShift action_26
action_51 (50) = happyShift action_27
action_51 (54) = happyShift action_13
action_51 (15) = happyGoto action_24
action_51 (24) = happyGoto action_58
action_51 _ = happyFail

action_52 _ = happyReduce_13

action_53 _ = happyReduce_14

action_54 (37) = happyShift action_56
action_54 (38) = happyShift action_57
action_54 (57) = happyAccept
action_54 _ = happyFail

action_55 (57) = happyAccept
action_55 _ = happyFail

action_56 _ = happyReduce_27

action_57 _ = happyReduce_28

action_58 (36) = happyShift action_96
action_58 _ = happyFail

action_59 (41) = happyShift action_95
action_59 _ = happyFail

action_60 (41) = happyShift action_94
action_60 _ = happyFail

action_61 (30) = happyShift action_36
action_61 (31) = happyShift action_37
action_61 (39) = happyShift action_38
action_61 (40) = happyShift action_39
action_61 (44) = happyShift action_40
action_61 (45) = happyShift action_49
action_61 (46) = happyShift action_50
action_61 (47) = happyShift action_41
action_61 (48) = happyShift action_42
action_61 (49) = happyShift action_51
action_61 (51) = happyShift action_31
action_61 (52) = happyShift action_32
action_61 (54) = happyShift action_13
action_61 (55) = happyShift action_52
action_61 (56) = happyShift action_53
action_61 (15) = happyGoto action_33
action_61 (16) = happyGoto action_43
action_61 (17) = happyGoto action_44
action_61 (18) = happyGoto action_93
action_61 (19) = happyGoto action_34
action_61 (21) = happyGoto action_47
action_61 (22) = happyGoto action_48
action_61 _ = happyFail

action_62 (37) = happyShift action_56
action_62 (38) = happyShift action_57
action_62 _ = happyReduce_36

action_63 (30) = happyShift action_36
action_63 (31) = happyShift action_37
action_63 (39) = happyShift action_38
action_63 (40) = happyShift action_39
action_63 (44) = happyShift action_40
action_63 (45) = happyShift action_49
action_63 (46) = happyShift action_50
action_63 (47) = happyShift action_41
action_63 (48) = happyShift action_42
action_63 (49) = happyShift action_51
action_63 (51) = happyShift action_31
action_63 (52) = happyShift action_32
action_63 (54) = happyShift action_13
action_63 (55) = happyShift action_52
action_63 (56) = happyShift action_53
action_63 (15) = happyGoto action_33
action_63 (16) = happyGoto action_43
action_63 (17) = happyGoto action_44
action_63 (18) = happyGoto action_92
action_63 (19) = happyGoto action_34
action_63 (21) = happyGoto action_47
action_63 (22) = happyGoto action_48
action_63 _ = happyFail

action_64 (30) = happyShift action_36
action_64 (31) = happyShift action_37
action_64 (39) = happyShift action_38
action_64 (40) = happyShift action_39
action_64 (44) = happyShift action_40
action_64 (45) = happyShift action_49
action_64 (46) = happyShift action_50
action_64 (47) = happyShift action_41
action_64 (48) = happyShift action_42
action_64 (49) = happyShift action_51
action_64 (51) = happyShift action_31
action_64 (52) = happyShift action_32
action_64 (54) = happyShift action_13
action_64 (55) = happyShift action_52
action_64 (56) = happyShift action_53
action_64 (15) = happyGoto action_33
action_64 (16) = happyGoto action_43
action_64 (17) = happyGoto action_44
action_64 (18) = happyGoto action_91
action_64 (19) = happyGoto action_34
action_64 (21) = happyGoto action_47
action_64 (22) = happyGoto action_48
action_64 _ = happyFail

action_65 (30) = happyShift action_36
action_65 (31) = happyShift action_37
action_65 (39) = happyShift action_38
action_65 (40) = happyShift action_39
action_65 (44) = happyShift action_40
action_65 (45) = happyShift action_49
action_65 (46) = happyShift action_50
action_65 (47) = happyShift action_41
action_65 (48) = happyShift action_42
action_65 (49) = happyShift action_51
action_65 (51) = happyShift action_31
action_65 (52) = happyShift action_32
action_65 (54) = happyShift action_13
action_65 (55) = happyShift action_52
action_65 (56) = happyShift action_53
action_65 (15) = happyGoto action_33
action_65 (16) = happyGoto action_43
action_65 (17) = happyGoto action_44
action_65 (18) = happyGoto action_45
action_65 (19) = happyGoto action_34
action_65 (20) = happyGoto action_90
action_65 (21) = happyGoto action_47
action_65 (22) = happyGoto action_48
action_65 _ = happyFail

action_66 (54) = happyShift action_13
action_66 (15) = happyGoto action_20
action_66 (25) = happyGoto action_21
action_66 (26) = happyGoto action_89
action_66 _ = happyReduce_46

action_67 (54) = happyShift action_13
action_67 (15) = happyGoto action_16
action_67 (27) = happyGoto action_17
action_67 (28) = happyGoto action_88
action_67 _ = happyReduce_50

action_68 (32) = happyShift action_87
action_68 _ = happyFail

action_69 (31) = happyShift action_37
action_69 (39) = happyShift action_38
action_69 (40) = happyShift action_39
action_69 (44) = happyShift action_40
action_69 (47) = happyShift action_41
action_69 (48) = happyShift action_42
action_69 (54) = happyShift action_13
action_69 (15) = happyGoto action_33
action_69 (19) = happyGoto action_86
action_69 _ = happyFail

action_70 (41) = happyShift action_85
action_70 _ = happyFail

action_71 (41) = happyShift action_84
action_71 _ = happyFail

action_72 (31) = happyShift action_26
action_72 (50) = happyShift action_27
action_72 (54) = happyShift action_13
action_72 (15) = happyGoto action_24
action_72 (23) = happyGoto action_83
action_72 (24) = happyGoto action_29
action_72 _ = happyFail

action_73 (32) = happyShift action_82
action_73 _ = happyFail

action_74 (54) = happyShift action_13
action_74 (15) = happyGoto action_20
action_74 (25) = happyGoto action_21
action_74 (26) = happyGoto action_81
action_74 _ = happyReduce_46

action_75 (37) = happyShift action_56
action_75 (38) = happyShift action_57
action_75 _ = happyReduce_45

action_76 (54) = happyShift action_13
action_76 (15) = happyGoto action_16
action_76 (27) = happyGoto action_17
action_76 (28) = happyGoto action_80
action_76 _ = happyReduce_50

action_77 (30) = happyShift action_36
action_77 (31) = happyShift action_37
action_77 (39) = happyShift action_38
action_77 (40) = happyShift action_39
action_77 (44) = happyShift action_40
action_77 (45) = happyShift action_49
action_77 (46) = happyShift action_50
action_77 (47) = happyShift action_41
action_77 (48) = happyShift action_42
action_77 (49) = happyShift action_51
action_77 (51) = happyShift action_31
action_77 (52) = happyShift action_32
action_77 (54) = happyShift action_13
action_77 (55) = happyShift action_52
action_77 (56) = happyShift action_53
action_77 (15) = happyGoto action_33
action_77 (16) = happyGoto action_43
action_77 (17) = happyGoto action_44
action_77 (18) = happyGoto action_79
action_77 (19) = happyGoto action_34
action_77 (21) = happyGoto action_47
action_77 (22) = happyGoto action_48
action_77 _ = happyFail

action_78 _ = happyReduce_54

action_79 _ = happyReduce_49

action_80 _ = happyReduce_52

action_81 _ = happyReduce_48

action_82 _ = happyReduce_44

action_83 _ = happyReduce_40

action_84 (30) = happyShift action_36
action_84 (31) = happyShift action_37
action_84 (39) = happyShift action_38
action_84 (40) = happyShift action_39
action_84 (44) = happyShift action_40
action_84 (45) = happyShift action_49
action_84 (46) = happyShift action_50
action_84 (47) = happyShift action_41
action_84 (48) = happyShift action_42
action_84 (49) = happyShift action_51
action_84 (51) = happyShift action_31
action_84 (52) = happyShift action_32
action_84 (54) = happyShift action_13
action_84 (55) = happyShift action_52
action_84 (56) = happyShift action_53
action_84 (15) = happyGoto action_33
action_84 (16) = happyGoto action_43
action_84 (17) = happyGoto action_44
action_84 (18) = happyGoto action_103
action_84 (19) = happyGoto action_34
action_84 (21) = happyGoto action_47
action_84 (22) = happyGoto action_48
action_84 _ = happyFail

action_85 (30) = happyShift action_36
action_85 (31) = happyShift action_37
action_85 (39) = happyShift action_38
action_85 (40) = happyShift action_39
action_85 (44) = happyShift action_40
action_85 (45) = happyShift action_49
action_85 (46) = happyShift action_50
action_85 (47) = happyShift action_41
action_85 (48) = happyShift action_42
action_85 (49) = happyShift action_51
action_85 (51) = happyShift action_31
action_85 (52) = happyShift action_32
action_85 (54) = happyShift action_13
action_85 (55) = happyShift action_52
action_85 (56) = happyShift action_53
action_85 (15) = happyGoto action_33
action_85 (16) = happyGoto action_43
action_85 (17) = happyGoto action_44
action_85 (18) = happyGoto action_102
action_85 (19) = happyGoto action_34
action_85 (21) = happyGoto action_47
action_85 (22) = happyGoto action_48
action_85 _ = happyFail

action_86 (37) = happyShift action_56
action_86 (38) = happyShift action_57
action_86 _ = happyReduce_35

action_87 _ = happyReduce_32

action_88 (32) = happyShift action_101
action_88 _ = happyFail

action_89 (32) = happyShift action_100
action_89 _ = happyFail

action_90 _ = happyReduce_33

action_91 _ = happyReduce_21

action_92 _ = happyReduce_22

action_93 _ = happyReduce_20

action_94 (30) = happyShift action_36
action_94 (31) = happyShift action_37
action_94 (39) = happyShift action_38
action_94 (40) = happyShift action_39
action_94 (44) = happyShift action_40
action_94 (45) = happyShift action_49
action_94 (46) = happyShift action_50
action_94 (47) = happyShift action_41
action_94 (48) = happyShift action_42
action_94 (49) = happyShift action_51
action_94 (51) = happyShift action_31
action_94 (52) = happyShift action_32
action_94 (54) = happyShift action_13
action_94 (55) = happyShift action_52
action_94 (56) = happyShift action_53
action_94 (15) = happyGoto action_33
action_94 (16) = happyGoto action_43
action_94 (17) = happyGoto action_44
action_94 (18) = happyGoto action_99
action_94 (19) = happyGoto action_34
action_94 (21) = happyGoto action_47
action_94 (22) = happyGoto action_48
action_94 _ = happyFail

action_95 (30) = happyShift action_36
action_95 (31) = happyShift action_37
action_95 (39) = happyShift action_38
action_95 (40) = happyShift action_39
action_95 (44) = happyShift action_40
action_95 (45) = happyShift action_49
action_95 (46) = happyShift action_50
action_95 (47) = happyShift action_41
action_95 (48) = happyShift action_42
action_95 (49) = happyShift action_51
action_95 (51) = happyShift action_31
action_95 (52) = happyShift action_32
action_95 (54) = happyShift action_13
action_95 (55) = happyShift action_52
action_95 (56) = happyShift action_53
action_95 (15) = happyGoto action_33
action_95 (16) = happyGoto action_43
action_95 (17) = happyGoto action_44
action_95 (18) = happyGoto action_98
action_95 (19) = happyGoto action_34
action_95 (21) = happyGoto action_47
action_95 (22) = happyGoto action_48
action_95 _ = happyFail

action_96 (30) = happyShift action_36
action_96 (31) = happyShift action_37
action_96 (39) = happyShift action_38
action_96 (40) = happyShift action_39
action_96 (44) = happyShift action_40
action_96 (45) = happyShift action_49
action_96 (46) = happyShift action_50
action_96 (47) = happyShift action_41
action_96 (48) = happyShift action_42
action_96 (49) = happyShift action_51
action_96 (51) = happyShift action_31
action_96 (52) = happyShift action_32
action_96 (54) = happyShift action_13
action_96 (55) = happyShift action_52
action_96 (56) = happyShift action_53
action_96 (15) = happyGoto action_33
action_96 (16) = happyGoto action_43
action_96 (17) = happyGoto action_44
action_96 (18) = happyGoto action_97
action_96 (19) = happyGoto action_34
action_96 (21) = happyGoto action_47
action_96 (22) = happyGoto action_48
action_96 _ = happyFail

action_97 _ = happyReduce_15

action_98 (36) = happyShift action_107
action_98 _ = happyFail

action_99 (36) = happyShift action_106
action_99 _ = happyFail

action_100 _ = happyReduce_18

action_101 _ = happyReduce_19

action_102 (43) = happyShift action_105
action_102 _ = happyFail

action_103 (43) = happyShift action_104
action_103 _ = happyFail

action_104 (30) = happyShift action_36
action_104 (31) = happyShift action_37
action_104 (39) = happyShift action_38
action_104 (40) = happyShift action_39
action_104 (44) = happyShift action_40
action_104 (45) = happyShift action_49
action_104 (46) = happyShift action_50
action_104 (47) = happyShift action_41
action_104 (48) = happyShift action_42
action_104 (49) = happyShift action_51
action_104 (51) = happyShift action_31
action_104 (52) = happyShift action_32
action_104 (54) = happyShift action_13
action_104 (55) = happyShift action_52
action_104 (56) = happyShift action_53
action_104 (15) = happyGoto action_33
action_104 (16) = happyGoto action_43
action_104 (17) = happyGoto action_44
action_104 (18) = happyGoto action_111
action_104 (19) = happyGoto action_34
action_104 (21) = happyGoto action_47
action_104 (22) = happyGoto action_48
action_104 _ = happyFail

action_105 (30) = happyShift action_36
action_105 (31) = happyShift action_37
action_105 (39) = happyShift action_38
action_105 (40) = happyShift action_39
action_105 (44) = happyShift action_40
action_105 (45) = happyShift action_49
action_105 (46) = happyShift action_50
action_105 (47) = happyShift action_41
action_105 (48) = happyShift action_42
action_105 (49) = happyShift action_51
action_105 (51) = happyShift action_31
action_105 (52) = happyShift action_32
action_105 (54) = happyShift action_13
action_105 (55) = happyShift action_52
action_105 (56) = happyShift action_53
action_105 (15) = happyGoto action_33
action_105 (16) = happyGoto action_43
action_105 (17) = happyGoto action_44
action_105 (18) = happyGoto action_110
action_105 (19) = happyGoto action_34
action_105 (21) = happyGoto action_47
action_105 (22) = happyGoto action_48
action_105 _ = happyFail

action_106 (30) = happyShift action_36
action_106 (31) = happyShift action_37
action_106 (39) = happyShift action_38
action_106 (40) = happyShift action_39
action_106 (44) = happyShift action_40
action_106 (45) = happyShift action_49
action_106 (46) = happyShift action_50
action_106 (47) = happyShift action_41
action_106 (48) = happyShift action_42
action_106 (49) = happyShift action_51
action_106 (51) = happyShift action_31
action_106 (52) = happyShift action_32
action_106 (54) = happyShift action_13
action_106 (55) = happyShift action_52
action_106 (56) = happyShift action_53
action_106 (15) = happyGoto action_33
action_106 (16) = happyGoto action_43
action_106 (17) = happyGoto action_44
action_106 (18) = happyGoto action_109
action_106 (19) = happyGoto action_34
action_106 (21) = happyGoto action_47
action_106 (22) = happyGoto action_48
action_106 _ = happyFail

action_107 (30) = happyShift action_36
action_107 (31) = happyShift action_37
action_107 (39) = happyShift action_38
action_107 (40) = happyShift action_39
action_107 (44) = happyShift action_40
action_107 (45) = happyShift action_49
action_107 (46) = happyShift action_50
action_107 (47) = happyShift action_41
action_107 (48) = happyShift action_42
action_107 (49) = happyShift action_51
action_107 (51) = happyShift action_31
action_107 (52) = happyShift action_32
action_107 (54) = happyShift action_13
action_107 (55) = happyShift action_52
action_107 (56) = happyShift action_53
action_107 (15) = happyGoto action_33
action_107 (16) = happyGoto action_43
action_107 (17) = happyGoto action_44
action_107 (18) = happyGoto action_108
action_107 (19) = happyGoto action_34
action_107 (21) = happyGoto action_47
action_107 (22) = happyGoto action_48
action_107 _ = happyFail

action_108 _ = happyReduce_17

action_109 _ = happyReduce_16

action_110 _ = happyReduce_39

action_111 _ = happyReduce_38

happyReduce_12 = happySpecReduce_1  15 happyReduction_12
happyReduction_12 (HappyTerminal (PT _ (TV happy_var_1)))
	 =  HappyAbsSyn15
		 (Ident happy_var_1
	)
happyReduction_12 _  = notHappyAtAll 

happyReduce_13 = happySpecReduce_1  16 happyReduction_13
happyReduction_13 (HappyTerminal happy_var_1)
	 =  HappyAbsSyn16
		 (CaseTk (mkPosToken happy_var_1)
	)
happyReduction_13 _  = notHappyAtAll 

happyReduce_14 = happySpecReduce_1  17 happyReduction_14
happyReduction_14 (HappyTerminal happy_var_1)
	 =  HappyAbsSyn17
		 (DataTk (mkPosToken happy_var_1)
	)
happyReduction_14 _  = notHappyAtAll 

happyReduce_15 = happyReduce 4 18 happyReduction_15
happyReduction_15 ((HappyAbsSyn18  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn23  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn18
		 (Core.Abs.ELam happy_var_2 happy_var_4
	) `HappyStk` happyRest

happyReduce_16 = happyReduce 6 18 happyReduction_16
happyReduction_16 ((HappyAbsSyn18  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn18  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn23  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn18
		 (Core.Abs.EPi happy_var_2 happy_var_4 happy_var_6
	) `HappyStk` happyRest

happyReduce_17 = happyReduce 6 18 happyReduction_17
happyReduction_17 ((HappyAbsSyn18  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn18  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn23  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn18
		 (Core.Abs.ESig happy_var_2 happy_var_4 happy_var_6
	) `HappyStk` happyRest

happyReduce_18 = happyReduce 4 18 happyReduction_18
happyReduction_18 (_ `HappyStk`
	(HappyAbsSyn26  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn17  happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn18
		 (Core.Abs.EData happy_var_1 happy_var_3
	) `HappyStk` happyRest

happyReduce_19 = happyReduce 4 18 happyReduction_19
happyReduction_19 (_ `HappyStk`
	(HappyAbsSyn28  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn16  happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn18
		 (Core.Abs.ECase happy_var_1 happy_var_3
	) `HappyStk` happyRest

happyReduce_20 = happySpecReduce_3  18 happyReduction_20
happyReduction_20 (HappyAbsSyn18  happy_var_3)
	_
	(HappyAbsSyn22  happy_var_1)
	 =  HappyAbsSyn18
		 (Core.Abs.EDec happy_var_1 happy_var_3
	)
happyReduction_20 _ _ _  = notHappyAtAll 

happyReduce_21 = happySpecReduce_3  18 happyReduction_21
happyReduction_21 (HappyAbsSyn18  happy_var_3)
	_
	(HappyAbsSyn18  happy_var_1)
	 =  HappyAbsSyn18
		 (Core.Par.eArrow_ happy_var_1 happy_var_3
	)
happyReduction_21 _ _ _  = notHappyAtAll 

happyReduce_22 = happySpecReduce_3  18 happyReduction_22
happyReduction_22 (HappyAbsSyn18  happy_var_3)
	_
	(HappyAbsSyn18  happy_var_1)
	 =  HappyAbsSyn18
		 (Core.Par.eTimes_ happy_var_1 happy_var_3
	)
happyReduction_22 _ _ _  = notHappyAtAll 

happyReduce_23 = happySpecReduce_1  18 happyReduction_23
happyReduction_23 (HappyAbsSyn18  happy_var_1)
	 =  HappyAbsSyn18
		 (happy_var_1
	)
happyReduction_23 _  = notHappyAtAll 

happyReduce_24 = happySpecReduce_1  19 happyReduction_24
happyReduction_24 _
	 =  HappyAbsSyn18
		 (Core.Abs.ESet
	)

happyReduce_25 = happySpecReduce_1  19 happyReduction_25
happyReduction_25 _
	 =  HappyAbsSyn18
		 (Core.Abs.EOne
	)

happyReduce_26 = happySpecReduce_1  19 happyReduction_26
happyReduction_26 _
	 =  HappyAbsSyn18
		 (Core.Abs.Eunit
	)

happyReduce_27 = happySpecReduce_2  19 happyReduction_27
happyReduction_27 _
	(HappyAbsSyn18  happy_var_1)
	 =  HappyAbsSyn18
		 (Core.Abs.EFst happy_var_1
	)
happyReduction_27 _ _  = notHappyAtAll 

happyReduce_28 = happySpecReduce_2  19 happyReduction_28
happyReduction_28 _
	(HappyAbsSyn18  happy_var_1)
	 =  HappyAbsSyn18
		 (Core.Abs.ESnd happy_var_1
	)
happyReduction_28 _ _  = notHappyAtAll 

happyReduce_29 = happySpecReduce_1  19 happyReduction_29
happyReduction_29 (HappyAbsSyn15  happy_var_1)
	 =  HappyAbsSyn18
		 (Core.Abs.EVar happy_var_1
	)
happyReduction_29 _  = notHappyAtAll 

happyReduce_30 = happySpecReduce_1  19 happyReduction_30
happyReduction_30 _
	 =  HappyAbsSyn18
		 (Core.Abs.EVoid
	)

happyReduce_31 = happySpecReduce_1  19 happyReduction_31
happyReduction_31 _
	 =  HappyAbsSyn18
		 (Core.Abs.EPN
	)

happyReduce_32 = happySpecReduce_3  19 happyReduction_32
happyReduction_32 _
	(HappyAbsSyn18  happy_var_2)
	_
	 =  HappyAbsSyn18
		 (happy_var_2
	)
happyReduction_32 _ _ _  = notHappyAtAll 

happyReduce_33 = happySpecReduce_3  20 happyReduction_33
happyReduction_33 (HappyAbsSyn18  happy_var_3)
	_
	(HappyAbsSyn18  happy_var_1)
	 =  HappyAbsSyn18
		 (Core.Abs.EPair happy_var_1 happy_var_3
	)
happyReduction_33 _ _ _  = notHappyAtAll 

happyReduce_34 = happySpecReduce_1  20 happyReduction_34
happyReduction_34 (HappyAbsSyn18  happy_var_1)
	 =  HappyAbsSyn18
		 (happy_var_1
	)
happyReduction_34 _  = notHappyAtAll 

happyReduce_35 = happySpecReduce_3  21 happyReduction_35
happyReduction_35 (HappyAbsSyn18  happy_var_3)
	(HappyAbsSyn15  happy_var_2)
	_
	 =  HappyAbsSyn18
		 (Core.Abs.ECon happy_var_2 happy_var_3
	)
happyReduction_35 _ _ _  = notHappyAtAll 

happyReduce_36 = happySpecReduce_2  21 happyReduction_36
happyReduction_36 (HappyAbsSyn18  happy_var_2)
	(HappyAbsSyn18  happy_var_1)
	 =  HappyAbsSyn18
		 (Core.Abs.EApp happy_var_1 happy_var_2
	)
happyReduction_36 _ _  = notHappyAtAll 

happyReduce_37 = happySpecReduce_1  21 happyReduction_37
happyReduction_37 (HappyAbsSyn18  happy_var_1)
	 =  HappyAbsSyn18
		 (happy_var_1
	)
happyReduction_37 _  = notHappyAtAll 

happyReduce_38 = happyReduce 6 22 happyReduction_38
happyReduction_38 ((HappyAbsSyn18  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn18  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn23  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn22
		 (Core.Abs.Def happy_var_2 happy_var_4 happy_var_6
	) `HappyStk` happyRest

happyReduce_39 = happyReduce 6 22 happyReduction_39
happyReduction_39 ((HappyAbsSyn18  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn18  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn23  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn22
		 (Core.Abs.Drec happy_var_2 happy_var_4 happy_var_6
	) `HappyStk` happyRest

happyReduce_40 = happySpecReduce_3  23 happyReduction_40
happyReduction_40 (HappyAbsSyn23  happy_var_3)
	_
	(HappyAbsSyn23  happy_var_1)
	 =  HappyAbsSyn23
		 (Core.Abs.PPair happy_var_1 happy_var_3
	)
happyReduction_40 _ _ _  = notHappyAtAll 

happyReduce_41 = happySpecReduce_1  23 happyReduction_41
happyReduction_41 (HappyAbsSyn23  happy_var_1)
	 =  HappyAbsSyn23
		 (happy_var_1
	)
happyReduction_41 _  = notHappyAtAll 

happyReduce_42 = happySpecReduce_1  24 happyReduction_42
happyReduction_42 _
	 =  HappyAbsSyn23
		 (Core.Abs.Punit
	)

happyReduce_43 = happySpecReduce_1  24 happyReduction_43
happyReduction_43 (HappyAbsSyn15  happy_var_1)
	 =  HappyAbsSyn23
		 (Core.Abs.PVar happy_var_1
	)
happyReduction_43 _  = notHappyAtAll 

happyReduce_44 = happySpecReduce_3  24 happyReduction_44
happyReduction_44 _
	(HappyAbsSyn23  happy_var_2)
	_
	 =  HappyAbsSyn23
		 (happy_var_2
	)
happyReduction_44 _ _ _  = notHappyAtAll 

happyReduce_45 = happySpecReduce_2  25 happyReduction_45
happyReduction_45 (HappyAbsSyn18  happy_var_2)
	(HappyAbsSyn15  happy_var_1)
	 =  HappyAbsSyn25
		 (Core.Abs.Summand happy_var_1 happy_var_2
	)
happyReduction_45 _ _  = notHappyAtAll 

happyReduce_46 = happySpecReduce_0  26 happyReduction_46
happyReduction_46  =  HappyAbsSyn26
		 ([]
	)

happyReduce_47 = happySpecReduce_1  26 happyReduction_47
happyReduction_47 (HappyAbsSyn25  happy_var_1)
	 =  HappyAbsSyn26
		 ((:[]) happy_var_1
	)
happyReduction_47 _  = notHappyAtAll 

happyReduce_48 = happySpecReduce_3  26 happyReduction_48
happyReduction_48 (HappyAbsSyn26  happy_var_3)
	_
	(HappyAbsSyn25  happy_var_1)
	 =  HappyAbsSyn26
		 ((:) happy_var_1 happy_var_3
	)
happyReduction_48 _ _ _  = notHappyAtAll 

happyReduce_49 = happySpecReduce_3  27 happyReduction_49
happyReduction_49 (HappyAbsSyn18  happy_var_3)
	_
	(HappyAbsSyn15  happy_var_1)
	 =  HappyAbsSyn27
		 (Core.Abs.Branch happy_var_1 happy_var_3
	)
happyReduction_49 _ _ _  = notHappyAtAll 

happyReduce_50 = happySpecReduce_0  28 happyReduction_50
happyReduction_50  =  HappyAbsSyn28
		 ([]
	)

happyReduce_51 = happySpecReduce_1  28 happyReduction_51
happyReduction_51 (HappyAbsSyn27  happy_var_1)
	 =  HappyAbsSyn28
		 ((:[]) happy_var_1
	)
happyReduction_51 _  = notHappyAtAll 

happyReduce_52 = happySpecReduce_3  28 happyReduction_52
happyReduction_52 (HappyAbsSyn28  happy_var_3)
	_
	(HappyAbsSyn27  happy_var_1)
	 =  HappyAbsSyn28
		 ((:) happy_var_1 happy_var_3
	)
happyReduction_52 _ _ _  = notHappyAtAll 

happyReduce_53 = happySpecReduce_1  29 happyReduction_53
happyReduction_53 (HappyAbsSyn15  happy_var_1)
	 =  HappyAbsSyn29
		 ((:[]) happy_var_1
	)
happyReduction_53 _  = notHappyAtAll 

happyReduce_54 = happySpecReduce_2  29 happyReduction_54
happyReduction_54 (HappyAbsSyn29  happy_var_2)
	(HappyAbsSyn15  happy_var_1)
	 =  HappyAbsSyn29
		 ((:) happy_var_1 happy_var_2
	)
happyReduction_54 _ _  = notHappyAtAll 

happyNewToken action sts stk [] =
	action 57 57 notHappyAtAll (HappyState action) sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = action i i tk (HappyState action) sts stk tks in
	case tk of {
	PT _ (TS _ 1) -> cont 30;
	PT _ (TS _ 2) -> cont 31;
	PT _ (TS _ 3) -> cont 32;
	PT _ (TS _ 4) -> cont 33;
	PT _ (TS _ 5) -> cont 34;
	PT _ (TS _ 6) -> cont 35;
	PT _ (TS _ 7) -> cont 36;
	PT _ (TS _ 8) -> cont 37;
	PT _ (TS _ 9) -> cont 38;
	PT _ (TS _ 10) -> cont 39;
	PT _ (TS _ 11) -> cont 40;
	PT _ (TS _ 12) -> cont 41;
	PT _ (TS _ 13) -> cont 42;
	PT _ (TS _ 14) -> cont 43;
	PT _ (TS _ 15) -> cont 44;
	PT _ (TS _ 16) -> cont 45;
	PT _ (TS _ 17) -> cont 46;
	PT _ (TS _ 18) -> cont 47;
	PT _ (TS _ 19) -> cont 48;
	PT _ (TS _ 20) -> cont 49;
	PT _ (TS _ 21) -> cont 50;
	PT _ (TS _ 22) -> cont 51;
	PT _ (TS _ 23) -> cont 52;
	PT _ (TS _ 24) -> cont 53;
	PT _ (TV happy_dollar_dollar) -> cont 54;
	PT _ (T_CaseTk _) -> cont 55;
	PT _ (T_DataTk _) -> cont 56;
	_ -> happyError' (tk:tks)
	}

happyError_ 57 tk tks = happyError' tks
happyError_ _ tk tks = happyError' (tk:tks)

happyThen :: () => Err a -> (a -> Err b) -> Err b
happyThen = (thenM)
happyReturn :: () => a -> Err a
happyReturn = (returnM)
happyThen1 m k tks = (thenM) m (\a -> k a tks)
happyReturn1 :: () => a -> b -> Err a
happyReturn1 = \a tks -> (returnM) a
happyError' :: () => [(Token)] -> Err a
happyError' = happyError

pExp1 tks = happySomeParser where
  happySomeParser = happyThen (happyParse action_0 tks) (\x -> case x of {HappyAbsSyn18 z -> happyReturn z; _other -> notHappyAtAll })

pExp3 tks = happySomeParser where
  happySomeParser = happyThen (happyParse action_1 tks) (\x -> case x of {HappyAbsSyn18 z -> happyReturn z; _other -> notHappyAtAll })

pExp tks = happySomeParser where
  happySomeParser = happyThen (happyParse action_2 tks) (\x -> case x of {HappyAbsSyn18 z -> happyReturn z; _other -> notHappyAtAll })

pExp2 tks = happySomeParser where
  happySomeParser = happyThen (happyParse action_3 tks) (\x -> case x of {HappyAbsSyn18 z -> happyReturn z; _other -> notHappyAtAll })

pDecl tks = happySomeParser where
  happySomeParser = happyThen (happyParse action_4 tks) (\x -> case x of {HappyAbsSyn22 z -> happyReturn z; _other -> notHappyAtAll })

pPatt tks = happySomeParser where
  happySomeParser = happyThen (happyParse action_5 tks) (\x -> case x of {HappyAbsSyn23 z -> happyReturn z; _other -> notHappyAtAll })

pPatt1 tks = happySomeParser where
  happySomeParser = happyThen (happyParse action_6 tks) (\x -> case x of {HappyAbsSyn23 z -> happyReturn z; _other -> notHappyAtAll })

pSummand tks = happySomeParser where
  happySomeParser = happyThen (happyParse action_7 tks) (\x -> case x of {HappyAbsSyn25 z -> happyReturn z; _other -> notHappyAtAll })

pListSummand tks = happySomeParser where
  happySomeParser = happyThen (happyParse action_8 tks) (\x -> case x of {HappyAbsSyn26 z -> happyReturn z; _other -> notHappyAtAll })

pBranch tks = happySomeParser where
  happySomeParser = happyThen (happyParse action_9 tks) (\x -> case x of {HappyAbsSyn27 z -> happyReturn z; _other -> notHappyAtAll })

pListBranch tks = happySomeParser where
  happySomeParser = happyThen (happyParse action_10 tks) (\x -> case x of {HappyAbsSyn28 z -> happyReturn z; _other -> notHappyAtAll })

pListIdent tks = happySomeParser where
  happySomeParser = happyThen (happyParse action_11 tks) (\x -> case x of {HappyAbsSyn29 z -> happyReturn z; _other -> notHappyAtAll })

happySeq = happyDontSeq


returnM :: a -> Err a
returnM = return

thenM :: Err a -> (a -> Err b) -> Err b
thenM = (>>=)

happyError :: [Token] -> Err a
happyError ts =
  Bad $ "syntax error at " ++ tokenPos ts ++ 
  case ts of
    [] -> []
    [Err _] -> " due to lexer error"
    _ -> " before " ++ unwords (map (id . prToken) (take 4 ts))

myLexer = tokens
eArrow_ a_ b_ = EPi Punit a_ b_
eTimes_ a_ b_ = ESig Punit a_ b_
{-# LINE 1 "templates\GenericTemplate.hs" #-}
{-# LINE 1 "templates\\GenericTemplate.hs" #-}
{-# LINE 1 "<built-in>" #-}
{-# LINE 1 "<command-line>" #-}







{-# LINE 1 "G:\\GitHub\\haskell-platform\\build\\ghc-bindist\\local\\lib/include\\ghcversion.h" #-}

















{-# LINE 7 "<command-line>" #-}
{-# LINE 1 "templates\\GenericTemplate.hs" #-}
-- Id: GenericTemplate.hs,v 1.26 2005/01/14 14:47:22 simonmar Exp 

{-# LINE 13 "templates\\GenericTemplate.hs" #-}

{-# LINE 46 "templates\\GenericTemplate.hs" #-}








{-# LINE 67 "templates\\GenericTemplate.hs" #-}

{-# LINE 77 "templates\\GenericTemplate.hs" #-}

{-# LINE 86 "templates\\GenericTemplate.hs" #-}

infixr 9 `HappyStk`
data HappyStk a = HappyStk a (HappyStk a)

-----------------------------------------------------------------------------
-- starting the parse

happyParse start_state = happyNewToken start_state notHappyAtAll notHappyAtAll

-----------------------------------------------------------------------------
-- Accepting the parse

-- If the current token is (1), it means we've just accepted a partial
-- parse (a %partial parser).  We must ignore the saved token on the top of
-- the stack in this case.
happyAccept (1) tk st sts (_ `HappyStk` ans `HappyStk` _) =
        happyReturn1 ans
happyAccept j tk st sts (HappyStk ans _) = 
         (happyReturn1 ans)

-----------------------------------------------------------------------------
-- Arrays only: do the next action

{-# LINE 155 "templates\\GenericTemplate.hs" #-}

-----------------------------------------------------------------------------
-- HappyState data type (not arrays)



newtype HappyState b c = HappyState
        (Int ->                    -- token number
         Int ->                    -- token number (yes, again)
         b ->                           -- token semantic value
         HappyState b c ->              -- current state
         [HappyState b c] ->            -- state stack
         c)



-----------------------------------------------------------------------------
-- Shifting a token

happyShift new_state (1) tk st sts stk@(x `HappyStk` _) =
     let i = (case x of { HappyErrorToken (i) -> i }) in
--     trace "shifting the error token" $
     new_state i i tk (HappyState (new_state)) ((st):(sts)) (stk)

happyShift new_state i tk st sts stk =
     happyNewToken new_state ((st):(sts)) ((HappyTerminal (tk))`HappyStk`stk)

-- happyReduce is specialised for the common cases.

happySpecReduce_0 i fn (1) tk st sts stk
     = happyFail (1) tk st sts stk
happySpecReduce_0 nt fn j tk st@((HappyState (action))) sts stk
     = action nt j tk st ((st):(sts)) (fn `HappyStk` stk)

happySpecReduce_1 i fn (1) tk st sts stk
     = happyFail (1) tk st sts stk
happySpecReduce_1 nt fn j tk _ sts@(((st@(HappyState (action))):(_))) (v1`HappyStk`stk')
     = let r = fn v1 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happySpecReduce_2 i fn (1) tk st sts stk
     = happyFail (1) tk st sts stk
happySpecReduce_2 nt fn j tk _ ((_):(sts@(((st@(HappyState (action))):(_))))) (v1`HappyStk`v2`HappyStk`stk')
     = let r = fn v1 v2 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happySpecReduce_3 i fn (1) tk st sts stk
     = happyFail (1) tk st sts stk
happySpecReduce_3 nt fn j tk _ ((_):(((_):(sts@(((st@(HappyState (action))):(_))))))) (v1`HappyStk`v2`HappyStk`v3`HappyStk`stk')
     = let r = fn v1 v2 v3 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happyReduce k i fn (1) tk st sts stk
     = happyFail (1) tk st sts stk
happyReduce k nt fn j tk st sts stk
     = case happyDrop (k - ((1) :: Int)) sts of
         sts1@(((st1@(HappyState (action))):(_))) ->
                let r = fn stk in  -- it doesn't hurt to always seq here...
                happyDoSeq r (action nt j tk st1 sts1 r)

happyMonadReduce k nt fn (1) tk st sts stk
     = happyFail (1) tk st sts stk
happyMonadReduce k nt fn j tk st sts stk =
      case happyDrop k ((st):(sts)) of
        sts1@(((st1@(HappyState (action))):(_))) ->
          let drop_stk = happyDropStk k stk in
          happyThen1 (fn stk tk) (\r -> action nt j tk st1 sts1 (r `HappyStk` drop_stk))

happyMonad2Reduce k nt fn (1) tk st sts stk
     = happyFail (1) tk st sts stk
happyMonad2Reduce k nt fn j tk st sts stk =
      case happyDrop k ((st):(sts)) of
        sts1@(((st1@(HappyState (action))):(_))) ->
         let drop_stk = happyDropStk k stk





             new_state = action

          in
          happyThen1 (fn stk tk) (\r -> happyNewToken new_state sts1 (r `HappyStk` drop_stk))

happyDrop (0) l = l
happyDrop n ((_):(t)) = happyDrop (n - ((1) :: Int)) t

happyDropStk (0) l = l
happyDropStk n (x `HappyStk` xs) = happyDropStk (n - ((1)::Int)) xs

-----------------------------------------------------------------------------
-- Moving to a new state after a reduction

{-# LINE 256 "templates\\GenericTemplate.hs" #-}
happyGoto action j tk st = action j j tk (HappyState action)


-----------------------------------------------------------------------------
-- Error recovery ((1) is the error token)

-- parse error if we are in recovery and we fail again
happyFail (1) tk old_st _ stk@(x `HappyStk` _) =
     let i = (case x of { HappyErrorToken (i) -> i }) in
--      trace "failing" $ 
        happyError_ i tk

{-  We don't need state discarding for our restricted implementation of
    "error".  In fact, it can cause some bogus parses, so I've disabled it
    for now --SDM

-- discard a state
happyFail  (1) tk old_st (((HappyState (action))):(sts)) 
                                                (saved_tok `HappyStk` _ `HappyStk` stk) =
--      trace ("discarding state, depth " ++ show (length stk))  $
        action (1) (1) tk (HappyState (action)) sts ((saved_tok`HappyStk`stk))
-}

-- Enter error recovery: generate an error token,
--                       save the old token and carry on.
happyFail  i tk (HappyState (action)) sts stk =
--      trace "entering error recovery" $
        action (1) (1) tk (HappyState (action)) sts ( (HappyErrorToken (i)) `HappyStk` stk)

-- Internal happy errors:

notHappyAtAll :: a
notHappyAtAll = error "Internal Happy error\n"

-----------------------------------------------------------------------------
-- Hack to get the typechecker to accept our action functions







-----------------------------------------------------------------------------
-- Seq-ing.  If the --strict flag is given, then Happy emits 
--      happySeq = happyDoSeq
-- otherwise it emits
--      happySeq = happyDontSeq

happyDoSeq, happyDontSeq :: a -> b -> b
happyDoSeq   a b = a `seq` b
happyDontSeq a b = b

-----------------------------------------------------------------------------
-- Don't inline any functions from the template.  GHC has a nasty habit
-- of deciding to inline happyGoto everywhere, which increases the size of
-- the generated parser quite a bit.

{-# LINE 322 "templates\\GenericTemplate.hs" #-}
{-# NOINLINE happyShift #-}
{-# NOINLINE happySpecReduce_0 #-}
{-# NOINLINE happySpecReduce_1 #-}
{-# NOINLINE happySpecReduce_2 #-}
{-# NOINLINE happySpecReduce_3 #-}
{-# NOINLINE happyReduce #-}
{-# NOINLINE happyMonadReduce #-}
{-# NOINLINE happyGoto #-}
{-# NOINLINE happyFail #-}

-- end of Happy Template.
