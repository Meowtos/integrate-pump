module pump::pump {
    
    public entry fun create<X,Y>(
        acc: &signer,
        name: String,
        symbol: String,
        image: String,
        description: String,
        website: Option<String>,
        twitter: Option<String>,
        telegram: Option<String>,
    );

    public entry fun buy<X,Y>(
        acc: &signer,
        max_aptos: u64,
        min_coins: u64,
    );

    public entry fun create_and_buy<X,Y>(
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

    public entry fun sell<X,Y>(
        acc: &signer,
        max_coins: u64,
        min_aptos: u64,
    );

    public entry fun exchange<X,Y>(
        acc: &signer,
    );

    #[view]
    public fun get_pool<X,Y>(): (u64, u64, u64, u64, u64, bool);
}