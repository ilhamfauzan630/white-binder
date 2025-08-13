import AuthService "./services/auth/AuthService";
import WalletScanService "./services/scanWallet/WalletScanService";

actor {
  // Menyimpan data user secara permanen
  stable var users : [AuthService.User] = [];

  // Inisialisasi default user saat pertama kali canister dibuat
  public func init() : async () {
    if (users.size() == 0) {
      users := AuthService.initUsers(); // Tidak pakai await
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

  // Melihat semua user yang terdaftar
  public query func listUsers() : async [AuthService.User] {
    return users;
  };

  // Scan wallet address → ini harus `func` biasa (bukan query) supaya bisa `await`
  public func scanWallet(address : Text) : async WalletScanService.ScanResult {
    return await WalletScanService.scanWallet(address);
  };
};
