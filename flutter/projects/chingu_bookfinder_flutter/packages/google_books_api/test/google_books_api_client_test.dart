import 'package:http/http.dart' as http;
import 'package:mocktail/mocktail.dart';
import 'package:test/test.dart';

import 'package:google_books_api/src/models/book_volume.dart';
import 'package:google_books_api/google_books_api.dart';

class MockHttpClient extends Mock implements http.Client {}

class MockResponse extends Mock implements http.Response {}

class FakeUri extends Fake implements Uri {}

void main() {
  late http.Client httpClient;
  late GoogleBooksApiClient googleBooksApiClient;

  setUpAll(() {
    registerFallbackValue(FakeUri());
  });

  setUp(() {
    httpClient = MockHttpClient();
    googleBooksApiClient = GoogleBooksApiClient(httpClient: httpClient);
  });

  group('constructor', () {
    test('does not require an httpClient', () {
      expect(GoogleBooksApiClient(), isNotNull);
    });
  });

  group('getBooks', () {
    const query = 'mock-query';

    test('http request is called', () async {
      final mockResponse = MockResponse();

      when(() => mockResponse.statusCode).thenReturn(200);
      when(() => mockResponse.body).thenReturn('[]');
      when(() => httpClient.get(any())).thenAnswer((_) async => mockResponse);
      try {
        await googleBooksApiClient.getBooks(query);
      } catch (_) {}

      verify(
        () => httpClient.get(
          Uri.https(
            'www.googleapis.com',
            '/books/v1/volumes',
            <String, String>{'q': query},
          ),
        ),
      ).called(1);
    });

    test('returns books on valid response', () async {
      final mockResponse = MockResponse();

      when(() => mockResponse.statusCode).thenReturn(200);
      when(() => mockResponse.body).thenReturn(
        '''{
        "items": [
          {
            "kind": "books#volume",
            "id": "kLAoswEACAAJ",
            "etag": "WrZzXYAOTQo",
            "selfLink": "https://www.googleapis.com/books/v1/volumes/kLAoswEACAAJ",
            "volumeInfo": {
              "title": "Harry Potter and the Cursed Child",
              "authors": ["J. K. Rowling", "Jack Thorne", "John Tiffany"],
              "publisher": "Sphere",
              "publishedDate": "2017-07-25",
              "description":
                  "The official playscript of the original West End production of Harry Potter and the Cursed Child. It was always difficult being Harry Potter and it isn't much easier now that he is an overworked employee of the Ministry of Magic, a husband, and father of three school-age children. While Harry grapples with a past that refuses to stay where it belongs, his youngest son Albus must struggle with the weight of a family legacy he never wanted. As past and present fuse ominously, both father and son learn the uncomfortable truth: sometimes, darkness comes from unexpected places. The playscript for Harry Potter and the Cursed Child was originally released as a 'special rehearsal edition' alongside the opening of Jack Thorne's play in London's West End in summer 2016. Based on an original story by J.K. Rowling, John Tiffany and Jack Thorne, the play opened to rapturous reviews from theatregoers and critics alike, while the official playscript became an immediate global bestseller. This revised paperback edition updates the 'special rehearsal edition' with the conclusive and final dialogue from the play, which has subtly changed since its rehearsals, as well as a conversation piece between director John Tiffany and writer Jack Thorne, who share stories and insights about reading playscripts. This edition also includes useful background information including the Potter family tree and a timeline of events from the wizarding world prior to the beginning of Harry Potter and the Cursed Child.",
              "industryIdentifiers": [
                {"type": "ISBN_10", "identifier": "0751565369"},
                {"type": "ISBN_13", "identifier": "9780751565362"}
              ],
              "readingModes": {"text": false, "image": false},
              "pageCount": 352,
              "printType": "BOOK",
              "categories": ["Fiction"],
              "averageRating": 3.5,
              "ratingsCount": 3,
              "maturityRating": "NOT_MATURE",
              "allowAnonLogging": false,
              "contentVersion": "preview-1.0.0",
              "panelizationSummary": {
                "containsEpubBubbles": false,
                "containsImageBubbles": false
              },
              "imageLinks": {
                "smallThumbnail":
                    "http://books.google.com/books/content?id=kLAoswEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api",
                "thumbnail":
                    "http://books.google.com/books/content?id=kLAoswEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api"
              },
              "language": "en",
              "previewLink":
                  "http://books.google.com/books?id=kLAoswEACAAJ&dq=harrypotter&hl=&cd=2&source=gbs_api",
              "infoLink":
                  "http://books.google.com/books?id=kLAoswEACAAJ&dq=harrypotter&hl=&source=gbs_api",
              "canonicalVolumeLink":
                  "https://books.google.com/books/about/Harry_Potter_and_the_Cursed_Child.html?hl=&id=kLAoswEACAAJ"
            },
            "saleInfo": {
              "country": "US",
              "saleability": "NOT_FOR_SALE",
              "isEbook": false
            },
            "accessInfo": {
              "country": "US",
              "viewability": "NO_PAGES",
              "embeddable": false,
              "publicDomain": false,
              "textToSpeechPermission": "ALLOWED",
              "epub": {"isAvailable": false},
              "pdf": {"isAvailable": false},
              "webReaderLink":
                  "http://play.google.com/books/reader?id=kLAoswEACAAJ&hl=&printsec=frontcover&source=gbs_api",
              "accessViewStatus": "NONE",
              "quoteSharingAllowed": false
            },
            "searchInfo": {
              "textSnippet":
                  "As an overworked employee of the Ministry of Magic, a husband, and a father, Harry Potter struggles with a past that refuses to stay where it belongs while his youngest son, Albus, finds the weight of the family legacy difficult to bear."
            }
          },
          {
            "kind": "books#volume",
            "id": "kLAoswEACAAJ",
            "etag": "WrZzXYAOTQo",
            "selfLink": "https://www.googleapis.com/books/v1/volumes/kLAoswEACAAJ",
            "volumeInfo": {
              "title": "Harry Potter and the Cursed Child",
              "authors": ["J. K. Rowling", "Jack Thorne", "John Tiffany"],
              "publisher": "Sphere",
              "publishedDate": "2017-07-25",
              "description":
                  "The official playscript of the original West End production of Harry Potter and the Cursed Child. It was always difficult being Harry Potter and it isn't much easier now that he is an overworked employee of the Ministry of Magic, a husband, and father of three school-age children. While Harry grapples with a past that refuses to stay where it belongs, his youngest son Albus must struggle with the weight of a family legacy he never wanted. As past and present fuse ominously, both father and son learn the uncomfortable truth: sometimes, darkness comes from unexpected places. The playscript for Harry Potter and the Cursed Child was originally released as a 'special rehearsal edition' alongside the opening of Jack Thorne's play in London's West End in summer 2016. Based on an original story by J.K. Rowling, John Tiffany and Jack Thorne, the play opened to rapturous reviews from theatregoers and critics alike, while the official playscript became an immediate global bestseller. This revised paperback edition updates the 'special rehearsal edition' with the conclusive and final dialogue from the play, which has subtly changed since its rehearsals, as well as a conversation piece between director John Tiffany and writer Jack Thorne, who share stories and insights about reading playscripts. This edition also includes useful background information including the Potter family tree and a timeline of events from the wizarding world prior to the beginning of Harry Potter and the Cursed Child.",
              "industryIdentifiers": [
                {"type": "ISBN_10", "identifier": "0751565369"},
                {"type": "ISBN_13", "identifier": "9780751565362"}
              ],
              "readingModes": {"text": false, "image": false},
              "pageCount": 352,
              "printType": "BOOK",
              "categories": ["Fiction"],
              "averageRating": 3.5,
              "ratingsCount": 3,
              "maturityRating": "NOT_MATURE",
              "allowAnonLogging": false,
              "contentVersion": "preview-1.0.0",
              "panelizationSummary": {
                "containsEpubBubbles": false,
                "containsImageBubbles": false
              },
              "imageLinks": {
                "smallThumbnail":
                    "http://books.google.com/books/content?id=kLAoswEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api",
                "thumbnail":
                    "http://books.google.com/books/content?id=kLAoswEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api"
              },
              "language": "en",
              "previewLink":
                  "http://books.google.com/books?id=kLAoswEACAAJ&dq=harrypotter&hl=&cd=2&source=gbs_api",
              "infoLink":
                  "http://books.google.com/books?id=kLAoswEACAAJ&dq=harrypotter&hl=&source=gbs_api",
              "canonicalVolumeLink":
                  "https://books.google.com/books/about/Harry_Potter_and_the_Cursed_Child.html?hl=&id=kLAoswEACAAJ"
            },
            "saleInfo": {
              "country": "US",
              "saleability": "NOT_FOR_SALE",
              "isEbook": false
            },
            "accessInfo": {
              "country": "US",
              "viewability": "NO_PAGES",
              "embeddable": false,
              "publicDomain": false,
              "textToSpeechPermission": "ALLOWED",
              "epub": {"isAvailable": false},
              "pdf": {"isAvailable": false},
              "webReaderLink":
                  "http://play.google.com/books/reader?id=kLAoswEACAAJ&hl=&printsec=frontcover&source=gbs_api",
              "accessViewStatus": "NONE",
              "quoteSharingAllowed": false
            },
            "searchInfo": {
              "textSnippet":
                  "As an overworked employee of the Ministry of Magic, a husband, and a father, Harry Potter struggles with a past that refuses to stay where it belongs while his youngest son, Albus, finds the weight of the family legacy difficult to bear."
            }
          }
        ]
      }''',
      );
      when(() => httpClient.get(any())).thenAnswer((_) async => mockResponse);
      final response = await googleBooksApiClient.getBooks(query);

      expect(
        response,
        isA<List<Book>>(),
      );
      expect(
        response.length,
        greaterThan(0),
      );
    });

    test('throws BookSearchRequestFailure on non-200 response', () async {
      final mockResponse = MockResponse();

      when(() => mockResponse.statusCode).thenReturn(400);
      when(() => httpClient.get(any())).thenAnswer((_) async => mockResponse);

      expect(
        () async => await googleBooksApiClient.getBooks(query),
        throwsA(
          isA<BookSearchRequestFailure>(),
        ),
      );
    });
  });

  group('getBook', () {
    const volume = 'kLAoswEACAAJ';

    test('http request is called', () async {
      final mockResponse = MockResponse();

      when(() => mockResponse.statusCode).thenReturn(200);
      when(() => mockResponse.body).thenReturn('{}');
      when(() => httpClient.get(any())).thenAnswer((_) async => mockResponse);
      try {
        await googleBooksApiClient.getBook(volume);
      } catch (_) {}

      verify(
        () => httpClient.get(
          Uri.https(
            'www.googleapis.com',
            '/books/v1/volumes/$volume',
          ),
        ),
      ).called(1);
    });

    test('throws BookVolumeRequestFailure on 500 response', () async {
      final mockResponse = MockResponse();

      when(() => mockResponse.statusCode).thenReturn(500);
      when(() => httpClient.get(any())).thenAnswer((_) async => mockResponse);

      expect(
        () async => await googleBooksApiClient.getBook(volume),
        throwsA(
          isA<BookVolumeRequestFailure>(),
        ),
      );
    });

    test('throws BookVolumeNotFoundFailure when volume not found', () async {
      final mockResponse = MockResponse();

      when(() => mockResponse.statusCode).thenReturn(404);
      when(() => mockResponse.body).thenReturn('{}');
      when(() => httpClient.get(any())).thenAnswer((_) async => mockResponse);

      expect(
        () async => await googleBooksApiClient.getBook(volume),
        throwsA(
          isA<BookVolumeNotFoundFailure>(),
        ),
      );
    });

    test('returns book on valid response', () async {
      final mockResponse = MockResponse();

      when(() => mockResponse.statusCode).thenReturn(200);
      when(() => mockResponse.body).thenReturn('''
        {
          "kind": "books#volume",
          "id": "lMM4jgEACAAJ",
          "etag": "Fl2Wqt1n4M0",
          "selfLink": "https://www.googleapis.com/books/v1/volumes/lMM4jgEACAAJ",
          "volumeInfo": {
            "title": "Harry Potter Coloring Book",
            "authors": ["Scholastic"],
            "publisher": "Scholastic Incorporated",
            "publishedDate": "2015-11-10",
            "description":
                "Unleash your creativity and escape to one of the most beloved series of all time.<br><br> From the heraldry of the four Hogwarts houses to the extravagant wares of Weasleys' Wizard Wheezes, the world of Harry Potter overflows with radiant color. Filled with intricate illustrations and elaborate designs used in the making of the Harry Potter films, this book invites you to imbue the wizarding world with color in your own explorations of Hogwarts Castle, the Forbidden Forest, and much more. You will also find pages of magical creatures and iconic scenes from the films, from the Sorting Ceremony in Harry's first year, to the unforgettable final battle between Harry and Lord Voldemort, as well as some of the marvelous props used in the movies, such as The Quibbler, Quidditch World Cup posters, and the Triwizard Cup. Also includes sixteen pages of full-color art from the movies to inspire you as you draw.",
            "industryIdentifiers": [
              {"type": "ISBN_10", "identifier": "1338029991"},
              {"type": "ISBN_13", "identifier": "9781338029994"}
            ],
            "readingModes": {"text": false, "image": false},
            "pageCount": 96,
            "printedPageCount": 96,
            "dimensions": {
              "height": "27.70 cm",
              "width": "21.60 cm",
              "thickness": "0.80 cm"
            },
            "printType": "BOOK",
            "categories": ["Games & Activities / Coloring Books"],
            "averageRating": 3,
            "ratingsCount": 2,
            "maturityRating": "NOT_MATURE",
            "allowAnonLogging": false,
            "contentVersion": "preview-1.0.0",
            "imageLinks": {
              "smallThumbnail":
                  "http://books.google.com/books/content?id=lMM4jgEACAAJ&printsec=frontcover&img=1&zoom=5&imgtk=AFLRE738lo6464-sBkJrfxnk3FufbCZgpsLSitiTu3pj5LMp3b4LwZCSXMvjPthI1fXAMN5c-I-aC83XcPwsffctqWrCjacma6hhtvayFoEYcpDVI5CIshUZjtbgj_xRqhNRaIoZM0Wc&source=gbs_api",
              "thumbnail":
                  "http://books.google.com/books/content?id=lMM4jgEACAAJ&printsec=frontcover&img=1&zoom=1&imgtk=AFLRE73yyGbRrBz8eYQnO0kitGlu0TH7H0f3szT5id_A4Ik_L5O7ZGTtbRs58IvLAlPbxHVQTBMzAEwXTn7k_KTKkrpEo3xDdLg44tnlbncj9RHLlrCZdi4Y1C1eBv8wjw8htjlIeYQE&source=gbs_api"
            },
            "language": "en",
            "previewLink":
                "http://books.google.com/books?id=lMM4jgEACAAJ&hl=&source=gbs_api",
            "infoLink":
                "https://play.google.com/store/books/details?id=lMM4jgEACAAJ&source=gbs_api",
            "canonicalVolumeLink":
                "https://play.google.com/store/books/details?id=lMM4jgEACAAJ"
          },
          "saleInfo": {
            "country": "US",
            "saleability": "NOT_FOR_SALE",
            "isEbook": false
          },
          "accessInfo": {
            "country": "US",
            "viewability": "NO_PAGES",
            "embeddable": false,
            "publicDomain": false,
            "textToSpeechPermission": "ALLOWED",
            "epub": {"isAvailable": false},
            "pdf": {"isAvailable": false},
            "webReaderLink":
                "http://play.google.com/books/reader?id=lMM4jgEACAAJ&hl=&printsec=frontcover&source=gbs_api",
            "accessViewStatus": "NONE",
            "quoteSharingAllowed": false
          }
        }
        ''');
      when(() => httpClient.get(any())).thenAnswer((_) async => mockResponse);
      final response = await googleBooksApiClient.getBook(volume);

      expect(
        response,
        isA<BookVolume>(),
      );
    });
  });
}