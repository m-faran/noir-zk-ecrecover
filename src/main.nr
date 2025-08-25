use dep::ecrecover;

fn main(
  pub_key_x: [u8; 32], // X Coordinate of ECDSA public key
  pub_key_y: [u8; 32], // Y Coordiante of ECDSA public key
  signature: [u8; 64], // r and s, concatenated of the ECDSA signature
  hashed_message: pub [u8; 32],
  expected_address: pub Field
) {
  let address = ecrecover::ecrecover(pub_key_x, pub_key_y, signature, hashed_message);
  assert(address == expected_address);
}