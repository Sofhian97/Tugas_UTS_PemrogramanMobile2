import 'package:flutter_app_1/ui/produk_detail.dart';
import 'package:flutter/material.dart';

class ProdukForm extends StatefulWidget {
  const ProdukForm({Key? key}) : super(key: key);

  @override
  _ProdukFormState createState() => _ProdukFormState();
}

class _ProdukFormState extends State<ProdukForm> {
  final _kodeProdukTextBoxController = TextEditingController();
  final _namaProdukTextBoxController = TextEditingController();
  final _hargaProdukTextBoxController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Form Produk'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            _textboxKodeProduk(),
            _textboxNamaProduk(),
            _textboxHargaProduk(),
            _tombolSimpan()
          ],
        )),
    );
  }
  _textboxKodeProduk(){
  return TextField(
    decoration: const InputDecoration(labelText: "Kode Produk"),
    controller: _kodeProdukTextBoxController,
    );
  }
  _textboxNamaProduk(){
  return TextField(
    decoration: const InputDecoration(labelText: "Nama Produk"),
    controller: _namaProdukTextBoxController,
    );
  }
  _textboxHargaProduk(){
  return TextField(
    decoration: const InputDecoration(labelText: "Harga Produk"),
    controller: _hargaProdukTextBoxController,
    );
  }
  _tombolSimpan(){
  return ElevatedButton(
    onPressed: () {
      String kodeProduk = _kodeProdukTextBoxController.text;
      String namaProduk = _namaProdukTextBoxController.text;
      int harga = int.parse(
        _hargaProdukTextBoxController.text); //parsing dari String ke int
        //pindah ke halaman produk detail dan mengirim data
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => ProdukDetail(
          kodeProduk : kodeProduk,
          namaProduk : namaProduk,
          harga : harga,
        ))); 
    }, 
    child: const Text('Simpan'));
  }
}

