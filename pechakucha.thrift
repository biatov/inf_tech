namespace py pechakucha

struct AboutPresenter {
    1: required string authorName;
    2: required string authorDescription;
}

struct Location {
    1: required double latitude;
    2: required double longitude;
}

struct SearchAttributes {
    1: required string categories;
    2: required string tags;
}

struct WatchPresentation {
    1: required i32 countWatches;
    1: optional i32 countApplause;
}

struct Presentation {
    1: required string presentationName;
    2: required list<AboutPresenter> Presenter;
    3: required TimeStamp dateTime;
    4: required Location loc;
    5: required list<SearchAttributes> Search;
    6: required string presentationDescription;
}

service Post {
    1: oneway publishPresentation(presentation: Presentation) : void
}
