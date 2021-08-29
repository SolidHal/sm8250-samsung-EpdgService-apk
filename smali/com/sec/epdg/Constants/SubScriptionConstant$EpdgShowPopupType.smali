.class public final enum Lcom/sec/epdg/Constants/SubScriptionConstant$EpdgShowPopupType;
.super Ljava/lang/Enum;
.source "SubScriptionConstant.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/Constants/SubScriptionConstant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EpdgShowPopupType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/epdg/Constants/SubScriptionConstant$EpdgShowPopupType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/epdg/Constants/SubScriptionConstant$EpdgShowPopupType;

.field public static final enum CANNOT_SWITCH_TO_WIFI:Lcom/sec/epdg/Constants/SubScriptionConstant$EpdgShowPopupType;

.field public static final enum LOW_WIFI_SIGNAL:Lcom/sec/epdg/Constants/SubScriptionConstant$EpdgShowPopupType;

.field public static final enum NOT_USE:Lcom/sec/epdg/Constants/SubScriptionConstant$EpdgShowPopupType;

.field public static final enum TURN_OFF_MOBILE_DATA:Lcom/sec/epdg/Constants/SubScriptionConstant$EpdgShowPopupType;

.field public static final enum WFC_DROP_WARNING_NOTI:Lcom/sec/epdg/Constants/SubScriptionConstant$EpdgShowPopupType;


# instance fields
.field private final mNum:I

.field private final mText:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 191
    new-instance v0, Lcom/sec/epdg/Constants/SubScriptionConstant$EpdgShowPopupType;

    const-string v1, "NOT_USE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2, v1}, Lcom/sec/epdg/Constants/SubScriptionConstant$EpdgShowPopupType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/sec/epdg/Constants/SubScriptionConstant$EpdgShowPopupType;->NOT_USE:Lcom/sec/epdg/Constants/SubScriptionConstant$EpdgShowPopupType;

    .line 192
    new-instance v0, Lcom/sec/epdg/Constants/SubScriptionConstant$EpdgShowPopupType;

    const-string v1, "CANNOT_SWITCH_TO_WIFI"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3, v1}, Lcom/sec/epdg/Constants/SubScriptionConstant$EpdgShowPopupType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/sec/epdg/Constants/SubScriptionConstant$EpdgShowPopupType;->CANNOT_SWITCH_TO_WIFI:Lcom/sec/epdg/Constants/SubScriptionConstant$EpdgShowPopupType;

    .line 193
    new-instance v0, Lcom/sec/epdg/Constants/SubScriptionConstant$EpdgShowPopupType;

    const-string v1, "LOW_WIFI_SIGNAL"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4, v1}, Lcom/sec/epdg/Constants/SubScriptionConstant$EpdgShowPopupType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/sec/epdg/Constants/SubScriptionConstant$EpdgShowPopupType;->LOW_WIFI_SIGNAL:Lcom/sec/epdg/Constants/SubScriptionConstant$EpdgShowPopupType;

    .line 194
    new-instance v0, Lcom/sec/epdg/Constants/SubScriptionConstant$EpdgShowPopupType;

    const-string v1, "TURN_OFF_MOBILE_DATA"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5, v1}, Lcom/sec/epdg/Constants/SubScriptionConstant$EpdgShowPopupType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/sec/epdg/Constants/SubScriptionConstant$EpdgShowPopupType;->TURN_OFF_MOBILE_DATA:Lcom/sec/epdg/Constants/SubScriptionConstant$EpdgShowPopupType;

    .line 195
    new-instance v0, Lcom/sec/epdg/Constants/SubScriptionConstant$EpdgShowPopupType;

    const-string v1, "WFC_DROP_WARNING_NOTI"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6, v6, v1}, Lcom/sec/epdg/Constants/SubScriptionConstant$EpdgShowPopupType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/sec/epdg/Constants/SubScriptionConstant$EpdgShowPopupType;->WFC_DROP_WARNING_NOTI:Lcom/sec/epdg/Constants/SubScriptionConstant$EpdgShowPopupType;

    .line 189
    const/4 v1, 0x5

    new-array v1, v1, [Lcom/sec/epdg/Constants/SubScriptionConstant$EpdgShowPopupType;

    sget-object v7, Lcom/sec/epdg/Constants/SubScriptionConstant$EpdgShowPopupType;->NOT_USE:Lcom/sec/epdg/Constants/SubScriptionConstant$EpdgShowPopupType;

    aput-object v7, v1, v2

    sget-object v2, Lcom/sec/epdg/Constants/SubScriptionConstant$EpdgShowPopupType;->CANNOT_SWITCH_TO_WIFI:Lcom/sec/epdg/Constants/SubScriptionConstant$EpdgShowPopupType;

    aput-object v2, v1, v3

    sget-object v2, Lcom/sec/epdg/Constants/SubScriptionConstant$EpdgShowPopupType;->LOW_WIFI_SIGNAL:Lcom/sec/epdg/Constants/SubScriptionConstant$EpdgShowPopupType;

    aput-object v2, v1, v4

    sget-object v2, Lcom/sec/epdg/Constants/SubScriptionConstant$EpdgShowPopupType;->TURN_OFF_MOBILE_DATA:Lcom/sec/epdg/Constants/SubScriptionConstant$EpdgShowPopupType;

    aput-object v2, v1, v5

    aput-object v0, v1, v6

    sput-object v1, Lcom/sec/epdg/Constants/SubScriptionConstant$EpdgShowPopupType;->$VALUES:[Lcom/sec/epdg/Constants/SubScriptionConstant$EpdgShowPopupType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .param p3, "num"    # I
    .param p4, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 200
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 201
    iput p3, p0, Lcom/sec/epdg/Constants/SubScriptionConstant$EpdgShowPopupType;->mNum:I

    .line 202
    iput-object p4, p0, Lcom/sec/epdg/Constants/SubScriptionConstant$EpdgShowPopupType;->mText:Ljava/lang/String;

    .line 203
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/epdg/Constants/SubScriptionConstant$EpdgShowPopupType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 189
    const-class v0, Lcom/sec/epdg/Constants/SubScriptionConstant$EpdgShowPopupType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/epdg/Constants/SubScriptionConstant$EpdgShowPopupType;

    return-object v0
.end method

.method public static values()[Lcom/sec/epdg/Constants/SubScriptionConstant$EpdgShowPopupType;
    .locals 1

    .line 189
    sget-object v0, Lcom/sec/epdg/Constants/SubScriptionConstant$EpdgShowPopupType;->$VALUES:[Lcom/sec/epdg/Constants/SubScriptionConstant$EpdgShowPopupType;

    invoke-virtual {v0}, [Lcom/sec/epdg/Constants/SubScriptionConstant$EpdgShowPopupType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/epdg/Constants/SubScriptionConstant$EpdgShowPopupType;

    return-object v0
.end method


# virtual methods
.method public getNum()I
    .locals 1

    .line 206
    iget v0, p0, Lcom/sec/epdg/Constants/SubScriptionConstant$EpdgShowPopupType;->mNum:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 211
    iget-object v0, p0, Lcom/sec/epdg/Constants/SubScriptionConstant$EpdgShowPopupType;->mText:Ljava/lang/String;

    return-object v0
.end method
