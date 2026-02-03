# Write your MySQL query statement below


SELECT * FROM Users 
WHERE regexp_like(mail, '^[A-Za-z]+[A-Za-z0-9\_\.\-]*@leetcode\\.com$','c');

-- SQL consumes \\

-- Regex sees \.


-- REGEXP_LIKE(column, pattern, 'c')

-- Performs regex pattern matching

-- Returns TRUE if column matches pattern

-- 'c' flag → case-sensitive

-- A ≠ a

-- Regex Components (Line by Line)
-- ^

-- Start of string anchor

-- Prevents extra characters at beginning

-- [A-Za-z]

-- First character must be a letter

-- Digits and symbols not allowed at start

-- [A-Za-z0-9._-]*

-- Allowed characters after first letter:

-- Letters (A–Z, a–z)

-- Digits (0–9)

-- Dot .

-- Underscore _

-- Hyphen -

-- * → zero or more occurrences

-- @leetcode

-- Literal string

-- Fixes the domain name

-- [.]

-- Matches literal dot

-- Dot inside [] loses special meaning

-- Safer than . which matches any character

-- com

-- Literal top-level domain

-- $

-- End of string anchor

-- Prevents extra characters after com

-- Why [.] instead of .

-- . matches any single character

-- [.] matches only dot

-- Prevents invalid emails like:

-- abc@leetcode?com

-- abc@leetcodeXcom

--T.C -> O(n)