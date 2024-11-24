class Sach {
  String _masach;
  String _tenSach;
  String _Tacgia;
  String _Trangthai;

  Sach(this._masach, this._tenSach, this._Tacgia, this._Trangthai);

  //get
  String get masach => _masach;
  String get tenSach => _tenSach;
  String get Tacgia => _Tacgia;
  String get Trangthai => _Trangthai;

  //set
  set masach(String masach) {
    if (masach.isNotEmpty) {
      _masach = masach;
    }
  }

  set tenSach(String tenSach) {
    if (tenSach.isNotEmpty) {
      _tenSach = tenSach;
    }
  }

  set Tacgia(String Tacgia) {
    if (Tacgia.isNotEmpty) {
      _Tacgia = Tacgia;
    }
  }

  set TrangThai(String Trangthai) {
    if (Trangthai.isNotEmpty) {
      _Trangthai = Trangthai;
    }
  }

  //Hien thi thong tin
  void HienThiTT() {
    print('Ma sach : $_masach');
    print('Ten sach : $_tenSach');
    print('Tac gia : $_Tacgia');
    print('Trang thai : $_Trangthai');
  }
}

class Docgia {
  String _maDocgia;
  String _hoTen;
  List<Sach> _DsDangmuon;

  Docgia(this._maDocgia, this._hoTen);

  //get
  String get maDocgia => _maDocgia;
  String get hoTen => _hoTen;
  List<Sach> get DsDangmuon => _DsDangmuon;

  //set
  set maDocgia(String maDocgia) {
    if (maDocgia.isNotEmpty) {
      _maDocgia = maDocgia;
    }
  }

  set Hoten(String hoTen) {
    if (hoTen.isNotEmpty) {
      _hoTen = _hoTen;
    }
  }

  void Themsach(Sach s) => _DsDangmuon.add(s);

  void HienThiDS() {
    print('Danh sach sach da muon cua doc gia $_hoTen($_maDocgia) :');
    for (var s in _DsDangmuon) {
      print('\n---------------------------');
      s.HienThiTT();
    }
  }
}

void main() {
  var sach = Sach('S001', 'Sach sinh hoc 8', 'Khong Biet', 'Còn');
  sach.HienThiTT();
}
