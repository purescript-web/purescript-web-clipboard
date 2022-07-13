module Web.Clipboard where

import Prelude

import Data.Maybe (Maybe)
import Effect (Effect)
import Unsafe.Coerce (unsafeCoerce)
import Web.Event.Internal.Types (EventTarget)
import Web.HTML (Navigator)
import Web.Internal.FFI (unsafeReadProtoTagged)
import Web.Promise (Promise)

foreign import clipboard :: Navigator -> Effect Clipboard

foreign import data Clipboard :: Type

toEventTarget :: Clipboard -> EventTarget
toEventTarget = unsafeCoerce

fromEventTarget :: EventTarget -> Maybe Clipboard
fromEventTarget = unsafeReadProtoTagged "Clipboard"

foreign import readText :: Clipboard -> Effect (Promise String)

foreign import writeText :: String -> Clipboard -> Effect (Promise Unit)
