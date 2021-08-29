.class public final enum Lcom/sec/epdg/Constants/SubScriptionConstant$EpdgTempBlockReason;
.super Ljava/lang/Enum;
.source "SubScriptionConstant.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/Constants/SubScriptionConstant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EpdgTempBlockReason"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/epdg/Constants/SubScriptionConstant$EpdgTempBlockReason;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/epdg/Constants/SubScriptionConstant$EpdgTempBlockReason;

.field public static final enum ALLOWED:Lcom/sec/epdg/Constants/SubScriptionConstant$EpdgTempBlockReason;

.field public static final enum AP_NOT_ALLOWED:Lcom/sec/epdg/Constants/SubScriptionConstant$EpdgTempBlockReason;

.field public static final enum BLOCKLIST_COUNTRY:Lcom/sec/epdg/Constants/SubScriptionConstant$EpdgTempBlockReason;


# instance fields
.field private final mReason:I

.field private final mText:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 170
    new-instance v0, Lcom/sec/epdg/Constants/SubScriptionConstant$EpdgTempBlockReason;

    const-string v1, "ALLOWED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2, v1}, Lcom/sec/epdg/Constants/SubScriptionConstant$EpdgTempBlockReason;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/sec/epdg/Constants/SubScriptionConstant$EpdgTempBlockReason;->ALLOWED:Lcom/sec/epdg/Constants/SubScriptionConstant$EpdgTempBlockReason;

    .line 171
    new-instance v0, Lcom/sec/epdg/Constants/SubScriptionConstant$EpdgTempBlockReason;

    const-string v1, "AP_NOT_ALLOWED"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3, v1}, Lcom/sec/epdg/Constants/SubScriptionConstant$EpdgTempBlockReason;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/sec/epdg/Constants/SubScriptionConstant$EpdgTempBlockReason;->AP_NOT_ALLOWED:Lcom/sec/epdg/Constants/SubScriptionConstant$EpdgTempBlockReason;

    .line 172
    new-instance v0, Lcom/sec/epdg/Constants/SubScriptionConstant$EpdgTempBlockReason;

    const-string v1, "BLOCKLIST_COUNTRY"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4, v1}, Lcom/sec/epdg/Constants/SubScriptionConstant$EpdgTempBlockReason;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/sec/epdg/Constants/SubScriptionConstant$EpdgTempBlockReason;->BLOCKLIST_COUNTRY:Lcom/sec/epdg/Constants/SubScriptionConstant$EpdgTempBlockReason;

    .line 169
    const/4 v1, 0x3

    new-array v1, v1, [Lcom/sec/epdg/Constants/SubScriptionConstant$EpdgTempBlockReason;

    sget-object v5, Lcom/sec/epdg/Constants/SubScriptionConstant$EpdgTempBlockReason;->ALLOWED:Lcom/sec/epdg/Constants/SubScriptionConstant$EpdgTempBlockReason;

    aput-object v5, v1, v2

    sget-object v2, Lcom/sec/epdg/Constants/SubScriptionConstant$EpdgTempBlockReason;->AP_NOT_ALLOWED:Lcom/sec/epdg/Constants/SubScriptionConstant$EpdgTempBlockReason;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lcom/sec/epdg/Constants/SubScriptionConstant$EpdgTempBlockReason;->$VALUES:[Lcom/sec/epdg/Constants/SubScriptionConstant$EpdgTempBlockReason;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .param p3, "reason"    # I
    .param p4, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 178
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 179
    iput p3, p0, Lcom/sec/epdg/Constants/SubScriptionConstant$EpdgTempBlockReason;->mReason:I

    .line 180
    iput-object p4, p0, Lcom/sec/epdg/Constants/SubScriptionConstant$EpdgTempBlockReason;->mText:Ljava/lang/String;

    .line 181
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/epdg/Constants/SubScriptionConstant$EpdgTempBlockReason;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 169
    const-class v0, Lcom/sec/epdg/Constants/SubScriptionConstant$EpdgTempBlockReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/epdg/Constants/SubScriptionConstant$EpdgTempBlockReason;

    return-object v0
.end method

.method public static values()[Lcom/sec/epdg/Constants/SubScriptionConstant$EpdgTempBlockReason;
    .locals 1

    .line 169
    sget-object v0, Lcom/sec/epdg/Constants/SubScriptionConstant$EpdgTempBlockReason;->$VALUES:[Lcom/sec/epdg/Constants/SubScriptionConstant$EpdgTempBlockReason;

    invoke-virtual {v0}, [Lcom/sec/epdg/Constants/SubScriptionConstant$EpdgTempBlockReason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/epdg/Constants/SubScriptionConstant$EpdgTempBlockReason;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 185
    iget-object v0, p0, Lcom/sec/epdg/Constants/SubScriptionConstant$EpdgTempBlockReason;->mText:Ljava/lang/String;

    return-object v0
.end method
