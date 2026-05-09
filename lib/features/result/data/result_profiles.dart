import '../models/result_profile.dart';

const resultProfiles = <ResultProfile>[
  // ─────────────────────────────────────────────
  // yemek (🍕) – 4 profil
  // ─────────────────────────────────────────────
  ResultProfile(
    id: 'yemek_profile_1',
    categoryId: 'yemek',
    title: 'Foodie Kaşif',
    subtitle: 'Meraklı Yemekçi',
    emoji: '🍽️',
    description:
        'Sen, tabağında ne olduğunu merak eden ve her yeni lezzeti bir macera olarak gören birisin. '
        'Menüde en garip ismi olan yemeği sipariş etmek seni heyecanlandırır; daha önce hiç tatmadığın '
        'bir mutfağı keşfetmek ise küçük bir zafer gibi hissettirir. Seyahat ederken önce yerel pazarları '
        've gizli kalmış lokantalarda araştırırsın; turistik restoranlar seni pek ilgilendirmez. '
        'Yemeği sadece bir ihtiyaç olarak değil, kültürü anlamanın en lezzetli yolu olarak görürsün. '
        'Arkadaşların seninle yemek yerken her zaman yeni bir şeyler dener; çünkü menüyü en iyi sen '
        'incelersin. Baharatlı, egzotik ya da sıra dışı tatlar seni ürkütmez, aksine davet eder. '
        'Mutfak denemeleri yaparken tarife bağlı kalmak zorunda hissetmezsin; içgüdüne güvenir, '
        'malzemeleri özgürce harmanlarsın. Yeni bir malzeme gördüğünde hemen nasıl kullanabileceğini '
        'düşünür, mevsimsel lezzetleri takip edersin. Yemek masası senin için hem bir öğrenme hem de '
        'paylaşma alanıdır. Her lokma yeni bir hikâye, her yeni tat ise genişleyen bir evrendir. '
        'Yemeğin arkasındaki kültüre, tarihe ve emek hikâyesine duyduğun merak seni sıradan bir '
        'yemekçiden değil, gerçek bir gastronomik kaşife dönüştürür. Sokak lezzetlerinden fine dining '
        'deneyimlerine kadar geniş bir yelpazede gezinir; fiyat değil, otantiklik senin için belirleyici '
        'ölçüttür. Aynı şehirde bile farklı mahallelerin mutfak kültürlerini keşfetmek için yola çıkarsın. '
        'Yemek, senin için dünyanın en erişilebilir seyahat aracıdır.',
    shareText:
        'Benim yemek tarzım: Foodie Kaşif! 🍽️ Menüdeki en ilginç yemeği seçer, bilmediğim '
        'mutfakları keşfetmekten büyük zevk alırım. Seyahatte ilk durağım yerel pazar, ilk sorum '
        '"buranın meşhur yemeği ne?" olur. Baharatlı mı, egzotik mi, sıra dışı mı? Sorun değil! '
        'Arkadaşlarımla yemek yerken masanın en cesur siparişini ben veririm. Bir yemeğin arkasındaki '
        'kültür, tarih ve hikâyeyi merak ederim. Sokak lezzetinden fine dining\'e kadar her deneyime açığım; '
        'otantiklik benim için en önemli ölçüttür. Yemek benim için sadece doyma değil, dünyayı ve farklı '
        'kültürleri anlamanın en lezzetli yolu. Mutfakta malzemeleri özgürce harmanlayıp, mevsimsel lezzetleri '
        'keşfetmeyi severim. Dünyanın her köşesinde yeni bir lezzet hikâyesi var ve ben o hikâyeleri yaşayarak '
        'keşfetmek istiyorum. Sen de yemek profilini öğrenmek ister misin?',
  ),
  ResultProfile(
    id: 'yemek_profile_2',
    categoryId: 'yemek',
    title: 'Konfor Sever',
    subtitle: 'Bildik Lezzetler',
    emoji: '🥘',
    description:
        'Yemek söz konusu olduğunda güvenilir olana güvenirsin. Annenin tarhanası, '
        'gençliğinden beri gittiğin kebapçı ya da her hafta sonu yediğin kahvaltı tabağı '
        'seni bir şekilde tam olarak doyurur. Yeni tatları denemek seni geri itmez ama '
        'seçim yapmak zorunda kaldığında bildik ve sevdiğin şeye uzanırsın. '
        'Yemek için risk almak yerine keyif almayı tercih edersin; deney yapmak için '
        'değil, gerçekten iyi bir şey yemek için masaya otururun. Restoran seçerken '
        'güvenilir puanlar ve tanıdık mutfaklar önceliğin olur. Arkadaşlarına da '
        'sevdiğin yerleri önerirken memnuniyetle konuşursun; "oraya gittim, harika" '
        'demek seni mutlu eder. Mevsiminde yenen sebze, taze pişirilmiş ev yemeği ya da '
        'yılların verdiği bir tarif; bunlar senin için sofranın en değerli köşeleridir. '
        'Konfor gıdaları sadece mide doldurmuyor, ruhunu da besliyor. Yeni bir yerde '
        'bile tanıdık tatların kokusunu aradığını fark edersin; çünkü yemek senin için '
        'nostalji ve güven demek. Seçimlerinde tutarlısın ve bu tutarlılık seni mutlu kılıyor. '
        'Dedenin köftesinin tarifi, annenin çorbası ya da yıllardır değişmeyen kahvaltı '
        'alışkanlıkların; bunlar sadece yemek değil, kimliğinin bir parçası. Lezzet '
        'güvencesi senin için yemekten aldığın zevkin temelidir; bilinmeze atlamak yerine '
        'denenmiş ve sevilen üzerinde derinleşmek seni mutlu kılar.',
    shareText:
        'Benim yemek tarzım: Konfor Sever! 🥘 Bildiğim ve sevdiğim lezzetlere sadık kalırım. '
        'Yeni tatlar ilginç olabilir ama gerçekten iyi bir şey yemek için deney yapmak zorunda '
        'değilim. Annemin tarifi, gençliğimden beri gittiğim mekan ya da her hafta tekrarladığım '
        'kahvaltı beni tam manasıyla doyurur. Yeni bir şehirde bile tanıdık tatların peşine '
        'düşerim; çünkü yemek benim için nostalji ve güvendir. Dedenin köftesi, annenin çorbası; '
        'bunlar sadece yemek değil, kimliğimin bir parçası. Restoran seçerken güvenilir '
        'önerilere dikkat ederim. Yemek benim için güvenli liman gibi. '
        'Sen de yemek profilini keşfetmek ister misin?',
  ),
  ResultProfile(
    id: 'yemek_profile_3',
    categoryId: 'yemek',
    title: 'Ev Aşçısı',
    subtitle: 'Mutfak Ustası',
    emoji: '👨‍🍳',
    description:
        'Mutfak senin için bir yaratıcılık alanı. Dışarıda yemek yemek güzel olabilir ama '
        'en iyi yemeğin kendi elinle yapıldığına inanırsın. Bir tarif gördüğünde bunu '
        'nasıl yapabileceğini düşünmeye başlarsın; malzemeleri listeler, tekniği zihninde '
        'canlandırırsın. Pazar alışverişi için erken kalkmak seni mutlu eder; taze malzeme '
        'seçmek, mevsiminde ne geldiğini görmek bu deneyimin bir parçasıdır. '
        'Arkadaşlarını veya sevdiklerini eve davet edip kendi ellerin pişirdiği yemeklerle '
        'ağırlamak seni derinden tatmin eder. Hazır gıdalar ve paketli ürünler pek ilgini '
        'çekmez; bildiğin, kontrol ettiğin, sıfırdan yaptığın şeyleri tercih edersin. '
        'Tarif takip etmek kadar kendi yorumunu katmak da önemlidir; bir yemeği kendi '
        'damak zevkine göre uyarlamaktan çekinmezsin. Mutfak kokar, el kirlenir ama '
        'masaya serilen tabaklar seni başka türlü ödüllendiren bir şeydir. Yeni teknikler '
        'öğrenmek, farklı mutfakları evde denemek ve sevdiklerine özel bir şeyler yapmak '
        'sana derin bir tatmin verir. Mutfak senin hem terapi alanın hem de sevgi dilidir. '
        'Fermente edilmiş malzemeler, uzun süre pişirme teknikleri ya da sıfırdan yapılan '
        'hamur işleri; sabır gerektiren her adım seni daha çok heyecanlandırır. Birisi '
        'tabağını temizleyip "harika" dediğinde aldığın o tatmin, hiçbir övgüyle kıyaslanamaz.',
    shareText:
        'Benim yemek tarzım: Ev Aşçısı! 👨‍🍳 En iyi yemek kendi elimden çıkar. '
        'Pazardan taze malzeme seçmek, sıfırdan bir yemek pişirmek ve sevdiklerimi '
        'kendi yaptıklarımla ağırlamak beni çok mutlu ediyor. Hazır gıda pek benim '
        'tarihimde yok; mutfakta vakit geçirmek bir yük değil, zevk. Yeni teknikler '
        'öğrenmekten keyif alırım, tarifleri kendi zevkime göre uyarlarım. Fermente '
        'malzemeler, uzun pişirme yöntemleri; sabır gerektiren her adım beni heyecanlandırır. '
        'Birisi için özel bir yemek pişirmek benim için sevgi göstermenin en güzel '
        'yollarından biri. Mutfak benim terapi alanım. '
        'Sen de yemek profilini merak ediyor musun?',
  ),
  ResultProfile(
    id: 'yemek_profile_4',
    categoryId: 'yemek',
    title: 'Sosyal Gurme',
    subtitle: 'Deneyim Arayışçısı',
    emoji: '🥂',
    description:
        'Senin için yemek yemek, yenen şeyden çok o anı paylaşmakla ilgilidir. '
        'Bir restoranı tercih ederken ambiyansı, masanın düzeni ve ortamın enerjisi '
        'en az menü kadar önemlidir. Uzun sofra sohbetleri, şarap eşliğinde süren '
        'tartışmalar ya da arkadaşlarla paylaşılan çeşit çeşit mezeler senin en '
        'keyif aldığın anlardır. Yeni açılan yerleri keşfetmek istersin; trendy bir '
        'mekan ya da şef masası deneyimi seni heyecanlandırır. Sosyal medyada '
        'paylaştığın fotoğrafların büyük çoğunluğu masadan karedir; ama bu sadece '
        'gösteriş değil, o güzel anı belgelemek istemendir. Grup yemekleri organize '
        'etmek sana düşer çünkü en iyi yeri sen araştırırsın. '
        'Yemeği bir ritüel ve buluşma noktası olarak görürsün. '
        'Lezzetli bir menüden fazlası lazım; doğru yer, doğru insanlar, doğru an. '
        'Şeflerin yorumlarını, özel tasting menülerini ve yaratıcı sunum biçimlerini '
        'takdir edersin. Bir yemeği çevrenizdekilerle paylaşmak, anı kalıcı kılmanın '
        'en güzel yolu olduğuna inanırsın. Rezervasyon yapmak, menüyü önceden araştırmak '
        've sofra düzenini fark etmek senin için yemek deneyiminin ayrılmaz parçaları. '
        'Doğum günleri, kutlamalar ya da sıradan bir Cuma akşamı; fark etmez, '
        'güzel bir sofra kurulmuşsa sen ordasın ve anı ölümsüz kılıyorsun.',
    shareText:
        'Benim yemek tarzım: Sosyal Gurme! 🥂 Yemek benim için bir sosyal ritüel. '
        'Ambiyansı güzel, sohbeti uzun, paylaşılan çeşitlerle dolu bir sofra harika. '
        'Yeni açılan mekanları keşfeder, arkadaş yemeklerini organize eder, '
        'o anı fotoğraflara ölümsüzleştiririm. Rezervasyon öncesi menüyü araştırırım; '
        'doğru yer, doğru insanlar, doğru an üçgeni benim için olmazsa olmaz. '
        'Özel tasting menüleri ve yaratıcı sunumlar beni heyecanlandırıyor. '
        'Bir yemeği sevdiklerimle paylaşmak, lezzetini ikiye katlar. '
        'Lezzetli yemek şart ama doğru insanlarla paylaşılmadan eksik kalır. '
        'Şef masası deneyimleri ve özel akşam yemekleri benim için en unutulmaz anlar. '
        'Sen de profilini öğren!',
  ),

  // ─────────────────────────────────────────────
  // seyahat (✈️) – 4 profil
  // ─────────────────────────────────────────────
  ResultProfile(
    id: 'seyahat_profile_1',
    categoryId: 'seyahat',
    title: 'Özgür Gezgin',
    subtitle: 'Bağımsız Seyyah',
    emoji: '🎒',
    description:
        'Seyahat etmek senin için belirli bir güzergâhı takip etmek değil, kendiliğinden '
        'gelişen bir akış içinde olmaktır. Sırt çantanı alır, genel bir yön belirler ve '
        'sonrasında ne olursa olsun hazırsındır. Tur şirketleri, saatli programlar ve '
        'kalabalık gruplar sana cazip gelmiyor; önceden planlanmış her şey seni biraz '
        'kısıtlıyor gibi hissettiriyor. Turistik alanlar yerine yerel halkın gittiği '
        'kafeleri, gizli kalmış mahalle pazarlarını ve haritada adı olmayan sokakları '
        'tercih edersin. Yolculuk sırasında tanıştığın insanlar, elde etmediğin planlar '
        've beklenmedik dönüşler seyahatin en değerli parçaları oluyor. '
        'Bütçeni de kendin yönetirsin; lüks gerekmiyor, deneyim gerekiyor. '
        'Bir yere gittiğinde "gerçekten orada olduğunu" hisseden türden seyyahsın; '
        'kalabalık insan selinin içinde kaybolmak istemezsin. Gittiğin yerin dilinden '
        'birkaç kelime öğrenmek, yerel birine tavsiye sormak ve o yeri gerçek haliyle '
        'görmek senin için önemli. Seyahat senin için en büyük özgürlük ifadesidir. '
        'Bir otobüs bileti ya da paylaşımlı araç, pahalı uçuşların yerini tutabilir; '
        'yol boyunca karşılaştığın insanlar en iyi rehberlerindir. Pasaportunun '
        'damgaları ne kadar çok olursa o kadar çok hikâye taşırsın; ve her hikâye '
        'seni biraz daha özgür kılar.',
    shareText:
        'Benim seyahat tarzım: Özgür Gezgin! 🎒 Sırt çantamı alır, yönümü belirler '
        've akışa bırakırım kendimi. Turist alanları değil, yerel mahalleler; saatli '
        'programlar değil, kendiliğinden gelişen anlar. Seyahatte en iyi şeyler '
        'plansız olur. Yolda tanıştığım insanlar, beklenmedik dönüşler ve keşfettiğim '
        'gizli noktalar asıl hazineyi oluşturuyor. Gittiğim yerin dilinden birkaç '
        'kelime öğrenir, yerel tavsiyeye kulak veririm. Bir otobüs bileti pahalı '
        'uçuşun yerini tutabilir; yol boyunca karşılaşılan insanlar en iyi rehber. '
        'Bütçeyle idare eder, deneyimi zenginliğe tercih ederim. '
        'Sen de seyahat profilini merak ediyor musun?',
  ),
  ResultProfile(
    id: 'seyahat_profile_2',
    categoryId: 'seyahat',
    title: 'Lüks Turist',
    subtitle: 'Konforlu Gezgin',
    emoji: '🏨',
    description:
        'Seyahat ettiğinde konforun tadını çıkarmak istiyorsun. Güzel bir otel, '
        'birinci sınıf uçuş ya da iyi seçilmiş bir tur programı seyahatin değerini '
        'artırır senin için. Bir yere gittiğinde o deneyimi hakkıyla yaşamak istersin; '
        'bunun için iyi planlama ve kaliteli seçimler yaparsın. '
        'Dört yıldızlı bir otelde rahat bir oda, güzel bir restoran rezervasyonu '
        've şehrin en önemli noktalarını kapsayan bir program seni mutlu eder. '
        'Çantana attığın her şeyin kaliteli ve işlevsel olması gerekir; '
        'seyahatte de standartlarından vazgeçmezsin. '
        'Seyahat organizasyonunu genellikle önceden yapar, sürprizleri minimize edersin; '
        'çünkü sen o tatili hak ettin ve en iyi şekilde geçirmek istiyorsun. '
        'İncelemeler okur, önerileri araştırır ve rezervasyonlarını erken yaparsın. '
        'Spa, özel servis ya da şık bir restoran deneyimi tatilinin ayrılmaz parçaları. '
        'Seyahatin yorgun döneceğin bir maraton değil, gerçekten yenileneceğin bir deneyim '
        'olması gerektiğine inanırsın. Lüks bir tatil sonunda gerçekten dinlenmiş hissediyorsun. '
        'Havaalanı transferinden otel lobisine kadar her detay planlanmış olsun istersin; '
        'sürprizler tatilde seni keyiflendirmiyor, aksine yoruyor. Kaliteli hizmet '
        'aldığında minnettarsın ve bunu takdir etmeyi bilirsin; iyi bir tatil sana '
        'günlerce enerji verir.',
    shareText:
        'Benim seyahat tarzım: Lüks Turist! 🏨 Seyahat ederken konforun tadını '
        'çıkarmak isterim. İyi bir otel, kaliteli hizmet ve önceden planlanmış '
        'bir program beni mutlu eder. Hak ettiğim tatili en iyi şekilde geçirmek '
        'için araştırır ve planlarım. Havaalanı transferinden otel lobisine kadar '
        'her detay planlanmış olsun isterim; sürprizler tatilde beni yoruyor. '
        'Rezervasyonlarımı erken yapar, yorumları özenle okurum. '
        'Spa, şık restoran ve özel deneyimler tatilimin vazgeçilmezleri. '
        'Seyahat hem dinlenmek hem de güzelce deneyimlemek demek benim için. '
        'Tatilden döndüğümde gerçekten yenilenmiş hissederim; kaliteli dinlenme '
        'benim için bir lüks değil, zorunluluktur. Sen de profilini keşfet!',
  ),
  ResultProfile(
    id: 'seyahat_profile_3',
    categoryId: 'seyahat',
    title: 'Kültür Avcısı',
    subtitle: 'Meraklı Öğrenici',
    emoji: '🏛️',
    description:
        'Her seyahat senin için bir öğrenme fırsatıdır. Gittiğin şehrin tarihini, '
        'sanatını, mimarisini ve yerel kültürünü derinlemesine anlamak istiyorsun. '
        'Müzeler, arkeolojik alanlar, tarihi yapılar ve yerel festivaller senin için '
        'en çekici durağa dönüşüyor. Bir tur rehberinin anlattıklarını can kulağıyla '
        'dinler ya da kendi araştırmalarınla ziyaretini hazırlarsın. '
        'Seyahat öncesinde o ülkenin tarihini, dilini birkaç kelimesini öğrenir, '
        'sanatçılarını ve yazarlarını araştırırsın. '
        'Turistik alışveriş merkezleri seni çekmez; küçük sanat galerileri, '
        'yerel zanaatkârların atölyeleri veya sokak sanatçıları çok daha ilginç gelir. '
        'Fotoğraflarının büyük çoğunluğu mimari detaylar, sokak yazıları ya da '
        'bir anın ruhunu yansıtan karelerdir. Her seyahatten daha zengin dönersin. '
        'Bir eserin ya da anıtın üretildiği dönemin koşullarını merak eder, '
        'gezeceğin yeri anlamak için kitaplar ya da belgeseller izlersin. '
        'Kültür, tarih ve insanlık mirası senin seyahat motivasyonunun merkezindedir. '
        'Yerli bir sanatçının sergisini ziyaret etmek ya da UNESCO listesindeki '
        'bir alanda saatlerce vakit geçirmek seni yormuyor, aksine besliyor. '
        'Gittiğin her yeri bir not defterine ya da fotoğraf albümüne kaydeder, '
        'öğrendiklerini çevrendekilerle paylaşmaktan keyif alırsın.',
    shareText:
        'Benim seyahat tarzım: Kültür Avcısı! 🏛️ Her seyahat benim için bir öğrenme '
        'macerası. Müzeler, tarihi alanlar ve yerel kültür beni en çok heyecanlandıran '
        'şeyler. Gitmeden önce o yerin tarihini araştırır, dilinden birkaç kelime öğrenirim. '
        'Bir anıtın ya da eserin hikâyesini merak eder, arka planını keşfetmekten zevk alırım. '
        'UNESCO alanları ve yerel sanatçı sergileri benim için en değerli duraklar. '
        'Turistik alışveriş yerine yerel atölyeler ve sanat galerileri benim için asıl durak. '
        'Her seyahatten notlarımla ve yeni bilgilerle dönerim; öğrendiklerimi '
        'çevremle paylaşmaktan keyif alırım. Sen de seyahat profilini öğrenmek ister misin?',
  ),
  ResultProfile(
    id: 'seyahat_profile_4',
    categoryId: 'seyahat',
    title: 'Rahat Tatilci',
    subtitle: 'Dinlenme Odaklı',
    emoji: '🏖️',
    description:
        'Tatil senin için bir kaçış noktasıdır; dolu dolu programlar değil, '
        'gerçek bir dinlenme hakkedersin. Güzel bir sahil, bir havuz kenarı ya da '
        'sakin bir dağ evi yeterince mükemmel bir tatil destinasyonu olabilir. '
        'Müze turu yapmak, saatlerce yürümek ya da her gün yeni bir yer görmek '
        'seni yoruyor; sen geldiğin yerde kalmayı, derinleşmeyi tercih ediyorsun. '
        'Kitabını alır, bir köşeye kurulur, saatler geçmesine izin verirsin. '
        'Yemek vakti yenir, uyku vakti uyunur; tatilde de rutin biraz devam eder '
        'ama çok daha yavaş ve keyifli bir şekilde. '
        'Planlamayı minimal tutarsın; varış noktasına karar ver, gerisini akışa bırak. '
        'Gerçek tatil sana göre enerjini toplamak ve günlük hayatın koşturmacasından '
        'uzaklaşmaktır. Yavaş sabah kahveleri, öğleden sonra şekerlemeleri ve gün batımını '
        'izlemek senin tatil programının en değerli kalemleri. Gürültüden ve yoğunluktan '
        'uzakta, sadece kendinle baş başa vakit geçirmek seni en çok iyileştiren şeydir. '
        'Dönüşte dinlenmiş ve tazelenmiş hissediyorsun. Bir haftayı aynı köyde ya da '
        'aynı sahilde geçirmek seni sıkmaz; tanıdık bir mekânda derinleşmek sana '
        'konser turnesine eşdeğer enerji verir. Tatil için gittiğin yeri değil, '
        'oraya nasıl hissedeceğini seçersin.',
    shareText:
        'Benim seyahat tarzım: Rahat Tatilci! 🏖️ Tatil benim için gerçek bir '
        'dinlenme demek. Dolu program değil, sakin bir köşe, bir kitap ve yavaş '
        'geçen saatler... Planlama minimal, akış maksimum. Yavaş sabah kahvesi, '
        'öğleden sonra şekerleme, gün batımı izlemek; bunlar benim tatil programım. '
        'Bir haftayı aynı sahilde geçirmek beni sıkmaz; tanıdık bir mekânda '
        'derinleşmek bana büyük enerji veriyor. Müze maratonu yerine havuz kenarında '
        'uzanmak bana daha iyi geliyor. Günlük koşturmacadan uzaklaşmak, sadece '
        'kendimle vakit geçirmek en büyük tatil lüksü. Tatilden döndüğümde '
        'gerçekten dinlenmiş hissederim. Sen de profilini öğren!',
  ),

  // ─────────────────────────────────────────────
  // sabah_gece (🌙) – 4 profil
  // ─────────────────────────────────────────────
  ResultProfile(
    id: 'sabah_gece_profile_1',
    categoryId: 'sabah_gece',
    title: 'Erken Kuş',
    subtitle: 'Sabah İnsanı',
    emoji: '🌅',
    description:
        'Sabah erken uyanmak senin için bir zorunluluk değil, tercih. Alarm çalmadan '
        'gözlerin açılır ve güne dolu dolu başlamanın verdiği tatmin seni motive eder. '
        'Güneşin doğuşunu görmek, sessiz bir sabahta kahveni yudumlamak ya da herkes '
        'uyurken kendi dünyanda vakit geçirmek sana eşsiz bir huzur verir. '
        'Sabah rutinlerin güçlüdür: egzersiz, meditasyon, gazete okuma ya da '
        'planlamalarını yapma bunların hepsi günün ilk saatlerine sığar. '
        'Öğleden sonra enerjin hâlâ yüksektir ama akşam saatlerinde yavaşlamaya '
        'başlarsın. Gece geç saatlere kadar uyanık kalmak seni tüketir; '
        'bir süre sonra verimlilik kaybolur, odaklanma güçleşir. '
        'Sosyal ortamlarda gece geç kalmak yerine erken ayrılmayı tercih edebilirsin. '
        'En önemli kararlarını ve en zor işlerini sabahın erken saatlerinde alırsın çünkü '
        'zihnin en keskin o zaman çalışır. Sabah sessizliği sana düşünme ve planlama '
        'fırsatı verir; bu saatler sana ait, tamamen kesintisizdir. '
        'Ama sabahın ilk ışıklarında herkesten önce o gün için hazır olmak seni '
        'rakipsiz kılar. Sabah koşusu ya da spor seansı seni güne mükemmel hazırlar; '
        'o endorfin dalgası hem motivasyonunu hem de odaklanma kapasiteni artırır. '
        'Erken kalkmanın verdiği o baş boş, sessiz iki saat, gün içindeki tüm '
        'toplantıları ve sorumlulukları taşımanın gizli kaynağıdır.',
    shareText:
        'Benim sabah/gece tarzım: Erken Kuş! 🌅 Alarm çalmadan uyanır, güne erken '
        'başlarım. Sabah rutinlerim güçlüdür; egzersiz, kahve, planlama hepsi gün '
        'ağarmadan biter. Sessiz sabah saatleri benim en verimli zamanım; en zor '
        'kararlarımı ve önemli işlerimi o saatlerde alırım. Sabah koşusu ya da spor '
        'seansı günü başlatmanın en iyi yolu; o endorfin dalgası her şeyi kolaylaştırır. '
        'Gece geç saatlere kadar dayanmak pek benim işim değil; enerji akşama doğru azalıyor. '
        'Sabah sessizliğinde kendimle baş başa kalmak, günü şekillendirmek için '
        'en güzel an. Sabahın huzuru başka bir şey! '
        'Sen de profilini keşfet!',
  ),
  ResultProfile(
    id: 'sabah_gece_profile_2',
    categoryId: 'sabah_gece',
    title: 'Gece Yarısı Ruhu',
    subtitle: 'Gece Kuşu',
    emoji: '🦉',
    description:
        'Gece sana ait. Herkes uyuduğunda sen uyanık ve verimlisin; yaratıcılığın '
        'en gece geç saatlerinde açılır. Gündüzün gürültüsü dindiğinde, '
        'telefon bildirimleri kesildiğinde ve dünya sessizleştiğinde zihnin '
        'gerçekten çalışmaya başlar. Müzik, yazarlık, tasarım ya da derin düşünme; '
        'bunların hepsini gece yaptığında daha iyi yaparsın. '
        'Sabah erken kalkmak senin için bir eziyet gibi hissettiriyor; '
        'alarm sesi o kadar acımasız ki ilk birkaç saatin biraz puslu geçer. '
        'Toplantılar, dersler veya işler öğleden sonra olduğunda çok daha iyi '
        'performans gösterirsin. Gece sahiplenilmiş bir özgürlük alanı gibi; '
        'hiç kimse senden bir şey beklemiyor, sadece kendinle başbaşasın. '
        'Gece geç saatlerde yaşadığın netlik ve odak, sabah insanlarının '
        'anlayamayacağı türden bir enerjidir. Düşüncelerinin derinleştiği, '
        'projelerinin canlandığı ve en özgün fikirlerinin ortaya çıktığı zaman gece. '
        'Sessizlik ve karanlık senin için kısıtlayıcı değil, tam anlamıyla özgürleştiricidir. '
        'Gece yarısı başlayan bir çalışma seansı, saat 03.00\'e kadar sürebilir ve '
        'o süreçte üretilen her satır, her tasarım, her fikir olağanüstü kalitededir. '
        'Biyolojik saatin toplumun beklentileriyle çatışıyor olabilir ama sen '
        'kendi ritmine göre en verimli halini buldun. Sabah toplantıları seni zorlasa da '
        'gece boyunca ürettiğin çıktılar bu bedeli fazlasıyla karşılıyor. Gece sakinliğinde '
        'zihnin en derin katmanlarına ulaşır, sıradan günlerde göremediğin bağlantıları görürsün.',
    shareText:
        'Benim sabah/gece tarzım: Gece Yarısı Ruhu! 🦉 Yaratıcılığım gece açılır. '
        'Herkes uyuduğunda en verimli halimde olurum; yazarım, düşünürüm, üretirim. '
        'Sabah erken kalkmak benim için zorlu; güne yavaş başlarım ama geceye kadar '
        'tazeliğimi koruyabilirim. En özgün fikirlerim gece geç saatlerde gelir; gece '
        'yarısı başlayan çalışma seansım saat 03.00\'e kadar sürebilir ve o süreçte her '
        'şey olağanüstü akıcı olur. Projelerim gece canlanır, düşüncelerim derinleşir. '
        'Karanlık ve sessizlik benim için özgürleştirici; gece bana ait! Toplumun '
        'sabahçı beklentileri beni bağlamıyor. Biyolojik saatim benim liderliğimde; '
        'bu ritmi keşfetmek en büyük kazanımım. Gece sakinliğinde zihnimin en derin '
        'katmanlarına ulaşır, olağanüstü bağlantılar kurarım. Sen de profilini öğrenmek ister misin?',
  ),
  ResultProfile(
    id: 'sabah_gece_profile_3',
    categoryId: 'sabah_gece',
    title: 'Esnek Ruh',
    subtitle: 'Uyumlu Ritim',
    emoji: '🌓',
    description:
        'Sen sabah da gece de çalışabilirsin; hayat koşullarına göre uyum sağlama '
        'yeteneğin yüksektir. Erken kalkmak zorunda olduğunda bunu yapabilirsin, '
        'gece geç saate kadar çalışmak gerektiğinde bunu da idare edersin. '
        'Biyolojik saatin katı değil, esnek bir yapısı var. '
        'Belki belirgin bir tercih var ama diğer moda geçmek seni allak bullak etmez. '
        'İş seyahatleri, farklı saat dilimleri ya da değişen sorumluluklar '
        'uyku düzenini bozabilir ama sen bunu hızlıca telafi edersin. '
        'Hafta içi erken kalkarsın, hafta sonu biraz daha uzanırsın; bu ikisi '
        'arasında denge kurabilirsin. Katı rutinlere bağlı olmak zorunda hissetmezsin '
        'ama tamamen düzensiz olmak da seni rahatsız eder. '
        'Orta bir yol ararsın ve çoğunlukla da bulursun. Sabahları verimli çalışma '
        'fırsatı bulursan bunu değerlendirirsin, akşamları sosyal bir aktivite varsa '
        'buna da kolayca uyum sağlarsın. Bu esneklik seni hem mesleki hem de sosyal '
        'hayatta avantajlı konuma getiriyor. Değişen proje döngüleri, yoğun sezonlar '
        'ya da farklı zaman dilimlerinde çalışan ekiplerle kolayca koordine olursun. '
        'Sabah ya da gece; biyolojik saatin senin liderliğine değil, '
        'yaşam koşullarına uyum sağlar ve bu esneklik seni güçlü kılar.',
    shareText:
        'Benim sabah/gece tarzım: Esnek Ruh! 🌓 Sabah da gece de verimli '
        'olabiliyorum; biyolojik saatim esnek. Erken kalkmak gerekirse kalkarım, '
        'gece geç çalışmak gerekirse o da olur. Değişen koşullara hızlı uyum '
        'sağlarım. Hafta içi erken, hafta sonu biraz daha geç; bu dengeyi '
        'kolayca kurabiliyorum. Farklı saat dilimlerinde çalışan ekiplerle '
        'koordinasyon benim için sorun değil. Sabah fırsatını değerlendiririm, '
        'geceyi de boşa harcamam. Rutin güzel ama zorunlu değil. '
        'İş seyahatleri, yoğun dönemler ya da değişen sorumluluklar beni '
        'alt etmiyor; hızla yeniden düzene giriyorum. '
        'Esnek olmak benim süper gücüm! Sen de profilini keşfet!',
  ),
  ResultProfile(
    id: 'sabah_gece_profile_4',
    categoryId: 'sabah_gece',
    title: 'Rutin Sever',
    subtitle: 'Düzenli Ritim',
    emoji: '⏰',
    description:
        'Uyku düzenin senin için kutsal. Her gün aynı saatte yatmak ve aynı saatte '
        'kalkmak hayatını organize tutmanın temelidir. Bu rutin bozulduğunda '
        'gün boyunca verimlilik düşer, konsantrasyon güçleşir ve genel huyun '
        'bozulabilir. Düzensiz uyku zamanları ya da ani değişiklikler seni '
        'gerçekten etkiler; bunu çevrendekiler de fark eder. '
        'Yatmadan önce ritüellerin var: belki kitap okumak, belki bir müzik listesi, '
        'belki kısa bir meditasyon. Bu ritüeller hem bedenini hem de zihnini '
        'uykuya hazırlar. Sabahları da aynı şekilde düzenlisin; uyandığında '
        'yapacağın şeyler önceden bellidir ve bu öngörülebilirlik seni güvende hissettirir. '
        'Hafta sonu bile çok geç saate kadar uyanık kalmak ya da çok uzun uyumak '
        'seni rahatsız eder. Seyahat ederken ya da farklı ortamlarda bile uyku '
        'rutinini korumaya çalışırsın; bu senin performansını ve iyi hissini doğrudan '
        'etkileyen en temel alışkanlığın. Biyolojik saatin mükemmel kalibre edilmiş; '
        'bunu korumak senin için bir sorumluluk değil, bir tercih. '
        'Sosyal ortamlarda geç saate kadar kalınması gerektiğinde bile o saatin '
        'ertesi gün seni nasıl etkileyeceğini hesaplarsın. Uyku kalitesi senin için '
        'yaşam kalitesiyle doğrudan ilişkili; bu farkındalık seni sağlıklı ve '
        'verimli kılan en önemli alışkanlığına dönüşmüştür.',
    shareText:
        'Benim sabah/gece tarzım: Rutin Sever! ⏰ Uyku düzenim benim için önemli. '
        'Her gün aynı saatte yatar, aynı saatte kalkarım. Bu rutin bozulduğunda '
        'tüm gün etkileniyorum. Yatmadan önceki ritüellerim var, sabah rutinlerim '
        'de sabit. Seyahatte bile uyku düzenimi korumaya çalışırım; bu benim '
        'performansımı doğrudan etkiliyor. Sosyal ortamlarda geç kalınsa da '
        'ertesi güne etkisini hesaplarım; uyku kalitesi benim için yaşam kalitesi. '
        'Öngörülebilir bir ritim beni huzurlu ve verimli tutuyor. Geç yatmak ya da '
        'geç kalkmak benim için lüks değil, küçük bir kaos. '
        'Sen de profilini öğrenmek ister misin?',
  ),

  // ─────────────────────────────────────────────
  // sosyal (🎉) – 4 profil
  // ─────────────────────────────────────────────
  ResultProfile(
    id: 'sosyal_profile_1',
    categoryId: 'sosyal',
    title: 'Sosyal Kelebek',
    subtitle: 'Enerjik Dışavurumlu',
    emoji: '🦋',
    description:
        'İnsan enerjisi seni besler. Kalabalık bir ortamda, yeni insanlarla tanışırken '
        'ya da bir etkinliğin tam ortasındayken kendini en canlı hissedersin. '
        'Yalnız kalmak seni zaman zaman tüketir; eğlence ve sosyal bağlantı '
        'senin için bir lüks değil, bir ihtiyaçtır. '
        'Bir topluluğa girdiğinde çabuk ısınır, konuşmayı başlatır ve insanların '
        'seni hatırlamasını sağlarsın. İsimler ve yüzler kafanda kalır; '
        'biriyle bir kez tanışmak bile sizi "tanışmış" yapar. '
        'Sosyal medyada aktifsindir; paylaşmak, yorum yapmak ve etkileşimde olmak '
        'günlük hayatının parçasıdır. Etkinlik organize etmek, grup oluşturmak '
        've insanları bir araya getirmek sana doğal gelir. '
        'Sessizlik ve ıssızlık belirli bir süre sonra seni huzursuz eder. '
        'Enerji kaynağın insanlar; onlarla olan her etkileşim seni yeniler. '
        'Grup dinamiklerini hızlı okursun, ortamdaki havayı yumuşatmak ya da '
        'neşelendirmek için sezgisel davranırsın. İnsanların bir araya gelmesini '
        'sağlayan, atmosfer yaratan ve herkese kendisini özel hissettiren kişi sensin. '
        'Yabancılarla bile birkaç dakika içinde ortak bir konu bulur, samimi bir '
        'bağ kurarsın. Doğum günleri, kutlamalar ve özel günleri hatırlamak sana '
        'kolay gelir; çünkü insanları gerçekten önemsiyor ve onları mutlu etmekten '
        'büyük zevk alıyorsun.',
    shareText:
        'Benim sosyal tarzım: Sosyal Kelebek! 🦋 İnsan enerjisi beni besler. '
        'Kalabalık ortamlar, yeni tanışmalar ve etkinlikler benim için en canlı '
        'olduğum anlardır. Topluluğa hızlı ısınır, insanları bir araya getirir, '
        'sosyal ağları büyütürüm. Yabancılarla bile birkaç dakikada ortak konu '
        'bulur, samimi bağ kurarım. Grup dinamiklerini hızlı okur, ortamı '
        'neşelendirmeyi severim. Doğum günlerini ve özel günleri hatırlamak '
        'bana kolay gelir; insanlar benim için gerçekten önemli. İnsanları '
        'tanımak, bağlantı kurmak benim için gerçek bir enerji kaynağı. '
        'Yalnız kalmak güzel ama çok sürmemeli; beni asıl besleyen insanlar. '
        'Sen de sosyal profilini keşfet!',
  ),
  ResultProfile(
    id: 'sosyal_profile_2',
    categoryId: 'sosyal',
    title: 'Seçici Sosyal',
    subtitle: 'Derinlik Arayan',
    emoji: '🌿',
    description:
        'Sosyal olmayı seversin ama kalabalık ya da yüzeysel etkileşimler seni '
        'pek doldurmuyor. Küçük gruplar, uzun sohbetler ve derin bağlantılar '
        'senin için çok daha anlamlıdır. Birçok insanla tanışmak yerine az ama '
        'gerçek insanlarla kaliteli zaman geçirmeyi tercih edersin. '
        'Büyük partiler ya da networking etkinlikleri seni sıkabilir; '
        'en çok keyif aldığın şey küçük bir grup içinde saatlerce süren anlamlı '
        'bir konuşmadır. Arkadaşlıklarını özenle seçer, ilişkilerine derinlik '
        'katmak için zaman harcarsın. '
        'İçe dönük değilsin; sadece niteliği niceliğe tercih ediyorsun. '
        'Biriyle gerçekten tanışmak için zaman gerektiğini, yüzeysel dostlukların '
        'ise gerçek bir bağlantı olmadığını biliyorsun. '
        'Çevren küçük olabilir ama her ilişki gerçek ve değerlidir. '
        'Bir insanı anlamaya, onun bakış açısını keşfetmeye ve gerçek bir bağ '
        'kurmaya değer verirsin. Sosyal enerjini dikkatli harcarsın çünkü '
        'her ilişkiye tam anlamıyla kendini verirsin. '
        'Büyük bir etkinliğe gittiğinde birkaç yeni yüzle tanışmak yerine '
        'bir ya da iki kişiyle gerçek bir sohbet kurmayı tercih edersin. '
        'Bu seçicilik seni soğuk değil, aksine derinlikli ve güvenilir kılar; '
        'seni tanıyanlar seni bir dost olarak her zaman yanlarında hissederler.',
    shareText:
        'Benim sosyal tarzım: Seçici Sosyal! 🌿 Az ama gerçek insanlarla '
        'derin bağlar kurmayı tercih ederim. Büyük kalabalıklar yerine küçük '
        'gruplar ve uzun sohbetler benim için çok daha değerli. Arkadaşlıklarımı '
        'özenle seçerim; bir insanı gerçekten tanımak için zaman harcarım. '
        'Büyük etkinlikte bir iki kişiyle gerçek sohbet, yüzlerce yüzeysel '
        'tanışmadan iyidir. Yüzeysel etkileşimler beni doldurmaz; asıl tatmini '
        'derin ve anlamlı bağlantılarda bulurum. Nitelik nicelikten her zaman '
        'önce gelir. Sosyal enerjimi dikkatli harcarım ve buna karşılık '
        'her ilişkiye gerçekten kendimi veririm; bu seçicilik beni güvenilir kılar. '
        'Sen de profilini öğrenmek ister misin?',
  ),
  ResultProfile(
    id: 'sosyal_profile_3',
    categoryId: 'sosyal',
    title: 'Ev İnsanı',
    subtitle: 'İçten Sıcak',
    emoji: '🏠',
    description:
        'Ev senin için hem bir sığınak hem de en iyi sosyal alan. '
        'Dışarı çıkarak sosyalleşmek yerine insanları evine davet etmek ya da '
        'sevdiklerinin evine gitmek sana çok daha doğal gelir. '
        'Kendi ortamında, tanıdık bir atmosferde çok daha rahat ve özgürsündür. '
        'Dışarıdaki kalabalıklar, gürültülü mekanlar ya da sürekli yeni insanlarla '
        'olan etkileşimler seni yorabilir. '
        'Ev toplantıları, film geceleri ya da küçük yemek davetleri senin için '
        'ideal sosyal ortamlar. Birini gerçekten tanımak istiyorsan onu evine '
        'davet eder ya da onun evine gidersin. '
        'Sosyal medyada aktif olmak zorunda hissetmezsin; '
        'gerçek yüz yüze bağlantılar önceliğin. '
        'Yalnız kalmayı da seversin; yalnızlık ile yalıtılmışlık arasındaki '
        'farkı iyi bilirsin ve bu seni dengeli kılar. '
        'Evi güzel ve sıcak tutmak, konuklarını rahat ettirmek ve kendi alanında '
        'derin sohbetler yapmak sana en kaliteli sosyal deneyimi sunar. '
        'İnsanları evinde ağırlamak senin için bir sorumluluk değil, gerçek bir zevktir. '
        'Masa kurarsın, çay demlersin, belki küçük bir şeyler pişirirsin; '
        'bu hazırlık süreci seni zevkle doldurur. Evin dört duvarı arasında '
        'kurulan bağlar senin için en otantik ve kalıcı olanlardır.',
    shareText:
        'Benim sosyal tarzım: Ev İnsanı! 🏠 En iyi sosyal ortam benim için ev. '
        'İnsanları eve davet etmeyi ya da sevdiklerimin evinde olmayı severim. '
        'Kendi ortamımda çok daha rahat ve özgür hissederim. Film geceleri, '
        'küçük yemek davetleri ve sıcak sohbetler benim ideal sosyalleşmem. '
        'Masa kurar, çay demler, misafirimi ağırlarım; bu hazırlık süreci bile '
        'beni mutlu eder. Konuklarımı rahat ettirmekten, evimi sıcak tutmaktan '
        'gerçek zevk alırım. Yalnız kalmak da beni rahatsız etmez; '
        'kendi alanımda huzur buluyorum. Dışarıdaki gürültülü ortamlar yerine '
        'dört duvar arasındaki samimi bağlar benim için en kalıcı olanlar. '
        'Sen de sosyal profilini keşfet!',
  ),
  ResultProfile(
    id: 'sosyal_profile_4',
    categoryId: 'sosyal',
    title: 'Dengeleyici',
    subtitle: 'Esnek Sosyal',
    emoji: '⚖️',
    description:
        'Sosyal hayatın dengesini iyi kuruyorsun. Hem kalabalık ortamlarda eğlenebilir '
        'hem de yalnız kalmaktan keyif alabilirsin. İnsanlarla vakit geçirmek seni '
        'besler ama belirli bir süre sonra yeniden şarj olmak için kendi alanına '
        'ihtiyaç duyarsın. Bu ikisi arasındaki ritmi iyi hissediyorsun. '
        'Büyük bir sosyal etkinliğe katılabilirsin ama ertesi gün evde sessizce '
        'vakit geçirmek de seni mutlu eder. '
        'Arkadaşlarına göre uyum sağlayabilirsin; bazen girişken, bazen daha sakin. '
        'Sosyal baskıya kolay boyun eğmezsin; "bu akşam evde kalmak istiyorum" '
        'diyebilirsin ve bunu kabul ettirirsin. '
        'İçe ve dışa dönüklük arasında bir yerde duruyorsun; '
        'bu seni hem geniş hem de derin ilişkilere açık kılıyor. '
        'Farklı insanlarla farklı seviyelerde bağlantı kurabilirsin; '
        'hem kalabalık arkadaş grubuyla eğlenirsin hem de tek bir yakın dostla '
        'saatlerce konuşabilirsin. Bu esneklik seni sosyal açıdan çok yönlü kılıyor. '
        'Sosyal enerjini koruma konusunda sezgisel davranırsın; dolu bir hafta '
        'sonrasında daha sakin bir hafta sonu planlarsan bu seni zayıf değil, '
        'öz farkındalığı yüksek biri yapar. İnsanlarla hem derinlemesine hem de '
        'yüzeysel düzeyde bağlantı kurabilme yeteneğin seni her ortamda rahat '
        'hissettirir.',
    shareText:
        'Benim sosyal tarzım: Dengeleyici! ⚖️ Hem kalabalıkta eğlenebilir '
        'hem de yalnız kalmanın tadını çıkarabiliyorum. İnsanlarla vakit geçirdikten '
        'sonra kendimi yeniden şarj etme ihtiyacı duyarım. Bu dengeyi iyi kuruyorum. '
        'Büyük grup da iyi, yakın dost sohbeti de; ikisine de uyum sağlarım. '
        '"Bu akşam evde kalmak istiyorum" diyebilirim ve bunu rahatça kabul ettiririm. '
        'Dolu bir haftanın ardından sakin bir hafta sonu planlamak öz farkındalık. '
        'Bana göre en iyi sosyal hayat ne çok ne az; tam kararında. '
        'Sen de profilini öğrenmek ister misin?',
  ),

  // ─────────────────────────────────────────────
  // alisveris (🛍️) – 4 profil
  // ─────────────────────────────────────────────
  ResultProfile(
    id: 'alisveris_profile_1',
    categoryId: 'alisveris',
    title: 'Anlık Alıcı',
    subtitle: 'Spontan Tüketici',
    emoji: '⚡',
    description:
        'Alışveriş yaparken sezgine güvenirsin. Bir şeye bakarsın, beğenirsin ve '
        'alırsın; uzun süre düşünmek, karşılaştırmak ya da bütçe hesabı yapmak '
        'pek senin tarzın değil. O anlık heyecan, bir şeyi tam o anda seçmenin '
        'verdiği tatmin seni motive eder. '
        'İndirim ya da kampanya gördüğünde ihtiyaç duyup duymadığını tam '
        'sorgulamadan sepete atabilirsin. Alışverişin kendisi bir deneyimdir '
        'senin için; planlı olmak bu deneyimin ruhunu bozar gibi gelir. '
        'Evin bir köşesinde hiç kullanmadığın şeyler birikebilir; ama o an '
        'alırken doğru hissettirmişti. '
        'Arkadaşların alışverişlerine de eşlik edersin; onların alışveriş '
        'heyecanı seni de etkiler. Ani kararlar verirsin ama genellikle '
        'pişman da olmazsın; o anlık sevinç gerçekten güzeldir. '
        'Yeni trendleri takip eder, özel koleksiyonlara ilgi duyar ve '
        'mağazada gezinmenin kendisinden bile keyif alırsın. '
        'Alışveriş seni hem eğlendirir hem de anlık bir tatmin duygusu yaratır. '
        'Vitrin gezmek dahi sana iyi hissettirir; her köşede yeni bir keşif var. '
        'Hediye alışverişinde ise özellikle parlaşırsın; birisine özel bir şey '
        'bulmak, listeden değil içgüdünden alışveriş yapmak tam sana göre. '
        'Spontane kararların çoğunlukla güzel sonuçlar doğurduğunu hayat sana kanıtladı.',
    shareText:
        'Benim alışveriş tarzım: Anlık Alıcı! ⚡ Beğendiğimi alırım, '
        'çok düşünmem. O anlık heyecan ve seçmenin verdiği tatmin benim için '
        'önemli. İndirim görürsem fırlamam için ihtiyaç listesi gerekmez. '
        'Mağazada gezinmekten, vitrin bakmaktan bile keyif alırım; her köşede '
        'yeni bir keşif var. Hediye alışverişinde parlarım; içgüdümle seçerim. '
        'Arkadaşların alışveriş heyecanı beni de etkiler; birlikte alışveriş '
        'yapmak benim için sosyal bir aktivite. Alışveriş benim için bir '
        'deneyim ve zevk. Spontane kararlarımın çoğunlukla güzel sonuçlar doğurduğunu '
        'hayat bana kanıtladı; pişmanlık nadir, keyif bol. Sen de alışveriş profilini keşfet!',
  ),
  ResultProfile(
    id: 'alisveris_profile_2',
    categoryId: 'alisveris',
    title: 'Minimalist',
    subtitle: 'Bilinçli Tüketici',
    emoji: '🌱',
    description:
        'Az ama öz prensibiyle yaşarsın. Bir şey almadan önce gerçekten ihtiyacın '
        'olup olmadığını, uzun vadede kullanıp kullanmayacağını ve kalitesini '
        'sorgularsın. Dolabın, rafların veya yaşam alanın sade ve düzenlidir; '
        'gereksiz eşya seni bunaltır. '
        'Alışverişe çıktığında bir liste yaparsın ve o listeden nadiren sapmak '
        'istersin. Hızlı tüketim kültürü ya da "bir tane daha" mantığı sana '
        'pek cazip gelmiyor. '
        'Kaliteli, uzun ömürlü ve sürdürülebilir ürünler tercih edersin; '
        'bir ürünü yıllarca kullanmak mümkünse birkaç yılda bir değiştirmek '
        'yerine onu tercih edersin. '
        'Alışverişten sonra bazen pişmanlık hissedenleri anlayamazsın; '
        'çünkü sen zaten çok düşündükten sonra alıyorsun. '
        'Sahip olduğun şeylerin her biri bir nedeni vardır; biri dışarıda olsa bile içeriden düzeni hissedilir. '
        'Çevreye saygılı üretim, adil ticaret ve sürdürülebilirlik gibi kavramlar '
        'satın alma kararlarını etkiler. Daha az ama daha anlamlı sahip olmak, '
        'özgürlük ve berraklık hissi verir sana. '
        'Yılda bir ya da iki kez düzenleme yaparsın; artık kullanmadıklarını '
        'bağışlar ya da geri dönüştürürsün. Kapsamlı bir temizlik sonrasında '
        'alanın genişlemiş gibi hissedilir ve bu seni derinden sakinleştirir. '
        'Sahip olduklarının azlığı seni kısıtlamıyor; tam tersine, özgür kılıyor.',
    shareText:
        'Benim alışveriş tarzım: Minimalist! 🌱 Az ama öz. Bir şey almadan önce '
        'gerçekten ihtiyacım var mı diye sorarım. Dolabım sade, hayatım düzenli. '
        'Hızlı tüketim değil, kaliteli ve uzun ömürlü ürünler tercihim. '
        'Sürdürülebilir üretim ve çevreye saygı da satın alma kararlarımı etkiliyor. '
        'Alışveriş listesinden sapmam; gereksiz eşya beni bunaltır. Yılda bir iki '
        'kez düzenleme yapar, kullanmadıklarımı bağışlarım. Daha az sahip olmak '
        'benim için özgürlük ve berraklık demek. Kapsamlı bir temizlik sonrasında '
        'alan genişlemiş gibi hissedilir ve bu beni derinden sakinleştirir. '
        'Sahip olduklarımın azlığı kısıtlamıyor; aksine özgür kılıyor. Her satın alma '
        'bilinçli bir tercih, her boşaltılan alan ise nefes aldığım bir özgürlük. '
        'Sen de profilini öğrenmek ister misin?',
  ),
  ResultProfile(
    id: 'alisveris_profile_3',
    categoryId: 'alisveris',
    title: 'Koleksiyoner',
    subtitle: 'Tutku Alıcısı',
    emoji: '🎨',
    description:
        'Alışveriş senin için bir koleksiyonu büyütme pratiğidir. '
        'Belli bir kategori, tema ya da estetik çerçevesinde biriktirir, '
        'özenle seçer ve her yeni eklemeyi bir zevkle değerlendirirsin. '
        'Kitaplar, vintage eşyalar, plaklar, el yapımı ürünler ya da belirli '
        'bir markanın serisi; bunlar senin için rastgele değil, anlamlı seçimlerdir. '
        'Her koleksiyon parçası bir hikâye taşır; nereden aldığını, neden seçtiğini '
        've ne anlam ifade ettiğini biliyor olursun. '
        'Başkalarının ilgisini çekmeyen şeyleri değerli bulabilirsin; '
        'senin gözün eğitilmiştir. '
        'Alışverişten önce araştırırsın: piyasa fiyatları, özgünlük, '
        'kökeni ya da kalitesi seni ilgilendirir. '
        'Koleksiyonun düzenli ve özenle sergilenmişdir; her parçanın yeri bellidir. '
        'Bu bir tutku ve aynı zamanda bir kimlik. '
        'İkinci el mağazalar, antika pazarları ve özel koleksiyoner grupları '
        'senin için birer hazine alanı. Bir parçanın nadir ya da özgün olması, '
        'sıradan bir ürünü satın almaktan çok daha tatmin edicidir. '
        'Koleksiyonunun büyümesini izlemek, yeni parçalar eklemek ve başkalarına '
        'göstermek sana ayrı bir haz verir. Bir parça eksik olduğunda içinde '
        'küçük bir boşluk hissedersin; tamamlandığında ise o tatmin eşsizdir. '
        'Koleksiyonun sadece eşyalardan değil, onların arkasındaki hikâyelerden oluşur.',
    shareText:
        'Benim alışveriş tarzım: Koleksiyoner! 🎨 Benim için alışveriş bir koleksiyonu '
        'büyütmek demek. Her parçanın bir hikâyesi var; neden seçtiğimi, nereden '
        'aldığımı bilirim. Araştırır, özenle seçerim. İkinci el pazarlar, antika '
        'dükkânlar ve özel koleksiyoner grupları benim için birer hazine alanı. '
        'Koleksiyonumun büyümesini izlemek ve yeni parçalar eklemek bana büyük haz veriyor. '
        'Nadir ya da özgün bir parça bulmak, sıradan alışverişten çok daha tatmin edici. '
        'Koleksiyonum hem bir tutku hem de kim olduğumun yansıması. Her parçanın '
        'yeri bellidir; eksik hissedilen tamamlandığında o tatmin eşsizdir. '
        'Koleksiyonum sadece eşyalardan değil, arkalarındaki hikâyelerden oluşur. '
        'Bir parçayı keşfetmek bazen yıllarca sürebilir; ama o sabır tam da bu tutkunun özüdür. '
        'Sen de alışveriş profilini keşfet!',
  ),
  ResultProfile(
    id: 'alisveris_profile_4',
    categoryId: 'alisveris',
    title: 'Stratejik Alıcı',
    subtitle: 'Planlı Bütçeci',
    emoji: '📊',
    description:
        'Alışveriş bir strateji oyunudur senin için. Fiyat karşılaştırma yapar, '
        'indirim dönemlerini takip eder, alternatifleri değerlendirirsin. '
        'Bir ürün almadan önce araştırma yaparsın; incelemeler okur, kullanıcı '
        'deneyimlerini takip eder ve uzun vadeli değerini düşünürsün. '
        'İndirimleri beklemek senin için sabır değil, akıllıca davranmaktır. '
        'Bütçeni önceden belirler ve ona sadık kalmaya çalışırsın; '
        'ani harcamalar planı bozduğunda rahatsız olursun. '
        'Kalite/fiyat dengesi senin en önemli ölçütündür. '
        'Bazen en ucuzu değil, en mantıklısını alırsın. '
        'Alışveriş listesi tutarsın ve genellikle ona uyarsın. '
        'Ani alımlar yapmak seni rahat hissettirmez; '
        'ama planladığın bir şeyi uygun fiyata aldığında büyük bir tatmin duyarsın. '
        'Karşılaştırma siteleri, kullanıcı yorumları ve ürün analizleri senin '
        'vazgeçilmez araçların. Bir ürünü araştırmak ve en iyi fırsatı bulmak '
        'senin için alışverişin en zevkli kısmıdır. '
        'Sezonluk indirimleri takvime işler, istek listeni önceden hazırlar ve '
        'fırsatları beklersin. Bu sabır ve disiplin seni hem bütçe dostu hem de '
        'tatmin düzeyi yüksek bir tüketici kılar; nadiren pişmanlık hissedersin '
        'çünkü her satın alma kararı önceden iyice değerlendirilmiştir.',
    shareText:
        'Benim alışveriş tarzım: Stratejik Alıcı! 📊 Alışveriş benim için '
        'bir strateji. Fiyat karşılaştırırım, indirimleri beklerim, araştırırım. '
        'Sezonluk indirimleri takvime işler, istek listemle hazırlanırım. '
        'Bütçemi belirler, listeye sadık kalırım. En ucuzu değil en mantıklısını '
        'almak benim için asıl zafer. Karşılaştırma siteleri ve kullanıcı yorumları '
        'benim vazgeçilmezlerim. Planladığım bir ürünü uygun fiyata bulmak '
        'büyük tatmin. Ani harcamalar pek benim işim değil. Sabır ve disiplin '
        'sayesinde nadiren pişmanlık hissederim; çünkü her satın alma kararı '
        'önceden iyice değerlendirilmiştir. Kalite/fiyat dengesi benim pusulamıdır. '
        'Bir ürünü araştırırken harcadığım zaman, uzun vadede hem bütçemi hem de '
        'memnuniyetimi artırıyor; bu disiplin benim en güçlü alışveriş silahım. '
        'Sen de profilini öğrenmek ister misin?',
  ),

  // ─────────────────────────────────────────────
  // calisma (💻) – 4 profil
  // ─────────────────────────────────────────────
  ResultProfile(
    id: 'calisma_profile_1',
    categoryId: 'calisma',
    title: 'Deep Focus',
    subtitle: 'Akış Ustası',
    emoji: '🎯',
    description:
        'Çalışırken gerçek anlamda dalmak istersin; yüzeysel bir iş değil, '
        'derin ve kesintisiz bir odak hali. Bir göreve başladığında dikkatini '
        'dağıtacak her şeyi elimine edersin: telefon sessizde, bildirimler kapalı, '
        'kapı belki de kilitli. Zaman içinde kaybolursun; saatler geçer fark etmezsin. '
        'Bu akış hali senin en verimli ve tatmin edici çalışma biçimidir. '
        'Sık sık kesintiye uğramak ya da çoklu görev yapmak seni verimlilik '
        'kaybına uğratır ve sinirlendirir. '
        'Açık ofis ortamları veya sürekli toplantılarla dolu günler sana zor gelir. '
        'Uzun ve kesintisiz çalışma blokları için ortam hazırlamak '
        'senin için bir ritüele dönüşmüştür. '
        'Ürettiğin işin kalitesi niceliğinden önemlidir; '
        'bir şeyi gerçekten iyi yapmak için vakit harcanması gerektiğine inanırsın. '
        'Pomodoro, derin çalışma blokları ya da özel bir çalışma ortamı gibi '
        'tekniklere yatırım yaparsın. Zihni hazırlama ritüellerin var; '
        'müzik, ortam düzenleme ya da belirli içecekler akış halini tetikler. '
        'En iyi işlerin hep o derin odak anlarında ortaya çıkar. '
        'Bir projeye gerçekten odaklandığında zamanı ve mekânı unutursun; '
        'bu hissin kendisi sana büyük bir tatmin verir. Kaliteli bir çalışma '
        'seansının ardından bitkinlik değil, derin bir tamamlanmışlık hissi '
        'yaşarsın; ve bu his seni tekrar çalışmaya motive eder.',
    shareText:
        'Benim çalışma tarzım: Deep Focus! 🎯 Çalışırken gerçekten dalmak isterim. '
        'Telefon kapalı, bildirim yok; tamamen akış halinde çalışmak benim en '
        'verimli modum. Kesintiler ve çoklu görev performansımı düşürür. '
        'Uzun ve derin çalışma blokları için ortamı özenle hazırlarım; '
        'müzik, sessizlik, doğru ortam benim akış ritüellerimin parçası. '
        'Bir projeye daldığımda zaman ve mekânı unuturum; bu his büyük tatmin. '
        'Kaliteli bir seans sonunda bitkinlik değil tamamlanmışlık hissederim. '
        'En iyi işlerim hep o derin odak anlarında çıkıyor. Ürettiğim işin kalitesi '
        'niceliğinden her zaman önemlidir; bir şeyi gerçekten iyi yapmak için '
        'zaman ve konsantrasyon şarttır. Sen de çalışma profilini keşfet!',
  ),
  ResultProfile(
    id: 'calisma_profile_2',
    categoryId: 'calisma',
    title: 'Yaratıcı Kaos',
    subtitle: 'Esnek Yaratıcı',
    emoji: '🌀',
    description:
        'Çalışma ortamın biraz kaotik görünebilir ama sen orada mükemmel şekilde '
        'işler üretirsin. Masanda birden fazla proje açık olabilir, notlar '
        'dağınık duruyor olabilir ve çalışma saatlerin düzensiz görünebilir; '
        'ama bu kaos içinde bir yaratıcı düzen vardır. '
        'Sıkı takvimler ve katı yapılar seni kısıtlar; en iyi işlerin '
        'beklenmedik bir anda, serbest bir düşünce akışıyla ortaya çıkar. '
        'Beyin fırtınası, deneme yanılma ve anlık ilhamlar senin çalışma '
        'motorunu besler. Farklı görünümlü işler arasında geçiş yaparken '
        'zihnim taze kalır; tekrarlayan görevler seni sıkar. '
        'Mükemmel koşulları beklemek yerine hemen başlarsın; '
        'süreç içinde şekillenir, düzenlenir. '
        'Sonuç olarak ortaya çıkan iş özgündür ve içinde '
        'o yaratıcı enerjini taşır. '
        'Farklı fikirler arasında bağlantılar kurma becerine güvenirsin; '
        'zihinde paralel süreçler yürütmek seni yormuyor, aksine heyecanlandırıyor. '
        'Yaratıcılık senin en büyük iş avantajın; ve bu avantaj kaotik ortamda '
        'en iyi şekilde çiçekleniyor. '
        'Bir fikir aklına düştüğünde hemen not alır, yarım bırakılan projeler '
        'bile beyninde arka planda işlenmeye devam eder. Belki bir gün duş '
        'alırken ya da uyumadan önce çözüm kendiliğinden gelir; bu yaratıcı '
        'süreç senin en güçlü yönün.',
    shareText:
        'Benim çalışma tarzım: Yaratıcı Kaos! 🌀 Masam kaotik görünebilir '
        'ama orada harika işler üretirim. Katı programlar değil, esnek akış; '
        'sıkı takvimler değil, anlık ilham. En iyi işlerim beklenmedik '
        'anda çıkar. Farklı fikirler arasında bağlantılar kurmayı, paralel '
        'projeler yürütmeyi seviyorum. Bir fikir aklıma düştüğünde hemen not '
        'alırım; yarım bırakılanlar arka planda olgunlaşır, bir anda çözüm gelir. '
        'Mükemmel koşulları beklemeden hemen başlarım; süreç içinde şekillenir '
        'her şey. Kaosun içinde kendi düzenim var. Yaratıcılık benim en büyük '
        'iş avantajım; ve bu avantaj özgür, yapılandırılmamış ortamda en iyi çiçekleniyor. '
        'Sen de profilini öğrenmek ister misin?',
  ),
  ResultProfile(
    id: 'calisma_profile_3',
    categoryId: 'calisma',
    title: 'Planlı Makine',
    subtitle: 'Sistematik Organizatör',
    emoji: '📋',
    description:
        'Çalışmak için önce planlamalısın. Görev listesi, takvim, öncelik sıralaması '
        've zaman bloğu; bunlar senin için çalışmanın altyapısıdır. '
        'Plansız başlamak, rastgele önceliklendirmek ya da son dakika çalışması '
        'seni rahatsız eder ve verimin düşer. '
        'Her görevin başlangıç ve bitiş zamanı belirsiz ise o göreve sağlıklı '
        'odaklanamaz, sürekli kafanın bir köşesinde meşgul edersin. '
        'Haftalık planlamayı seversin; haftanın başında neyin yapılacağını belirlemek '
        'seni güvenli ve hazırlıklı hissettirir. '
        'Tamamlanan görevin üstüne bir tik çizmek küçük ama tatmin edici bir '
        'ritüele dönüşmüştür. '
        'Proje yönetimi araçları, not uygulamaları ya da fiziksel ajandalar; '
        'bunlara yatırım yaparsın. Bir sistemin içinde çok daha verimli olursun. '
        'Uzun vadeli hedeflerini kısa vadeli görevlere böler, ilerlemeyi takip eder '
        've her adımı belgelersin. Beklenmedik değişiklikler planı bozduğunda '
        'hızlıca yeniden düzenler ve ilerlersin; esneklikle sistemin bir arada '
        'çalışabilmesi senin güçlü yanın. '
        'Çalışma alanın da düzenli ve tertiplidir; dağınık bir masa seni '
        'konsantrasyon kaybına uğratır. Her şeyin yeri bellidir ve bu öngörülebilirlik '
        'seni sakinleştirerek en iyi performansını ortaya koymanı sağlar. '
        'Planlama zamanını boşa harcamak olarak görmezsin; tersine, en verimli '
        'yatırım olarak değerlendirirsin.',
    shareText:
        'Benim çalışma tarzım: Planlı Makine! 📋 Planlamadan başlamam. '
        'Görev listesi, takvim, öncelik sıralaması; bunlar benim altyapım. '
        'Haftanın başında neyin yapılacağını belirlemek beni güvenli hissettirir. '
        'Tamamlanan görevi işaretlemek küçük ama tatmin edici bir ritüel. '
        'Çalışma alanım da düzenli; dağınık masa konsantrasyonumu bozuyor. '
        'Uzun vadeli hedefleri kısa adımlara böler, her adımı takip ederim. '
        'Planlama zamanı boşa harcamak değil, en verimli yatırım. '
        'Sistematik yaklaşım beni verimli ve sakin tutuyor. Beklenmedik değişiklikler '
        'planı bozduğunda hızlıca yeniden düzenler ve ilerlemeye devam ederim; '
        'esneklikle sistemin bir arada çalışabilmesi benim güçlü yanım. '
        'Sen de çalışma profilini keşfet!',
  ),
  ResultProfile(
    id: 'calisma_profile_4',
    categoryId: 'calisma',
    title: 'Esnek Üretici',
    subtitle: 'Görev Odaklı',
    emoji: '🔄',
    description:
        'Senin için çalışma saati değil, görev tamamlama önemlidir. '
        'Sabah mı, akşam mı, kısa aralıklarla mı yoksa uzun bloklarla mı; '
        'hangi yöntem işe yarıyorsa onu uygularsın. Esneklik senin süper gücün. '
        'Farklı koşullara, farklı projelere ve değişen önceliklere hızlı '
        'uyum sağlarsın. Bugün ev ofisi, yarın kafe, öbür gün tam ofis; '
        'fark etmez, üretkenliğini koruyabilirsin. '
        'Katı programlara bağlı olmak zorunda hissetmezsin ama tamamen '
        'yapısız olmak da seni zaman zaman zorlar; hafif bir çerçeve içinde '
        'serbest hareket edersin. '
        'Öncelikler değiştiğinde hızlıca pivot yapabilir, '
        'yeniden odaklanabilirsin. '
        'Sonuç odaklısın; görev tamamlandığında tatmin duyar, '
        'nasıl tamamlandığından çok tamamlanıp tamamlanmadığını önemsersin. '
        'Farklı çalışma ortamlarına ve ekip dinamiklerine kolayca uyum sağlarsın. '
        'Belirsiz koşullarda bile üretkenliğini koruması, seni değişken ortamlarda '
        'en güvenilir çalışan yapan özelliğin. '
        'Uzaktan çalışma, serbest çalışma ya da proje bazlı işler sana özellikle '
        'uygun; çünkü kendi ritmin ve temponu belirleyebiliyor, sonuçları '
        'tutarlı şekilde ortaya koyabiliyorsun. Bu özerklik hem motivasyonunu '
        'hem de iş kaliteni olumlu etkiler. Kendi çalışma ritminle sürekli kaliteli '
        'çıktılar üretmek, seni her ortamda güvenilir ve değerli bir profesyonele dönüştürür.',
    shareText:
        'Benim çalışma tarzım: Esnek Üretici! 🔄 Çalışma saati değil, '
        'görev tamamlamak önemli benim için. Sabah mı, akşam mı, kafe mi, '
        'ev mi; fark etmez. Koşullara hızla uyum sağlarım. Katı programlar '
        'değil, esnek bir çerçeve içinde özgür hareket ederim. '
        'Uzaktan çalışma ya da proje bazlı işler bana özellikle uygun; '
        'kendi ritmi belirleyip tutarlı sonuçlar üretmek benim güçlü yanım. '
        'Öncelikler değiştiğinde hızlıca pivot yapar, odağımı koruyabilirim. '
        'Sonuç odaklıyım; tamamlandı mı, o önemli. Belirsiz koşullarda bile '
        'üretkenliğimi korumak, beni her türlü çalışma ortamında güvenilir ve '
        'değerli bir ortak yapar. Sen de profilini öğrenmek ister misin?',
  ),

  // ─────────────────────────────────────────────
  // teknoloji (📱) – 4 profil
  // ─────────────────────────────────────────────
  ResultProfile(
    id: 'teknoloji_profile_1',
    categoryId: 'teknoloji',
    title: 'Erken Benimseyici',
    subtitle: 'Teknoloji Tutkunu',
    emoji: '🚀',
    description:
        'Yeni bir teknoloji çıktığında ilk öğrenenler arasında olmak seni heyecanlandırır. '
        'Bir ürün henüz erken erişim aşamasındayken bile denemeye hazırsındır; '
        'beta sürümlerden çekinmezsin. Yeni uygulama, cihaz ya da platform duyuyorsun; '
        'merak hemen devreye giriyor ve deneyim kazanmak istiyorsun. '
        'Teknoloji haberleri, ürün lansmanları ve sektör gelişmeleri seni '
        'yakından ilgilendiriyor; bunları takip eden haber kaynakları, podcastler '
        'ya da toplulukların içindesin. '
        'Çevrene teknolojiyi açıklayan, öneren ve onları dönüştürülmüş teknolojileri '
        'tanıştıran kişi çoğunlukla sensin. '
        'Yeni bir araç iş akışını iyileştiriyorsa geçiş yapmak için tereddüt etmezsin. '
        'Teknolojiyi araç olarak değil, tutku olarak görürsün; '
        've bu tutkun seni daima güncel, meraklı ve ilerici kılıyor. '
        'Yapay zeka, yeni cihazlar, platform değişiklikleri; bunları gündelik sohbetin '
        'bir parçası yaparsın. Teknoloji trendlerini merakla takip etmek ve '
        'yeniliğin ön saflarında olmak senin kimliğinin bir parçasıdır. '
        'Arkadaşların teknoloji konularında sana sorar; sen de bunu bir görev '
        'değil, zevk olarak görürsün. Yeni bir cihazı kutu açma anında '
        'heyecanla inceler, ayarlarını keşfeder ve özelliklerini en kısa sürede '
        'anlayarak çevrenle paylaşırsın.',
    shareText:
        'Benim teknoloji tarzım: Erken Benimseyici! 🚀 Yeni teknolojiler çıktığında '
        'ilk deneyen olmayı severim. Beta sürüm, erken erişim; sorun değil. '
        'Teknoloji haberlerini takip eder, çevreme yeni araçları tanıştırırım. '
        'Yapay zeka, yeni cihazlar ve platform değişiklikleri gündelik sohbetimin '
        'parçası. Arkadaşlarım teknoloji sorularını bana sorar; ben de bunu '
        'zevkle yanıtlarım. Yeni bir cihazı kutu açarken çocuk gibi heyecanlanırım. '
        'Yeniliğin ön saflarında olmak benim için bir tutku. '
        'Teknoloji benim için bir araç değil, kimliğimin parçası. Yeni bir araç iş '
        'akışımı iyileştiriyorsa geçiş yapmak için hiç tereddüt etmem; değişim beni '
        'korkutmuyor, aksine heyecanlandırıyor. Sen de teknoloji profilini keşfet!',
  ),
  ResultProfile(
    id: 'teknoloji_profile_2',
    categoryId: 'teknoloji',
    title: 'Dijital Minimalist',
    subtitle: 'Bilinçli Kullanıcı',
    emoji: '🔇',
    description:
        'Teknolojiyi kasıtlı ve bilinçli olarak kullanırsın. Her yeni uygulama '
        'ya da platforma katılmak yerine gerçekten değer kattığını düşündüklerin '
        'tercih edersin. Telefonunda yüklü uygulama sayısı az ama her biri '
        'bir amaca hizmet eder. Bildirimlerini sıkı bir şekilde yönetir, '
        'sosyal medyayı dikkatli ve zamanlı kullanırsın. '
        'Ekran süresini farkındasın; dijital yorgunluk gerçek bir kavram '
        've bunu önlemek için sınırlar koyarsın. '
        'Teknolojiyi bir dikkat dağıtıcı değil, bir araç olarak görürsün; '
        'bu yüzden amaçsız gezinmek ve zaman öldürmek senin alışkanlıkların '
        'arasında yok. '
        'Yeni bir araç ya da platform denemeden önce "bu benim hayatıma '
        'ne katacak?" diye sorarsın. '
        'Dijital sağlık senin için gerçek bir önceliktir. '
        'Telefonsuz saatler geçirebilir, ekransız bir akşamı değerli bulabilirsin. '
        'Teknolojinin dikkatini ve zamanını çaldığı her anı fark eder, '
        'buna karşı aktif sınırlar çizersin. Bu bilinç seni hem üretken '
        'hem de dinç tutuyor. '
        'Sosyal medyada zaman geçirmek yerine kitap okumayı, yürüyüşe çıkmayı '
        'ya da gerçek yüz yüze sohbetleri tercih edersin. Dijital detoks '
        'dönemleri seni yenilemenin en etkili yolu olarak görürsün; '
        've bu seçimlerin arkasında derin bir öz farkındalık yatmaktadır.',
    shareText:
        'Benim teknoloji tarzım: Dijital Minimalist! 🔇 Teknolojiyi bilinçli '
        'kullanırım. Gereksiz uygulama, amaçsız gezinme benim tarihimde yok. '
        'Bildirimleri yönetirim, ekran süresini farkındayım. Yeni bir araç '
        '"bana ne katacak?" testini geçmeli. Telefonsuz saatler geçirebilirim; '
        'ekransız bir akşam benim için değerli. Sosyal medya yerine kitap, '
        'yürüyüş ya da yüz yüze sohbeti tercih ederim. Teknolojinin dikkatimi '
        'çaldığı anlarda aktif sınır çizerim. Dijital sağlık benim için öncelikli. '
        'Dijital detoks dönemleri beni yenilemenin en etkili yolu; bu öz farkındalık '
        'hem üretkenliğimi hem de genel iyilik halimi olumlu etkiliyor. '
        'Sen de profilini öğrenmek ister misin?',
  ),
  ResultProfile(
    id: 'teknoloji_profile_3',
    categoryId: 'teknoloji',
    title: 'İçerik Üreticisi',
    subtitle: 'Dijital Yaratıcı',
    emoji: '🎬',
    description:
        'Teknolojiyi sadece tüketmez, üretmek için kullanırsın. Bir kamera, '
        'bir mikrofon, bir yazı platformu ya da bir tasarım aracı; '
        'bunlar senin dijital atölyenin araçlarıdır. '
        'Fikirlerini, deneyimlerini ya da uzmanlığını içeriğe dönüştürmek '
        'seni tatmin eder. Sosyal medyada aktifsin ama sadece izleyici olarak değil; '
        'oluşturan, paylaşan ve etkileyici olan taraftasın. '
        'Algoritmaları anlarsın, bir içeriğin nasıl yayıldığını merak edersin '
        've platform özelliklerini iyi kullanırsın. '
        'Beğeni ve etkileşim önemlidir ama asıl motivasyonun yaratma sürecinin kendisidir. '
        'Yeni bir araç içerik kaliteni artırıyorsa hemen öğrenmeye girişirsin. '
        'Ürettiğin şeylerin başkalarını etkilemesi, bilgilendirmesi ya da '
        'eğlendirmesi sana büyük tatmin verir. '
        'Sesin, görüntünün ya da yazının bir araya geldiği içerikler senin için '
        'sadece bir yayın değil, bir sanat eseridir. Yeni formatları dener, '
        'farklı platformları keşfeder ve kendi içerik stilini sürekli geliştirirsin. '
        'Bir fikrin tohumunu ekleyip onun büyüdüğünü ve insanlara ulaştığını '
        'izlemek sana başka hiçbir şeyin veremeyeceği bir tatmin sağlar. '
        'Analitik verilerden öğrenir, geri bildirimlerle gelişirsin; '
        'her yeni içerik bir öncekinden daha iyidir.',
    shareText:
        'Benim teknoloji tarzım: İçerik Üreticisi! 🎬 Teknolojiyi üretmek için '
        'kullanırım. Kamera, mikrofon, yazı platformu; bunlar benim dijital atölyem. '
        'Fikirlerimi içeriğe dönüştürür, paylaşırım. Sosyal medyada izleyici değil, '
        'üretici tarafındayım. Algoritmaları anlarım, platformları iyi kullanırım. '
        'Bir fikrin tohumunu ekleyip büyüdüğünü izlemek bana büyük tatmin veriyor. '
        'Yeni formatları dener, kendi içerik stilimi sürekli geliştiririm. '
        'Yaratma süreci benim için asıl tatmin. İçeriğimin başkalarını etkilemesi, '
        'bilgilendirmesi ya da eğlendirmesi bana başka hiçbir şeyin veremeyeceği '
        'bir duygu yaşatıyor. Analitik verilerden öğrenir, her yeni içerikle gelişirim. '
        'Sen de teknoloji profilini keşfet!',
  ),
  ResultProfile(
    id: 'teknoloji_profile_4',
    categoryId: 'teknoloji',
    title: 'Pasif Tüketici',
    subtitle: 'Rahat Takipçi',
    emoji: '📺',
    description:
        'Teknolojiyi hayatını kolaylaştıran ve eğlendiren bir araç olarak görürsün. '
        'En son çıkan telefonu takip etmek ya da yeni bir platform denemek '
        'için koşturmak senin önceliğin değil; ama herkes benimsediğinde '
        'sen de kolayca adaptasyon sağlarsın. '
        'İçerik tüketimi güçlü alanın: dizi, video, podcast, makale; '
        'bunları keyifle izler ve takip edersin. '
        'Algoritmalar ve öneriler çoğunlukla işine gelir çünkü ilgi alanlarını '
        'zaten takip ediyor. '
        'Yeni bir uygulamayı birisi önermeden önce kendin araştırmazsın; '
        'ama önerildiğinde dener ve beğenirsen kullanmaya devam edersin. '
        'Sosyal medyada daha çok takip edersin, çok az üretirsin. '
        'Teknoloji bir araç; işlevini görüyor mu, yeterli. '
        'Teknoloji ile ilişkin sağlıklı ve dengeli; ne bağımlısın ne de geride '
        'kalıyorsun. Herkesin öğrendiğinde sen de öğrenirsin, ama öncü olmak '
        'için çabalamak sana gerekli gelmiyor. Bu rahat ve stressiz yaklaşım '
        'seni tatmin ediyor. '
        'Teknoloji senin için bir stres kaynağı değil, rahatlama aracıdır; '
        'bir diziyi binge izlemek, müzik listene eşlik ettirmek ya da '
        'arkadaşlarla dijital dünyada bağlı kalmak sana yeterli ve keyifli geliyor. '
        'Bu yaklaşımın güzelliği, teknolojiyi bir yarış gibi değil, bir hizmet '
        'gibi kullanmandır.',
    shareText:
        'Benim teknoloji tarzım: Pasif Tüketici! 📺 Teknoloji hayatımı '
        'kolaylaştırıyor, bu bana yeterli. En son çıkanı takip etmek zorunda '
        'hissetmiyorum ama herkes benimseyince ben de adapte olurum. '
        'İçerik izlemek ve takip etmek güçlü alanım; dizi, podcast, video '
        'benim vazgeçilmezlerim. Teknoloji benim için bir yarış değil, bir hizmet; '
        'rahatlamak ve eğlenmek için kullanıyorum. Sosyal medyada daha çok '
        'okur, az paylaşırım. Teknoloji ile ilişkim sağlıklı ve dengeli; '
        'bağımlı değilim, geride de kalmıyorum. Teknolojiyi bir stres kaynağı '
        'değil, rahatlama aracı olarak görmek bana çok iyi geliyor; bu stressiz '
        'yaklaşım hayatımı gereksiz yere karmaşıklaştırmıyor. '
        'Sen de profilini öğrenmek ister misin?',
  ),

  // ─────────────────────────────────────────────
  // yasam (🏙️) – 4 profil
  // ─────────────────────────────────────────────
  ResultProfile(
    id: 'yasam_profile_1',
    categoryId: 'yasam',
    title: 'Şehir Çocuğu',
    subtitle: 'Kentsel Enerji',
    emoji: '🏙️',
    description:
        'Şehrin enerjisi seni besler. Gece yarısı açık kafeler, metro sesleri, '
        'kalabalık caddeler ve her köşede farklı bir hayat; bunlar seni '
        'canlı hissettirir. Sessiz bir kasabada ya da doğanın tam ortasında '
        'bir süre için güzel olabilir ama asıl yetin şehir. '
        'Ulaşım kolaylığı, kültürel çeşitlilik, iş ve sosyal olanaklar '
        'senin için vazgeçilmez. Şehirde her şey yakın; sanat galerisi, '
        'restoran, etkinlik, iş yeri. '
        'Komşuluğun adını bilmeyebilirsin ama o anonim özgürlüğü de seversin; '
        'şehirde herkes kendi hayatını yaşar, kimse kimseye karışmaz. '
        'Yeni bir mahalle keşfetmek, yeni açılan bir mekan denemek '
        've şehrin nabzını hissetmek seni mutlu eder. '
        'Şehir senin için bir sahne; ve sen o sahnede tam yerindeyken en iyisindir. '
        'Farklı insanlarla, farklı kültürlerle ve farklı fikirlerle iç içe olmak '
        'seni besler ve büyütür. Kalabalık bir şehirde bile kendi ritminle '
        'dans etmeyi bilen birisin; şehir sana ait. '
        'Sabah yürüyüşünde on farklı dil duyabilirsin; akşam bir müzik '
        'festivalinden bir sergi açılışına atlayabilirsin. Bu çeşitlilik '
        'sana sürekli ilham verir ve hiçbir gün diğerine benzemez. '
        'Şehrin karmaşası seni yıpratmıyor; tam tersine şarj ediyor.',
    shareText:
        'Benim yaşam tarzım: Şehir Çocuğu! 🏙️ Şehrin enerjisi beni besler. '
        'Kalabalık caddeler, her köşede farklı bir hayat, gece yarısı açık kafeler; '
        'bunlar benim ortamım. Ulaşım kolaylığı, kültürel çeşitlilik, olanaklar '
        'olmadan eksik hissederim. Sabah yürüyüşünde on farklı dil duyabilirim; '
        'akşam müzik festivalinden sergi açılışına atlayabilirim. Yeni mahalleleri '
        'keşfetmek, yeni mekanlar denemek benim için küçük maceralar. Farklı '
        'insanlar ve fikirlerle iç içe olmak beni büyütüyor. Şehrin karmaşası '
        'beni yıpratmıyor, şarj ediyor. Şehir benim için bir sahne; ve ben o '
        'sahnede tam yerindeyken en iyisiyim. Komşunun adını bilmeyebilirim ama '
        'o anonim özgürlüğü de seviyorum. Sen de yaşam profilini keşfet!',
  ),
  ResultProfile(
    id: 'yasam_profile_2',
    categoryId: 'yasam',
    title: 'Doğa Sever',
    subtitle: 'Açık Hava Ruhu',
    emoji: '🌲',
    description:
        'Doğada geçirdiğin zaman seni yeniden şarj eder. Dağlar, ormanlar, '
        'deniz kenarı ya da bir nehir kıyısı; açık hava ortamları ruhunu besler. '
        'Şehrin gürültüsünden ve kalabalığından bunalırsın; '
        'yeşil, temiz ve sakin bir ortam hem bedenini hem de zihnini iyileştirir. '
        'Hafta sonları doğa yürüyüşü yapmak, kamp kurmak ya da sadece '
        'parkta vakit geçirmek bile seni iyi hissettirir. '
        'Mevsimlerin değişimini takip edersin; '
        'sonbaharın yaprakları, baharın ilk çiçekleri ya da kışın sessizliği '
        'her biri sana ayrı bir güzellik taşır. '
        'Yaşam alanında bitki var, belki bir bahçe ya da balkon; '
        'doğayı içeriye taşımak istiyorsun. '
        'Sürdürülebilir yaşam, çevre bilinci ve ekolojik ayak izi '
        'senin için önemli kavramlar. '
        'Açık havada spor yapmak, yürüyüş rotaları keşfetmek ya da '
        'bir gün boyunca teknolojisiz doğada kalmak sana derin bir huzur verir. '
        'Doğa senin için bir kaçış değil, asıl ev. '
        'Bir ormanda yürürken ya da deniz kıyısında otururken zihnindeki gürültü '
        'yatışır; o sessizlikte en net düşünceler ve en iyi fikirler gelir. '
        'Doğa senin için bir terapi değil, doğal halin; asıl kendin ordasın.',
    shareText:
        'Benim yaşam tarzım: Doğa Sever! 🌲 Doğada geçirdiğim zaman beni '
        'yeniden şarj eder. Dağlar, ormanlar, temiz hava; bunlar ruhumu besler. '
        'Şehrin gürültüsünden bunalırsam doğaya kaçarım. Hafta sonu yürüyüşü, '
        'kamp, parkta oturmak; hepsi benim için terapi. Ormanda yürürken ya da '
        'deniz kıyısında otururken zihin gürültüsü yatışır; en net düşünceler '
        'orada gelir. Mevsimlerin değişimini severim; her mevsim kendine özgü '
        'bir güzellik taşıyor. Sürdürülebilir yaşam ve çevre bilinci benim için '
        'önemli değerler. Doğa benim için bir kaçış değil, asıl ev; en gerçek '
        'halimi orada buluyorum ve açık havada geçirdiğim her saat beni besliyor. '
        'Sen de yaşam profilini öğrenmek ister misin?',
  ),
  ResultProfile(
    id: 'yasam_profile_3',
    categoryId: 'yasam',
    title: 'Minimal Yaşam',
    subtitle: 'Az ile Huzur',
    emoji: '🕊️',
    description:
        'Daha az sahip olmak, daha fazla özgürlük anlamına gelir senin için. '
        'Yaşam alanın sade, düzenli ve kasıtlı olarak seçilmiş eşyalarla dolu. '
        'Gereksiz eşya, alışkanlık ya da yükümlülükler seni bunaltır; '
        'sadeleştirmek süregelen bir pratik. '
        'Tüketim kültürüne mesafeli durursun; reklamlar, trendler ve '
        '"herkes alıyor" baskısı seni etkilemez. '
        'Ne yersen, ne giyersen, ne zaman nerede olursan olursun; '
        'her seçim düşünülmüş ve anlamlıdır. '
        'Dijital minimalizm de hayatının bir parçası: '
        'az uygulama, az hesap, az gürültü. '
        'Zaman ve dikkat en değerli kaynaklarındır; onları boşa harcamak istemezsin. '
        'Basit bir hayat seni mutlu ve özgür kılar; '
        'karmaşıklık değil, netlik ararsın. '
        'Düzenli aralıklarla hayatından çıkardıkların, tuttuklarından daha anlamlı '
        'hale gelir. Yıllık temizlikler, minimalizm pratikleri ve bilinçli tüketim '
        'kararları bu yaşam felsefesinin somut yansımaları. Az ama her şey doğru. '
        'Bazen insanlar ne kadar az şeyle mutlu olduğuna şaşırır; ama sen bunu '
        'bir yoksunluk değil, bir özgürleşme olarak yaşıyorsun. Dolu bir raf '
        'seni bunaltırken, boş bir alan seni rahatlatır; bu sade estetik '
        'sadece eşyayla değil, hayatın tüm boyutlarıyla ilgilidir.',
    shareText:
        'Benim yaşam tarzım: Minimal Yaşam! 🕊️ Daha az sahip olmak benim için '
        'daha fazla özgürlük. Yaşam alanım sade, seçimlerim bilinçli. '
        'Tüketim kültürüne mesafeli, reklamlara kayıtsız. Az ama öz; '
        'gereksiz yükler değil, gerçek değerler. İnsanlar az şeyle mutlu '
        'olduğuma şaşırır; ama benim için bu yoksunluk değil, özgürleşme. '
        'Düzenli aralıklarla hayatımdan çıkardıklarım, tuttuklarım kadar önemli. '
        'Dijital gürültüyü de azaltırım; az hesap, az bildirim, daha çok huzur. '
        'Basit hayat beni huzurlu kılıyor. Dolu bir raf beni bunaltırken boş '
        'bir alan beni rahatlatır; bu sade estetik sadece eşyayla değil hayatımın '
        'tüm boyutlarıyla ilgilidir. Sen de yaşam profilini keşfet!',
  ),
  ResultProfile(
    id: 'yasam_profile_4',
    categoryId: 'yasam',
    title: 'Sıcak Yuva',
    subtitle: 'Bağ ve Topluluk',
    emoji: '❤️',
    description:
        'Yaşamın merkezinde insanlar var; aile, yakın arkadaşlar ve seni '
        'tanıyan bir topluluk. Yaşadığın yerin fiziksel özellikleri kadar, '
        'orada kurduğun bağlar önemlidir. '
        'Komşunu tanır, bakkalıyla sohbet eder, mahallenin birer parçası olursun. '
        'Evini özenle hazırlarsın; misafir geldiğinde rahat hissettiren, '
        'sıcak ve davetkar bir ortam yaratırsın. '
        'Yemek masası, sohbet saatleri, birlikte izlenen filmler; '
        'bunlar senin en değerli anların. '
        'Uzakta olmak ya da izole olmak seni zorlayabilir; '
        'bağlantı ve aidiyet senin için temel ihtiyaçtır. '
        'Kariyer, heyecanlar ya da yeni deneyimler önemli ama '
        'sevdiklerle olan zaman her zaman önceliğindedir. '
        'İnsanları bir arada tutan, sıcaklığı yaratan kişi sensin. '
        'Bayramlar, özel günler ve toplantılar için özenle hazırlık yaparsın; '
        'çünkü bu anlar senin için sıradan değil, kutsal. İlişkileri beslemek, '
        'insanları hatırlamak ve bağları canlı tutmak senin için bir görev değil, '
        'gerçek bir zevk. '
        'Uzak bir şehre taşınan bir arkadaşına düzenli ulaşır, doğum günlerini '
        'unutmaz, zor günlerde yanında olursun. Bu sadakat ve vefa '
        'seni çevrendeki herkes için güvenli bir liman yapar; ve insanlar '
        'bunu hisseder. Topluluk duygusu senin en büyük yaşamsal kaynağındır.',
    shareText:
        'Benim yaşam tarzım: Sıcak Yuva! ❤️ Yaşamımın merkezinde insanlar var. '
        'Aile, yakın arkadaşlar ve aidiyet benim için temel. '
        'Evimi sıcak ve davetkar tutarım; misafirler rahatsız değil, evinde hisseder. '
        'Komşumu tanır, mahallemin parçası olurum. Uzak bir arkadaşa düzenli '
        'ulaşır, doğum günlerini unutmam, zor günlerde yanında olurum; '
        'bu sadakat beni güvenli liman yapar. Özel günleri ve toplantıları '
        'özenle hazırlarım; bu anlar benim için kutsal. İlişkileri beslemek, '
        'insanları hatırlamak benim için bir görev değil, gerçek zevk. '
        'Bağlantı benim için zorunluluk. '
        'Sen de yaşam profilini öğrenmek ister misin?',
  ),
];
