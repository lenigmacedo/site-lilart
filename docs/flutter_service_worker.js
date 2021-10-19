'use strict';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "/assets\AssetManifest.json": "114d7864c0c992bcbad8e78b5435aa04",
"/assets\assets\fonts\Rubik-BoldItalic.ttf": "c002cd789eb43641c98b7817ee26e3e3",
"/assets\assets\fonts\Rubik-Light.ttf": "7a06846baf7fd2cfb18c7ab4d663c8ca",
"/assets\assets\fonts\Rubik-MediumItalic.ttf": "56583c2363a20436f7448d9b963c0463",
"/assets\assets\fonts\Rubik-Regular.ttf": "b3d0902b533ff4c4f1698a2f96ddabab",
"/assets\assets\images\amanha.jpg": "658958ab789b852461fb10b49cbcffab",
"/assets\assets\images\fundo.jpg": "575ac8e7e87d81123612c0b185241a99",
"/assets\assets\images\logo.jpg": "9a306d7e17c5c9f4421eeb3dc7be777b",
"/assets\assets\images\parabens.jpg": "21b4b5f02d4e4134f51bffa50b732dc8",
"/assets\assets\images\paz_2.jpg": "5eb1ebff6533f5cb94a236bf7adfa664",
"/assets\assets\images\slow_down.jpg": "ec3ee76e2cad9d5642d0786d60e5eed3",
"/assets\assets\images\so_quero.jpg": "ba24b6b6e776b050dfbe9b2e870db7b8",
"/assets\FontManifest.json": "4e9ff3acfffe0d8681a63d3172832d14",
"/assets\fonts\MaterialIcons-Regular.ttf": "56d3ffdef7a25659eab6a68a3fbfaf16",
"/assets\LICENSE": "414c1dfb09ca4e100aa3ee452acf7c10",
"/assets\packages\cupertino_icons\assets\CupertinoIcons.ttf": "115e937bb829a890521f72d2e664b632",
"/assets\packages\flutter_web_howl\assets\howler.js": "f32c950a6f8764359eb3843b2f9e0da0",
"/assets\packages\font_awesome_flutter\lib\fonts\fa-brands-400.ttf": "00bb2b684be61e89d1bc7d75dee30b58",
"/assets\packages\font_awesome_flutter\lib\fonts\fa-regular-400.ttf": "4b6a9b7c20913279a3ad3dd9c96e155b",
"/assets\packages\font_awesome_flutter\lib\fonts\fa-solid-900.ttf": "dffd9504fcb1894620fa41c700172994",
"/favicon.png": "5dcef449791fa27946b3d35ad8803796",
"/icons\Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"/icons\Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"/index.html": "d9a9d492a2faf7fa4c9f4669a167070d",
"/main.dart.js": "59a94eb64610d39463d12e81221a413a",
"/manifest.json": "9a5ec770873f30541e8ef942e69a224e"
};

self.addEventListener('activate', function (event) {
  event.waitUntil(
    caches.keys().then(function (cacheName) {
      return caches.delete(cacheName);
    }).then(function (_) {
      return caches.open(CACHE_NAME);
    }).then(function (cache) {
      return cache.addAll(Object.keys(RESOURCES));
    })
  );
});

self.addEventListener('fetch', function (event) {
  event.respondWith(
    caches.match(event.request)
      .then(function (response) {
        if (response) {
          return response;
        }
        return fetch(event.request, {
          credentials: 'include'
        });
      })
  );
});
