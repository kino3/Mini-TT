{-# OPTIONS -fglasgow-exts -cpp #-}
{-# OPTIONS -fno-warn-incomplete-patterns -fno-warn-overlapping-patterns #-}
module Core.Par where
import Core.Abs
import Core.Lex
import Core.ErrM
#if __GLASGOW_HASKELL__ >= 503
import Data.Array
#else
import Array
#endif
#if __GLASGOW_HASKELL__ >= 503
import GHC.Exts
#else
import GlaExts
#endif

-- parser produced by Happy Version 1.16

newtype HappyAbsSyn  = HappyAbsSyn (() -> ())
happyIn15 :: (Ident) -> (HappyAbsSyn )
happyIn15 x = unsafeCoerce# x
{-# INLINE happyIn15 #-}
happyOut15 :: (HappyAbsSyn ) -> (Ident)
happyOut15 x = unsafeCoerce# x
{-# INLINE happyOut15 #-}
happyIn16 :: (CaseTk) -> (HappyAbsSyn )
happyIn16 x = unsafeCoerce# x
{-# INLINE happyIn16 #-}
happyOut16 :: (HappyAbsSyn ) -> (CaseTk)
happyOut16 x = unsafeCoerce# x
{-# INLINE happyOut16 #-}
happyIn17 :: (DataTk) -> (HappyAbsSyn )
happyIn17 x = unsafeCoerce# x
{-# INLINE happyIn17 #-}
happyOut17 :: (HappyAbsSyn ) -> (DataTk)
happyOut17 x = unsafeCoerce# x
{-# INLINE happyOut17 #-}
happyIn18 :: (Exp) -> (HappyAbsSyn )
happyIn18 x = unsafeCoerce# x
{-# INLINE happyIn18 #-}
happyOut18 :: (HappyAbsSyn ) -> (Exp)
happyOut18 x = unsafeCoerce# x
{-# INLINE happyOut18 #-}
happyIn19 :: (Exp) -> (HappyAbsSyn )
happyIn19 x = unsafeCoerce# x
{-# INLINE happyIn19 #-}
happyOut19 :: (HappyAbsSyn ) -> (Exp)
happyOut19 x = unsafeCoerce# x
{-# INLINE happyOut19 #-}
happyIn20 :: (Exp) -> (HappyAbsSyn )
happyIn20 x = unsafeCoerce# x
{-# INLINE happyIn20 #-}
happyOut20 :: (HappyAbsSyn ) -> (Exp)
happyOut20 x = unsafeCoerce# x
{-# INLINE happyOut20 #-}
happyIn21 :: (Exp) -> (HappyAbsSyn )
happyIn21 x = unsafeCoerce# x
{-# INLINE happyIn21 #-}
happyOut21 :: (HappyAbsSyn ) -> (Exp)
happyOut21 x = unsafeCoerce# x
{-# INLINE happyOut21 #-}
happyIn22 :: (Decl) -> (HappyAbsSyn )
happyIn22 x = unsafeCoerce# x
{-# INLINE happyIn22 #-}
happyOut22 :: (HappyAbsSyn ) -> (Decl)
happyOut22 x = unsafeCoerce# x
{-# INLINE happyOut22 #-}
happyIn23 :: (Patt) -> (HappyAbsSyn )
happyIn23 x = unsafeCoerce# x
{-# INLINE happyIn23 #-}
happyOut23 :: (HappyAbsSyn ) -> (Patt)
happyOut23 x = unsafeCoerce# x
{-# INLINE happyOut23 #-}
happyIn24 :: (Patt) -> (HappyAbsSyn )
happyIn24 x = unsafeCoerce# x
{-# INLINE happyIn24 #-}
happyOut24 :: (HappyAbsSyn ) -> (Patt)
happyOut24 x = unsafeCoerce# x
{-# INLINE happyOut24 #-}
happyIn25 :: (Summand) -> (HappyAbsSyn )
happyIn25 x = unsafeCoerce# x
{-# INLINE happyIn25 #-}
happyOut25 :: (HappyAbsSyn ) -> (Summand)
happyOut25 x = unsafeCoerce# x
{-# INLINE happyOut25 #-}
happyIn26 :: ([Summand]) -> (HappyAbsSyn )
happyIn26 x = unsafeCoerce# x
{-# INLINE happyIn26 #-}
happyOut26 :: (HappyAbsSyn ) -> ([Summand])
happyOut26 x = unsafeCoerce# x
{-# INLINE happyOut26 #-}
happyIn27 :: (Branch) -> (HappyAbsSyn )
happyIn27 x = unsafeCoerce# x
{-# INLINE happyIn27 #-}
happyOut27 :: (HappyAbsSyn ) -> (Branch)
happyOut27 x = unsafeCoerce# x
{-# INLINE happyOut27 #-}
happyIn28 :: ([Branch]) -> (HappyAbsSyn )
happyIn28 x = unsafeCoerce# x
{-# INLINE happyIn28 #-}
happyOut28 :: (HappyAbsSyn ) -> ([Branch])
happyOut28 x = unsafeCoerce# x
{-# INLINE happyOut28 #-}
happyIn29 :: ([Ident]) -> (HappyAbsSyn )
happyIn29 x = unsafeCoerce# x
{-# INLINE happyIn29 #-}
happyOut29 :: (HappyAbsSyn ) -> ([Ident])
happyOut29 x = unsafeCoerce# x
{-# INLINE happyOut29 #-}
happyInTok :: Token -> (HappyAbsSyn )
happyInTok x = unsafeCoerce# x
{-# INLINE happyInTok #-}
happyOutTok :: (HappyAbsSyn ) -> Token
happyOutTok x = unsafeCoerce# x
{-# INLINE happyOutTok #-}

happyActOffsets :: HappyAddr
happyActOffsets = HappyA# "\x01\x00\x38\x00\x01\x00\x33\x00\x5c\x00\x1c\x00\x1c\x00\xf6\x00\xf6\x00\xf6\x00\xf6\x00\xf6\x00\xf6\x00\x00\x00\xf6\x00\xf1\x00\x00\x01\xfb\x00\xee\x00\xee\x00\x38\x00\xf8\x00\xed\x00\xed\x00\x00\x00\xed\x00\x1c\x00\x00\x00\xed\x00\x01\x01\xe9\x00\x1c\x00\x1c\x00\x00\x00\x52\x00\x19\x00\x00\x00\x00\x00\xeb\x00\x01\x00\x00\x00\x00\x00\x00\x00\xfd\x00\xec\x00\xe6\x00\xe5\x00\x1b\x00\xd8\x00\x1c\x00\x1c\x00\x1c\x00\x00\x00\x00\x00\x05\x00\xe4\x00\x00\x00\x00\x00\xd9\x00\xd1\x00\xca\x00\x01\x00\x52\x00\x01\x00\x01\x00\x01\x00\xab\x00\xab\x00\xb3\x00\x38\x00\xb1\x00\xa9\x00\x1c\x00\x9b\x00\x83\x00\x52\x00\x83\x00\x01\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x01\x00\x01\x00\x52\x00\x00\x00\x8b\x00\x51\x00\x00\x00\x00\x00\x00\x00\x00\x00\x01\x00\x01\x00\x01\x00\x53\x00\x42\x00\x00\x00\x00\x00\x00\x00\x30\x00\x16\x00\x01\x00\x01\x00\x01\x00\x01\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00"#

happyGotoOffsets :: HappyAddr
happyGotoOffsets = HappyA# "\xf7\x00\xff\x00\x87\x00\x07\x00\xfa\xff\x66\x00\x6d\x00\x5b\x00\x59\x00\x27\x00\x4b\x00\x04\x00\x00\x00\x00\x00\x03\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\xfc\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x62\x00\x00\x00\x00\x00\x00\x00\x00\x00\x6c\x00\x69\x00\x00\x00\x00\x00\x26\x00\x00\x00\x00\x00\x0c\x00\x7f\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x26\x00\x00\x00\x68\x00\x67\x00\x3e\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\xef\x00\x00\x00\xe7\x00\xdf\x00\x77\x00\x56\x00\x46\x00\x00\x00\x0a\x00\x00\x00\x00\x00\x39\x00\x00\x00\x54\x00\x00\x00\x43\x00\xd7\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\xcf\x00\xc7\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\xbf\x00\xb7\x00\xaf\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\xa7\x00\x9f\x00\x97\x00\x8f\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00"#

happyDefActions :: HappyAddr
happyDefActions = HappyA# "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\xd1\xff\x00\x00\xcd\xff\x00\x00\x00\x00\xf3\xff\xca\xff\x00\x00\x00\x00\xcc\xff\x00\x00\x00\x00\x00\x00\xd0\xff\x00\x00\x00\x00\xd4\xff\x00\x00\x00\x00\xd5\xff\x00\x00\xd6\xff\x00\x00\x00\x00\x00\x00\xe2\xff\xda\xff\x00\x00\xe6\xff\xe5\xff\x00\x00\x00\x00\xe0\xff\xe7\xff\xe1\xff\x00\x00\x00\x00\xdd\xff\x00\x00\xe8\xff\x00\x00\x00\x00\x00\x00\x00\x00\xf2\xff\xf1\xff\x00\x00\x00\x00\xe4\xff\xe3\xff\x00\x00\x00\x00\x00\x00\x00\x00\xdb\xff\x00\x00\x00\x00\x00\x00\xd1\xff\xcd\xff\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\xd1\xff\xd2\xff\xcd\xff\x00\x00\xc9\xff\xce\xff\xcb\xff\xcf\xff\xd3\xff\xd7\xff\x00\x00\x00\x00\xdc\xff\xdf\xff\x00\x00\x00\x00\xde\xff\xe9\xff\xea\xff\xeb\xff\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\xf0\xff\xed\xff\xec\xff\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\xee\xff\xef\xff\xd8\xff\xd9\xff"#

happyCheck :: HappyAddr
happyCheck = HappyA# "\xff\xff\x07\x00\x01\x00\x00\x00\x00\x00\x04\x00\x05\x00\x00\x00\x07\x00\x08\x00\x00\x00\x04\x00\x00\x00\x06\x00\x04\x00\x0a\x00\x0b\x00\x0e\x00\x0e\x00\x12\x00\x13\x00\x14\x00\x15\x00\x16\x00\x17\x00\x18\x00\x19\x00\x1a\x00\x1b\x00\x04\x00\x05\x00\x04\x00\x05\x00\x08\x00\x1d\x00\x08\x00\x08\x00\x0f\x00\x00\x00\x00\x00\x0d\x00\x0e\x00\x04\x00\x12\x00\x10\x00\x12\x00\x15\x00\x16\x00\x15\x00\x16\x00\x19\x00\x0c\x00\x19\x00\x19\x00\x1d\x00\x04\x00\x05\x00\x00\x00\x07\x00\x08\x00\x04\x00\x05\x00\x00\x00\x0f\x00\x08\x00\x08\x00\x09\x00\x00\x00\x02\x00\x12\x00\x00\x00\x09\x00\x15\x00\x16\x00\x12\x00\x00\x00\x19\x00\x15\x00\x16\x00\x0c\x00\x0d\x00\x19\x00\x0c\x00\x0d\x00\x00\x00\x02\x00\x00\x00\x0c\x00\x0d\x00\x00\x00\x09\x00\x00\x00\x0a\x00\x0b\x00\x0a\x00\x0b\x00\x0a\x00\x0b\x00\x00\x00\x0a\x00\x0b\x00\x0a\x00\x00\x00\x00\x00\x00\x00\x00\x00\x08\x00\x09\x00\x00\x00\x00\x00\x08\x00\x09\x00\x09\x00\x09\x00\x09\x00\x17\x00\x18\x00\x09\x00\x09\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x05\x00\x06\x00\x07\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x05\x00\x06\x00\x07\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x05\x00\x06\x00\x07\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x09\x00\x06\x00\x07\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x19\x00\x06\x00\x07\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x09\x00\x06\x00\x07\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x03\x00\x06\x00\x07\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x03\x00\x06\x00\x07\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x09\x00\x06\x00\x07\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x19\x00\x06\x00\x07\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x02\x00\x06\x00\x07\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x03\x00\x06\x00\x07\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x03\x00\x06\x00\x07\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x0c\x00\x06\x00\x07\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x06\x00\x06\x00\x07\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x08\x00\x06\x00\x07\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x00\x00\x06\x00\x07\x00\x00\x00\x04\x00\x1d\x00\x1d\x00\x04\x00\x19\x00\x08\x00\x1d\x00\x06\x00\xff\xff\x11\x00\x1d\x00\x1d\x00\x11\x00\x0d\x00\x1d\x00\x19\x00\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff"#

happyTable :: HappyAddr
happyTable = HappyA# "\x00\x00\x1e\x00\x32\x00\x0e\x00\x0e\x00\x25\x00\x26\x00\x21\x00\x27\x00\x28\x00\x21\x00\x22\x00\x45\x00\x23\x00\x56\x00\x39\x00\x3a\x00\x4e\x00\x0f\x00\x29\x00\x33\x00\x34\x00\x2a\x00\x2b\x00\x20\x00\x21\x00\x0e\x00\x35\x00\x36\x00\x25\x00\x26\x00\x25\x00\x26\x00\x28\x00\xff\xff\x28\x00\x1b\x00\x69\x00\x21\x00\x10\x00\x40\x00\x41\x00\x3e\x00\x29\x00\x1c\x00\x29\x00\x2a\x00\x2b\x00\x2a\x00\x2b\x00\x0e\x00\x13\x00\x0e\x00\x0e\x00\xff\xff\x25\x00\x26\x00\x18\x00\x27\x00\x28\x00\x25\x00\x26\x00\x18\x00\x6a\x00\x28\x00\x53\x00\x1d\x00\x10\x00\x6b\x00\x29\x00\x10\x00\x3a\x00\x2a\x00\x2b\x00\x29\x00\x10\x00\x0e\x00\x2a\x00\x2b\x00\x11\x00\x50\x00\x0e\x00\x11\x00\x58\x00\x14\x00\x6c\x00\x14\x00\x11\x00\x12\x00\x14\x00\x65\x00\x14\x00\x39\x00\x3a\x00\x15\x00\x51\x00\x15\x00\x59\x00\x18\x00\x15\x00\x16\x00\x17\x00\x18\x00\x18\x00\x18\x00\x18\x00\x49\x00\x1d\x00\x18\x00\x18\x00\x1c\x00\x1d\x00\x3b\x00\x3c\x00\x46\x00\x20\x00\x21\x00\x47\x00\x19\x00\x21\x00\x2b\x00\x2c\x00\x2d\x00\x22\x00\x5a\x00\x2f\x00\x30\x00\x21\x00\x2b\x00\x2c\x00\x2d\x00\x22\x00\x44\x00\x2f\x00\x30\x00\x21\x00\x2b\x00\x2c\x00\x2d\x00\x22\x00\x2e\x00\x2f\x00\x30\x00\x21\x00\x2b\x00\x2c\x00\x6c\x00\x22\x00\x66\x00\x2f\x00\x30\x00\x21\x00\x2b\x00\x2c\x00\x6d\x00\x22\x00\x0e\x00\x2f\x00\x30\x00\x21\x00\x2b\x00\x2c\x00\x6e\x00\x22\x00\x53\x00\x2f\x00\x30\x00\x21\x00\x2b\x00\x2c\x00\x6f\x00\x22\x00\x55\x00\x2f\x00\x30\x00\x21\x00\x2b\x00\x2c\x00\x61\x00\x22\x00\x56\x00\x2f\x00\x30\x00\x21\x00\x2b\x00\x2c\x00\x62\x00\x22\x00\x58\x00\x2f\x00\x30\x00\x21\x00\x2b\x00\x2c\x00\x63\x00\x22\x00\x0e\x00\x2f\x00\x30\x00\x21\x00\x2b\x00\x2c\x00\x66\x00\x22\x00\x5f\x00\x2f\x00\x30\x00\x21\x00\x2b\x00\x2c\x00\x67\x00\x22\x00\x60\x00\x2f\x00\x30\x00\x21\x00\x2b\x00\x2c\x00\x4f\x00\x22\x00\x61\x00\x2f\x00\x30\x00\x21\x00\x2b\x00\x2c\x00\x5b\x00\x22\x00\x3e\x00\x2f\x00\x30\x00\x21\x00\x2b\x00\x2c\x00\x5c\x00\x22\x00\x42\x00\x2f\x00\x30\x00\x21\x00\x2b\x00\x2c\x00\x5d\x00\x22\x00\x43\x00\x2f\x00\x30\x00\x21\x00\x2b\x00\x2c\x00\x37\x00\x22\x00\x21\x00\x2f\x00\x30\x00\x21\x00\x4b\x00\xff\xff\xff\xff\x36\x00\x0e\x00\x44\x00\xff\xff\x49\x00\x00\x00\x4b\x00\xff\xff\xff\xff\x4d\x00\x4e\x00\xff\xff\x0e\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00"#

happyReduceArr = array (12, 54) [
	(12 , happyReduce_12),
	(13 , happyReduce_13),
	(14 , happyReduce_14),
	(15 , happyReduce_15),
	(16 , happyReduce_16),
	(17 , happyReduce_17),
	(18 , happyReduce_18),
	(19 , happyReduce_19),
	(20 , happyReduce_20),
	(21 , happyReduce_21),
	(22 , happyReduce_22),
	(23 , happyReduce_23),
	(24 , happyReduce_24),
	(25 , happyReduce_25),
	(26 , happyReduce_26),
	(27 , happyReduce_27),
	(28 , happyReduce_28),
	(29 , happyReduce_29),
	(30 , happyReduce_30),
	(31 , happyReduce_31),
	(32 , happyReduce_32),
	(33 , happyReduce_33),
	(34 , happyReduce_34),
	(35 , happyReduce_35),
	(36 , happyReduce_36),
	(37 , happyReduce_37),
	(38 , happyReduce_38),
	(39 , happyReduce_39),
	(40 , happyReduce_40),
	(41 , happyReduce_41),
	(42 , happyReduce_42),
	(43 , happyReduce_43),
	(44 , happyReduce_44),
	(45 , happyReduce_45),
	(46 , happyReduce_46),
	(47 , happyReduce_47),
	(48 , happyReduce_48),
	(49 , happyReduce_49),
	(50 , happyReduce_50),
	(51 , happyReduce_51),
	(52 , happyReduce_52),
	(53 , happyReduce_53),
	(54 , happyReduce_54)
	]

happy_n_terms = 30 :: Int
happy_n_nonterms = 15 :: Int

happyReduce_12 = happySpecReduce_1  0# happyReduction_12
happyReduction_12 happy_x_1
	 =  case happyOutTok happy_x_1 of { (PT _ (TV happy_var_1)) -> 
	happyIn15
		 (Ident happy_var_1
	)}

happyReduce_13 = happySpecReduce_1  1# happyReduction_13
happyReduction_13 happy_x_1
	 =  case happyOutTok happy_x_1 of { happy_var_1 -> 
	happyIn16
		 (CaseTk (mkPosToken happy_var_1)
	)}

happyReduce_14 = happySpecReduce_1  2# happyReduction_14
happyReduction_14 happy_x_1
	 =  case happyOutTok happy_x_1 of { happy_var_1 -> 
	happyIn17
		 (DataTk (mkPosToken happy_var_1)
	)}

happyReduce_15 = happyReduce 4# 3# happyReduction_15
happyReduction_15 (happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut24 happy_x_2 of { happy_var_2 -> 
	case happyOut18 happy_x_4 of { happy_var_4 -> 
	happyIn18
		 (ELam happy_var_2 happy_var_4
	) `HappyStk` happyRest}}

happyReduce_16 = happyReduce 6# 3# happyReduction_16
happyReduction_16 (happy_x_6 `HappyStk`
	happy_x_5 `HappyStk`
	happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut24 happy_x_2 of { happy_var_2 -> 
	case happyOut18 happy_x_4 of { happy_var_4 -> 
	case happyOut18 happy_x_6 of { happy_var_6 -> 
	happyIn18
		 (EPi happy_var_2 happy_var_4 happy_var_6
	) `HappyStk` happyRest}}}

happyReduce_17 = happyReduce 6# 3# happyReduction_17
happyReduction_17 (happy_x_6 `HappyStk`
	happy_x_5 `HappyStk`
	happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut24 happy_x_2 of { happy_var_2 -> 
	case happyOut18 happy_x_4 of { happy_var_4 -> 
	case happyOut18 happy_x_6 of { happy_var_6 -> 
	happyIn18
		 (ESig happy_var_2 happy_var_4 happy_var_6
	) `HappyStk` happyRest}}}

happyReduce_18 = happyReduce 4# 3# happyReduction_18
happyReduction_18 (happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut17 happy_x_1 of { happy_var_1 -> 
	case happyOut26 happy_x_3 of { happy_var_3 -> 
	happyIn18
		 (EData happy_var_1 happy_var_3
	) `HappyStk` happyRest}}

happyReduce_19 = happyReduce 4# 3# happyReduction_19
happyReduction_19 (happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut16 happy_x_1 of { happy_var_1 -> 
	case happyOut28 happy_x_3 of { happy_var_3 -> 
	happyIn18
		 (ECase happy_var_1 happy_var_3
	) `HappyStk` happyRest}}

happyReduce_20 = happySpecReduce_3  3# happyReduction_20
happyReduction_20 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut22 happy_x_1 of { happy_var_1 -> 
	case happyOut18 happy_x_3 of { happy_var_3 -> 
	happyIn18
		 (EDec happy_var_1 happy_var_3
	)}}

happyReduce_21 = happySpecReduce_3  3# happyReduction_21
happyReduction_21 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut21 happy_x_1 of { happy_var_1 -> 
	case happyOut18 happy_x_3 of { happy_var_3 -> 
	happyIn18
		 (eArrow_ happy_var_1 happy_var_3
	)}}

happyReduce_22 = happySpecReduce_3  3# happyReduction_22
happyReduction_22 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut21 happy_x_1 of { happy_var_1 -> 
	case happyOut18 happy_x_3 of { happy_var_3 -> 
	happyIn18
		 (eTimes_ happy_var_1 happy_var_3
	)}}

happyReduce_23 = happySpecReduce_1  3# happyReduction_23
happyReduction_23 happy_x_1
	 =  case happyOut21 happy_x_1 of { happy_var_1 -> 
	happyIn18
		 (happy_var_1
	)}

happyReduce_24 = happySpecReduce_1  4# happyReduction_24
happyReduction_24 happy_x_1
	 =  happyIn19
		 (ESet
	)

happyReduce_25 = happySpecReduce_1  4# happyReduction_25
happyReduction_25 happy_x_1
	 =  happyIn19
		 (EOne
	)

happyReduce_26 = happySpecReduce_1  4# happyReduction_26
happyReduction_26 happy_x_1
	 =  happyIn19
		 (Eunit
	)

happyReduce_27 = happySpecReduce_2  4# happyReduction_27
happyReduction_27 happy_x_2
	happy_x_1
	 =  case happyOut19 happy_x_1 of { happy_var_1 -> 
	happyIn19
		 (EFst happy_var_1
	)}

happyReduce_28 = happySpecReduce_2  4# happyReduction_28
happyReduction_28 happy_x_2
	happy_x_1
	 =  case happyOut19 happy_x_1 of { happy_var_1 -> 
	happyIn19
		 (ESnd happy_var_1
	)}

happyReduce_29 = happySpecReduce_1  4# happyReduction_29
happyReduction_29 happy_x_1
	 =  case happyOut15 happy_x_1 of { happy_var_1 -> 
	happyIn19
		 (EVar happy_var_1
	)}

happyReduce_30 = happySpecReduce_1  4# happyReduction_30
happyReduction_30 happy_x_1
	 =  happyIn19
		 (EVoid
	)

happyReduce_31 = happySpecReduce_1  4# happyReduction_31
happyReduction_31 happy_x_1
	 =  happyIn19
		 (EPN
	)

happyReduce_32 = happySpecReduce_3  4# happyReduction_32
happyReduction_32 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut20 happy_x_2 of { happy_var_2 -> 
	happyIn19
		 (happy_var_2
	)}

happyReduce_33 = happySpecReduce_3  5# happyReduction_33
happyReduction_33 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut18 happy_x_1 of { happy_var_1 -> 
	case happyOut20 happy_x_3 of { happy_var_3 -> 
	happyIn20
		 (EPair happy_var_1 happy_var_3
	)}}

happyReduce_34 = happySpecReduce_1  5# happyReduction_34
happyReduction_34 happy_x_1
	 =  case happyOut18 happy_x_1 of { happy_var_1 -> 
	happyIn20
		 (happy_var_1
	)}

happyReduce_35 = happySpecReduce_3  6# happyReduction_35
happyReduction_35 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut15 happy_x_2 of { happy_var_2 -> 
	case happyOut19 happy_x_3 of { happy_var_3 -> 
	happyIn21
		 (ECon happy_var_2 happy_var_3
	)}}

happyReduce_36 = happySpecReduce_2  6# happyReduction_36
happyReduction_36 happy_x_2
	happy_x_1
	 =  case happyOut21 happy_x_1 of { happy_var_1 -> 
	case happyOut19 happy_x_2 of { happy_var_2 -> 
	happyIn21
		 (EApp happy_var_1 happy_var_2
	)}}

happyReduce_37 = happySpecReduce_1  6# happyReduction_37
happyReduction_37 happy_x_1
	 =  case happyOut19 happy_x_1 of { happy_var_1 -> 
	happyIn21
		 (happy_var_1
	)}

happyReduce_38 = happyReduce 6# 7# happyReduction_38
happyReduction_38 (happy_x_6 `HappyStk`
	happy_x_5 `HappyStk`
	happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut24 happy_x_2 of { happy_var_2 -> 
	case happyOut18 happy_x_4 of { happy_var_4 -> 
	case happyOut18 happy_x_6 of { happy_var_6 -> 
	happyIn22
		 (Def happy_var_2 happy_var_4 happy_var_6
	) `HappyStk` happyRest}}}

happyReduce_39 = happyReduce 6# 7# happyReduction_39
happyReduction_39 (happy_x_6 `HappyStk`
	happy_x_5 `HappyStk`
	happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut24 happy_x_2 of { happy_var_2 -> 
	case happyOut18 happy_x_4 of { happy_var_4 -> 
	case happyOut18 happy_x_6 of { happy_var_6 -> 
	happyIn22
		 (Drec happy_var_2 happy_var_4 happy_var_6
	) `HappyStk` happyRest}}}

happyReduce_40 = happySpecReduce_3  8# happyReduction_40
happyReduction_40 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut24 happy_x_1 of { happy_var_1 -> 
	case happyOut23 happy_x_3 of { happy_var_3 -> 
	happyIn23
		 (PPair happy_var_1 happy_var_3
	)}}

happyReduce_41 = happySpecReduce_1  8# happyReduction_41
happyReduction_41 happy_x_1
	 =  case happyOut24 happy_x_1 of { happy_var_1 -> 
	happyIn23
		 (happy_var_1
	)}

happyReduce_42 = happySpecReduce_1  9# happyReduction_42
happyReduction_42 happy_x_1
	 =  happyIn24
		 (Punit
	)

happyReduce_43 = happySpecReduce_1  9# happyReduction_43
happyReduction_43 happy_x_1
	 =  case happyOut15 happy_x_1 of { happy_var_1 -> 
	happyIn24
		 (PVar happy_var_1
	)}

happyReduce_44 = happySpecReduce_3  9# happyReduction_44
happyReduction_44 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut23 happy_x_2 of { happy_var_2 -> 
	happyIn24
		 (happy_var_2
	)}

happyReduce_45 = happySpecReduce_2  10# happyReduction_45
happyReduction_45 happy_x_2
	happy_x_1
	 =  case happyOut15 happy_x_1 of { happy_var_1 -> 
	case happyOut19 happy_x_2 of { happy_var_2 -> 
	happyIn25
		 (Summand happy_var_1 happy_var_2
	)}}

happyReduce_46 = happySpecReduce_0  11# happyReduction_46
happyReduction_46  =  happyIn26
		 ([]
	)

happyReduce_47 = happySpecReduce_1  11# happyReduction_47
happyReduction_47 happy_x_1
	 =  case happyOut25 happy_x_1 of { happy_var_1 -> 
	happyIn26
		 ((:[]) happy_var_1
	)}

happyReduce_48 = happySpecReduce_3  11# happyReduction_48
happyReduction_48 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut25 happy_x_1 of { happy_var_1 -> 
	case happyOut26 happy_x_3 of { happy_var_3 -> 
	happyIn26
		 ((:) happy_var_1 happy_var_3
	)}}

happyReduce_49 = happySpecReduce_3  12# happyReduction_49
happyReduction_49 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut15 happy_x_1 of { happy_var_1 -> 
	case happyOut18 happy_x_3 of { happy_var_3 -> 
	happyIn27
		 (Branch happy_var_1 happy_var_3
	)}}

happyReduce_50 = happySpecReduce_0  13# happyReduction_50
happyReduction_50  =  happyIn28
		 ([]
	)

happyReduce_51 = happySpecReduce_1  13# happyReduction_51
happyReduction_51 happy_x_1
	 =  case happyOut27 happy_x_1 of { happy_var_1 -> 
	happyIn28
		 ((:[]) happy_var_1
	)}

happyReduce_52 = happySpecReduce_3  13# happyReduction_52
happyReduction_52 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut27 happy_x_1 of { happy_var_1 -> 
	case happyOut28 happy_x_3 of { happy_var_3 -> 
	happyIn28
		 ((:) happy_var_1 happy_var_3
	)}}

happyReduce_53 = happySpecReduce_1  14# happyReduction_53
happyReduction_53 happy_x_1
	 =  case happyOut15 happy_x_1 of { happy_var_1 -> 
	happyIn29
		 ((:[]) happy_var_1
	)}

happyReduce_54 = happySpecReduce_2  14# happyReduction_54
happyReduction_54 happy_x_2
	happy_x_1
	 =  case happyOut15 happy_x_1 of { happy_var_1 -> 
	case happyOut29 happy_x_2 of { happy_var_2 -> 
	happyIn29
		 ((:) happy_var_1 happy_var_2
	)}}

happyNewToken action sts stk [] =
	happyDoAction 29# notHappyAtAll action sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = happyDoAction i tk action sts stk tks in
	case tk of {
	PT _ (TS "\\") -> cont 1#;
	PT _ (TS ".") -> cont 2#;
	PT _ (TS ":") -> cont 3#;
	PT _ (TS "1") -> cont 4#;
	PT _ (TS "0") -> cont 5#;
	PT _ (TS ",") -> cont 6#;
	PT _ (TS "$") -> cont 7#;
	PT _ (TS "(") -> cont 8#;
	PT _ (TS ")") -> cont 9#;
	PT _ (TS ".1") -> cont 10#;
	PT _ (TS ".2") -> cont 11#;
	PT _ (TS ";") -> cont 12#;
	PT _ (TS "->") -> cont 13#;
	PT _ (TS "*") -> cont 14#;
	PT _ (TS "=") -> cont 15#;
	PT _ (TS "_") -> cont 16#;
	PT _ (TS "|") -> cont 17#;
	PT _ (TS "PN") -> cont 18#;
	PT _ (TS "Pi") -> cont 19#;
	PT _ (TS "Sig") -> cont 20#;
	PT _ (TS "U") -> cont 21#;
	PT _ (TS "Void") -> cont 22#;
	PT _ (TS "let") -> cont 23#;
	PT _ (TS "letrec") -> cont 24#;
	PT _ (TV happy_dollar_dollar) -> cont 25#;
	PT _ (T_CaseTk _) -> cont 26#;
	PT _ (T_DataTk _) -> cont 27#;
	_ -> cont 28#;
	_ -> happyError' (tk:tks)
	}

happyError_ tk tks = happyError' (tk:tks)

happyThen :: () => Err a -> (a -> Err b) -> Err b
happyThen = (thenM)
happyReturn :: () => a -> Err a
happyReturn = (returnM)
happyThen1 m k tks = (thenM) m (\a -> k a tks)
happyReturn1 :: () => a -> b -> Err a
happyReturn1 = \a tks -> (returnM) a
happyError' :: () => [Token] -> Err a
happyError' = happyError

pExp1 tks = happySomeParser where
  happySomeParser = happyThen (happyParse 0# tks) (\x -> happyReturn (happyOut18 x))

pExp3 tks = happySomeParser where
  happySomeParser = happyThen (happyParse 1# tks) (\x -> happyReturn (happyOut19 x))

pExp tks = happySomeParser where
  happySomeParser = happyThen (happyParse 2# tks) (\x -> happyReturn (happyOut20 x))

pExp2 tks = happySomeParser where
  happySomeParser = happyThen (happyParse 3# tks) (\x -> happyReturn (happyOut21 x))

pDecl tks = happySomeParser where
  happySomeParser = happyThen (happyParse 4# tks) (\x -> happyReturn (happyOut22 x))

pPatt tks = happySomeParser where
  happySomeParser = happyThen (happyParse 5# tks) (\x -> happyReturn (happyOut23 x))

pPatt1 tks = happySomeParser where
  happySomeParser = happyThen (happyParse 6# tks) (\x -> happyReturn (happyOut24 x))

pSummand tks = happySomeParser where
  happySomeParser = happyThen (happyParse 7# tks) (\x -> happyReturn (happyOut25 x))

pListSummand tks = happySomeParser where
  happySomeParser = happyThen (happyParse 8# tks) (\x -> happyReturn (happyOut26 x))

pBranch tks = happySomeParser where
  happySomeParser = happyThen (happyParse 9# tks) (\x -> happyReturn (happyOut27 x))

pListBranch tks = happySomeParser where
  happySomeParser = happyThen (happyParse 10# tks) (\x -> happyReturn (happyOut28 x))

pListIdent tks = happySomeParser where
  happySomeParser = happyThen (happyParse 11# tks) (\x -> happyReturn (happyOut29 x))

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
    _ -> " before " ++ unwords (map prToken (take 4 ts))

myLexer = tokens
eArrow_ a_ b_ = EPi Punit a_ b_
eTimes_ a_ b_ = ESig Punit a_ b_
{-# LINE 1 "GenericTemplate.hs" #-}
{-# LINE 1 "<built-in>" #-}
{-# LINE 1 "<command line>" #-}
{-# LINE 1 "GenericTemplate.hs" #-}
-- Id: GenericTemplate.hs,v 1.26 2005/01/14 14:47:22 simonmar Exp 

{-# LINE 28 "GenericTemplate.hs" #-}


data Happy_IntList = HappyCons Int# Happy_IntList





{-# LINE 49 "GenericTemplate.hs" #-}

{-# LINE 59 "GenericTemplate.hs" #-}

{-# LINE 68 "GenericTemplate.hs" #-}

infixr 9 `HappyStk`
data HappyStk a = HappyStk a (HappyStk a)

-----------------------------------------------------------------------------
-- starting the parse

happyParse start_state = happyNewToken start_state notHappyAtAll notHappyAtAll

-----------------------------------------------------------------------------
-- Accepting the parse

-- If the current token is 0#, it means we've just accepted a partial
-- parse (a %partial parser).  We must ignore the saved token on the top of
-- the stack in this case.
happyAccept 0# tk st sts (_ `HappyStk` ans `HappyStk` _) =
	happyReturn1 ans
happyAccept j tk st sts (HappyStk ans _) = 
	(happyTcHack j (happyTcHack st)) (happyReturn1 ans)

-----------------------------------------------------------------------------
-- Arrays only: do the next action



happyDoAction i tk st
	= {- nothing -}


	  case action of
		0#		  -> {- nothing -}
				     happyFail i tk st
		-1# 	  -> {- nothing -}
				     happyAccept i tk st
		n | (n <# (0# :: Int#)) -> {- nothing -}

				     (happyReduceArr ! rule) i tk st
				     where rule = (I# ((negateInt# ((n +# (1# :: Int#))))))
		n		  -> {- nothing -}


				     happyShift new_state i tk st
				     where new_state = (n -# (1# :: Int#))
   where off    = indexShortOffAddr happyActOffsets st
	 off_i  = (off +# i)
	 check  = if (off_i >=# (0# :: Int#))
			then (indexShortOffAddr happyCheck off_i ==#  i)
			else False
 	 action | check     = indexShortOffAddr happyTable off_i
		| otherwise = indexShortOffAddr happyDefActions st

{-# LINE 127 "GenericTemplate.hs" #-}


indexShortOffAddr (HappyA# arr) off =
#if __GLASGOW_HASKELL__ > 500
	narrow16Int# i
#elif __GLASGOW_HASKELL__ == 500
	intToInt16# i
#else
	(i `iShiftL#` 16#) `iShiftRA#` 16#
#endif
  where
#if __GLASGOW_HASKELL__ >= 503
	i = word2Int# ((high `uncheckedShiftL#` 8#) `or#` low)
#else
	i = word2Int# ((high `shiftL#` 8#) `or#` low)
#endif
	high = int2Word# (ord# (indexCharOffAddr# arr (off' +# 1#)))
	low  = int2Word# (ord# (indexCharOffAddr# arr off'))
	off' = off *# 2#





data HappyAddr = HappyA# Addr#




-----------------------------------------------------------------------------
-- HappyState data type (not arrays)

{-# LINE 170 "GenericTemplate.hs" #-}

-----------------------------------------------------------------------------
-- Shifting a token

happyShift new_state 0# tk st sts stk@(x `HappyStk` _) =
     let i = (case unsafeCoerce# x of { (I# (i)) -> i }) in
--     trace "shifting the error token" $
     happyDoAction i tk new_state (HappyCons (st) (sts)) (stk)

happyShift new_state i tk st sts stk =
     happyNewToken new_state (HappyCons (st) (sts)) ((happyInTok (tk))`HappyStk`stk)

-- happyReduce is specialised for the common cases.

happySpecReduce_0 i fn 0# tk st sts stk
     = happyFail 0# tk st sts stk
happySpecReduce_0 nt fn j tk st@((action)) sts stk
     = happyGoto nt j tk st (HappyCons (st) (sts)) (fn `HappyStk` stk)

happySpecReduce_1 i fn 0# tk st sts stk
     = happyFail 0# tk st sts stk
happySpecReduce_1 nt fn j tk _ sts@((HappyCons (st@(action)) (_))) (v1`HappyStk`stk')
     = let r = fn v1 in
       happySeq r (happyGoto nt j tk st sts (r `HappyStk` stk'))

happySpecReduce_2 i fn 0# tk st sts stk
     = happyFail 0# tk st sts stk
happySpecReduce_2 nt fn j tk _ (HappyCons (_) (sts@((HappyCons (st@(action)) (_))))) (v1`HappyStk`v2`HappyStk`stk')
     = let r = fn v1 v2 in
       happySeq r (happyGoto nt j tk st sts (r `HappyStk` stk'))

happySpecReduce_3 i fn 0# tk st sts stk
     = happyFail 0# tk st sts stk
happySpecReduce_3 nt fn j tk _ (HappyCons (_) ((HappyCons (_) (sts@((HappyCons (st@(action)) (_))))))) (v1`HappyStk`v2`HappyStk`v3`HappyStk`stk')
     = let r = fn v1 v2 v3 in
       happySeq r (happyGoto nt j tk st sts (r `HappyStk` stk'))

happyReduce k i fn 0# tk st sts stk
     = happyFail 0# tk st sts stk
happyReduce k nt fn j tk st sts stk
     = case happyDrop (k -# (1# :: Int#)) sts of
	 sts1@((HappyCons (st1@(action)) (_))) ->
        	let r = fn stk in  -- it doesn't hurt to always seq here...
       		happyDoSeq r (happyGoto nt j tk st1 sts1 r)

happyMonadReduce k nt fn 0# tk st sts stk
     = happyFail 0# tk st sts stk
happyMonadReduce k nt fn j tk st sts stk =
        happyThen1 (fn stk tk) (\r -> happyGoto nt j tk st1 sts1 (r `HappyStk` drop_stk))
       where sts1@((HappyCons (st1@(action)) (_))) = happyDrop k (HappyCons (st) (sts))
             drop_stk = happyDropStk k stk

happyMonad2Reduce k nt fn 0# tk st sts stk
     = happyFail 0# tk st sts stk
happyMonad2Reduce k nt fn j tk st sts stk =
       happyThen1 (fn stk tk) (\r -> happyNewToken new_state sts1 (r `HappyStk` drop_stk))
       where sts1@((HappyCons (st1@(action)) (_))) = happyDrop k (HappyCons (st) (sts))
             drop_stk = happyDropStk k stk

             off    = indexShortOffAddr happyGotoOffsets st1
             off_i  = (off +# nt)
             new_state = indexShortOffAddr happyTable off_i




happyDrop 0# l = l
happyDrop n (HappyCons (_) (t)) = happyDrop (n -# (1# :: Int#)) t

happyDropStk 0# l = l
happyDropStk n (x `HappyStk` xs) = happyDropStk (n -# (1#::Int#)) xs

-----------------------------------------------------------------------------
-- Moving to a new state after a reduction


happyGoto nt j tk st = 
   {- nothing -}
   happyDoAction j tk new_state
   where off    = indexShortOffAddr happyGotoOffsets st
	 off_i  = (off +# nt)
 	 new_state = indexShortOffAddr happyTable off_i




-----------------------------------------------------------------------------
-- Error recovery (0# is the error token)

-- parse error if we are in recovery and we fail again
happyFail  0# tk old_st _ stk =
--	trace "failing" $ 
    	happyError_ tk

{-  We don't need state discarding for our restricted implementation of
    "error".  In fact, it can cause some bogus parses, so I've disabled it
    for now --SDM

-- discard a state
happyFail  0# tk old_st (HappyCons ((action)) (sts)) 
						(saved_tok `HappyStk` _ `HappyStk` stk) =
--	trace ("discarding state, depth " ++ show (length stk))  $
	happyDoAction 0# tk action sts ((saved_tok`HappyStk`stk))
-}

-- Enter error recovery: generate an error token,
--                       save the old token and carry on.
happyFail  i tk (action) sts stk =
--      trace "entering error recovery" $
	happyDoAction 0# tk action sts ( (unsafeCoerce# (I# (i))) `HappyStk` stk)

-- Internal happy errors:

notHappyAtAll = error "Internal Happy error\n"

-----------------------------------------------------------------------------
-- Hack to get the typechecker to accept our action functions


happyTcHack :: Int# -> a -> a
happyTcHack x y = y
{-# INLINE happyTcHack #-}


-----------------------------------------------------------------------------
-- Seq-ing.  If the --strict flag is given, then Happy emits 
--	happySeq = happyDoSeq
-- otherwise it emits
-- 	happySeq = happyDontSeq

happyDoSeq, happyDontSeq :: a -> b -> b
happyDoSeq   a b = a `seq` b
happyDontSeq a b = b

-----------------------------------------------------------------------------
-- Don't inline any functions from the template.  GHC has a nasty habit
-- of deciding to inline happyGoto everywhere, which increases the size of
-- the generated parser quite a bit.


{-# NOINLINE happyDoAction #-}
{-# NOINLINE happyTable #-}
{-# NOINLINE happyCheck #-}
{-# NOINLINE happyActOffsets #-}
{-# NOINLINE happyGotoOffsets #-}
{-# NOINLINE happyDefActions #-}

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
