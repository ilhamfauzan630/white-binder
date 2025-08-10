import Array "mo:base/Array";
import Nat "mo:base/Nat";
import Text "mo:base/Text";
import Time "mo:base/Time";

import Utils "./Utils";
import DummyData "./DummyData";

module {
  public type User = DummyData.User;

  // return initial users (pure)
  public func initUsers() : [User] {
    DummyData.getDummyUsers(Time.now());
  };

  // register: menerima array users, mengembalikan (updatedUsers, message)
  public func register(users : [User], username : Text, password : Text) : ([User], Text) {
    let exists = Array.find<User>(users, func(u) : Bool { u.username == username });

    switch (exists) {
      case (?_) { return (users, "Username already exists") };
      case null {
        let newId = Nat.add(Array.size(users), 1);
        let newUser : User = {
          id = newId;
          username = username;
          passwordHash = Utils.hashPassword(password);
          createdAt = Time.now();
        };
        let updated = Array.append<User>(users, [newUser]);
        return (updated, "User registered successfully");
      };
    };
  };

  // login: cari user, bandingkan password
  public func login(users : [User], username : Text, password : Text) : Text {
    let found = Array.find<User>(users, func(u) : Bool { u.username == username });

    switch (found) {
      case null { return "User not found" };
      case (?user) {
        if (Utils.comparePassword(password, user.passwordHash)) {
          return "Login successful";
        } else {
          return "Invalid password";
        };
      };
    };
  };
};
