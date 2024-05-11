//
//  BookInformationResponse.swift
//  BookRecommendations
//
//  Created by Chase Allen on 5/10/24.
//

import Foundation

extension BookInformationNetworkService {
    struct Response: Codable {
        enum CodingKeys: String, CodingKey, CaseIterable {
            case docs
            case numFoundExact
            case numFound = "num_found"
            case q
            case start
        }

        let docs: [Doc]
        let numFound: Int
        let numFoundExact: Bool
        let q: String
        let start: Int

        init(docs: [Doc], numFound: Int, numFoundExact: Bool, q: String, start: Int) {
            self.docs = docs
            self.numFound = numFound
            self.numFoundExact = numFoundExact
            self.q = q
            self.start = start
        }
    }

    struct Doc: Codable {
        enum CodingKeys: String, CodingKey, CaseIterable {
            case version = "_version_"
            case alreadyReadCount = "already_read_count"
            case authorAlternativeName = "author_alternative_name"
            case authorFacet = "author_facet"
            case authorKey = "author_key"
            case authorName = "author_name"
            case contributor
            case coverEditionKey = "cover_edition_key"
            case coverI = "cover_i"
            case currentlyReadingCount = "currently_reading_count"
            case ddc
            case ddcSort = "ddc_sort"
            case ebookAccess = "ebook_access"
            case ebookCountI = "ebook_count_i"
            case editionCount = "edition_count"
            case editionKey = "edition_key"
            case firstPublishYear = "first_publish_year"
            case firstSentence = "first_sentence"
            case format
            case hasFulltext = "has_fulltext"
            case ia
            case iaBoxId = "ia_box_id"
            case iaCollection = "ia_collection"
            case iaCollectionS = "ia_collection_s"
            case iaLoadedId = "ia_loaded_id"
            case idAmazon = "id_amazon"
            case idGoodreads = "id_goodreads"
            case idGoogle = "id_google"
            case idIsfdb = "id_isfdb"
            case idLibrarything = "id_librarything"
            case idOverdrive = "id_overdrive"
            case idProjectGutenberg = "id_project_gutenberg"
            case idStandardEbooks = "id_standard_ebooks"
            case isbn
            case key
            case language
            case lastModifiedI = "last_modified_i"
            case lcc
            case lccSort = "lcc_sort"
            case lccn
            case lendingEditionS = "lending_edition_s"
            case lendingIdentifierS = "lending_identifier_s"
            case numberOfPagesMedian = "number_of_pages_median"
            case oclc
            case ospCount = "osp_count"
            case person
            case personFacet = "person_facet"
            case personKey = "person_key"
            case place
            case placeFacet = "place_facet"
            case placeKey = "place_key"
            case printdisabledS = "printdisabled_s"
            case publicScanB = "public_scan_b"
            case publishDate = "publish_date"
            case publishPlace = "publish_place"
            case publishYear = "publish_year"
            case publisher
            case publisherFacet = "publisher_facet"
            case ratingsAverage = "ratings_average"
            case ratingsCount = "ratings_count"
            case ratingsCount1 = "ratings_count_1"
            case ratingsCount2 = "ratings_count_2"
            case ratingsCount3 = "ratings_count_3"
            case ratingsCount4 = "ratings_count_4"
            case ratingsCount5 = "ratings_count_5"
            case ratingsSortable = "ratings_sortable"
            case readinglogCount = "readinglog_count"
            case seed
            case subject
            case subjectFacet = "subject_facet"
            case subjectKey = "subject_key"
            case time
            case timeFacet = "time_facet"
            case timeKey = "time_key"
            case title
            case titleSort = "title_sort"
            case titleSuggest = "title_suggest"
            case type
            case wantToReadCount = "want_to_read_count"
        }

        let version: Int
        let alreadyReadCount: Int
        let authorAlternativeName: [String]
        let authorFacet: [String]
        let authorKey: [String]
        let authorName: [String]
        let contributor: [String]
        let coverEditionKey: String
        let coverI: Int
        let currentlyReadingCount: Int
        let ddc: [String]
        let ddcSort: String
        let ebookAccess: String
        let ebookCountI: Int
        let editionCount: Int
        let editionKey: [String]
        let firstPublishYear: Int
        let firstSentence: [String]
        let format: [String]
        let hasFulltext: Bool
        let ia: [String]
        let iaBoxId: [String]
        let iaCollection: [String]
        let iaCollectionS: String
        let iaLoadedId: [String]
        let idAmazon: [String]
        let idGoodreads: [String]
        let idGoogle: [String]
        let idIsfdb: [String]
        let idLibrarything: [String]
        let idOverdrive: [String]
        let idProjectGutenberg: [String]
        let idStandardEbooks: [String]
        let isbn: [String]
        let key: String
        let language: [String]
        let lastModifiedI: Int
        let lcc: [String]
        let lccSort: String
        let lccn: [String]
        let lendingEditionS: String
        let lendingIdentifierS: String
        let numberOfPagesMedian: Int
        let oclc: [String]
        let ospCount: Int
        let person: [String]
        let personFacet: [String]
        let personKey: [String]
        let place: [String]
        let placeFacet: [String]
        let placeKey: [String]
        let printdisabledS: String
        let publicScanB: Bool
        let publishDate: [String]
        let publishPlace: [String]
        let publishYear: [Int]
        let publisher: [String]
        let publisherFacet: [String]
        let ratingsAverage: Double
        let ratingsCount: Int
        let ratingsCount1: Int
        let ratingsCount2: Int
        let ratingsCount3: Int
        let ratingsCount4: Int
        let ratingsCount5: Int
        let ratingsSortable: Double
        let readinglogCount: Int
        let seed: [String]
        let subject: [String]
        let subjectFacet: [String]
        let subjectKey: [String]
        let time: [String]
        let timeFacet: [String]
        let timeKey: [String]
        let title: String
        let titleSort: String
        let titleSuggest: String
        let type: String
        let wantToReadCount: Int

        init(version: Int, alreadyReadCount: Int, authorAlternativeName: [String], authorFacet: [String], authorKey: [String], authorName: [String], contributor: [String], coverEditionKey: String, coverI: Int, currentlyReadingCount: Int, ddc: [String], ddcSort: String, ebookAccess: String, ebookCountI: Int, editionCount: Int, editionKey: [String], firstPublishYear: Int, firstSentence: [String], format: [String], hasFulltext: Bool, ia: [String], iaBoxId: [String], iaCollection: [String], iaCollectionS: String, iaLoadedId: [String], idAmazon: [String], idGoodreads: [String], idGoogle: [String], idIsfdb: [String], idLibrarything: [String], idOverdrive: [String], idProjectGutenberg: [String], idStandardEbooks: [String], isbn: [String], key: String, language: [String], lastModifiedI: Int, lcc: [String], lccSort: String, lccn: [String], lendingEditionS: String, lendingIdentifierS: String, numberOfPagesMedian: Int, oclc: [String], ospCount: Int, person: [String], personFacet: [String], personKey: [String], place: [String], placeFacet: [String], placeKey: [String], printdisabledS: String, publicScanB: Bool, publishDate: [String], publishPlace: [String], publishYear: [Int], publisher: [String], publisherFacet: [String], ratingsAverage: Double, ratingsCount: Int, ratingsCount1: Int, ratingsCount2: Int, ratingsCount3: Int, ratingsCount4: Int, ratingsCount5: Int, ratingsSortable: Double, readinglogCount: Int, seed: [String], subject: [String], subjectFacet: [String], subjectKey: [String], time: [String], timeFacet: [String], timeKey: [String], title: String, titleSort: String, titleSuggest: String, type: String, wantToReadCount: Int) {
            self.version = version
            self.alreadyReadCount = alreadyReadCount
            self.authorAlternativeName = authorAlternativeName
            self.authorFacet = authorFacet
            self.authorKey = authorKey
            self.authorName = authorName
            self.contributor = contributor
            self.coverEditionKey = coverEditionKey
            self.coverI = coverI
            self.currentlyReadingCount = currentlyReadingCount
            self.ddc = ddc
            self.ddcSort = ddcSort
            self.ebookAccess = ebookAccess
            self.ebookCountI = ebookCountI
            self.editionCount = editionCount
            self.editionKey = editionKey
            self.firstPublishYear = firstPublishYear
            self.firstSentence = firstSentence
            self.format = format
            self.hasFulltext = hasFulltext
            self.ia = ia
            self.iaBoxId = iaBoxId
            self.iaCollection = iaCollection
            self.iaCollectionS = iaCollectionS
            self.iaLoadedId = iaLoadedId
            self.idAmazon = idAmazon
            self.idGoodreads = idGoodreads
            self.idGoogle = idGoogle
            self.idIsfdb = idIsfdb
            self.idLibrarything = idLibrarything
            self.idOverdrive = idOverdrive
            self.idProjectGutenberg = idProjectGutenberg
            self.idStandardEbooks = idStandardEbooks
            self.isbn = isbn
            self.key = key
            self.language = language
            self.lastModifiedI = lastModifiedI
            self.lcc = lcc
            self.lccSort = lccSort
            self.lccn = lccn
            self.lendingEditionS = lendingEditionS
            self.lendingIdentifierS = lendingIdentifierS
            self.numberOfPagesMedian = numberOfPagesMedian
            self.oclc = oclc
            self.ospCount = ospCount
            self.person = person
            self.personFacet = personFacet
            self.personKey = personKey
            self.place = place
            self.placeFacet = placeFacet
            self.placeKey = placeKey
            self.printdisabledS = printdisabledS
            self.publicScanB = publicScanB
            self.publishDate = publishDate
            self.publishPlace = publishPlace
            self.publishYear = publishYear
            self.publisher = publisher
            self.publisherFacet = publisherFacet
            self.ratingsAverage = ratingsAverage
            self.ratingsCount = ratingsCount
            self.ratingsCount1 = ratingsCount1
            self.ratingsCount2 = ratingsCount2
            self.ratingsCount3 = ratingsCount3
            self.ratingsCount4 = ratingsCount4
            self.ratingsCount5 = ratingsCount5
            self.ratingsSortable = ratingsSortable
            self.readinglogCount = readinglogCount
            self.seed = seed
            self.subject = subject
            self.subjectFacet = subjectFacet
            self.subjectKey = subjectKey
            self.time = time
            self.timeFacet = timeFacet
            self.timeKey = timeKey
            self.title = title
            self.titleSort = titleSort
            self.titleSuggest = titleSuggest
            self.type = type
            self.wantToReadCount = wantToReadCount
        }
    }

}
