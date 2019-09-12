-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module UserEating.Object.UserStatus exposing (..)

import Graphql.Internal.Builder.Argument as Argument exposing (Argument)
import Graphql.Internal.Builder.Object as Object
import Graphql.Internal.Encode as Encode exposing (Value)
import Graphql.Operation exposing (RootMutation, RootQuery, RootSubscription)
import Graphql.OptionalArgument exposing (OptionalArgument(..))
import Graphql.SelectionSet exposing (SelectionSet)
import Json.Decode as Decode
import UserEating.InputObject
import UserEating.Interface
import UserEating.Object
import UserEating.Scalar
import UserEating.ScalarCodecs
import UserEating.Union


created_at : SelectionSet (Maybe String) UserEating.Object.UserStatus
created_at =
    Object.selectionForField "(Maybe String)" "created_at" [] (Decode.string |> Decode.nullable)


id : SelectionSet String UserEating.Object.UserStatus
id =
    Object.selectionForField "String" "id" [] Decode.string


updated_at : SelectionSet (Maybe String) UserEating.Object.UserStatus
updated_at =
    Object.selectionForField "(Maybe String)" "updated_at" [] (Decode.string |> Decode.nullable)


user : SelectionSet decodesTo UserEating.Object.User -> SelectionSet (Maybe decodesTo) UserEating.Object.UserStatus
user object_ =
    Object.selectionForCompositeField "user" [] object_ (identity >> Decode.nullable)


user_id : SelectionSet (Maybe String) UserEating.Object.UserStatus
user_id =
    Object.selectionForField "(Maybe String)" "user_id" [] (Decode.string |> Decode.nullable)
