# Dasar Matematika Rekayasa

Buku ajar matematika rekayasa dasar dalam bahasa Indonesia.

**Penulis:** Bagus Tris Atmaja, Dwi Prananto, Mifta Nur Farid  
**Institusi:** Institut Teknologi Sepuluh Nopember (ITS), Surabaya

## Daftar Isi

| Bab | Judul | Penulis |
|-----|-------|---------|
| 1   | Persamaan Garis Lurus | B.T. Atmaja |
| 2   | Fungsi | B.T. Atmaja |
| 3   | Pendekatan Akar Persamaan Satu Variabel | B.T. Atmaja |
| 4   | Interpolasi | M.N. Farid |
| 5   | Integral Kalkulus | D. Prananto |
| 6   | Deret Fourier Fungsi Periodik | D. Prananto |
| 7   | Analisa Sistem Tak Ubah Waktu | D. Prananto |

## Kompilasi

### Prasyarat

- Distribusi TeX (misal [TeX Live](https://www.tug.org/texlive/) atau [MiKTeX](https://miktex.org/))
- `biber` (sudah termasuk dalam TeX Live)

### Build

```bash
make
```

Atau secara manual:

```bash
pdflatex matrek.tex
biber matrek
pdflatex matrek.tex
pdflatex matrek.tex
```

Hasil kompilasi: `matrek.pdf`.

Untuk membersihkan file hasil kompilasi:

```bash
make clean
```

## Struktur Repositori

```
matrek.tex          — dokumen utama (top-level driver)
preamble.tex        — semua paket dan konfigurasi LaTeX
pengantar.tex       — kata pengantar
bab1.tex – bab7.tex — file per bab
pict/               — gambar dan ilustrasi
references.bib      — database referensi/bibliografi
Makefile            — aturan build otomatis
```

## Lisensi

© 2017–2026 Bagus Tris Atmaja, Dwi Prananto, Mifta Nur Farid. All rights reserved.
