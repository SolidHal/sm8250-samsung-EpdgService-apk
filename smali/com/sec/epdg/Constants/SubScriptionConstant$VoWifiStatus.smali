.class public final enum Lcom/sec/epdg/Constants/SubScriptionConstant$VoWifiStatus;
.super Ljava/lang/Enum;
.source "SubScriptionConstant.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/Constants/SubScriptionConstant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VoWifiStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/epdg/Constants/SubScriptionConstant$VoWifiStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/epdg/Constants/SubScriptionConstant$VoWifiStatus;

.field public static final enum UNKNOWN:Lcom/sec/epdg/Constants/SubScriptionConstant$VoWifiStatus;

.field public static final enum VOWIFI_DISABLE:Lcom/sec/epdg/Constants/SubScriptionConstant$VoWifiStatus;

.field public static final enum VOWIFI_ENABLE:Lcom/sec/epdg/Constants/SubScriptionConstant$VoWifiStatus;

.field public static final enum VOWIFI_VIDEO_ONLY:Lcom/sec/epdg/Constants/SubScriptionConstant$VoWifiStatus;


# instance fields
.field private final mStatus:I

.field private final mText:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 135
    new-instance v0, Lcom/sec/epdg/Constants/SubScriptionConstant$VoWifiStatus;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2, v1}, Lcom/sec/epdg/Constants/SubScriptionConstant$VoWifiStatus;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/sec/epdg/Constants/SubScriptionConstant$VoWifiStatus;->UNKNOWN:Lcom/sec/epdg/Constants/SubScriptionConstant$VoWifiStatus;

    .line 136
    new-instance v0, Lcom/sec/epdg/Constants/SubScriptionConstant$VoWifiStatus;

    const-string v1, "VOWIFI_ENABLE"

    const/4 v3, 0x1

    const-string v4, "ENABLE"

    invoke-direct {v0, v1, v3, v3, v4}, Lcom/sec/epdg/Constants/SubScriptionConstant$VoWifiStatus;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/sec/epdg/Constants/SubScriptionConstant$VoWifiStatus;->VOWIFI_ENABLE:Lcom/sec/epdg/Constants/SubScriptionConstant$VoWifiStatus;

    .line 137
    new-instance v0, Lcom/sec/epdg/Constants/SubScriptionConstant$VoWifiStatus;

    const-string v1, "VOWIFI_VIDEO_ONLY"

    const/4 v4, 0x2

    const-string v5, "VIDEO only"

    invoke-direct {v0, v1, v4, v4, v5}, Lcom/sec/epdg/Constants/SubScriptionConstant$VoWifiStatus;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/sec/epdg/Constants/SubScriptionConstant$VoWifiStatus;->VOWIFI_VIDEO_ONLY:Lcom/sec/epdg/Constants/SubScriptionConstant$VoWifiStatus;

    .line 138
    new-instance v0, Lcom/sec/epdg/Constants/SubScriptionConstant$VoWifiStatus;

    const-string v1, "VOWIFI_DISABLE"

    const/4 v5, 0x3

    const-string v6, "DISABLE"

    invoke-direct {v0, v1, v5, v5, v6}, Lcom/sec/epdg/Constants/SubScriptionConstant$VoWifiStatus;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/sec/epdg/Constants/SubScriptionConstant$VoWifiStatus;->VOWIFI_DISABLE:Lcom/sec/epdg/Constants/SubScriptionConstant$VoWifiStatus;

    .line 134
    const/4 v1, 0x4

    new-array v1, v1, [Lcom/sec/epdg/Constants/SubScriptionConstant$VoWifiStatus;

    sget-object v6, Lcom/sec/epdg/Constants/SubScriptionConstant$VoWifiStatus;->UNKNOWN:Lcom/sec/epdg/Constants/SubScriptionConstant$VoWifiStatus;

    aput-object v6, v1, v2

    sget-object v2, Lcom/sec/epdg/Constants/SubScriptionConstant$VoWifiStatus;->VOWIFI_ENABLE:Lcom/sec/epdg/Constants/SubScriptionConstant$VoWifiStatus;

    aput-object v2, v1, v3

    sget-object v2, Lcom/sec/epdg/Constants/SubScriptionConstant$VoWifiStatus;->VOWIFI_VIDEO_ONLY:Lcom/sec/epdg/Constants/SubScriptionConstant$VoWifiStatus;

    aput-object v2, v1, v4

    aput-object v0, v1, v5

    sput-object v1, Lcom/sec/epdg/Constants/SubScriptionConstant$VoWifiStatus;->$VALUES:[Lcom/sec/epdg/Constants/SubScriptionConstant$VoWifiStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .param p3, "status"    # I
    .param p4, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 143
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 144
    iput p3, p0, Lcom/sec/epdg/Constants/SubScriptionConstant$VoWifiStatus;->mStatus:I

    .line 145
    iput-object p4, p0, Lcom/sec/epdg/Constants/SubScriptionConstant$VoWifiStatus;->mText:Ljava/lang/String;

    .line 146
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/epdg/Constants/SubScriptionConstant$VoWifiStatus;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 134
    const-class v0, Lcom/sec/epdg/Constants/SubScriptionConstant$VoWifiStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/epdg/Constants/SubScriptionConstant$VoWifiStatus;

    return-object v0
.end method

.method public static values()[Lcom/sec/epdg/Constants/SubScriptionConstant$VoWifiStatus;
    .locals 1

    .line 134
    sget-object v0, Lcom/sec/epdg/Constants/SubScriptionConstant$VoWifiStatus;->$VALUES:[Lcom/sec/epdg/Constants/SubScriptionConstant$VoWifiStatus;

    invoke-virtual {v0}, [Lcom/sec/epdg/Constants/SubScriptionConstant$VoWifiStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/epdg/Constants/SubScriptionConstant$VoWifiStatus;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/sec/epdg/Constants/SubScriptionConstant$VoWifiStatus;->mText:Ljava/lang/String;

    return-object v0
.end method
