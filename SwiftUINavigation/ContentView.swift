//
//  ContentView.swift
//  SwiftUINavigation
//
//  Created by Dilara Akdeniz on 26.07.2023.
//



/*Navigation Stack, SwiftUI'de iOS 16 ile gelen bir yeniliktir ve Navigation View'dan birkaç önemli farkı ve geliştirmesi vardır. İşte bu iki yapı arasındaki temel farklar ve neden Navigation Stack'in kullanılmaya başlandığına dair açıklamalar:
1. Daha Esnek ve Güçlü Gezinti
Navigation View: Sayfalar arasında temel bir gezinti yapısını destekler, ancak karmaşık gezinti akışlarında veya derin gezinti işlemlerinde sınırlamalar yaşanabilir. Örneğin, birden fazla ekranı geri alabilme veya ileri geri gezinti durumlarını yönetme konusunda kısıtlıydı.
Navigation Stack: Derin ve çok katmanlı gezintileri daha esnek ve detaylı bir şekilde yönetir. Kullanıcıların uygulamanın farklı bölümlerine kolayca geri dönmesini sağlarken, her bir sayfanın durumunu (state) daha iyi izler ve yönetir.
2. Durum Yönetimi (State Preservation)
Navigation View: Uygulama kapatıldığında veya bir nedenden dolayı yeniden açıldığında önceki gezinti durumu kaybolabilirdi. Kullanıcılar geri dönmek istediklerinde kaldıkları yerden devam edemezlerdi.
Navigation Stack: Gezinti durumunu (navigation state) korur. Yani kullanıcılar uygulamayı yeniden açtığında, kaldıkları yerden devam edebilirler. Bu, modern kullanıcı deneyimi için önemli bir iyileştirmedir.
3. Stack Bazlı Model
Navigation View: Genellikle tek yönlü gezintiyi destekleyen bir yapıya sahiptir. Bu da her ekranda yeni bir görünüm oluşturduğunda, önceki görünümler arka planda kalır ve gerektiğinde tekrar geri dönülür.
Navigation Stack: Stack tabanlı bir yapı kullanarak, her yeni gezinti adımını bir yığına (stack) ekler. Bu, daha iyi bir geri ve ileri gezinti akışı sağlar. Stack yapısı, önceki gezinti yapısını hatırlar ve kullanıcılar bu yığına dayanarak kolayca gezinebilir.
4. Daha İyi Programatik Kontrol
Navigation View: Programatik olarak ekranlar arasında geçiş yapma (push/pop) konusunda sınırlı kontrole sahipti. Özellikle karmaşık gezinti akışlarında bu kontrol eksikliği geliştiriciler için zorluk yaratabiliyordu.
Navigation Stack: Programatik olarak ekranlar arasında ileri geri gezinti yapmayı, yığındaki ekranları yönetmeyi ve belirli ekranlara geri dönmeyi çok daha kolay hale getirir. Bu, daha karmaşık uygulama senaryolarını destekler.
5. Performans ve Stabilite
Navigation View: Özellikle karmaşık gezinti yapılarında performans sorunları ve kararlılık problemleri yaşanabiliyordu.
Navigation Stack: Daha stabil ve performanslı bir gezinti deneyimi sunar, özellikle daha derin gezinti yığınları olduğunda bile kullanıcı deneyimi sorunsuz kalır.
6. Backport Edilememe
Navigation Stack: Sadece iOS 16 ve sonrasını destekler. Daha eski iOS sürümlerinde Navigation View kullanılması gerekebilir.
Özetle, Navigation Stack, özellikle karmaşık gezinti senaryoları, daha iyi durum yönetimi, programatik kontrol ve modern uygulama deneyimi için geliştirilmiş bir yapıdır. Navigation View'un sınırlamalarını aşmak ve daha esnek bir çözüm sunmak için bu yeni yapı kullanılmaya başlandı.

*/

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        NavigationStack {
            List {
                Section("Dogs") {
                    ForEach(dogs) { dog in
                        NavigationLink(dog.name, value: dog)
                    }
                }
                
                Section("Cats") {
                    ForEach(cats) { cat in
                        NavigationLink(cat.name, value: cat)
                    }
                }
            }.navigationDestination(for: Dog.self) { dog in
                Text(dog.name)
            }.navigationDestination(for: Cat.self) { cat in
                Text(cat.name)
            }
        }
    }
}
        
 
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
