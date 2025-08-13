import AuthService "./services/auth/AuthService";
import WalletScanService "./services/scanWallet/WalletScanService";
import AnalyticsService "./services/analytics/AnalyticsService";

actor {
  // Menyimpan data user secara permanen
  stable var users : [AuthService.User] = [];

  // Inisialisasi user default
  public func init() : async () {
    if (users.size() == 0) {
      users := AuthService.initUsers();
    };
    return (); // wajib return () karena async ()
  };

  // Registrasi user baru
  public shared func register(username : Text, password : Text) : async Text {
    let result = AuthService.register(users, username, password);
    users := result.0;
    return result.1;
  };

  // Login user
  public shared func login(username : Text, password : Text) : async Text {
    return AuthService.login(users, username, password);
  };

  // Melihat semua user yang terdaftar
  public shared query func listUsers() : async [AuthService.User] {
    return users;
  };

  // Scan wallet address (synchronous)
  public func scanWallet(address : Text) : async WalletScanService.ScanResult {
    return WalletScanService.scanWallet(address); // wajib pakai 'return'
  };

  // Ambil semua analitik wallet
  public shared query func getAnalytics(address : Text) : async AnalyticsService.AnalyticsResult {
    return AnalyticsService.getAnalytics(address);
  };
};
