module {
  public type User = {
    id : Nat;
    username : Text;
    passwordHash : Text;
    createdAt : Int;
  };

  public func getDummyUsers(createdAt : Int) : [User] {
    return [
      {
        id = 1;
        username = "Alice";
        passwordHash = "tbdash11";
        createdAt = createdAt;
      },
      {
        id = 2;
        username = "SuperKita";
        passwordHash = "kitakita";
        createdAt = createdAt;
      },
    ];
  };
};
