.class public final enum Lcom/sec/epdg/Constants/BigDataConstants$VoWifiRoamingStatus;
.super Ljava/lang/Enum;
.source "BigDataConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/Constants/BigDataConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VoWifiRoamingStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/epdg/Constants/BigDataConstants$VoWifiRoamingStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/epdg/Constants/BigDataConstants$VoWifiRoamingStatus;

.field public static final enum DOMESTIC:Lcom/sec/epdg/Constants/BigDataConstants$VoWifiRoamingStatus;

.field public static final enum ROAMING:Lcom/sec/epdg/Constants/BigDataConstants$VoWifiRoamingStatus;


# instance fields
.field private mStatus:Ljava/lang/String;

.field private mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 97
    new-instance v0, Lcom/sec/epdg/Constants/BigDataConstants$VoWifiRoamingStatus;

    const-string v1, "DOMESTIC"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2, v1}, Lcom/sec/epdg/Constants/BigDataConstants$VoWifiRoamingStatus;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/sec/epdg/Constants/BigDataConstants$VoWifiRoamingStatus;->DOMESTIC:Lcom/sec/epdg/Constants/BigDataConstants$VoWifiRoamingStatus;

    .line 98
    new-instance v0, Lcom/sec/epdg/Constants/BigDataConstants$VoWifiRoamingStatus;

    const-string v1, "ROAMING"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3, v1}, Lcom/sec/epdg/Constants/BigDataConstants$VoWifiRoamingStatus;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/sec/epdg/Constants/BigDataConstants$VoWifiRoamingStatus;->ROAMING:Lcom/sec/epdg/Constants/BigDataConstants$VoWifiRoamingStatus;

    .line 96
    const/4 v1, 0x2

    new-array v1, v1, [Lcom/sec/epdg/Constants/BigDataConstants$VoWifiRoamingStatus;

    sget-object v4, Lcom/sec/epdg/Constants/BigDataConstants$VoWifiRoamingStatus;->DOMESTIC:Lcom/sec/epdg/Constants/BigDataConstants$VoWifiRoamingStatus;

    aput-object v4, v1, v2

    aput-object v0, v1, v3

    sput-object v1, Lcom/sec/epdg/Constants/BigDataConstants$VoWifiRoamingStatus;->$VALUES:[Lcom/sec/epdg/Constants/BigDataConstants$VoWifiRoamingStatus;

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

    .line 103
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 104
    iput p3, p0, Lcom/sec/epdg/Constants/BigDataConstants$VoWifiRoamingStatus;->mValue:I

    .line 105
    iput-object p4, p0, Lcom/sec/epdg/Constants/BigDataConstants$VoWifiRoamingStatus;->mStatus:Ljava/lang/String;

    .line 106
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/epdg/Constants/BigDataConstants$VoWifiRoamingStatus;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 96
    const-class v0, Lcom/sec/epdg/Constants/BigDataConstants$VoWifiRoamingStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/epdg/Constants/BigDataConstants$VoWifiRoamingStatus;

    return-object v0
.end method

.method public static values()[Lcom/sec/epdg/Constants/BigDataConstants$VoWifiRoamingStatus;
    .locals 1

    .line 96
    sget-object v0, Lcom/sec/epdg/Constants/BigDataConstants$VoWifiRoamingStatus;->$VALUES:[Lcom/sec/epdg/Constants/BigDataConstants$VoWifiRoamingStatus;

    invoke-virtual {v0}, [Lcom/sec/epdg/Constants/BigDataConstants$VoWifiRoamingStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/epdg/Constants/BigDataConstants$VoWifiRoamingStatus;

    return-object v0
.end method


# virtual methods
.method public getStatus()Ljava/lang/String;
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/sec/epdg/Constants/BigDataConstants$VoWifiRoamingStatus;->mStatus:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()I
    .locals 1

    .line 113
    iget v0, p0, Lcom/sec/epdg/Constants/BigDataConstants$VoWifiRoamingStatus;->mValue:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[VWCD / ROAM] mStatus : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/epdg/Constants/BigDataConstants$VoWifiRoamingStatus;->mStatus:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mValue : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/epdg/Constants/BigDataConstants$VoWifiRoamingStatus;->mValue:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
