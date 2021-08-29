.class public final enum Lcom/sec/epdg/Constants/BigDataConstants$VoWifiCallHandoverType;
.super Ljava/lang/Enum;
.source "BigDataConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/Constants/BigDataConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VoWifiCallHandoverType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/epdg/Constants/BigDataConstants$VoWifiCallHandoverType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/epdg/Constants/BigDataConstants$VoWifiCallHandoverType;

.field public static final enum HANDOVER_REQUEST:Lcom/sec/epdg/Constants/BigDataConstants$VoWifiCallHandoverType;

.field public static final enum INITIAL_REQUEST:Lcom/sec/epdg/Constants/BigDataConstants$VoWifiCallHandoverType;

.field public static final enum NONE:Lcom/sec/epdg/Constants/BigDataConstants$VoWifiCallHandoverType;


# instance fields
.field private mStatus:Ljava/lang/String;

.field private mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 39
    new-instance v0, Lcom/sec/epdg/Constants/BigDataConstants$VoWifiCallHandoverType;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2, v1}, Lcom/sec/epdg/Constants/BigDataConstants$VoWifiCallHandoverType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/sec/epdg/Constants/BigDataConstants$VoWifiCallHandoverType;->NONE:Lcom/sec/epdg/Constants/BigDataConstants$VoWifiCallHandoverType;

    .line 40
    new-instance v0, Lcom/sec/epdg/Constants/BigDataConstants$VoWifiCallHandoverType;

    const-string v1, "INITIAL_REQUEST"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3, v1}, Lcom/sec/epdg/Constants/BigDataConstants$VoWifiCallHandoverType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/sec/epdg/Constants/BigDataConstants$VoWifiCallHandoverType;->INITIAL_REQUEST:Lcom/sec/epdg/Constants/BigDataConstants$VoWifiCallHandoverType;

    .line 41
    new-instance v0, Lcom/sec/epdg/Constants/BigDataConstants$VoWifiCallHandoverType;

    const-string v1, "HANDOVER_REQUEST"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4, v1}, Lcom/sec/epdg/Constants/BigDataConstants$VoWifiCallHandoverType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/sec/epdg/Constants/BigDataConstants$VoWifiCallHandoverType;->HANDOVER_REQUEST:Lcom/sec/epdg/Constants/BigDataConstants$VoWifiCallHandoverType;

    .line 38
    const/4 v1, 0x3

    new-array v1, v1, [Lcom/sec/epdg/Constants/BigDataConstants$VoWifiCallHandoverType;

    sget-object v5, Lcom/sec/epdg/Constants/BigDataConstants$VoWifiCallHandoverType;->NONE:Lcom/sec/epdg/Constants/BigDataConstants$VoWifiCallHandoverType;

    aput-object v5, v1, v2

    sget-object v2, Lcom/sec/epdg/Constants/BigDataConstants$VoWifiCallHandoverType;->INITIAL_REQUEST:Lcom/sec/epdg/Constants/BigDataConstants$VoWifiCallHandoverType;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lcom/sec/epdg/Constants/BigDataConstants$VoWifiCallHandoverType;->$VALUES:[Lcom/sec/epdg/Constants/BigDataConstants$VoWifiCallHandoverType;

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

    .line 46
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 47
    iput p3, p0, Lcom/sec/epdg/Constants/BigDataConstants$VoWifiCallHandoverType;->mValue:I

    .line 48
    iput-object p4, p0, Lcom/sec/epdg/Constants/BigDataConstants$VoWifiCallHandoverType;->mStatus:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/epdg/Constants/BigDataConstants$VoWifiCallHandoverType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 38
    const-class v0, Lcom/sec/epdg/Constants/BigDataConstants$VoWifiCallHandoverType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/epdg/Constants/BigDataConstants$VoWifiCallHandoverType;

    return-object v0
.end method

.method public static values()[Lcom/sec/epdg/Constants/BigDataConstants$VoWifiCallHandoverType;
    .locals 1

    .line 38
    sget-object v0, Lcom/sec/epdg/Constants/BigDataConstants$VoWifiCallHandoverType;->$VALUES:[Lcom/sec/epdg/Constants/BigDataConstants$VoWifiCallHandoverType;

    invoke-virtual {v0}, [Lcom/sec/epdg/Constants/BigDataConstants$VoWifiCallHandoverType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/epdg/Constants/BigDataConstants$VoWifiCallHandoverType;

    return-object v0
.end method


# virtual methods
.method public getStatus()Ljava/lang/String;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/sec/epdg/Constants/BigDataConstants$VoWifiCallHandoverType;->mStatus:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()I
    .locals 1

    .line 56
    iget v0, p0, Lcom/sec/epdg/Constants/BigDataConstants$VoWifiCallHandoverType;->mValue:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[VWCD / VWHT] mStatus : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/epdg/Constants/BigDataConstants$VoWifiCallHandoverType;->mStatus:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mValue : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/epdg/Constants/BigDataConstants$VoWifiCallHandoverType;->mValue:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
