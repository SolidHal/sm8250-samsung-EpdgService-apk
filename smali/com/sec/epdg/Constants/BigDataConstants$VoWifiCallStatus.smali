.class public final enum Lcom/sec/epdg/Constants/BigDataConstants$VoWifiCallStatus;
.super Ljava/lang/Enum;
.source "BigDataConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/Constants/BigDataConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VoWifiCallStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/epdg/Constants/BigDataConstants$VoWifiCallStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/epdg/Constants/BigDataConstants$VoWifiCallStatus;

.field public static final enum CONNECTED:Lcom/sec/epdg/Constants/BigDataConstants$VoWifiCallStatus;

.field public static final enum INCOMING:Lcom/sec/epdg/Constants/BigDataConstants$VoWifiCallStatus;

.field public static final enum NONE:Lcom/sec/epdg/Constants/BigDataConstants$VoWifiCallStatus;

.field public static final enum OUTGOING:Lcom/sec/epdg/Constants/BigDataConstants$VoWifiCallStatus;

.field public static final enum RELEASED:Lcom/sec/epdg/Constants/BigDataConstants$VoWifiCallStatus;


# instance fields
.field private mStatus:Ljava/lang/String;

.field private mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 67
    new-instance v0, Lcom/sec/epdg/Constants/BigDataConstants$VoWifiCallStatus;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2, v1}, Lcom/sec/epdg/Constants/BigDataConstants$VoWifiCallStatus;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/sec/epdg/Constants/BigDataConstants$VoWifiCallStatus;->NONE:Lcom/sec/epdg/Constants/BigDataConstants$VoWifiCallStatus;

    .line 68
    new-instance v0, Lcom/sec/epdg/Constants/BigDataConstants$VoWifiCallStatus;

    const-string v1, "OUTGOING"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3, v1}, Lcom/sec/epdg/Constants/BigDataConstants$VoWifiCallStatus;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/sec/epdg/Constants/BigDataConstants$VoWifiCallStatus;->OUTGOING:Lcom/sec/epdg/Constants/BigDataConstants$VoWifiCallStatus;

    .line 69
    new-instance v0, Lcom/sec/epdg/Constants/BigDataConstants$VoWifiCallStatus;

    const-string v1, "INCOMING"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4, v1}, Lcom/sec/epdg/Constants/BigDataConstants$VoWifiCallStatus;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/sec/epdg/Constants/BigDataConstants$VoWifiCallStatus;->INCOMING:Lcom/sec/epdg/Constants/BigDataConstants$VoWifiCallStatus;

    .line 70
    new-instance v0, Lcom/sec/epdg/Constants/BigDataConstants$VoWifiCallStatus;

    const-string v1, "CONNECTED"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5, v1}, Lcom/sec/epdg/Constants/BigDataConstants$VoWifiCallStatus;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/sec/epdg/Constants/BigDataConstants$VoWifiCallStatus;->CONNECTED:Lcom/sec/epdg/Constants/BigDataConstants$VoWifiCallStatus;

    .line 71
    new-instance v0, Lcom/sec/epdg/Constants/BigDataConstants$VoWifiCallStatus;

    const-string v1, "RELEASED"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6, v6, v1}, Lcom/sec/epdg/Constants/BigDataConstants$VoWifiCallStatus;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/sec/epdg/Constants/BigDataConstants$VoWifiCallStatus;->RELEASED:Lcom/sec/epdg/Constants/BigDataConstants$VoWifiCallStatus;

    .line 66
    const/4 v1, 0x5

    new-array v1, v1, [Lcom/sec/epdg/Constants/BigDataConstants$VoWifiCallStatus;

    sget-object v7, Lcom/sec/epdg/Constants/BigDataConstants$VoWifiCallStatus;->NONE:Lcom/sec/epdg/Constants/BigDataConstants$VoWifiCallStatus;

    aput-object v7, v1, v2

    sget-object v2, Lcom/sec/epdg/Constants/BigDataConstants$VoWifiCallStatus;->OUTGOING:Lcom/sec/epdg/Constants/BigDataConstants$VoWifiCallStatus;

    aput-object v2, v1, v3

    sget-object v2, Lcom/sec/epdg/Constants/BigDataConstants$VoWifiCallStatus;->INCOMING:Lcom/sec/epdg/Constants/BigDataConstants$VoWifiCallStatus;

    aput-object v2, v1, v4

    sget-object v2, Lcom/sec/epdg/Constants/BigDataConstants$VoWifiCallStatus;->CONNECTED:Lcom/sec/epdg/Constants/BigDataConstants$VoWifiCallStatus;

    aput-object v2, v1, v5

    aput-object v0, v1, v6

    sput-object v1, Lcom/sec/epdg/Constants/BigDataConstants$VoWifiCallStatus;->$VALUES:[Lcom/sec/epdg/Constants/BigDataConstants$VoWifiCallStatus;

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

    .line 76
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 77
    iput p3, p0, Lcom/sec/epdg/Constants/BigDataConstants$VoWifiCallStatus;->mValue:I

    .line 78
    iput-object p4, p0, Lcom/sec/epdg/Constants/BigDataConstants$VoWifiCallStatus;->mStatus:Ljava/lang/String;

    .line 79
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/epdg/Constants/BigDataConstants$VoWifiCallStatus;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 66
    const-class v0, Lcom/sec/epdg/Constants/BigDataConstants$VoWifiCallStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/epdg/Constants/BigDataConstants$VoWifiCallStatus;

    return-object v0
.end method

.method public static values()[Lcom/sec/epdg/Constants/BigDataConstants$VoWifiCallStatus;
    .locals 1

    .line 66
    sget-object v0, Lcom/sec/epdg/Constants/BigDataConstants$VoWifiCallStatus;->$VALUES:[Lcom/sec/epdg/Constants/BigDataConstants$VoWifiCallStatus;

    invoke-virtual {v0}, [Lcom/sec/epdg/Constants/BigDataConstants$VoWifiCallStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/epdg/Constants/BigDataConstants$VoWifiCallStatus;

    return-object v0
.end method


# virtual methods
.method public getStatus()Ljava/lang/String;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/sec/epdg/Constants/BigDataConstants$VoWifiCallStatus;->mStatus:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()I
    .locals 1

    .line 86
    iget v0, p0, Lcom/sec/epdg/Constants/BigDataConstants$VoWifiCallStatus;->mValue:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[VWCD / VWCS] mStatus : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/epdg/Constants/BigDataConstants$VoWifiCallStatus;->mStatus:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mValue : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/epdg/Constants/BigDataConstants$VoWifiCallStatus;->mValue:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
