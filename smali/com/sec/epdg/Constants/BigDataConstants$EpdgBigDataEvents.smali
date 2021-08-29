.class public Lcom/sec/epdg/Constants/BigDataConstants$EpdgBigDataEvents;
.super Ljava/lang/Object;
.source "BigDataConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/Constants/BigDataConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EpdgBigDataEvents"
.end annotation


# static fields
.field public static final SEND_DRPT:I = 0x2

.field public static final SEND_EPDI:I = 0x0

.field public static final SEND_VWCD:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 365
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static toString(I)Ljava/lang/String;
    .locals 1
    .param p0, "event"    # I

    .line 371
    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    .line 379
    const-string v0, "UNKNOWN"

    return-object v0

    .line 377
    :cond_0
    const-string v0, "SEND_DRPT"

    return-object v0

    .line 375
    :cond_1
    const-string v0, "SEND_VWCD"

    return-object v0

    .line 373
    :cond_2
    const-string v0, "SEND_EPDI"

    return-object v0
.end method
