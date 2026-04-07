import 'package:flutter/material.dart';
import 'package:flutter_application_1/produk_detail.dart';

class ProdukForm extends StatefulWidget {
  @override
  _ProdukFormState createState() => _ProdukFormState();
}

class _ProdukFormState extends State<ProdukForm> {
  final TextEditingController _kodeProdukCtrl = TextEditingController();
  final TextEditingController _namaProdukCtrl = TextEditingController();
  final TextEditingController _hargaProdukCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Form Produk")),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              _textboxKodeProduk(),
              SizedBox(height: 10),
              _textboxNamaProduk(),
              SizedBox(height: 10),
              _textboxHargaProduk(),
              SizedBox(height: 20),
              _tombolSimpan(),
            ],
          ),
        ),
      ),
    );
  }

  _textboxKodeProduk() {
    return TextField(
      controller: _kodeProdukCtrl,
      decoration: InputDecoration(
        labelText: "Kode Produk",
        border: OutlineInputBorder(),
      ),
    );
  }

  _textboxNamaProduk() {
    return TextField(
      controller: _namaProdukCtrl,
      decoration: InputDecoration(
        labelText: "Nama Produk",
        border: OutlineInputBorder(),
      ),
    );
  }

  _textboxHargaProduk() {
    return TextField(
      controller: _hargaProdukCtrl,
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        labelText: "Harga Produk",
        border: OutlineInputBorder(),
      ),
    );
  }

  _tombolSimpan() {
    return ElevatedButton(
      child: Text("Simpan"),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ProdukDetail(
              kodeProduk: _kodeProdukCtrl.text,
              namaProduk: _namaProdukCtrl.text,
              harga: int.tryParse(_hargaProdukCtrl.text) ?? 0,
            ),
          ),
        );
      },
    );
  }
}