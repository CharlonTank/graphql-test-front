-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module UserEating.Union.UserStatus exposing (..)

import Graphql.Internal.Builder.Argument as Argument exposing (Argument)
import Graphql.Internal.Builder.Object as Object
import Graphql.Internal.Encode as Encode exposing (Value)
import Graphql.Operation exposing (RootMutation, RootQuery, RootSubscription)
import Graphql.OptionalArgument exposing (OptionalArgument(..))
import Graphql.SelectionSet exposing (FragmentSelectionSet(..), SelectionSet(..))
import Json.Decode as Decode
import UserEating.InputObject
import UserEating.Interface
import UserEating.Object
import UserEating.Scalar
import UserEating.ScalarCodecs
import UserEating.Union


type alias Fragments decodesTo =
    { onSleeping : SelectionSet decodesTo UserEating.Object.Sleeping
    , onEating : SelectionSet decodesTo UserEating.Object.Eating
    }


{-| Build up a selection for this Union by passing in a Fragments record.
-}
fragments :
    Fragments decodesTo
    -> SelectionSet decodesTo UserEating.Union.UserStatus
fragments selections =
    Object.exhuastiveFragmentSelection
        [ Object.buildFragment "Sleeping" selections.onSleeping
        , Object.buildFragment "Eating" selections.onEating
        ]


{-| Can be used to create a non-exhuastive set of fragments by using the record
update syntax to add `SelectionSet`s for the types you want to handle.
-}
maybeFragments : Fragments (Maybe decodesTo)
maybeFragments =
    { onSleeping = Graphql.SelectionSet.empty |> Graphql.SelectionSet.map (\_ -> Nothing)
    , onEating = Graphql.SelectionSet.empty |> Graphql.SelectionSet.map (\_ -> Nothing)
    }
