class SinhVien {
  String _hoten;
  int _tuoi;
  String _masv;
  double _dtb;

//constructor
  SinhVien(this._hoten, this._tuoi, this._masv, this._dtb);

  //getters
  String get hoTen => _hoten;
  int get tuoi => _tuoi;
  String get maSV => _masv;
  double get dtb => _dtb;

  //setters
  set hoTen(String hoTen) {
    if (hoTen.isNotEmpty) {
      _hoten = hoTen;
    }
  }

  set tuoi(int tuoi) {
    if (tuoi > 0) {
      _tuoi = tuoi;
    } else {
      throw ArgumentError("Tuổi phải lớn hơn 0");
    }
  }

  set maSV(String maSV) {
    if (maSV.isNotEmpty) {
      _masv = maSV;
    }
  }

  set dtb(double dtb) {
    if (dtb > 0 || dtb < 10) {
      _dtb = dtb;
    } else {
      throw ArgumentError("Điểm trung bình phải lớn hơn 0 và nhỏ hơn 10 !!!");
    }
  }

  //Hiển thị thông tin
  void Hienthitt() {
    print('Họ Tên : $_hoten');
    print('Tuoi : $_tuoi');
    print(' Mã số sinh viên : $_masv');
    print('Điểm trung bình : $_dtb');
  }

  //Xếp loại
  String xeploai() {
    if (_dtb >= 8.0) return 'Giỏi';
    if (_dtb >= 6.5) return 'Khá';
    if (_dtb >= 5.0) return 'Trung Bình';
    return 'Yếu';
  }
}
