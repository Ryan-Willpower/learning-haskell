-- Example module
-- Ryan Willpower, December 2019
-- 
-- This is simple example of writing module

module Simple
where

arithmetic_mean :: Fractional a => a -> a -> a
arithmetic_mean x y = (x + y) / 2

harmonic_mean :: Fractional a => a -> a -> a
harmonic_mean x y = 2 * x * y / (x + y)