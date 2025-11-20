Daftar Widget MyShop Mini dan Fungsinya
📱 1. WIDGET APLIKASI DASAR
MaterialApp
Fungsi: Widget root/utama aplikasi Flutter yang menyediakan konfigurasi dasar aplikasi
Kegunaan:

Mengatur tema aplikasi (warna, font, dll)
Menentukan halaman awal (home)
Mengatur judul aplikasi
Menyediakan sistem navigasi

Contoh Penggunaan:
dartMaterialApp(
  title: 'MyShop Mini',
  theme: ThemeData(primarySwatch: Colors.blue),
  home: HomeScreen(),
)

Scaffold
Fungsi: Menyediakan struktur dasar visual halaman dengan layout standar Material Design
Kegunaan:

Menyediakan AppBar di bagian atas
Menyediakan body untuk konten utama
Menyediakan floating action button (opsional)
Menyediakan drawer/bottom navigation (opsional)

Contoh Penggunaan:
dartScaffold(
  appBar: AppBar(title: Text('MyShop Mini')),
  body: Column(children: [...]),
)
Digunakan di: Semua screen (HomeScreen, ProductListScreen, ProductDetailScreen)

AppBar
Fungsi: Bar di bagian atas halaman yang menampilkan judul dan aksi
Kegunaan:

Menampilkan judul halaman
Menampilkan tombol back otomatis (di halaman selain home)
Menampilkan action buttons (search, menu, dll)
Memberikan konteks lokasi user dalam aplikasi

Contoh Penggunaan:
dartAppBar(
  title: Text('MyShop Mini'),
  centerTitle: true,
)
Digunakan di: Semua screen

📐 2. WIDGET LAYOUT
Column
Fungsi: Menyusun widget secara vertikal dari atas ke bawah
Kegunaan:

Menumpuk widget secara vertikal
Mengatur alignment konten (start, center, end)
Mengatur spacing antar children

Property Penting:

crossAxisAlignment: Perataan horizontal (start, center, end)
mainAxisAlignment: Perataan vertikal (start, center, end, spaceBetween)
children: List widget yang disusun vertikal

Contoh Penggunaan:
dartColumn(
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
    Text('Judul'),
    SizedBox(height: 10),
    Text('Konten'),
  ],
)
Digunakan di: Semua screen

Row
Fungsi: Menyusun widget secara horizontal dari kiri ke kanan
Kegunaan:

Menyusun widget berdampingan secara horizontal
Membagi ruang untuk beberapa widget sejajar
Mengatur alignment konten horizontal

Property Penting:

mainAxisAlignment: Perataan horizontal (spaceEvenly, spaceBetween, center)
crossAxisAlignment: Perataan vertikal
children: List widget yang disusun horizontal

Contoh Penggunaan:
dartRow(
  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  children: [
    Card(...), // Kategori 1
    Card(...), // Kategori 2
    Card(...), // Kategori 3
  ],
)
Digunakan di: HomeScreen (untuk 3 kategori)

Padding
Fungsi: Memberikan jarak/ruang kosong di sekitar widget child
Kegunaan:

Memberikan margin internal pada widget
Mengatur jarak dari tepi container
Membuat layout lebih rapi dan tidak menempel tepi

Property Penting:

padding: EdgeInsets (all, symmetric, only)
child: Widget yang diberi padding

Contoh Penggunaan:
dartPadding(
  padding: EdgeInsets.all(16.0), // Jarak 16px semua sisi
  child: Text('Konten'),
)

Padding(
  padding: EdgeInsets.symmetric(horizontal: 8.0), // Hanya kiri-kanan
  child: Card(...),
)
Digunakan di: Semua screen

Center
Fungsi: Menempatkan widget child tepat di tengah (horizontal dan vertikal)
Kegunaan:

Memposisikan konten di tengah layar
Membuat tampilan simetris
Ideal untuk halaman detail/focus

Contoh Penggunaan:
dartCenter(
  child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Icon(Icons.check, size: 100),
      Text('Berhasil!'),
    ],
  ),
)
Digunakan di: ProductDetailScreen

SizedBox
Fungsi: Widget dengan ukuran tetap, sering digunakan untuk spacing
Kegunaan:

Memberikan jarak vertikal antar widget (height)
Memberikan jarak horizontal antar widget (width)
Membuat placeholder dengan ukuran tertentu

Contoh Penggunaan:
dartSizedBox(height: 20), // Jarak vertikal 20px
SizedBox(width: 10),  // Jarak horizontal 10px
Digunakan di: Semua screen

Expanded
Fungsi: Membuat widget child mengisi ruang kosong yang tersedia dalam Row/Column
Kegunaan:

Membagi ruang secara proporsional
Membuat widget fleksibel mengikuti ukuran parent
Mengisi sisa ruang yang ada

Property Penting:

flex: Proporsi ruang (default: 1)
child: Widget yang di-expand

Contoh Penggunaan:
dartRow(
  children: [
    Expanded(child: Card(...)), // Mengisi 1/3 ruang
    Expanded(child: Card(...)), // Mengisi 1/3 ruang
    Expanded(child: Card(...)), // Mengisi 1/3 ruang
  ],
)
Digunakan di: HomeScreen (untuk 3 kategori), ProductListScreen (untuk GridView)

🎨 3. WIDGET TAMPILAN
Text
Fungsi: Menampilkan teks di layar
Kegunaan:

Menampilkan judul, label, konten teks
Styling text (ukuran, warna, ketebalan)
Format text (alignment, overflow)

Property Penting:

style: TextStyle (fontSize, fontWeight, color)
textAlign: Perataan text (center, left, right)
overflow: Handling text panjang (ellipsis, fade)

Contoh Penggunaan:
dartText(
  'MyShop Mini',
  style: TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.bold,
    color: Colors.black,
  ),
  textAlign: TextAlign.center,
)
Digunakan di: Semua screen

Icon
Fungsi: Menampilkan ikon dari Material Design Icons
Kegunaan:

Visualisasi kategori/produk
Button/action indicators
Dekorasi UI

Property Penting:

Icon data (Icons.fastfood, Icons.coffee, dll)
size: Ukuran icon
color: Warna icon

Contoh Penggunaan:
dartIcon(
  Icons.fastfood,
  size: 48,
  color: Colors.blue,
)
Digunakan di: Semua screen

Card
Fungsi: Container dengan elevation (bayangan) untuk menampilkan konten dalam bentuk kartu
Kegunaan:

Mengelompokkan informasi terkait
Memberikan efek depth/kedalaman
Membuat UI lebih modern dan rapi

Property Penting:

elevation: Tinggi bayangan (0-24)
shape: Bentuk kartu (rounded, stadium, dll)
child: Konten dalam kartu

Contoh Penggunaan:
dartCard(
  elevation: 4,
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(12),
  ),
  child: Padding(
    padding: EdgeInsets.all(16),
    child: Column(children: [...]),
  ),
)
Digunakan di: HomeScreen (kategori), ProductListScreen (produk)

🖱️ 4. WIDGET INTERAKTIF
InkWell
Fungsi: Memberikan efek ripple (gelombang) saat ditekan dan menangani event tap
Kegunaan:

Membuat widget menjadi clickable/tappable
Memberikan feedback visual saat tap
Menangani gesture (onTap, onLongPress, dll)

Property Penting:

onTap: Callback saat widget ditekan
borderRadius: Bentuk efek ripple
child: Widget yang dibuat interaktif

Contoh Penggunaan:
dartInkWell(
  onTap: () {
    Navigator.push(context, ...);
  },
  borderRadius: BorderRadius.circular(12),
  child: Card(...),
)
Digunakan di: HomeScreen (kategori), ProductListScreen (produk)

📋 5. WIDGET GRID & LIST
GridView.builder
Fungsi: Membuat tampilan grid (seperti tabel) secara dinamis dan efisien
Kegunaan:

Menampilkan banyak item dalam bentuk grid
Lazy loading (hanya render item yang terlihat)
Ideal untuk galeri, katalog produk

Property Penting:

gridDelegate: Mengatur kolom dan spacing
itemCount: Jumlah item
itemBuilder: Function untuk membuat setiap item

Contoh Penggunaan:
dartGridView.builder(
  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
    crossAxisCount: 2, // 2 kolom
    crossAxisSpacing: 16, // Jarak horizontal
    mainAxisSpacing: 16, // Jarak vertikal
    childAspectRatio: 0.85, // Rasio lebar:tinggi
  ),
  itemCount: products.length,
  itemBuilder: (context, index) {
    return Card(...);
  },
)
Digunakan di: ProductListScreen

SliverGridDelegateWithFixedCrossAxisCount
Fungsi: Mengatur tata letak grid dengan jumlah kolom tetap
Kegunaan:

Menentukan jumlah kolom grid
Mengatur jarak antar item
Mengatur rasio ukuran item

Property Penting:

crossAxisCount: Jumlah kolom
crossAxisSpacing: Jarak horizontal antar item
mainAxisSpacing: Jarak vertikal antar item
childAspectRatio: Rasio lebar:tinggi item

Contoh Penggunaan:
dartSliverGridDelegateWithFixedCrossAxisCount(
  crossAxisCount: 2, // 2 kolom
  crossAxisSpacing: 16,
  mainAxisSpacing: 16,
  childAspectRatio: 0.85,
)
Digunakan di: ProductListScreen

🧭 6. WIDGET NAVIGASI
Navigator.push()
Fungsi: Menambahkan halaman baru ke stack navigasi (pindah ke halaman baru)
Kegunaan:

Berpindah dari satu halaman ke halaman lain
Membawa data ke halaman baru
Menyimpan history navigasi

Parameter:

context: BuildContext
route: MaterialPageRoute atau route lainnya

Contoh Penggunaan:
dartNavigator.push(
  context,
  MaterialPageRoute(
    builder: (context) => ProductListScreen(
      category: selectedCategory,
    ),
  ),
);
Digunakan di: HomeScreen (ke ProductList), ProductListScreen (ke ProductDetail)

Navigator.pop()
Fungsi: Menghapus halaman saat ini dari stack dan kembali ke halaman sebelumnya
Kegunaan:

Kembali ke halaman sebelumnya
Menutup halaman saat ini
Otomatis dipanggil oleh tombol back di AppBar

Contoh Penggunaan:
dartNavigator.pop(context);
Digunakan di: Otomatis via tombol back di AppBar (ProductListScreen, ProductDetailScreen)

MaterialPageRoute
Fungsi: Mendefinisikan rute/transisi untuk navigasi dengan animasi Material Design
Kegunaan:

Membuat transisi halaman yang smooth
Mendefinisikan halaman tujuan
Pass data ke halaman baru

Property Penting:

builder: Function yang return widget halaman baru

Contoh Penggunaan:
dartMaterialPageRoute(
  builder: (context) => ProductDetailScreen(
    product: selectedProduct,
  ),
)
Digunakan di: HomeScreen, ProductListScreen

📊 RINGKASAN PENGGUNAAN WIDGET PER SCREEN
🏠 HomeScreen
Widget yang digunakan:

Scaffold (1x) - Struktur halaman
AppBar (1x) - Judul aplikasi
Column (1x) - Susun vertikal
Row (1x) - Susun 3 kategori horizontal
Card (3x) - Kartu kategori
InkWell (3x) - Tap handler kategori
Icon (3x) - Ikon kategori
Text (4x) - Judul + label kategori
Padding (Multiple) - Spacing
SizedBox (Multiple) - Spacing
Expanded (3x) - Bagi ruang kategori

📦 ProductListScreen
Widget yang digunakan:

Scaffold (1x) - Struktur halaman
AppBar (1x) - Judul + tombol back
Column (1x) - Susun vertikal
GridView.builder (1x) - Grid 2 kolom produk
SliverGridDelegateWithFixedCrossAxisCount (1x) - Atur grid layout
Card (4-12x) - Kartu produk (dinamis)
InkWell (4-12x) - Tap handler produk
Icon (4-12x) - Ikon produk
Text (8-24+x) - Label + harga produk
Padding (Multiple) - Spacing
SizedBox (Multiple) - Spacing
Expanded (1x) - GridView mengisi ruang

🔍 ProductDetailScreen
Widget yang digunakan:

Scaffold (1x) - Struktur halaman
AppBar (1x) - Judul + tombol back
Center (1x) - Pusatkan konten
Column (1x) - Susun vertikal
Icon (1x) - Ikon produk besar
Text (2x) - Nama + harga
Padding (1x) - Spacing
SizedBox (2x) - Spacing


🎯 WIDGET BERDASARKAN KATEGORI
Layout Widgets

Column, Row, Padding, Center, SizedBox, Expanded

Display Widgets

Text, Icon, Card

Interactive Widgets

InkWell, Navigator (push/pop)

List & Grid Widgets

GridView.builder, SliverGridDelegateWithFixedCrossAxisCount

Structural Widgets

MaterialApp, Scaffold, AppBar

Navigation Widgets

Navigator, MaterialPageRoute


💡 TIPS PENGGUNAAN WIDGET
1. Gunakan Column untuk susun vertikal
dartColumn(children: [widget1, widget2, widget3])
2. Gunakan Row untuk susun horizontal
dartRow(children: [widget1, widget2, widget3])
3. Gunakan Padding untuk spacing
dartPadding(padding: EdgeInsets.all(16), child: ...)
4. Gunakan SizedBox untuk jarak antar widget
dartSizedBox(height: 20) // Jarak vertikal
5. Gunakan Card + InkWell untuk item yang bisa diklik
dartCard(
  child: InkWell(
    onTap: () {...},
    child: ...,
  ),
)
6. Gunakan GridView.builder untuk banyak item
dartGridView.builder(
  itemCount: items.length,
  itemBuilder: (context, index) => ...,
)
7. Gunakan Navigator.push untuk pindah halaman
dartNavigator.push(context, MaterialPageRoute(builder: (context) => NewPage()))

✅ CHECKLIST WIDGET PROJECT

✅ MaterialApp - Root aplikasi
✅ Scaffold - Struktur halaman (3x)
✅ AppBar - Header halaman (3x)
✅ Column - Layout vertikal (3x)
✅ Row - Layout horizontal (1x)
✅ Padding - Spacing (Multiple)
✅ SizedBox - Spacing kosong (Multiple)
✅ Center - Pusatkan konten (1x)
✅ Expanded - Isi ruang tersedia (4x)
✅ Text - Tampilkan teks (Multiple)
✅ Icon - Tampilkan ikon (Multiple)
✅ Card - Kartu dengan shadow (Multiple)
✅ InkWell - Tap handler (Multiple)
✅ GridView.builder - Grid dinamis (1x)
✅ SliverGridDelegate - Grid settings (1x)
✅ Navigator.push - Navigasi maju (2x)
✅ Navigator.pop - Navigasi mundur (Auto)
✅ MaterialPageRoute - Route definition (2x)

Total: 18 jenis widget berbeda