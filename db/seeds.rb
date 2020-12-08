# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

mining_types = [
  {
    description: "Proof of Work",
    acronym: "PoW"
  },
  {
    description: "Proof of Stake",
    acronym: "PoS"
  },
  {
    description: "Proof of Capacity",
    acronym: "PoC"
  },
]

mining_types.each do |mining_type|
  MiningType.find_or_create_by!(mining_type)
end

# ==========================

coins = [
  {
    description: "Bitcoin",
    acronym: "BTC",
    url_image: "https://img1.gratispng.com/20180514/wee/kisspng-bitcoin-cryptocurrency-zazzle-logo-payment-5afa500d968559.7563634415263539336165.jpg",
    mining_type: MiningType.find_by(acronym: "PoW")
  },
  {
    description: "Ethereum",
    acronym: "ETH",
    url_image: "https://img2.gratispng.com/20180412/fie/kisspng-ethereum-cryptocurrency-blockchain-bitcoin-dash-mines-5ad01ba05092e8.2399509115235880003301.jpg",
    mining_type: MiningType.all.sample
  },
  {
    description: "Dash",
    acronym: "DASH",
    url_image: "https://www.pinclipart.com/picdir/middle/556-5565319_dash-coin-png-email-contact-clipart.png",
    mining_type: MiningType.all.sample
  },
  {
    description: "Iota",
    acronym: "IOT",
    url_image: "https://cryptologos.cc/logos/iota-miota-logo.png",
    mining_type: MiningType.all.sample
  },
  {
    description: "ZCash",
    acronym: "ZEC",
    url_image: "https://globalcoinresearch.com/wp-content/uploads/2019/03/zcash-icon-fullcolor.png",
    mining_type: MiningType.all.sample
  },
]

coins.each do |coin|
  Coin.find_or_create_by!(coin)
end

