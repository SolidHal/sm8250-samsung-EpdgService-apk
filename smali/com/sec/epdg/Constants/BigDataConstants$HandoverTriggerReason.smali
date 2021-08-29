.class public final enum Lcom/sec/epdg/Constants/BigDataConstants$HandoverTriggerReason;
.super Ljava/lang/Enum;
.source "BigDataConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/Constants/BigDataConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "HandoverTriggerReason"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/epdg/Constants/BigDataConstants$HandoverTriggerReason;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/epdg/Constants/BigDataConstants$HandoverTriggerReason;

.field public static final enum CHANGE_PREFMODE_SETTING:Lcom/sec/epdg/Constants/BigDataConstants$HandoverTriggerReason;

.field public static final enum CHANGE_WIFICALLING_SETTING:Lcom/sec/epdg/Constants/BigDataConstants$HandoverTriggerReason;

.field public static final enum CHANGE_WIFI_SETTING:Lcom/sec/epdg/Constants/BigDataConstants$HandoverTriggerReason;

.field public static final enum HIGH_RTP_LOSS_RATE:Lcom/sec/epdg/Constants/BigDataConstants$HandoverTriggerReason;

.field public static final enum NONE:Lcom/sec/epdg/Constants/BigDataConstants$HandoverTriggerReason;

.field public static final enum NORMAL_REQUEST:Lcom/sec/epdg/Constants/BigDataConstants$HandoverTriggerReason;

.field public static final enum STRONG_LTE_SIGNAL:Lcom/sec/epdg/Constants/BigDataConstants$HandoverTriggerReason;

.field public static final enum STRONG_WIFI_SIGNAL:Lcom/sec/epdg/Constants/BigDataConstants$HandoverTriggerReason;

.field public static final enum WEAK_LTE_SIGNAL:Lcom/sec/epdg/Constants/BigDataConstants$HandoverTriggerReason;

.field public static final enum WEAK_WIFI_SIGNAL:Lcom/sec/epdg/Constants/BigDataConstants$HandoverTriggerReason;


# instance fields
.field private mStatus:Ljava/lang/String;

.field private mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 212
    new-instance v0, Lcom/sec/epdg/Constants/BigDataConstants$HandoverTriggerReason;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2, v1}, Lcom/sec/epdg/Constants/BigDataConstants$HandoverTriggerReason;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/sec/epdg/Constants/BigDataConstants$HandoverTriggerReason;->NONE:Lcom/sec/epdg/Constants/BigDataConstants$HandoverTriggerReason;

    .line 213
    new-instance v0, Lcom/sec/epdg/Constants/BigDataConstants$HandoverTriggerReason;

    const-string v1, "NORMAL_REQUEST"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3, v1}, Lcom/sec/epdg/Constants/BigDataConstants$HandoverTriggerReason;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/sec/epdg/Constants/BigDataConstants$HandoverTriggerReason;->NORMAL_REQUEST:Lcom/sec/epdg/Constants/BigDataConstants$HandoverTriggerReason;

    .line 214
    new-instance v0, Lcom/sec/epdg/Constants/BigDataConstants$HandoverTriggerReason;

    const-string v1, "WEAK_WIFI_SIGNAL"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4, v1}, Lcom/sec/epdg/Constants/BigDataConstants$HandoverTriggerReason;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/sec/epdg/Constants/BigDataConstants$HandoverTriggerReason;->WEAK_WIFI_SIGNAL:Lcom/sec/epdg/Constants/BigDataConstants$HandoverTriggerReason;

    .line 215
    new-instance v0, Lcom/sec/epdg/Constants/BigDataConstants$HandoverTriggerReason;

    const-string v1, "STRONG_WIFI_SIGNAL"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5, v1}, Lcom/sec/epdg/Constants/BigDataConstants$HandoverTriggerReason;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/sec/epdg/Constants/BigDataConstants$HandoverTriggerReason;->STRONG_WIFI_SIGNAL:Lcom/sec/epdg/Constants/BigDataConstants$HandoverTriggerReason;

    .line 216
    new-instance v0, Lcom/sec/epdg/Constants/BigDataConstants$HandoverTriggerReason;

    const-string v1, "WEAK_LTE_SIGNAL"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6, v6, v1}, Lcom/sec/epdg/Constants/BigDataConstants$HandoverTriggerReason;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/sec/epdg/Constants/BigDataConstants$HandoverTriggerReason;->WEAK_LTE_SIGNAL:Lcom/sec/epdg/Constants/BigDataConstants$HandoverTriggerReason;

    .line 217
    new-instance v0, Lcom/sec/epdg/Constants/BigDataConstants$HandoverTriggerReason;

    const-string v1, "STRONG_LTE_SIGNAL"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7, v7, v1}, Lcom/sec/epdg/Constants/BigDataConstants$HandoverTriggerReason;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/sec/epdg/Constants/BigDataConstants$HandoverTriggerReason;->STRONG_LTE_SIGNAL:Lcom/sec/epdg/Constants/BigDataConstants$HandoverTriggerReason;

    .line 218
    new-instance v0, Lcom/sec/epdg/Constants/BigDataConstants$HandoverTriggerReason;

    const-string v1, "HIGH_RTP_LOSS_RATE"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8, v8, v1}, Lcom/sec/epdg/Constants/BigDataConstants$HandoverTriggerReason;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/sec/epdg/Constants/BigDataConstants$HandoverTriggerReason;->HIGH_RTP_LOSS_RATE:Lcom/sec/epdg/Constants/BigDataConstants$HandoverTriggerReason;

    .line 219
    new-instance v0, Lcom/sec/epdg/Constants/BigDataConstants$HandoverTriggerReason;

    const-string v1, "CHANGE_WIFI_SETTING"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9, v9, v1}, Lcom/sec/epdg/Constants/BigDataConstants$HandoverTriggerReason;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/sec/epdg/Constants/BigDataConstants$HandoverTriggerReason;->CHANGE_WIFI_SETTING:Lcom/sec/epdg/Constants/BigDataConstants$HandoverTriggerReason;

    .line 220
    new-instance v0, Lcom/sec/epdg/Constants/BigDataConstants$HandoverTriggerReason;

    const-string v1, "CHANGE_WIFICALLING_SETTING"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10, v10, v1}, Lcom/sec/epdg/Constants/BigDataConstants$HandoverTriggerReason;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/sec/epdg/Constants/BigDataConstants$HandoverTriggerReason;->CHANGE_WIFICALLING_SETTING:Lcom/sec/epdg/Constants/BigDataConstants$HandoverTriggerReason;

    .line 221
    new-instance v0, Lcom/sec/epdg/Constants/BigDataConstants$HandoverTriggerReason;

    const-string v1, "CHANGE_PREFMODE_SETTING"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v11, v11, v1}, Lcom/sec/epdg/Constants/BigDataConstants$HandoverTriggerReason;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/sec/epdg/Constants/BigDataConstants$HandoverTriggerReason;->CHANGE_PREFMODE_SETTING:Lcom/sec/epdg/Constants/BigDataConstants$HandoverTriggerReason;

    .line 211
    const/16 v1, 0xa

    new-array v1, v1, [Lcom/sec/epdg/Constants/BigDataConstants$HandoverTriggerReason;

    sget-object v12, Lcom/sec/epdg/Constants/BigDataConstants$HandoverTriggerReason;->NONE:Lcom/sec/epdg/Constants/BigDataConstants$HandoverTriggerReason;

    aput-object v12, v1, v2

    sget-object v2, Lcom/sec/epdg/Constants/BigDataConstants$HandoverTriggerReason;->NORMAL_REQUEST:Lcom/sec/epdg/Constants/BigDataConstants$HandoverTriggerReason;

    aput-object v2, v1, v3

    sget-object v2, Lcom/sec/epdg/Constants/BigDataConstants$HandoverTriggerReason;->WEAK_WIFI_SIGNAL:Lcom/sec/epdg/Constants/BigDataConstants$HandoverTriggerReason;

    aput-object v2, v1, v4

    sget-object v2, Lcom/sec/epdg/Constants/BigDataConstants$HandoverTriggerReason;->STRONG_WIFI_SIGNAL:Lcom/sec/epdg/Constants/BigDataConstants$HandoverTriggerReason;

    aput-object v2, v1, v5

    sget-object v2, Lcom/sec/epdg/Constants/BigDataConstants$HandoverTriggerReason;->WEAK_LTE_SIGNAL:Lcom/sec/epdg/Constants/BigDataConstants$HandoverTriggerReason;

    aput-object v2, v1, v6

    sget-object v2, Lcom/sec/epdg/Constants/BigDataConstants$HandoverTriggerReason;->STRONG_LTE_SIGNAL:Lcom/sec/epdg/Constants/BigDataConstants$HandoverTriggerReason;

    aput-object v2, v1, v7

    sget-object v2, Lcom/sec/epdg/Constants/BigDataConstants$HandoverTriggerReason;->HIGH_RTP_LOSS_RATE:Lcom/sec/epdg/Constants/BigDataConstants$HandoverTriggerReason;

    aput-object v2, v1, v8

    sget-object v2, Lcom/sec/epdg/Constants/BigDataConstants$HandoverTriggerReason;->CHANGE_WIFI_SETTING:Lcom/sec/epdg/Constants/BigDataConstants$HandoverTriggerReason;

    aput-object v2, v1, v9

    sget-object v2, Lcom/sec/epdg/Constants/BigDataConstants$HandoverTriggerReason;->CHANGE_WIFICALLING_SETTING:Lcom/sec/epdg/Constants/BigDataConstants$HandoverTriggerReason;

    aput-object v2, v1, v10

    aput-object v0, v1, v11

    sput-object v1, Lcom/sec/epdg/Constants/BigDataConstants$HandoverTriggerReason;->$VALUES:[Lcom/sec/epdg/Constants/BigDataConstants$HandoverTriggerReason;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .param p3, "value"    # I
    .param p4, "status"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 226
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 227
    iput p3, p0, Lcom/sec/epdg/Constants/BigDataConstants$HandoverTriggerReason;->mValue:I

    .line 228
    iput-object p4, p0, Lcom/sec/epdg/Constants/BigDataConstants$HandoverTriggerReason;->mStatus:Ljava/lang/String;

    .line 229
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/epdg/Constants/BigDataConstants$HandoverTriggerReason;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 211
    const-class v0, Lcom/sec/epdg/Constants/BigDataConstants$HandoverTriggerReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/epdg/Constants/BigDataConstants$HandoverTriggerReason;

    return-object v0
.end method

.method public static values()[Lcom/sec/epdg/Constants/BigDataConstants$HandoverTriggerReason;
    .locals 1

    .line 211
    sget-object v0, Lcom/sec/epdg/Constants/BigDataConstants$HandoverTriggerReason;->$VALUES:[Lcom/sec/epdg/Constants/BigDataConstants$HandoverTriggerReason;

    invoke-virtual {v0}, [Lcom/sec/epdg/Constants/BigDataConstants$HandoverTriggerReason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/epdg/Constants/BigDataConstants$HandoverTriggerReason;

    return-object v0
.end method


# virtual methods
.method public getStatus()Ljava/lang/String;
    .locals 1

    .line 232
    iget-object v0, p0, Lcom/sec/epdg/Constants/BigDataConstants$HandoverTriggerReason;->mStatus:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()I
    .locals 1

    .line 236
    iget v0, p0, Lcom/sec/epdg/Constants/BigDataConstants$HandoverTriggerReason;->mValue:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 241
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[EPDI / HOTR] mStatus : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/epdg/Constants/BigDataConstants$HandoverTriggerReason;->mStatus:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mValue : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/epdg/Constants/BigDataConstants$HandoverTriggerReason;->mValue:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
