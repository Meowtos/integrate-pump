module pump::pump {
    use std::string::String;
    use std::option::Option;

    native public entry fun create<X,Y>(
        acc: &signer,
        name: String,
        symbol: String,
        image: String,
        description: String,
        website: Option<String>,
        twitter: Option<String>,
        telegram: Option<String>,
    );

    native public entry fun buy<X,Y>(
        acc: &signer,
        max_aptos: u64,
        min_coins: u64,
    );

    native public entry fun create_and_buy<X,Y>(
        acc: &signer,
        name: String,
        symbol: String,
        image: String,
        description: String,
        website: Option<String>,
        twitter: Option<String>,
        telegram: Option<String>,
        max_aptos: u64,
        min_coins: u64,
    );

    native public entry fun sell<X,Y>(
        acc: &signer,
        max_coins: u64,
        min_aptos: u64,
    );

    native public entry fun exchange<X,Y>(
        acc: &signer,
    );

    #[view]
    native public fun get_pool<X,Y>(): (u64, u64, u64, u64, u64, bool);
}