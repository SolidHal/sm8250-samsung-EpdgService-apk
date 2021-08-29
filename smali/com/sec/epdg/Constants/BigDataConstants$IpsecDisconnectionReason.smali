.class public final enum Lcom/sec/epdg/Constants/BigDataConstants$IpsecDisconnectionReason;
.super Ljava/lang/Enum;
.source "BigDataConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/Constants/BigDataConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "IpsecDisconnectionReason"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/epdg/Constants/BigDataConstants$IpsecDisconnectionReason;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/epdg/Constants/BigDataConstants$IpsecDisconnectionReason;

.field public static final enum NONE:Lcom/sec/epdg/Constants/BigDataConstants$IpsecDisconnectionReason;

.field public static final enum NO_DPD_RESPONSE:Lcom/sec/epdg/Constants/BigDataConstants$IpsecDisconnectionReason;

.field public static final enum PEER_DISCONNECT:Lcom/sec/epdg/Constants/BigDataConstants$IpsecDisconnectionReason;


# instance fields
.field private mStatus:Ljava/lang/String;

.field private mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 280
    new-instance v0, Lcom/sec/epdg/Constants/BigDataConstants$IpsecDisconnectionReason;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2, v1}, Lcom/sec/epdg/Constants/BigDataConstants$IpsecDisconnectionReason;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/sec/epdg/Constants/BigDataConstants$IpsecDisconnectionReason;->NONE:Lcom/sec/epdg/Constants/BigDataConstants$IpsecDisconnectionReason;

    .line 281
    new-instance v0, Lcom/sec/epdg/Constants/BigDataConstants$IpsecDisconnectionReason;

    const-string v1, "PEER_DISCONNECT"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3, v1}, Lcom/sec/epdg/Constants/BigDataConstants$IpsecDisconnectionReason;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/sec/epdg/Constants/BigDataConstants$IpsecDisconnectionReason;->PEER_DISCONNECT:Lcom/sec/epdg/Constants/BigDataConstants$IpsecDisconnectionReason;

    .line 282
    new-instance v0, Lcom/sec/epdg/Constants/BigDataConstants$IpsecDisconnectionReason;

    const-string v1, "NO_DPD_RESPONSE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4, v1}, Lcom/sec/epdg/Constants/BigDataConstants$IpsecDisconnectionReason;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/sec/epdg/Constants/BigDataConstants$IpsecDisconnectionReason;->NO_DPD_RESPONSE:Lcom/sec/epdg/Constants/BigDataConstants$IpsecDisconnectionReason;

    .line 279
    const/4 v1, 0x3

    new-array v1, v1, [Lcom/sec/epdg/Constants/BigDataConstants$IpsecDisconnectionReason;

    sget-object v5, Lcom/sec/epdg/Constants/BigDataConstants$IpsecDisconnectionReason;->NONE:Lcom/sec/epdg/Constants/BigDataConstants$IpsecDisconnectionReason;

    aput-object v5, v1, v2

    sget-object v2, Lcom/sec/epdg/Constants/BigDataConstants$IpsecDisconnectionReason;->PEER_DISCONNECT:Lcom/sec/epdg/Constants/BigDataConstants$IpsecDisconnectionReason;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lcom/sec/epdg/Constants/BigDataConstants$IpsecDisconnectionReason;->$VALUES:[Lcom/sec/epdg/Constants/BigDataConstants$IpsecDisconnectionReason;

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

    .line 287
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 288
    iput p3, p0, Lcom/sec/epdg/Constants/BigDataConstants$IpsecDisconnectionReason;->mValue:I

    .line 289
    iput-object p4, p0, Lcom/sec/epdg/Constants/BigDataConstants$IpsecDisconnectionReason;->mStatus:Ljava/lang/String;

    .line 290
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/epdg/Constants/BigDataConstants$IpsecDisconnectionReason;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 279
    const-class v0, Lcom/sec/epdg/Constants/BigDataConstants$IpsecDisconnectionReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/epdg/Constants/BigDataConstants$IpsecDisconnectionReason;

    return-object v0
.end method

.method public static values()[Lcom/sec/epdg/Constants/BigDataConstants$IpsecDisconnectionReason;
    .locals 1

    .line 279
    sget-object v0, Lcom/sec/epdg/Constants/BigDataConstants$IpsecDisconnectionReason;->$VALUES:[Lcom/sec/epdg/Constants/BigDataConstants$IpsecDisconnectionReason;

    invoke-virtual {v0}, [Lcom/sec/epdg/Constants/BigDataConstants$IpsecDisconnectionReason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/epdg/Constants/BigDataConstants$IpsecDisconnectionReason;

    return-object v0
.end method


# virtual methods
.method public getStatus()Ljava/lang/String;
    .locals 1

    .line 293
    iget-object v0, p0, Lcom/sec/epdg/Constants/BigDataConstants$IpsecDisconnectionReason;->mStatus:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()I
    .locals 1

    .line 297
    iget v0, p0, Lcom/sec/epdg/Constants/BigDataConstants$IpsecDisconnectionReason;->mValue:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 302
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[EPDI / IDRE] mStatus : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/epdg/Constants/BigDataConstants$IpsecDisconnectionReason;->mStatus:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mValue : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/epdg/Constants/BigDataConstants$IpsecDisconnectionReason;->mValue:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
