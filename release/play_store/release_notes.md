# Release Notes

## Play Console release notes

İlk sürüm yayında.

- İki seçenekli eğlenceli quiz akışı
- Seçimlere göre sonuç profili
- Sonucu paylaşma
- Tekrar oynama
- Sade ve hızlı kullanım

## Internal note

This is the first Play Store release candidate for Bu mu, O mu?

The app includes:

- App shell
- Local quiz flow
- Result profile
- Share flow
- Replay flow
- Android release signing
- Release AAB generation

## Technical release artifact

AAB path:

build/app/outputs/bundle/release/app-release.aab

## Build command inherited from Branch 4

flutter build appbundle --release --no-tree-shake-icons

## Build note

The --no-tree-shake-icons flag is preserved from Branch 4 because the host-side icon font subsetting issue affected release build generation.

This is not an app logic blocker.
