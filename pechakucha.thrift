namespace java thrift.example

enum WatchType {
    WATCH,
    AUTHENTIFICATE = False,
    APPLOUD = False
}

struct Pechakucha {
    1: optional WatchType watchType = WatchType.WATCH;
    2: optional WatchType authentificateType = WatchType.AUTHENTIFICATE;
    4: optional WatchType ApploudType = WatchType.APPLOUD;
    3: optional string language = "english";
}


namespace py pechakucha

enum Action {
    AUTHORISATION = 1,
    APPLOUD = 2
}

struct Watch {
    1:
}

service CalcService{
    CalcResult addition(1: i32 first, 2: i32 second)
}