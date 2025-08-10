import Text "mo:base/Text";

module {
  public func hashPassword(password : Text) : Text {
    // Demo: prefix simple. GANTI dengan hash kriptografi untuk production.
    return "hashed_" # password;
  };

  public func comparePassword(password : Text, hash : Text) : Bool {
    return hashPassword(password) == hash;
  };
};
