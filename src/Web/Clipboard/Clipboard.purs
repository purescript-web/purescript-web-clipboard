module Web.Clipboard
  ( clipboard
  , Clipboard
  , toEventTarget
  , fromEventTarget
  , readText
  , writeText
  ) where

import Prelude

import Data.Function.Uncurried (Fn3, runFn3)
import Data.Maybe (Maybe(..))
import Effect (Effect)
import Promise (Promise)
import Unsafe.Coerce (unsafeCoerce)
import Web.Event.Internal.Types (EventTarget)
import Web.HTML (Navigator)
import Web.Internal.FFI (unsafeReadProtoTagged)

foreign import clipboardWrapper :: Fn3 (forall a. a -> Maybe a) (forall a. Maybe a) Navigator (Effect (Maybe Clipboard))

clipboard :: Navigator -> Effect (Maybe Clipboard)
clipboard = runFn3 clipboardWrapper Just Nothing

foreign import data Clipboard :: Type

toEventTarget :: Clipboard -> EventTarget
toEventTarget = unsafeCoerce

fromEventTarget :: EventTarget -> Maybe Clipboard
fromEventTarget = unsafeReadProtoTagged "Clipboard"

foreign import readText :: Clipboard -> Effect (Promise String)

foreign import writeText :: String -> Clipboard -> Effect (Promise Unit)
