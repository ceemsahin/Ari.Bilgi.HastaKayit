<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Menu.ascx.cs" Inherits="Ari.Bilgi.HastaKayit.Menu" %>

    <div>

            <nav class="navbar navbar-expand-sm bg-success navbar-dark">
  
          <a class="navbar-brand" href="Dashboard.aspx">Ana Sayfa</a>
  
          
          <ul class="navbar-nav">
            <li class="nav-item">
              <a class="nav-link" href="HastaKayit.aspx">Yeni Hasta Kaydı Oluştur</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="HastaKayitList.aspx">Hasta Kaydı Görüntüle</a>
            </li>
           
          </ul>


            <ul class="navbar-nav">
            <li class="nav-item">
              <a class="nav-link" href="DoktorEkle.aspx">Yeni Doktor Ekle</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="RoleEkle.aspx">Role Ekle</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="OdaKaydet.aspx">Oda Ekle</a>
            </li>

             <li class="nav-item">
              <a class="nav-link" href="KullanıcıKaydet.aspx">Kullanıcı Ekle</a>
            </li>
          </ul>


          <ul class="navbar-nav ml-auto">
              <li class="navbar-nav ml-auto">
              <a class="nav-link" href="Logout.aspx">Çıkış Yap</a>
            </li>
          </ul>

        </nav>

        </div>