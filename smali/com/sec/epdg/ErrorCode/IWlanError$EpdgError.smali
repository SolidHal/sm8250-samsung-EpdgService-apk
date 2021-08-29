.class public final enum Lcom/sec/epdg/ErrorCode/IWlanError$EpdgError;
.super Ljava/lang/Enum;
.source "IWlanError.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/ErrorCode/IWlanError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EpdgError"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/epdg/ErrorCode/IWlanError$EpdgError;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/epdg/ErrorCode/IWlanError$EpdgError;

.field public static final enum CERTIFICATION_ERROR:Lcom/sec/epdg/ErrorCode/IWlanError$EpdgError;

.field public static final enum DNS_A_QUERY_ERROR:Lcom/sec/epdg/ErrorCode/IWlanError$EpdgError;

.field public static final enum DNS_RESOLUTION_FAILED_ERROR:Lcom/sec/epdg/ErrorCode/IWlanError$EpdgError;

.field public static final enum IKE_NEGOTIATION_ERROR:Lcom/sec/epdg/ErrorCode/IWlanError$EpdgError;

.field public static final enum SERVER_CERT_VALIDATION_ERROR:Lcom/sec/epdg/ErrorCode/IWlanError$EpdgError;

.field public static final enum TIMEOUT_ERROR:Lcom/sec/epdg/ErrorCode/IWlanError$EpdgError;

.field public static final enum VENDOR_ERROR:Lcom/sec/epdg/ErrorCode/IWlanError$EpdgError;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 10
    new-instance v0, Lcom/sec/epdg/ErrorCode/IWlanError$EpdgError;

    const-string v1, "VENDOR_ERROR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/epdg/ErrorCode/IWlanError$EpdgError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/epdg/ErrorCode/IWlanError$EpdgError;->VENDOR_ERROR:Lcom/sec/epdg/ErrorCode/IWlanError$EpdgError;

    .line 15
    new-instance v0, Lcom/sec/epdg/ErrorCode/IWlanError$EpdgError;

    const-string v1, "IKE_NEGOTIATION_ERROR"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/sec/epdg/ErrorCode/IWlanError$EpdgError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/epdg/ErrorCode/IWlanError$EpdgError;->IKE_NEGOTIATION_ERROR:Lcom/sec/epdg/ErrorCode/IWlanError$EpdgError;

    .line 20
    new-instance v0, Lcom/sec/epdg/ErrorCode/IWlanError$EpdgError;

    const-string v1, "DNS_RESOLUTION_FAILED_ERROR"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/sec/epdg/ErrorCode/IWlanError$EpdgError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/epdg/ErrorCode/IWlanError$EpdgError;->DNS_RESOLUTION_FAILED_ERROR:Lcom/sec/epdg/ErrorCode/IWlanError$EpdgError;

    .line 24
    new-instance v0, Lcom/sec/epdg/ErrorCode/IWlanError$EpdgError;

    const-string v1, "TIMEOUT_ERROR"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/sec/epdg/ErrorCode/IWlanError$EpdgError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/epdg/ErrorCode/IWlanError$EpdgError;->TIMEOUT_ERROR:Lcom/sec/epdg/ErrorCode/IWlanError$EpdgError;

    .line 28
    new-instance v0, Lcom/sec/epdg/ErrorCode/IWlanError$EpdgError;

    const-string v1, "CERTIFICATION_ERROR"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/sec/epdg/ErrorCode/IWlanError$EpdgError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/epdg/ErrorCode/IWlanError$EpdgError;->CERTIFICATION_ERROR:Lcom/sec/epdg/ErrorCode/IWlanError$EpdgError;

    .line 32
    new-instance v0, Lcom/sec/epdg/ErrorCode/IWlanError$EpdgError;

    const-string v1, "DNS_A_QUERY_ERROR"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/sec/epdg/ErrorCode/IWlanError$EpdgError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/epdg/ErrorCode/IWlanError$EpdgError;->DNS_A_QUERY_ERROR:Lcom/sec/epdg/ErrorCode/IWlanError$EpdgError;

    .line 36
    new-instance v0, Lcom/sec/epdg/ErrorCode/IWlanError$EpdgError;

    const-string v1, "SERVER_CERT_VALIDATION_ERROR"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/sec/epdg/ErrorCode/IWlanError$EpdgError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/epdg/ErrorCode/IWlanError$EpdgError;->SERVER_CERT_VALIDATION_ERROR:Lcom/sec/epdg/ErrorCode/IWlanError$EpdgError;

    .line 5
    const/4 v1, 0x7

    new-array v1, v1, [Lcom/sec/epdg/ErrorCode/IWlanError$EpdgError;

    sget-object v9, Lcom/sec/epdg/ErrorCode/IWlanError$EpdgError;->VENDOR_ERROR:Lcom/sec/epdg/ErrorCode/IWlanError$EpdgError;

    aput-object v9, v1, v2

    sget-object v2, Lcom/sec/epdg/ErrorCode/IWlanError$EpdgError;->IKE_NEGOTIATION_ERROR:Lcom/sec/epdg/ErrorCode/IWlanError$EpdgError;

    aput-object v2, v1, v3

    sget-object v2, Lcom/sec/epdg/ErrorCode/IWlanError$EpdgError;->DNS_RESOLUTION_FAILED_ERROR:Lcom/sec/epdg/ErrorCode/IWlanError$EpdgError;

    aput-object v2, v1, v4

    sget-object v2, Lcom/sec/epdg/ErrorCode/IWlanError$EpdgError;->TIMEOUT_ERROR:Lcom/sec/epdg/ErrorCode/IWlanError$EpdgError;

    aput-object v2, v1, v5

    sget-object v2, Lcom/sec/epdg/ErrorCode/IWlanError$EpdgError;->CERTIFICATION_ERROR:Lcom/sec/epdg/ErrorCode/IWlanError$EpdgError;

    aput-object v2, v1, v6

    sget-object v2, Lcom/sec/epdg/ErrorCode/IWlanError$EpdgError;->DNS_A_QUERY_ERROR:Lcom/sec/epdg/ErrorCode/IWlanError$EpdgError;

    aput-object v2, v1, v7

    aput-object v0, v1, v8

    sput-object v1, Lcom/sec/epdg/ErrorCode/IWlanError$EpdgError;->$VALUES:[Lcom/sec/epdg/ErrorCode/IWlanError$EpdgError;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 5
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/epdg/ErrorCode/IWlanError$EpdgError;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 5
    const-class v0, Lcom/sec/epdg/ErrorCode/IWlanError$EpdgError;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/epdg/ErrorCode/IWlanError$EpdgError;

    return-object v0
.end method

.method public static values()[Lcom/sec/epdg/ErrorCode/IWlanError$EpdgError;
    .locals 1

    .line 5
    sget-object v0, Lcom/sec/epdg/ErrorCode/IWlanError$EpdgError;->$VALUES:[Lcom/sec/epdg/ErrorCode/IWlanError$EpdgError;

    invoke-virtual {v0}, [Lcom/sec/epdg/ErrorCode/IWlanError$EpdgError;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/epdg/ErrorCode/IWlanError$EpdgError;

    return-object v0
.end method
