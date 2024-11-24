import '../models/Sinhvien.dart';

class LopHoc {
  String _tenlop;
  List<SinhVien> _Danhsachsv = [];

  LopHoc(this._tenlop);

  //getter
  String get tenlop => _tenlop;
  List<SinhVien> get Danhsachsv => _Danhsachsv;

  //setter
  set tenlop(String tenlop) {
    if (tenlop.isNotEmpty) {
      _tenlop = tenlop;
    }
  }

  //Them sv
  void themsv(SinhVien sv) => _Danhsachsv.add(sv);

  void HienthiDS() {
    print('Danh sach sinh vien lop $_tenlop');
    for (var sv in _Danhsachsv) {
      print('\n---------------------------');
      sv.Hienthitt();
      print('\nXep loai: ${sv.xeploai()}');
    }
  }
}
