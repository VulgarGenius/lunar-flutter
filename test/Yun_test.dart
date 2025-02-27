import 'package:flutter_test/flutter_test.dart';
import 'package:lunar/lunar.dart';

void main() {
  test('起运', () {
    Solar solar = Solar.fromYmdHms(1981, 1, 29, 23, 37, 0);
    Lunar lunar = solar.getLunar();
    EightChar eightChar = lunar.getEightChar();
    Yun yun = eightChar.getYun(0);
    expect(yun.getStartYear(), 8);
    expect(yun.getStartMonth(), 0);
    expect(yun.getStartDay(), 20);
    expect(yun.getStartSolar().toYmd(), '1989-02-18');
  });

  test('起运2', () {
    Lunar lunar = Lunar.fromYmdHms(2019, 12, 12, 11, 22, 0);
    EightChar eightChar = lunar.getEightChar();
    Yun yun = eightChar.getYun(1);
    expect(yun.getStartYear(), 0);
    expect(yun.getStartMonth(), 1);
    expect(yun.getStartDay(), 0);
    expect(yun.getStartSolar().toYmd(), '2020-02-06');
  });

  test('起运3', () {
    Solar solar = Solar.fromYmdHms(2020, 1, 6, 11, 22, 0);
    Lunar lunar = solar.getLunar();
    EightChar eightChar = lunar.getEightChar();
    Yun yun = eightChar.getYun(1);
    expect(yun.getStartYear(), 0);
    expect(yun.getStartMonth(), 1);
    expect(yun.getStartDay(), 0);
    expect(yun.getStartSolar().toYmd(), '2020-02-06');
  });
}
