.class Lcom/sec/epdg/Constants/EpdgConstants$3;
.super Ljava/util/HashMap;
.source "EpdgConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/Constants/EpdgConstants;
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

    .line 270
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 272
    const-string v0, "00101"

    const-string v1, "TEST"

    invoke-virtual {p0, v0, v1}, Lcom/sec/epdg/Constants/EpdgConstants$3;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    const-string v0, "45001"

    invoke-virtual {p0, v0, v1}, Lcom/sec/epdg/Constants/EpdgConstants$3;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    const-string v0, "99999"

    invoke-virtual {p0, v0, v1}, Lcom/sec/epdg/Constants/EpdgConstants$3;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    const-string v0, "310028"

    invoke-virtual {p0, v0, v1}, Lcom/sec/epdg/Constants/EpdgConstants$3;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    const-string v0, "311390"

    invoke-virtual {p0, v0, v1}, Lcom/sec/epdg/Constants/EpdgConstants$3;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    return-void
.end method
