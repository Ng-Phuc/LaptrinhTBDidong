import '../models/Sinhvien.dart';
import '../models/Lophoc.dart';

void main() {
  var sv = SinhVien('Nguyen Van B', 21, 'SV002', 4.5);
  print('Test getter: ${sv._hoten}');
  sv.hoTen = 'Nguyen Van c';
  print('Sau khu set : ${sv.hoTen}');
  print('Xep loai : ${sv.xeploai()}');

  var lop = LopHoc('21DTHD5');
  lop.themsv(SinhVien('Nguyen Van A', 20, 'SV001', 6.5));
  lop.themsv(SinhVien('Nguyen Van B', 20, 'SV002', 4.5));
  lop.themsv(SinhVien('Nguyen Van C', 20, 'SV003', 8.5));
  lop.themsv(SinhVien('Nguyen Van D', 20, 'SV004', 9.5));
  lop.HienthiDS();
}
