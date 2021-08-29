.class public final enum Lcom/sec/epdg/Constants/MapconConstants$IfomAppType;
.super Ljava/lang/Enum;
.source "MapconConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/Constants/MapconConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "IfomAppType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/epdg/Constants/MapconConstants$IfomAppType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/epdg/Constants/MapconConstants$IfomAppType;

.field public static final enum APP_TYPE_E911:Lcom/sec/epdg/Constants/MapconConstants$IfomAppType;

.field public static final enum APP_TYPE_VIDEO:Lcom/sec/epdg/Constants/MapconConstants$IfomAppType;

.field public static final enum APP_TYPE_VIDEO_VOICE:Lcom/sec/epdg/Constants/MapconConstants$IfomAppType;

.field public static final enum APP_TYPE_VOICE:Lcom/sec/epdg/Constants/MapconConstants$IfomAppType;

.field public static final enum BLOCK_HO:Lcom/sec/epdg/Constants/MapconConstants$IfomAppType;

.field public static final enum NO_APP_IDLE:Lcom/sec/epdg/Constants/MapconConstants$IfomAppType;


# instance fields
.field private final mText:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 449
    new-instance v0, Lcom/sec/epdg/Constants/MapconConstants$IfomAppType;

    const-string v1, "APP_TYPE_VOICE"

    const/4 v2, 0x0

    const-string v3, "imsvoicecall"

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/epdg/Constants/MapconConstants$IfomAppType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sec/epdg/Constants/MapconConstants$IfomAppType;->APP_TYPE_VOICE:Lcom/sec/epdg/Constants/MapconConstants$IfomAppType;

    .line 450
    new-instance v0, Lcom/sec/epdg/Constants/MapconConstants$IfomAppType;

    const-string v1, "APP_TYPE_VIDEO"

    const/4 v3, 0x1

    const-string v4, "imsvideocall"

    invoke-direct {v0, v1, v3, v4}, Lcom/sec/epdg/Constants/MapconConstants$IfomAppType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sec/epdg/Constants/MapconConstants$IfomAppType;->APP_TYPE_VIDEO:Lcom/sec/epdg/Constants/MapconConstants$IfomAppType;

    .line 451
    new-instance v0, Lcom/sec/epdg/Constants/MapconConstants$IfomAppType;

    const-string v1, "APP_TYPE_E911"

    const/4 v4, 0x2

    const-string v5, "e911call"

    invoke-direct {v0, v1, v4, v5}, Lcom/sec/epdg/Constants/MapconConstants$IfomAppType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sec/epdg/Constants/MapconConstants$IfomAppType;->APP_TYPE_E911:Lcom/sec/epdg/Constants/MapconConstants$IfomAppType;

    .line 452
    new-instance v0, Lcom/sec/epdg/Constants/MapconConstants$IfomAppType;

    const-string v1, "NO_APP_IDLE"

    const/4 v5, 0x3

    const-string v6, "idle"

    invoke-direct {v0, v1, v5, v6}, Lcom/sec/epdg/Constants/MapconConstants$IfomAppType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sec/epdg/Constants/MapconConstants$IfomAppType;->NO_APP_IDLE:Lcom/sec/epdg/Constants/MapconConstants$IfomAppType;

    .line 453
    new-instance v0, Lcom/sec/epdg/Constants/MapconConstants$IfomAppType;

    const-string v1, "BLOCK_HO"

    const/4 v6, 0x4

    const-string v7, "blockhandoff"

    invoke-direct {v0, v1, v6, v7}, Lcom/sec/epdg/Constants/MapconConstants$IfomAppType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sec/epdg/Constants/MapconConstants$IfomAppType;->BLOCK_HO:Lcom/sec/epdg/Constants/MapconConstants$IfomAppType;

    .line 454
    new-instance v0, Lcom/sec/epdg/Constants/MapconConstants$IfomAppType;

    const-string v1, "APP_TYPE_VIDEO_VOICE"

    const/4 v7, 0x5

    const-string v8, "imsvideovoicecall"

    invoke-direct {v0, v1, v7, v8}, Lcom/sec/epdg/Constants/MapconConstants$IfomAppType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sec/epdg/Constants/MapconConstants$IfomAppType;->APP_TYPE_VIDEO_VOICE:Lcom/sec/epdg/Constants/MapconConstants$IfomAppType;

    .line 448
    const/4 v1, 0x6

    new-array v1, v1, [Lcom/sec/epdg/Constants/MapconConstants$IfomAppType;

    sget-object v8, Lcom/sec/epdg/Constants/MapconConstants$IfomAppType;->APP_TYPE_VOICE:Lcom/sec/epdg/Constants/MapconConstants$IfomAppType;

    aput-object v8, v1, v2

    sget-object v2, Lcom/sec/epdg/Constants/MapconConstants$IfomAppType;->APP_TYPE_VIDEO:Lcom/sec/epdg/Constants/MapconConstants$IfomAppType;

    aput-object v2, v1, v3

    sget-object v2, Lcom/sec/epdg/Constants/MapconConstants$IfomAppType;->APP_TYPE_E911:Lcom/sec/epdg/Constants/MapconConstants$IfomAppType;

    aput-object v2, v1, v4

    sget-object v2, Lcom/sec/epdg/Constants/MapconConstants$IfomAppType;->NO_APP_IDLE:Lcom/sec/epdg/Constants/MapconConstants$IfomAppType;

    aput-object v2, v1, v5

    sget-object v2, Lcom/sec/epdg/Constants/MapconConstants$IfomAppType;->BLOCK_HO:Lcom/sec/epdg/Constants/MapconConstants$IfomAppType;

    aput-object v2, v1, v6

    aput-object v0, v1, v7

    sput-object v1, Lcom/sec/epdg/Constants/MapconConstants$IfomAppType;->$VALUES:[Lcom/sec/epdg/Constants/MapconConstants$IfomAppType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 458
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 459
    iput-object p3, p0, Lcom/sec/epdg/Constants/MapconConstants$IfomAppType;->mText:Ljava/lang/String;

    .line 460
    return-void
.end method

.method public static getIfomAppType(Ljava/lang/String;)Lcom/sec/epdg/Constants/MapconConstants$IfomAppType;
    .locals 6
    .param p0, "value"    # Ljava/lang/String;

    .line 463
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 464
    return-object v0

    .line 466
    :cond_0
    invoke-static {}, Lcom/sec/epdg/Constants/MapconConstants$IfomAppType;->values()[Lcom/sec/epdg/Constants/MapconConstants$IfomAppType;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    .line 467
    .local v4, "appType":Lcom/sec/epdg/Constants/MapconConstants$IfomAppType;
    invoke-virtual {v4}, Lcom/sec/epdg/Constants/MapconConstants$IfomAppType;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 468
    return-object v4

    .line 466
    .end local v4    # "appType":Lcom/sec/epdg/Constants/MapconConstants$IfomAppType;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 471
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getIfomAppType Invalid key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "[MAPCON]"

    invoke-static {v2, v1}, Lcom/sec/epdg/Logger/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/epdg/Constants/MapconConstants$IfomAppType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 448
    const-class v0, Lcom/sec/epdg/Constants/MapconConstants$IfomAppType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/epdg/Constants/MapconConstants$IfomAppType;

    return-object v0
.end method

.method public static values()[Lcom/sec/epdg/Constants/MapconConstants$IfomAppType;
    .locals 1

    .line 448
    sget-object v0, Lcom/sec/epdg/Constants/MapconConstants$IfomAppType;->$VALUES:[Lcom/sec/epdg/Constants/MapconConstants$IfomAppType;

    invoke-virtual {v0}, [Lcom/sec/epdg/Constants/MapconConstants$IfomAppType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/epdg/Constants/MapconConstants$IfomAppType;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 477
    iget-object v0, p0, Lcom/sec/epdg/Constants/MapconConstants$IfomAppType;->mText:Ljava/lang/String;

    return-object v0
.end method
