-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module UserEating.InputObject exposing (..)

import Graphql.Internal.Builder.Argument as Argument exposing (Argument)
import Graphql.Internal.Builder.Object as Object
import Graphql.Internal.Encode as Encode exposing (Value)
import Graphql.OptionalArgument exposing (OptionalArgument(..))
import Graphql.SelectionSet exposing (SelectionSet)
import Json.Decode as Decode
import UserEating.Interface
import UserEating.Object
import UserEating.Scalar
import UserEating.ScalarCodecs
import UserEating.Union


buildSubscribedQueryInputType : (SubscribedQueryInputTypeOptionalFields -> SubscribedQueryInputTypeOptionalFields) -> SubscribedQueryInputType
buildSubscribedQueryInputType fillOptionals =
    let
        optionals =
            fillOptionals
                { websocket_connection_id = Absent, result_hash = Absent, query = Absent }
    in
    { websocket_connection_id = optionals.websocket_connection_id, result_hash = optionals.result_hash, query = optionals.query }


type alias SubscribedQueryInputTypeOptionalFields =
    { websocket_connection_id : OptionalArgument String
    , result_hash : OptionalArgument String
    , query : OptionalArgument String
    }


{-| Type for the SubscribedQueryInputType input object.
-}
type alias SubscribedQueryInputType =
    { websocket_connection_id : OptionalArgument String
    , result_hash : OptionalArgument String
    , query : OptionalArgument String
    }


{-| Encode a SubscribedQueryInputType into a value that can be used as an argument.
-}
encodeSubscribedQueryInputType : SubscribedQueryInputType -> Value
encodeSubscribedQueryInputType input =
    Encode.maybeObject
        [ ( "websocket_connection_id", Encode.string |> Encode.optional input.websocket_connection_id ), ( "result_hash", Encode.string |> Encode.optional input.result_hash ), ( "query", Encode.string |> Encode.optional input.query ) ]


buildUserInputType : (UserInputTypeOptionalFields -> UserInputTypeOptionalFields) -> UserInputType
buildUserInputType fillOptionals =
    let
        optionals =
            fillOptionals
                { first_name = Absent, last_name = Absent, email = Absent }
    in
    { first_name = optionals.first_name, last_name = optionals.last_name, email = optionals.email }


type alias UserInputTypeOptionalFields =
    { first_name : OptionalArgument String
    , last_name : OptionalArgument String
    , email : OptionalArgument String
    }


{-| Type for the UserInputType input object.
-}
type alias UserInputType =
    { first_name : OptionalArgument String
    , last_name : OptionalArgument String
    , email : OptionalArgument String
    }


{-| Encode a UserInputType into a value that can be used as an argument.
-}
encodeUserInputType : UserInputType -> Value
encodeUserInputType input =
    Encode.maybeObject
        [ ( "first_name", Encode.string |> Encode.optional input.first_name ), ( "last_name", Encode.string |> Encode.optional input.last_name ), ( "email", Encode.string |> Encode.optional input.email ) ]


buildUserStatusInputType : (UserStatusInputTypeOptionalFields -> UserStatusInputTypeOptionalFields) -> UserStatusInputType
buildUserStatusInputType fillOptionals =
    let
        optionals =
            fillOptionals
                { user_id = Absent }
    in
    { user_id = optionals.user_id }


type alias UserStatusInputTypeOptionalFields =
    { user_id : OptionalArgument String }


{-| Type for the UserStatusInputType input object.
-}
type alias UserStatusInputType =
    { user_id : OptionalArgument String }


{-| Encode a UserStatusInputType into a value that can be used as an argument.
-}
encodeUserStatusInputType : UserStatusInputType -> Value
encodeUserStatusInputType input =
    Encode.maybeObject
        [ ( "user_id", Encode.string |> Encode.optional input.user_id ) ]


buildWebsocketConnectionInputType : (WebsocketConnectionInputTypeOptionalFields -> WebsocketConnectionInputTypeOptionalFields) -> WebsocketConnectionInputType
buildWebsocketConnectionInputType fillOptionals =
    let
        optionals =
            fillOptionals
                { user_id = Absent, connection_identifier = Absent }
    in
    { user_id = optionals.user_id, connection_identifier = optionals.connection_identifier }


type alias WebsocketConnectionInputTypeOptionalFields =
    { user_id : OptionalArgument String
    , connection_identifier : OptionalArgument String
    }


{-| Type for the WebsocketConnectionInputType input object.
-}
type alias WebsocketConnectionInputType =
    { user_id : OptionalArgument String
    , connection_identifier : OptionalArgument String
    }


{-| Encode a WebsocketConnectionInputType into a value that can be used as an argument.
-}
encodeWebsocketConnectionInputType : WebsocketConnectionInputType -> Value
encodeWebsocketConnectionInputType input =
    Encode.maybeObject
        [ ( "user_id", Encode.string |> Encode.optional input.user_id ), ( "connection_identifier", Encode.string |> Encode.optional input.connection_identifier ) ]
