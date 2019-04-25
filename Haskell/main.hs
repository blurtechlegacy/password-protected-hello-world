{-# LANGUAGE InstanceSigs #-}

import Data.Hashable
import System.Environment
import Control.Monad


type Password = String
type Hash = Int

data Protected a = Protected (Maybe Hash) (Maybe a)


instance Monad Protected where
  return :: a -> Protected a
  return value = Protected Nothing (Just value)

  (>>=) :: Protected a -> (a -> Protected b) -> Protected b
  (Protected h1 value) >>= f = case value of
                                Nothing -> Protected h1 Nothing
                                Just v -> let (Protected h2 v') = f v in
                                            case (h1, h2) of
                                              (Nothing, Nothing) -> Protected Nothing v'
                                              (h, Nothing) -> Protected h v'
                                              (Nothing, h) -> Protected h v'
                                              (h, h') -> if h == h' then Protected h v' 
                                                                    else fail ""

  fail :: String -> Protected a
  fail _ = Protected Nothing Nothing

instance Functor Protected where
    fmap = liftM
 
instance Applicative Protected where
    pure  = return
    (<*>) = ap


protec :: Password -> a -> Protected a
protec pass val = Protected (Just $ hash pass) (Just val)

attac :: Protected a -> Password -> Maybe a
attac (Protected Nothing v) _ = v
attac (Protected (Just p) v) p' = if p == hash p' then v else Nothing

hashedPassword :: Int
hashedPassword = 7021092667784282034

hello :: Protected String
hello = Protected (Just hashedPassword) (Just "Hello, World!")

main :: IO ()
main = do
  args <- getArgs

  if length args > 0 
    then do
      let password = head args

      case attac hello password of
        Just message -> putStrLn message
        Nothing -> putStrLn "The password is wrong!"

    else 
      putStrLn "usage: ./hello PASSWORD"
