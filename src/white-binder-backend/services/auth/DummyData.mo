import Nat "mo:base/Nat";
import Text "mo:base/Text";

module {
  public type User = {
    id : Nat;
    username : Text;
    passwordHash : Text;
    createdAt : Nat;
  };

  // Data dummy awal (password sudah \"hashed_\" prefix untuk demo)
  public func getInitialUsers() : [User] {
    return [
      {
        id = 1;
        username = "alice";
        passwordHash = "hashed_password123";
        createdAt = 0;
      },
      {
        id = 2;
        username = "bob";
        passwordHash = "hashed_qwerty";
        createdAt = 0;
      },
    ];
  };
};
