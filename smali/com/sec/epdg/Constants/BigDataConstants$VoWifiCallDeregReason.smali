.class public final enum Lcom/sec/epdg/Constants/BigDataConstants$VoWifiCallDeregReason;
.super Ljava/lang/Enum;
.source "BigDataConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/Constants/BigDataConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VoWifiCallDeregReason"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/epdg/Constants/BigDataConstants$VoWifiCallDeregReason;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/epdg/Constants/BigDataConstants$VoWifiCallDeregReason;

.field public static final enum BLOCKLIST_BLOCKING:Lcom/sec/epdg/Constants/BigDataConstants$VoWifiCallDeregReason;

.field public static final enum CS_NOT_AVAILABLE:Lcom/sec/epdg/Constants/BigDataConstants$VoWifiCallDeregReason;

.field public static final enum HANDOVER_DISABLE:Lcom/sec/epdg/Constants/BigDataConstants$VoWifiCallDeregReason;

.field public static final enum NONE:Lcom/sec/epdg/Constants/BigDataConstants$VoWifiCallDeregReason;

.field public static final enum NOT_SUPPORT_VOLTE:Lcom/sec/epdg/Constants/BigDataConstants$VoWifiCallDeregReason;

.field public static final enum VOLTE_AVAILABLE:Lcom/sec/epdg/Constants/BigDataConstants$VoWifiCallDeregReason;


# instance fields
.field private mStatus:Ljava/lang/String;

.field private mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 152
    new-instance v0, Lcom/sec/epdg/Constants/BigDataConstants$VoWifiCallDeregReason;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2, v1}, Lcom/sec/epdg/Constants/BigDataConstants$VoWifiCallDeregReason;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/sec/epdg/Constants/BigDataConstants$VoWifiCallDeregReason;->NONE:Lcom/sec/epdg/Constants/BigDataConstants$VoWifiCallDeregReason;

    .line 153
    new-instance v0, Lcom/sec/epdg/Constants/BigDataConstants$VoWifiCallDeregReason;

    const-string v1, "NOT_SUPPORT_VOLTE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3, v1}, Lcom/sec/epdg/Constants/BigDataConstants$VoWifiCallDeregReason;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/sec/epdg/Constants/BigDataConstants$VoWifiCallDeregReason;->NOT_SUPPORT_VOLTE:Lcom/sec/epdg/Constants/BigDataConstants$VoWifiCallDeregReason;

    .line 154
    new-instance v0, Lcom/sec/epdg/Constants/BigDataConstants$VoWifiCallDeregReason;

    const-string v1, "HANDOVER_DISABLE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4, v1}, Lcom/sec/epdg/Constants/BigDataConstants$VoWifiCallDeregReason;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/sec/epdg/Constants/BigDataConstants$VoWifiCallDeregReason;->HANDOVER_DISABLE:Lcom/sec/epdg/Constants/BigDataConstants$VoWifiCallDeregReason;

    .line 155
    new-instance v0, Lcom/sec/epdg/Constants/BigDataConstants$VoWifiCallDeregReason;

    const-string v1, "CS_NOT_AVAILABLE"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5, v1}, Lcom/sec/epdg/Constants/BigDataConstants$VoWifiCallDeregReason;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/sec/epdg/Constants/BigDataConstants$VoWifiCallDeregReason;->CS_NOT_AVAILABLE:Lcom/sec/epdg/Constants/BigDataConstants$VoWifiCallDeregReason;

    .line 156
    new-instance v0, Lcom/sec/epdg/Constants/BigDataConstants$VoWifiCallDeregReason;

    const-string v1, "VOLTE_AVAILABLE"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6, v6, v1}, Lcom/sec/epdg/Constants/BigDataConstants$VoWifiCallDeregReason;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/sec/epdg/Constants/BigDataConstants$VoWifiCallDeregReason;->VOLTE_AVAILABLE:Lcom/sec/epdg/Constants/BigDataConstants$VoWifiCallDeregReason;

    .line 157
    new-instance v0, Lcom/sec/epdg/Constants/BigDataConstants$VoWifiCallDeregReason;

    const-string v1, "BLOCKLIST_BLOCKING"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7, v7, v1}, Lcom/sec/epdg/Constants/BigDataConstants$VoWifiCallDeregReason;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/sec/epdg/Constants/BigDataConstants$VoWifiCallDeregReason;->BLOCKLIST_BLOCKING:Lcom/sec/epdg/Constants/BigDataConstants$VoWifiCallDeregReason;

    .line 151
    const/4 v1, 0x6

    new-array v1, v1, [Lcom/sec/epdg/Constants/BigDataConstants$VoWifiCallDeregReason;

    sget-object v8, Lcom/sec/epdg/Constants/BigDataConstants$VoWifiCallDeregReason;->NONE:Lcom/sec/epdg/Constants/BigDataConstants$VoWifiCallDeregReason;

    aput-object v8, v1, v2

    sget-object v2, Lcom/sec/epdg/Constants/BigDataConstants$VoWifiCallDeregReason;->NOT_SUPPORT_VOLTE:Lcom/sec/epdg/Constants/BigDataConstants$VoWifiCallDeregReason;

    aput-object v2, v1, v3

    sget-object v2, Lcom/sec/epdg/Constants/BigDataConstants$VoWifiCallDeregReason;->HANDOVER_DISABLE:Lcom/sec/epdg/Constants/BigDataConstants$VoWifiCallDeregReason;

    aput-object v2, v1, v4

    sget-object v2, Lcom/sec/epdg/Constants/BigDataConstants$VoWifiCallDeregReason;->CS_NOT_AVAILABLE:Lcom/sec/epdg/Constants/BigDataConstants$VoWifiCallDeregReason;

    aput-object v2, v1, v5

    sget-object v2, Lcom/sec/epdg/Constants/BigDataConstants$VoWifiCallDeregReason;->VOLTE_AVAILABLE:Lcom/sec/epdg/Constants/BigDataConstants$VoWifiCallDeregReason;

    aput-object v2, v1, v6

    aput-object v0, v1, v7

    sput-object v1, Lcom/sec/epdg/Constants/BigDataConstants$VoWifiCallDeregReason;->$VALUES:[Lcom/sec/epdg/Constants/BigDataConstants$VoWifiCallDeregReason;

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

    .line 162
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 163
    iput p3, p0, Lcom/sec/epdg/Constants/BigDataConstants$VoWifiCallDeregReason;->mValue:I

    .line 164
    iput-object p4, p0, Lcom/sec/epdg/Constants/BigDataConstants$VoWifiCallDeregReason;->mStatus:Ljava/lang/String;

    .line 165
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/epdg/Constants/BigDataConstants$VoWifiCallDeregReason;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 151
    const-class v0, Lcom/sec/epdg/Constants/BigDataConstants$VoWifiCallDeregReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/epdg/Constants/BigDataConstants$VoWifiCallDeregReason;

    return-object v0
.end method

.method public static values()[Lcom/sec/epdg/Constants/BigDataConstants$VoWifiCallDeregReason;
    .locals 1

    .line 151
    sget-object v0, Lcom/sec/epdg/Constants/BigDataConstants$VoWifiCallDeregReason;->$VALUES:[Lcom/sec/epdg/Constants/BigDataConstants$VoWifiCallDeregReason;

    invoke-virtual {v0}, [Lcom/sec/epdg/Constants/BigDataConstants$VoWifiCallDeregReason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/epdg/Constants/BigDataConstants$VoWifiCallDeregReason;

    return-object v0
.end method


# virtual methods
.method public getStatus()Ljava/lang/String;
    .locals 1

    .line 168
    iget-object v0, p0, Lcom/sec/epdg/Constants/BigDataConstants$VoWifiCallDeregReason;->mStatus:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()I
    .locals 1

    .line 172
    iget v0, p0, Lcom/sec/epdg/Constants/BigDataConstants$VoWifiCallDeregReason;->mValue:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 177
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[VWCD / VWDR] mStatus : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/epdg/Constants/BigDataConstants$VoWifiCallDeregReason;->mStatus:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mValue : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/epdg/Constants/BigDataConstants$VoWifiCallDeregReason;->mValue:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
