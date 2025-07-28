
```markdown

 🚗 FiveM - /koltuk Komutu Scripti

Bu FiveM scripti, oyuncuların araçtayken `/koltuk [numara]` komutunu kullanarak araç içindeki farklı koltuklara geçmesini sağlar. Admin yetkisi gerekmez. Basit, kullanışlı ve herkesin erişebileceği bir komuttur.

```
---


 ## 📦 Özellikler

```
- Oyuncular araç içerisindeyken koltuk değiştirebilir
- Koltuk doluysa uyarı verir
- Araçta değilse hata mesajı gösterir
- Koltuk numaraları oyuncu dostu şekilde ayarlanmıştır (`1 = sürücü`)
- Yetkisiz komut kullanımı engellenir

```
---


## 🔢 Koltuk Numaraları
```
| Yazılan Komut  | Geçilen Koltuk    |
|----------------|--------------------|
| `/koltuk 1`    | 🚗 Sürücü koltuğu  |
| `/koltuk 2`    | Sağ ön koltuk      |
| `/koltuk 3`    | Arka sol koltuk    |
| `/koltuk 4`    | Arka sağ koltuk    |
| `/koltuk 5`    | Ekstra koltuk (SUV)|
| `/koltuk 6`    | Ekstra koltuk      |

```
---


## 🛠️ Kurulum
```
1. Aşağıdaki dosyaları bir klasöre yerleştirin:  
   Örneğin: `resources/koltukkomutu/`

2. `server.cfg` veya `resources.cfg` dosyanıza şu satırı ekleyin:


ensure koltukkomutu



3. Sunucuyu yeniden başlatın.

```
---

## 📁 Dosya Yapısı

```

koltukkomutu/
├── fxmanifest.lua
└── client.lua

````



---

## 📬 Lisans

Bu script herkesin kullanımına açıktır. Dilerseniz geliştirip paylaşabilirsiniz.
Kredi vermeniz yeterlidir. ❤️


