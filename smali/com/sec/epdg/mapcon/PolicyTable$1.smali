.class Lcom/sec/epdg/mapcon/PolicyTable$1;
.super Ljava/util/HashMap;
.source "PolicyTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/mapcon/PolicyTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .line 27
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 29
    const-string v0, "VZW"

    const-string v1, "[{\'mode\':\'wifipref\',\'apntype\':\'ims\',\'volteOn\':\'IWLAN:LTE:EHRPD\',\'volteOff\':\'IWLAN:LTE:EHRPD\'},{\'mode\':\'wifipref\',\'apntype\':\'emergency\',\'volteOn\':\'IWLAN\',\'volteOff\':\'IWLAN\'},{\'mode\':\'cspref\',\'apntype\':\'ims\',\'volteOn\':\'LTE:IWLAN:EHRPD\',\'volteOff\':\'LTE:IWLAN:EHRPD\'},{\'mode\':\'cspref\',\'apntype\':\'emergency\',\'volteOn\':\'IWLAN\',\'volteOff\':\'IWLAN\'},{\'mode\':\'csonly\',\'apntype\':\'ims\',\'volteOn\':\'LTE:IWLAN:EHRPD\',\'volteOff\':\'LTE:IWLAN:EHRPD\'},{\'mode\':\'csonly\',\'apntype\':\'emergency\',\'volteOn\':\'LTE\',\'volteOff\':\'LTE\'}]"

    invoke-virtual {p0, v0, v1}, Lcom/sec/epdg/mapcon/PolicyTable$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    const-string v0, "ATT"

    const-string v1, "[{\'mode\':\'wifipref,cspref,csonly\',\'apntype\':\'ims\',\'volteOn\':\'LTE:IWLAN\',\'volteOff\':\'LTE:IWLAN\'}]"

    invoke-virtual {p0, v0, v1}, Lcom/sec/epdg/mapcon/PolicyTable$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    const-string v0, "TMB"

    const-string v1, "[{\'mode\':\'wifipref\',\'apntype\':\'ims\',\'volteOn\':\'IWLAN:LTE\',\'volteOff\':\'IWLAN:LTE\'},{\'mode\':\'wifipref\',\'apntype\':\'cbs\',\'volteOn\':\'IWLAN:LTE\',\'volteOff\':\'IWLAN:LTE\'},{\'mode\':\'wifipref\',\'apntype\':\'mms\',\'volteOn\':\'IWLAN:LTE\',\'volteOff\':\'IWLAN:LTE\'},{\'mode\':\'cspref\',\'apntype\':\'ims\',\'volteOn\':\'LTE:IWLAN\',\'volteOff\':\'LTE:IWLAN\'},{\'mode\':\'cspref\',\'apntype\':\'cbs\',\'volteOn\':\'LTE:IWLAN\',\'volteOff\':\'LTE:IWLAN\'},{\'mode\':\'cspref\',\'apntype\':\'mms\',\'volteOn\':\'LTE:IWLAN\',\'volteOff\':\'LTE:IWLAN\'},{\'mode\':\'wifionly\',\'apntype\':\'ims\',\'volteOn\':\'IWLAN\',\'volteOff\':\'IWLAN\'},{\'mode\':\'wifionly\',\'apntype\':\'cbs\',\'volteOn\':\'IWLAN\',\'volteOff\':\'IWLAN\'},{\'mode\':\'wifionly\',\'apntype\':\'mms\',\'volteOn\':\'IWLAN\',\'volteOff\':\'IWLAN\'},{\'mode\':\'csonly\',\'apntype\':\'ims\',\'volteOn\':\'LTE:IWLAN\',\'volteOff\':\'LTE:IWLAN\'},{\'mode\':\'csonly\',\'apntype\':\'cbs\',\'volteOn\':\'LTE:IWLAN\',\'volteOff\':\'LTE:IWLAN\'},{\'mode\':\'csonly\',\'apntype\':\'mms\',\'volteOn\':\'LTE:IWLAN\',\'volteOff\':\'LTE:IWLAN\'}]"

    invoke-virtual {p0, v0, v1}, Lcom/sec/epdg/mapcon/PolicyTable$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    const-string v0, "ORO"

    const-string v1, "[{\'mode\':\'wifipref\',\'apntype\':\'ims\',\'volteOn\':\'IWLAN:LTE\',\'volteOff\':\'IWLAN:LTE\'},{\'mode\':\'cspref\',\'apntype\':\'ims\',\'volteOn\':\'LTE:IWLAN\',\'volteOff\':\'LTE:IWLAN\'},{\'mode\':\'wifionly\',\'apntype\':\'ims\',\'volteOn\':\'IWLAN\',\'volteOff\':\'IWLAN\'},{\'mode\':\'csonly\',\'apntype\':\'ims\',\'volteOn\':\'LTE:IWLAN\',\'volteOff\':\'LTE:IWLAN\'}]"

    invoke-virtual {p0, v0, v1}, Lcom/sec/epdg/mapcon/PolicyTable$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    const-string v0, "SPR"

    const-string v1, "[{\'mode\':\'wifipref\',\'apntype\':\'ims\',\'volteOn\':\'IWLAN:LTE\',\'volteOff\':\'IWLAN:LTE\'},{\'mode\':\'cspref,csonly\',\'apntype\':\'ims\',\'volteOn\':\'LTE:IWLAN\',\'volteOff\':\'LTE:IWLAN\'}]"

    invoke-virtual {p0, v0, v1}, Lcom/sec/epdg/mapcon/PolicyTable$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    const-string v0, "TEL"

    const-string v1, "[{\'mode\':\'cspref\',\'apntype\':\'ims\',\'volteOn\':\'LTE:IWLAN\',\'volteOff\':\'LTE:IWLAN\'},{\'mode\':\'cspref\',\'apntype\':\'xcap\',\'volteOn\':\'LTE:IWLAN\',\'volteOff\':\'LTE:IWLAN\'}]"

    invoke-virtual {p0, v0, v1}, Lcom/sec/epdg/mapcon/PolicyTable$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    return-void
.end method
