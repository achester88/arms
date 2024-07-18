// @generated automatically by Diesel CLI.

diesel::table! {
    posts (id) {
        id -> Int4,
        title -> Varchar,
        link -> Nullable<Varchar>,
        author -> Int4,
        created_at -> Timestamp,
    }
}

diesel::table! {
    users (id) {
        id -> Int4,
        username -> Varchar,
        password -> Varchar,
    }
}

diesel::joinable!(posts -> users (author));

diesel::allow_tables_to_appear_in_same_query!(
    posts,
    users,
);
