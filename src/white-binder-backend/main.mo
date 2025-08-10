import AuthService "./services/auth/AuthService";

actor {
  // Simpan data user di stable var agar tidak hilang saat upgrade canister
  stable var users : [AuthService.User] = [];

  // Inisialisasi user default saat pertama kali canister di-deploy
  public func init() {
    if (users.size() == 0) {
      users := AuthService.initUsers();
    };
  };

  // Registrasi user baru
  public func register(username : Text, password : Text) : async Text {
    let (updated, msg) = AuthService.register(users, username, password);
    users := updated;
    return msg;
  };

  // Login user
  public func login(username : Text, password : Text) : async Text {
    let msg = AuthService.login(users, username, password);
    return msg;
  };

  // Melihat semua user (untuk debug/admin)
  public query func listUsers() : async [AuthService.User] {
    return users;
  };
};
