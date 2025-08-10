import AuthService "./services/auth/AuthService";

persistent actor {
  // simpan state di stable var (kosong saat install), lalu inisialisasi pada init()
  stable var users : [AuthService.User] = [];

  public func init() {
    users := AuthService.initUsers();
  };

  public func register(username : Text, password : Text) : async Text {
    let (updated, msg) = AuthService.register(users, username, password);
    users := updated;
    return msg;
  };

  public func login(username : Text, password : Text) : async Text {
    return AuthService.login(users, username, password);
  };

  public query func listUsers() : async [AuthService.User] {
    return users;
  };
};
