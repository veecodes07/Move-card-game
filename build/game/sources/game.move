module MyAddr::game{
    use std:: signer;
    use std::debug;

    const STAR_ALREADY_EXISTS:u64 = 100;
    const STAR_NOT_EXISTS:u64 = 101;

    struct GameStar has key {
        name: vector<u8>,
        country: vector<u8>,
        position: u8,
        value: u64,
    }

    public fun newStar(name: vector<u8>, country: vector<u8>, position: u8) : GameStar
    {
        return GameStar{name, country, position, value: 0}//setting the values initial to zero
    }

    public fun get(owner: address) :(vector<u8>, u64) acquires GameStar
    {
        let star = borrow_global<GameStar>(owner);
        (star.name, star.value)
    }









}