.class public final enum Lcom/sec/epdg/ErrorCode/IWlanError$WfcErrorCode;
.super Ljava/lang/Enum;
.source "IWlanError.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/ErrorCode/IWlanError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "WfcErrorCode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/epdg/ErrorCode/IWlanError$WfcErrorCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/epdg/ErrorCode/IWlanError$WfcErrorCode;

.field public static final enum CERTIFICATION_ERROR:Lcom/sec/epdg/ErrorCode/IWlanError$WfcErrorCode;

.field public static final enum DEREGISTERED:Lcom/sec/epdg/ErrorCode/IWlanError$WfcErrorCode;

.field public static final enum DISABLED:Lcom/sec/epdg/ErrorCode/IWlanError$WfcErrorCode;

.field public static final enum DNS_ERROR:Lcom/sec/epdg/ErrorCode/IWlanError$WfcErrorCode;

.field public static final enum ENABLING:Lcom/sec/epdg/ErrorCode/IWlanError$WfcErrorCode;

.field public static final enum GENERAL_ERROR:Lcom/sec/epdg/ErrorCode/IWlanError$WfcErrorCode;

.field public static final enum NOT_CONNECTED_TO_WIFI:Lcom/sec/epdg/ErrorCode/IWlanError$WfcErrorCode;

.field public static final enum POOR_WIFI:Lcom/sec/epdg/ErrorCode/IWlanError$WfcErrorCode;

.field public static final enum READY_FOR_CALLS:Lcom/sec/epdg/ErrorCode/IWlanError$WfcErrorCode;

.field public static final enum SERVER_CERT_VALIDATION_ERROR:Lcom/sec/epdg/ErrorCode/IWlanError$WfcErrorCode;

.field public static final enum TIMEOUT_ERROR:Lcom/sec/epdg/ErrorCode/IWlanError$WfcErrorCode;


# instance fields
.field private final wfcErrorCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 93
    new-instance v0, Lcom/sec/epdg/ErrorCode/IWlanError$WfcErrorCode;

    const-string v1, "DISABLED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/sec/epdg/ErrorCode/IWlanError$WfcErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/epdg/ErrorCode/IWlanError$WfcErrorCode;->DISABLED:Lcom/sec/epdg/ErrorCode/IWlanError$WfcErrorCode;

    .line 94
    new-instance v0, Lcom/sec/epdg/ErrorCode/IWlanError$WfcErrorCode;

    const-string v1, "ENABLING"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/sec/epdg/ErrorCode/IWlanError$WfcErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/epdg/ErrorCode/IWlanError$WfcErrorCode;->ENABLING:Lcom/sec/epdg/ErrorCode/IWlanError$WfcErrorCode;

    .line 95
    new-instance v0, Lcom/sec/epdg/ErrorCode/IWlanError$WfcErrorCode;

    const-string v1, "POOR_WIFI"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/sec/epdg/ErrorCode/IWlanError$WfcErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/epdg/ErrorCode/IWlanError$WfcErrorCode;->POOR_WIFI:Lcom/sec/epdg/ErrorCode/IWlanError$WfcErrorCode;

    .line 96
    new-instance v0, Lcom/sec/epdg/ErrorCode/IWlanError$WfcErrorCode;

    const-string v1, "NOT_CONNECTED_TO_WIFI"

    const/4 v5, 0x3

    const/4 v6, 0x5

    invoke-direct {v0, v1, v5, v6}, Lcom/sec/epdg/ErrorCode/IWlanError$WfcErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/epdg/ErrorCode/IWlanError$WfcErrorCode;->NOT_CONNECTED_TO_WIFI:Lcom/sec/epdg/ErrorCode/IWlanError$WfcErrorCode;

    .line 97
    new-instance v0, Lcom/sec/epdg/ErrorCode/IWlanError$WfcErrorCode;

    const-string v1, "DEREGISTERED"

    const/4 v7, 0x4

    const/4 v8, 0x6

    invoke-direct {v0, v1, v7, v8}, Lcom/sec/epdg/ErrorCode/IWlanError$WfcErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/epdg/ErrorCode/IWlanError$WfcErrorCode;->DEREGISTERED:Lcom/sec/epdg/ErrorCode/IWlanError$WfcErrorCode;

    .line 98
    new-instance v0, Lcom/sec/epdg/ErrorCode/IWlanError$WfcErrorCode;

    const-string v1, "READY_FOR_CALLS"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v6, v9}, Lcom/sec/epdg/ErrorCode/IWlanError$WfcErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/epdg/ErrorCode/IWlanError$WfcErrorCode;->READY_FOR_CALLS:Lcom/sec/epdg/ErrorCode/IWlanError$WfcErrorCode;

    .line 100
    new-instance v0, Lcom/sec/epdg/ErrorCode/IWlanError$WfcErrorCode;

    const-string v1, "SERVER_CERT_VALIDATION_ERROR"

    const/16 v10, 0xa

    invoke-direct {v0, v1, v8, v10}, Lcom/sec/epdg/ErrorCode/IWlanError$WfcErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/epdg/ErrorCode/IWlanError$WfcErrorCode;->SERVER_CERT_VALIDATION_ERROR:Lcom/sec/epdg/ErrorCode/IWlanError$WfcErrorCode;

    .line 103
    new-instance v0, Lcom/sec/epdg/ErrorCode/IWlanError$WfcErrorCode;

    const-string v1, "CERTIFICATION_ERROR"

    const/16 v11, 0xb

    invoke-direct {v0, v1, v9, v11}, Lcom/sec/epdg/ErrorCode/IWlanError$WfcErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/epdg/ErrorCode/IWlanError$WfcErrorCode;->CERTIFICATION_ERROR:Lcom/sec/epdg/ErrorCode/IWlanError$WfcErrorCode;

    .line 105
    new-instance v0, Lcom/sec/epdg/ErrorCode/IWlanError$WfcErrorCode;

    const-string v1, "DNS_ERROR"

    const/16 v12, 0x8

    const/16 v13, 0x29

    invoke-direct {v0, v1, v12, v13}, Lcom/sec/epdg/ErrorCode/IWlanError$WfcErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/epdg/ErrorCode/IWlanError$WfcErrorCode;->DNS_ERROR:Lcom/sec/epdg/ErrorCode/IWlanError$WfcErrorCode;

    .line 108
    new-instance v0, Lcom/sec/epdg/ErrorCode/IWlanError$WfcErrorCode;

    const-string v1, "TIMEOUT_ERROR"

    const/16 v13, 0x9

    const/16 v14, 0x51

    invoke-direct {v0, v1, v13, v14}, Lcom/sec/epdg/ErrorCode/IWlanError$WfcErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/epdg/ErrorCode/IWlanError$WfcErrorCode;->TIMEOUT_ERROR:Lcom/sec/epdg/ErrorCode/IWlanError$WfcErrorCode;

    .line 111
    new-instance v0, Lcom/sec/epdg/ErrorCode/IWlanError$WfcErrorCode;

    const-string v1, "GENERAL_ERROR"

    const/16 v14, 0x52

    invoke-direct {v0, v1, v10, v14}, Lcom/sec/epdg/ErrorCode/IWlanError$WfcErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/epdg/ErrorCode/IWlanError$WfcErrorCode;->GENERAL_ERROR:Lcom/sec/epdg/ErrorCode/IWlanError$WfcErrorCode;

    .line 92
    new-array v1, v11, [Lcom/sec/epdg/ErrorCode/IWlanError$WfcErrorCode;

    sget-object v11, Lcom/sec/epdg/ErrorCode/IWlanError$WfcErrorCode;->DISABLED:Lcom/sec/epdg/ErrorCode/IWlanError$WfcErrorCode;

    aput-object v11, v1, v2

    sget-object v2, Lcom/sec/epdg/ErrorCode/IWlanError$WfcErrorCode;->ENABLING:Lcom/sec/epdg/ErrorCode/IWlanError$WfcErrorCode;

    aput-object v2, v1, v3

    sget-object v2, Lcom/sec/epdg/ErrorCode/IWlanError$WfcErrorCode;->POOR_WIFI:Lcom/sec/epdg/ErrorCode/IWlanError$WfcErrorCode;

    aput-object v2, v1, v4

    sget-object v2, Lcom/sec/epdg/ErrorCode/IWlanError$WfcErrorCode;->NOT_CONNECTED_TO_WIFI:Lcom/sec/epdg/ErrorCode/IWlanError$WfcErrorCode;

    aput-object v2, v1, v5

    sget-object v2, Lcom/sec/epdg/ErrorCode/IWlanError$WfcErrorCode;->DEREGISTERED:Lcom/sec/epdg/ErrorCode/IWlanError$WfcErrorCode;

    aput-object v2, v1, v7

    sget-object v2, Lcom/sec/epdg/ErrorCode/IWlanError$WfcErrorCode;->READY_FOR_CALLS:Lcom/sec/epdg/ErrorCode/IWlanError$WfcErrorCode;

    aput-object v2, v1, v6

    sget-object v2, Lcom/sec/epdg/ErrorCode/IWlanError$WfcErrorCode;->SERVER_CERT_VALIDATION_ERROR:Lcom/sec/epdg/ErrorCode/IWlanError$WfcErrorCode;

    aput-object v2, v1, v8

    sget-object v2, Lcom/sec/epdg/ErrorCode/IWlanError$WfcErrorCode;->CERTIFICATION_ERROR:Lcom/sec/epdg/ErrorCode/IWlanError$WfcErrorCode;

    aput-object v2, v1, v9

    sget-object v2, Lcom/sec/epdg/ErrorCode/IWlanError$WfcErrorCode;->DNS_ERROR:Lcom/sec/epdg/ErrorCode/IWlanError$WfcErrorCode;

    aput-object v2, v1, v12

    sget-object v2, Lcom/sec/epdg/ErrorCode/IWlanError$WfcErrorCode;->TIMEOUT_ERROR:Lcom/sec/epdg/ErrorCode/IWlanError$WfcErrorCode;

    aput-object v2, v1, v13

    aput-object v0, v1, v10

    sput-object v1, Lcom/sec/epdg/ErrorCode/IWlanError$WfcErrorCode;->$VALUES:[Lcom/sec/epdg/ErrorCode/IWlanError$WfcErrorCode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "c"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 115
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 116
    iput p3, p0, Lcom/sec/epdg/ErrorCode/IWlanError$WfcErrorCode;->wfcErrorCode:I

    .line 117
    return-void
.end method

.method public static getWFCErrorCode(Ljava/lang/String;Lcom/sec/epdg/ErrorCode/IWlanError;)I
    .locals 3
    .param p0, "operator"    # Ljava/lang/String;
    .param p1, "error"    # Lcom/sec/epdg/ErrorCode/IWlanError;

    .line 123
    const/4 v0, -0x1

    .line 124
    .local v0, "ikeErrorCode":I
    invoke-virtual {p1}, Lcom/sec/epdg/ErrorCode/IWlanError;->getIkeError()Lcom/sec/epdg/ErrorCode/IWlanError$IkeError;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 125
    invoke-virtual {p1}, Lcom/sec/epdg/ErrorCode/IWlanError;->getIkeError()Lcom/sec/epdg/ErrorCode/IWlanError$IkeError;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/ErrorCode/IWlanError$IkeError;->getIkeErrorCode()I

    move-result v0

    .line 126
    :cond_0
    const-string v1, "TMB"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 127
    invoke-virtual {p1}, Lcom/sec/epdg/ErrorCode/IWlanError;->getError()Lcom/sec/epdg/ErrorCode/IWlanError$EpdgError;

    move-result-object v1

    sget-object v2, Lcom/sec/epdg/ErrorCode/IWlanError$EpdgError;->SERVER_CERT_VALIDATION_ERROR:Lcom/sec/epdg/ErrorCode/IWlanError$EpdgError;

    if-ne v1, v2, :cond_1

    .line 128
    sget-object v1, Lcom/sec/epdg/ErrorCode/IWlanError$WfcErrorCode;->SERVER_CERT_VALIDATION_ERROR:Lcom/sec/epdg/ErrorCode/IWlanError$WfcErrorCode;

    invoke-virtual {v1}, Lcom/sec/epdg/ErrorCode/IWlanError$WfcErrorCode;->getCode()I

    move-result v1

    return v1

    .line 129
    :cond_1
    invoke-virtual {p1}, Lcom/sec/epdg/ErrorCode/IWlanError;->getError()Lcom/sec/epdg/ErrorCode/IWlanError$EpdgError;

    move-result-object v1

    sget-object v2, Lcom/sec/epdg/ErrorCode/IWlanError$EpdgError;->TIMEOUT_ERROR:Lcom/sec/epdg/ErrorCode/IWlanError$EpdgError;

    if-ne v1, v2, :cond_2

    .line 130
    sget-object v1, Lcom/sec/epdg/ErrorCode/IWlanError$WfcErrorCode;->TIMEOUT_ERROR:Lcom/sec/epdg/ErrorCode/IWlanError$WfcErrorCode;

    invoke-virtual {v1}, Lcom/sec/epdg/ErrorCode/IWlanError$WfcErrorCode;->getCode()I

    move-result v1

    return v1

    .line 131
    :cond_2
    invoke-virtual {p1}, Lcom/sec/epdg/ErrorCode/IWlanError;->getError()Lcom/sec/epdg/ErrorCode/IWlanError$EpdgError;

    move-result-object v1

    sget-object v2, Lcom/sec/epdg/ErrorCode/IWlanError$EpdgError;->CERTIFICATION_ERROR:Lcom/sec/epdg/ErrorCode/IWlanError$EpdgError;

    if-ne v1, v2, :cond_3

    .line 132
    sget-object v1, Lcom/sec/epdg/ErrorCode/IWlanError$WfcErrorCode;->CERTIFICATION_ERROR:Lcom/sec/epdg/ErrorCode/IWlanError$WfcErrorCode;

    invoke-virtual {v1}, Lcom/sec/epdg/ErrorCode/IWlanError$WfcErrorCode;->getCode()I

    move-result v1

    return v1

    .line 133
    :cond_3
    invoke-virtual {p1}, Lcom/sec/epdg/ErrorCode/IWlanError;->getError()Lcom/sec/epdg/ErrorCode/IWlanError$EpdgError;

    move-result-object v1

    sget-object v2, Lcom/sec/epdg/ErrorCode/IWlanError$EpdgError;->DNS_RESOLUTION_FAILED_ERROR:Lcom/sec/epdg/ErrorCode/IWlanError$EpdgError;

    if-ne v1, v2, :cond_4

    .line 134
    sget-object v1, Lcom/sec/epdg/ErrorCode/IWlanError$WfcErrorCode;->DNS_ERROR:Lcom/sec/epdg/ErrorCode/IWlanError$WfcErrorCode;

    invoke-virtual {v1}, Lcom/sec/epdg/ErrorCode/IWlanError$WfcErrorCode;->getCode()I

    move-result v1

    return v1

    .line 135
    :cond_4
    invoke-virtual {p1}, Lcom/sec/epdg/ErrorCode/IWlanError;->getError()Lcom/sec/epdg/ErrorCode/IWlanError$EpdgError;

    move-result-object v1

    sget-object v2, Lcom/sec/epdg/ErrorCode/IWlanError$EpdgError;->DNS_A_QUERY_ERROR:Lcom/sec/epdg/ErrorCode/IWlanError$EpdgError;

    if-ne v1, v2, :cond_5

    .line 136
    sget-object v1, Lcom/sec/epdg/ErrorCode/IWlanError$WfcErrorCode;->DNS_ERROR:Lcom/sec/epdg/ErrorCode/IWlanError$WfcErrorCode;

    invoke-virtual {v1}, Lcom/sec/epdg/ErrorCode/IWlanError$WfcErrorCode;->getCode()I

    move-result v1

    return v1

    .line 138
    :cond_5
    sget-object v1, Lcom/sec/epdg/ErrorCode/IWlanError$WfcErrorCode;->GENERAL_ERROR:Lcom/sec/epdg/ErrorCode/IWlanError$WfcErrorCode;

    invoke-virtual {v1}, Lcom/sec/epdg/ErrorCode/IWlanError$WfcErrorCode;->getCode()I

    move-result v1

    return v1

    .line 140
    :cond_6
    if-nez v0, :cond_7

    .line 141
    const/4 v1, -0x1

    return v1

    .line 143
    :cond_7
    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/epdg/ErrorCode/IWlanError$WfcErrorCode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 92
    const-class v0, Lcom/sec/epdg/ErrorCode/IWlanError$WfcErrorCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/epdg/ErrorCode/IWlanError$WfcErrorCode;

    return-object v0
.end method

.method public static values()[Lcom/sec/epdg/ErrorCode/IWlanError$WfcErrorCode;
    .locals 1

    .line 92
    sget-object v0, Lcom/sec/epdg/ErrorCode/IWlanError$WfcErrorCode;->$VALUES:[Lcom/sec/epdg/ErrorCode/IWlanError$WfcErrorCode;

    invoke-virtual {v0}, [Lcom/sec/epdg/ErrorCode/IWlanError$WfcErrorCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/epdg/ErrorCode/IWlanError$WfcErrorCode;

    return-object v0
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .line 120
    iget v0, p0, Lcom/sec/epdg/ErrorCode/IWlanError$WfcErrorCode;->wfcErrorCode:I

    return v0
.end method
