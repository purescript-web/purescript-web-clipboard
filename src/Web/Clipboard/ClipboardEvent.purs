module Web.Clipboard.ClipboardEvent
  ( ClipboardEvent
  , fromEvent
  , toEvent
  , clipboardData
  ) where

import Prelude

import Data.Maybe (Maybe)
import Data.Nullable (Nullable, toMaybe)
import Unsafe.Coerce (unsafeCoerce)
import Web.Event.Event (Event)
import Web.HTML.Event.DataTransfer (DataTransfer)
import Web.Internal.FFI (unsafeReadProtoTagged)

foreign import data ClipboardEvent :: Type

fromEvent :: Event -> Maybe ClipboardEvent
fromEvent = unsafeReadProtoTagged "ClipboardEvent"

toEvent :: ClipboardEvent -> Event
toEvent = unsafeCoerce

clipboardData :: ClipboardEvent -> Maybe DataTransfer
clipboardData = toMaybe <<< _clipboardData

foreign import _clipboardData :: ClipboardEvent -> Nullable DataTransfer
