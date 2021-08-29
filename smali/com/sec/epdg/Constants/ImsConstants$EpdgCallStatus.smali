.class public final enum Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;
.super Ljava/lang/Enum;
.source "ImsConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/Constants/ImsConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EpdgCallStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;

.field public static final enum CALL_BLOCKHANDOFF:Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;

.field public static final enum CALL_E911:Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;

.field public static final enum CALL_IDLE:Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;

.field public static final enum CALL_STARTING:Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;

.field public static final enum CALL_VIDEO:Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;

.field public static final enum CALL_VIDEO_VOICE:Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;

.field public static final enum CALL_VOICEONLY:Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;


# instance fields
.field private final mStatus:I

.field private final mText:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 27
    new-instance v0, Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;

    const-string v1, "CALL_IDLE"

    const/4 v2, 0x0

    const-string v3, "idle"

    invoke-direct {v0, v1, v2, v2, v3}, Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;->CALL_IDLE:Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;

    .line 28
    new-instance v0, Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;

    const-string v1, "CALL_VOICEONLY"

    const/4 v3, 0x1

    const-string v4, "imsvoicecall"

    invoke-direct {v0, v1, v3, v3, v4}, Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;->CALL_VOICEONLY:Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;

    .line 29
    new-instance v0, Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;

    const-string v1, "CALL_VIDEO"

    const/4 v4, 0x2

    const-string v5, "imsvideocall"

    invoke-direct {v0, v1, v4, v4, v5}, Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;->CALL_VIDEO:Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;

    .line 30
    new-instance v0, Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;

    const-string v1, "CALL_E911"

    const/4 v5, 0x3

    const-string v6, "e911call"

    invoke-direct {v0, v1, v5, v5, v6}, Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;->CALL_E911:Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;

    .line 31
    new-instance v0, Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;

    const-string v1, "CALL_BLOCKHANDOFF"

    const/4 v6, 0x4

    const-string v7, "blockhandoff"

    invoke-direct {v0, v1, v6, v6, v7}, Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;->CALL_BLOCKHANDOFF:Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;

    .line 32
    new-instance v0, Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;

    const-string v1, "CALL_VIDEO_VOICE"

    const/4 v7, 0x5

    const-string v8, "imsvideovoicecall"

    invoke-direct {v0, v1, v7, v7, v8}, Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;->CALL_VIDEO_VOICE:Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;

    .line 33
    new-instance v0, Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;

    const-string v1, "CALL_STARTING"

    const/4 v8, 0x6

    const-string v9, "imscallstarting"

    invoke-direct {v0, v1, v8, v8, v9}, Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;->CALL_STARTING:Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;

    .line 26
    const/4 v1, 0x7

    new-array v1, v1, [Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;

    sget-object v9, Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;->CALL_IDLE:Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;

    aput-object v9, v1, v2

    sget-object v2, Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;->CALL_VOICEONLY:Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;

    aput-object v2, v1, v3

    sget-object v2, Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;->CALL_VIDEO:Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;

    aput-object v2, v1, v4

    sget-object v2, Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;->CALL_E911:Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;

    aput-object v2, v1, v5

    sget-object v2, Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;->CALL_BLOCKHANDOFF:Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;

    aput-object v2, v1, v6

    sget-object v2, Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;->CALL_VIDEO_VOICE:Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;

    aput-object v2, v1, v7

    aput-object v0, v1, v8

    sput-object v1, Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;->$VALUES:[Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;

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

    .line 39
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 40
    iput p3, p0, Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;->mStatus:I

    .line 41
    iput-object p4, p0, Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;->mText:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 26
    const-class v0, Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;

    return-object v0
.end method

.method public static values()[Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;
    .locals 1

    .line 26
    sget-object v0, Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;->$VALUES:[Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;

    invoke-virtual {v0}, [Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;

    return-object v0
.end method


# virtual methods
.method public getStatus()I
    .locals 1

    .line 45
    iget v0, p0, Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;->mStatus:I

    return v0
.end method

.method public varargs isOneOf([Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;)Z
    .locals 4
    .param p1, "callStatus"    # [Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;

    .line 49
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    .line 50
    .local v3, "status":Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;
    if-ne p0, v3, :cond_0

    .line 51
    const/4 v0, 0x1

    return v0

    .line 49
    .end local v3    # "status":Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 54
    :cond_1
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;->mText:Ljava/lang/String;

    return-object v0
.end method
