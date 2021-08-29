.class Lcom/sec/epdg/mapcon/PolicyTable$2;
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

    .line 159
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 161
    const-string v0, "VZW"

    const-string v1, "[{\'mode\':\'wifipref\',\'apptype\':\'imsvoicecall\',\'volteOn\':\'IWLAN:LTE:CS\',\'volteOff\':\'IWLAN:CS\'},{\'mode\':\'wifipref\',\'apptype\':\'idle\',\'volteOn\':\'IWLAN:LTE:CS\',\'volteOff\':\'IWLAN:LTE:CS\'},{\'mode\':\'wifipref\',\'apptype\':\'imsvideovoicecall\',\'volteOn\':\'IWLAN:LTE\',\'volteOff\':\'IWLAN:CS\'},{\'mode\':\'cspref\',\'apptype\':\'imsvoicecall\',\'volteOn\':\'LTE:IWLAN:CS\',\'volteOff\':\'CS:IWLAN\'},{\'mode\':\'cspref\',\'apptype\':\'idle\',\'volteOn\':\'LTE:IWLAN:CS\',\'volteOff\':\'LTE:IWLAN:CS\'},{\'mode\':\'cspref\',\'apptype\':\'imsvideovoicecall\',\'volteOn\':\'IWLAN:LTE \',\'volteOff\':\'IWLAN:CS\'},{\'mode\':\'csonly\',\'apptype\':\'imsvoicecall\',\'volteOn\':\'LTE:CS\',\'volteOff\':\'CS\'},{\'mode\':\'csonly\',\'apptype\':\'idle\',\'volteOn\':\'LTE:IWLAN:CS\',\'volteOff\':\'LTE:IWLAN:CS\'},{\'mode\':\'csonly\',\'apptype\':\'imsvideovoicecall\',\'volteOn\':\'LTE:CS\',\'volteOff\':\'CS\'}]"

    invoke-virtual {p0, v0, v1}, Lcom/sec/epdg/mapcon/PolicyTable$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    const-string v0, "ATT"

    const-string v1, "[{\'mode\':\'wifipref\',\'apptype\':\'imsvoicecall\',\'volteOn\':\'IWLAN:LTE\',\'volteOff\':\'IWLAN:LTE\'},{\'mode\':\'wifipref\',\'apptype\':\'idle\',\'volteOn\':\'IWLAN:LTE:CS\',\'volteOff\':\'IWLAN:LTE:CS\'},{\'mode\':\'wifipref\',\'apptype\':\'imsvideovoicecall\',\'volteOn\':\'IWLAN:LTE\',\'volteOff\':\'IWLAN:LTE\'},{\'mode\':\'cspref\',\'apptype\':\'imsvoicecall\',\'volteOn\':\'LTE:IWLAN\',\'volteOff\':\'LTE:IWLAN\'},{\'mode\':\'cspref\',\'apptype\':\'idle\',\'volteOn\':\'LTE:CS:IWLAN\',\'volteOff\':\'LTE:CS:IWLAN\'},{\'mode\':\'cspref\',\'apptype\':\'imsvideovoicecall\',\'volteOn\':\'IWLAN:LTE\',\'volteOff\':\'IWLAN:LTE\'},{\'mode\':\'csonly\',\'apptype\':\'imsvoicecall\',\'volteOn\':\'LTE\',\'volteOff\':\'LTE\'},{\'mode\':\'csonly\',\'apptype\':\'idle\',\'volteOn\':\'LTE\',\'volteOff\':\'LTE\'},{\'mode\':\'csonly\',\'apptype\':\'imsvideovoicecall\',\'volteOn\':\'IWLAN:LTE\',\'volteOff\':\'IWLAN:LTE\'}]"

    invoke-virtual {p0, v0, v1}, Lcom/sec/epdg/mapcon/PolicyTable$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    return-void
.end method
