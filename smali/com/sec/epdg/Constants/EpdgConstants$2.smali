.class Lcom/sec/epdg/Constants/EpdgConstants$2;
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

    .line 263
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 266
    const-string v0, "BAE0000000000000"

    const-string v1, "VZW"

    invoke-virtual {p0, v0, v1}, Lcom/sec/epdg/Constants/EpdgConstants$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    return-void
.end method
