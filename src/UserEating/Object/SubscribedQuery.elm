-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module UserEating.Object.SubscribedQuery exposing (..)

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


created_at : SelectionSet (Maybe String) UserEating.Object.SubscribedQuery
created_at =
    Object.selectionForField "(Maybe String)" "created_at" [] (Decode.string |> Decode.nullable)


id : SelectionSet String UserEating.Object.SubscribedQuery
id =
    Object.selectionForField "String" "id" [] Decode.string


query : SelectionSet (Maybe String) UserEating.Object.SubscribedQuery
query =
    Object.selectionForField "(Maybe String)" "query" [] (Decode.string |> Decode.nullable)


result_hash : SelectionSet (Maybe String) UserEating.Object.SubscribedQuery
result_hash =
    Object.selectionForField "(Maybe String)" "result_hash" [] (Decode.string |> Decode.nullable)


updated_at : SelectionSet (Maybe String) UserEating.Object.SubscribedQuery
updated_at =
    Object.selectionForField "(Maybe String)" "updated_at" [] (Decode.string |> Decode.nullable)


websocket_connection : SelectionSet decodesTo UserEating.Object.WebsocketConnection -> SelectionSet (Maybe decodesTo) UserEating.Object.SubscribedQuery
websocket_connection object_ =
    Object.selectionForCompositeField "websocket_connection" [] object_ (identity >> Decode.nullable)


websocket_connection_id : SelectionSet (Maybe String) UserEating.Object.SubscribedQuery
websocket_connection_id =
    Object.selectionForField "(Maybe String)" "websocket_connection_id" [] (Decode.string |> Decode.nullable)
