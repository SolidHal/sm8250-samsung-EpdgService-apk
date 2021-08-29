.class public final enum Lcom/sec/epdg/Constants/MapconConstants$MapconApnType;
.super Ljava/lang/Enum;
.source "MapconConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/Constants/MapconConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MapconApnType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/epdg/Constants/MapconConstants$MapconApnType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/epdg/Constants/MapconConstants$MapconApnType;

.field public static final enum APN_TYPE_CBS:Lcom/sec/epdg/Constants/MapconConstants$MapconApnType;

.field public static final enum APN_TYPE_DEFAULT:Lcom/sec/epdg/Constants/MapconConstants$MapconApnType;

.field public static final enum APN_TYPE_DUN:Lcom/sec/epdg/Constants/MapconConstants$MapconApnType;

.field public static final enum APN_TYPE_EMERGENCY:Lcom/sec/epdg/Constants/MapconConstants$MapconApnType;

.field public static final enum APN_TYPE_FOTA:Lcom/sec/epdg/Constants/MapconConstants$MapconApnType;

.field public static final enum APN_TYPE_HIPRI:Lcom/sec/epdg/Constants/MapconConstants$MapconApnType;

.field public static final enum APN_TYPE_IA:Lcom/sec/epdg/Constants/MapconConstants$MapconApnType;

.field public static final enum APN_TYPE_IMS:Lcom/sec/epdg/Constants/MapconConstants$MapconApnType;

.field public static final enum APN_TYPE_MMS:Lcom/sec/epdg/Constants/MapconConstants$MapconApnType;

.field public static final enum APN_TYPE_SUPL:Lcom/sec/epdg/Constants/MapconConstants$MapconApnType;

.field public static final enum APN_TYPE_XCAP:Lcom/sec/epdg/Constants/MapconConstants$MapconApnType;


# instance fields
.field private final mText:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 54
    new-instance v0, Lcom/sec/epdg/Constants/MapconConstants$MapconApnType;

    const-string v1, "APN_TYPE_DEFAULT"

    const/4 v2, 0x0

    const-string v3, "default"

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/epdg/Constants/MapconConstants$MapconApnType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sec/epdg/Constants/MapconConstants$MapconApnType;->APN_TYPE_DEFAULT:Lcom/sec/epdg/Constants/MapconConstants$MapconApnType;

    .line 55
    new-instance v0, Lcom/sec/epdg/Constants/MapconConstants$MapconApnType;

    const-string v1, "APN_TYPE_MMS"

    const/4 v3, 0x1

    const-string v4, "mms"

    invoke-direct {v0, v1, v3, v4}, Lcom/sec/epdg/Constants/MapconConstants$MapconApnType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sec/epdg/Constants/MapconConstants$MapconApnType;->APN_TYPE_MMS:Lcom/sec/epdg/Constants/MapconConstants$MapconApnType;

    .line 56
    new-instance v0, Lcom/sec/epdg/Constants/MapconConstants$MapconApnType;

    const-string v1, "APN_TYPE_SUPL"

    const/4 v4, 0x2

    const-string v5, "supl"

    invoke-direct {v0, v1, v4, v5}, Lcom/sec/epdg/Constants/MapconConstants$MapconApnType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sec/epdg/Constants/MapconConstants$MapconApnType;->APN_TYPE_SUPL:Lcom/sec/epdg/Constants/MapconConstants$MapconApnType;

    .line 57
    new-instance v0, Lcom/sec/epdg/Constants/MapconConstants$MapconApnType;

    const-string v1, "APN_TYPE_DUN"

    const/4 v5, 0x3

    const-string v6, "dun"

    invoke-direct {v0, v1, v5, v6}, Lcom/sec/epdg/Constants/MapconConstants$MapconApnType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sec/epdg/Constants/MapconConstants$MapconApnType;->APN_TYPE_DUN:Lcom/sec/epdg/Constants/MapconConstants$MapconApnType;

    .line 58
    new-instance v0, Lcom/sec/epdg/Constants/MapconConstants$MapconApnType;

    const-string v1, "APN_TYPE_HIPRI"

    const/4 v6, 0x4

    const-string v7, "hipri"

    invoke-direct {v0, v1, v6, v7}, Lcom/sec/epdg/Constants/MapconConstants$MapconApnType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sec/epdg/Constants/MapconConstants$MapconApnType;->APN_TYPE_HIPRI:Lcom/sec/epdg/Constants/MapconConstants$MapconApnType;

    .line 59
    new-instance v0, Lcom/sec/epdg/Constants/MapconConstants$MapconApnType;

    const-string v1, "APN_TYPE_FOTA"

    const/4 v7, 0x5

    const-string v8, "fota"

    invoke-direct {v0, v1, v7, v8}, Lcom/sec/epdg/Constants/MapconConstants$MapconApnType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sec/epdg/Constants/MapconConstants$MapconApnType;->APN_TYPE_FOTA:Lcom/sec/epdg/Constants/MapconConstants$MapconApnType;

    .line 60
    new-instance v0, Lcom/sec/epdg/Constants/MapconConstants$MapconApnType;

    const-string v1, "APN_TYPE_IMS"

    const/4 v8, 0x6

    const-string v9, "ims"

    invoke-direct {v0, v1, v8, v9}, Lcom/sec/epdg/Constants/MapconConstants$MapconApnType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sec/epdg/Constants/MapconConstants$MapconApnType;->APN_TYPE_IMS:Lcom/sec/epdg/Constants/MapconConstants$MapconApnType;

    .line 61
    new-instance v0, Lcom/sec/epdg/Constants/MapconConstants$MapconApnType;

    const-string v1, "APN_TYPE_CBS"

    const/4 v9, 0x7

    const-string v10, "cbs"

    invoke-direct {v0, v1, v9, v10}, Lcom/sec/epdg/Constants/MapconConstants$MapconApnType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sec/epdg/Constants/MapconConstants$MapconApnType;->APN_TYPE_CBS:Lcom/sec/epdg/Constants/MapconConstants$MapconApnType;

    .line 62
    new-instance v0, Lcom/sec/epdg/Constants/MapconConstants$MapconApnType;

    const-string v1, "APN_TYPE_IA"

    const/16 v10, 0x8

    const-string v11, "ia"

    invoke-direct {v0, v1, v10, v11}, Lcom/sec/epdg/Constants/MapconConstants$MapconApnType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sec/epdg/Constants/MapconConstants$MapconApnType;->APN_TYPE_IA:Lcom/sec/epdg/Constants/MapconConstants$MapconApnType;

    .line 63
    new-instance v0, Lcom/sec/epdg/Constants/MapconConstants$MapconApnType;

    const-string v1, "APN_TYPE_XCAP"

    const/16 v11, 0x9

    const-string v12, "xcap"

    invoke-direct {v0, v1, v11, v12}, Lcom/sec/epdg/Constants/MapconConstants$MapconApnType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sec/epdg/Constants/MapconConstants$MapconApnType;->APN_TYPE_XCAP:Lcom/sec/epdg/Constants/MapconConstants$MapconApnType;

    .line 64
    new-instance v0, Lcom/sec/epdg/Constants/MapconConstants$MapconApnType;

    const-string v1, "APN_TYPE_EMERGENCY"

    const/16 v12, 0xa

    const-string v13, "emergency"

    invoke-direct {v0, v1, v12, v13}, Lcom/sec/epdg/Constants/MapconConstants$MapconApnType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sec/epdg/Constants/MapconConstants$MapconApnType;->APN_TYPE_EMERGENCY:Lcom/sec/epdg/Constants/MapconConstants$MapconApnType;

    .line 53
    const/16 v1, 0xb

    new-array v1, v1, [Lcom/sec/epdg/Constants/MapconConstants$MapconApnType;

    sget-object v13, Lcom/sec/epdg/Constants/MapconConstants$MapconApnType;->APN_TYPE_DEFAULT:Lcom/sec/epdg/Constants/MapconConstants$MapconApnType;

    aput-object v13, v1, v2

    sget-object v2, Lcom/sec/epdg/Constants/MapconConstants$MapconApnType;->APN_TYPE_MMS:Lcom/sec/epdg/Constants/MapconConstants$MapconApnType;

    aput-object v2, v1, v3

    sget-object v2, Lcom/sec/epdg/Constants/MapconConstants$MapconApnType;->APN_TYPE_SUPL:Lcom/sec/epdg/Constants/MapconConstants$MapconApnType;

    aput-object v2, v1, v4

    sget-object v2, Lcom/sec/epdg/Constants/MapconConstants$MapconApnType;->APN_TYPE_DUN:Lcom/sec/epdg/Constants/MapconConstants$MapconApnType;

    aput-object v2, v1, v5

    sget-object v2, Lcom/sec/epdg/Constants/MapconConstants$MapconApnType;->APN_TYPE_HIPRI:Lcom/sec/epdg/Constants/MapconConstants$MapconApnType;

    aput-object v2, v1, v6

    sget-object v2, Lcom/sec/epdg/Constants/MapconConstants$MapconApnType;->APN_TYPE_FOTA:Lcom/sec/epdg/Constants/MapconConstants$MapconApnType;

    aput-object v2, v1, v7

    sget-object v2, Lcom/sec/epdg/Constants/MapconConstants$MapconApnType;->APN_TYPE_IMS:Lcom/sec/epdg/Constants/MapconConstants$MapconApnType;

    aput-object v2, v1, v8

    sget-object v2, Lcom/sec/epdg/Constants/MapconConstants$MapconApnType;->APN_TYPE_CBS:Lcom/sec/epdg/Constants/MapconConstants$MapconApnType;

    aput-object v2, v1, v9

    sget-object v2, Lcom/sec/epdg/Constants/MapconConstants$MapconApnType;->APN_TYPE_IA:Lcom/sec/epdg/Constants/MapconConstants$MapconApnType;

    aput-object v2, v1, v10

    sget-object v2, Lcom/sec/epdg/Constants/MapconConstants$MapconApnType;->APN_TYPE_XCAP:Lcom/sec/epdg/Constants/MapconConstants$MapconApnType;

    aput-object v2, v1, v11

    aput-object v0, v1, v12

    sput-object v1, Lcom/sec/epdg/Constants/MapconConstants$MapconApnType;->$VALUES:[Lcom/sec/epdg/Constants/MapconConstants$MapconApnType;

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

    .line 68
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 69
    iput-object p3, p0, Lcom/sec/epdg/Constants/MapconConstants$MapconApnType;->mText:Ljava/lang/String;

    .line 70
    return-void
.end method

.method public static getMapconApnType(Ljava/lang/String;)Lcom/sec/epdg/Constants/MapconConstants$MapconApnType;
    .locals 5
    .param p0, "value"    # Ljava/lang/String;

    .line 73
    invoke-static {}, Lcom/sec/epdg/Constants/MapconConstants$MapconApnType;->values()[Lcom/sec/epdg/Constants/MapconConstants$MapconApnType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 74
    .local v3, "apnType":Lcom/sec/epdg/Constants/MapconConstants$MapconApnType;
    invoke-virtual {v3}, Lcom/sec/epdg/Constants/MapconConstants$MapconApnType;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 75
    return-object v3

    .line 73
    .end local v3    # "apnType":Lcom/sec/epdg/Constants/MapconConstants$MapconApnType;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 78
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid key : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getSupportedTypeBitMask(I)I
    .locals 1
    .param p0, "value"    # I

    .line 86
    const/4 v0, 0x1

    shl-int/2addr v0, p0

    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/epdg/Constants/MapconConstants$MapconApnType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 53
    const-class v0, Lcom/sec/epdg/Constants/MapconConstants$MapconApnType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/epdg/Constants/MapconConstants$MapconApnType;

    return-object v0
.end method

.method public static values()[Lcom/sec/epdg/Constants/MapconConstants$MapconApnType;
    .locals 1

    .line 53
    sget-object v0, Lcom/sec/epdg/Constants/MapconConstants$MapconApnType;->$VALUES:[Lcom/sec/epdg/Constants/MapconConstants$MapconApnType;

    invoke-virtual {v0}, [Lcom/sec/epdg/Constants/MapconConstants$MapconApnType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/epdg/Constants/MapconConstants$MapconApnType;

    return-object v0
.end method


# virtual methods
.method public getIntValue()I
    .locals 1

    .line 82
    invoke-virtual {p0}, Lcom/sec/epdg/Constants/MapconConstants$MapconApnType;->ordinal()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/sec/epdg/Constants/MapconConstants$MapconApnType;->mText:Ljava/lang/String;

    return-object v0
.end method
