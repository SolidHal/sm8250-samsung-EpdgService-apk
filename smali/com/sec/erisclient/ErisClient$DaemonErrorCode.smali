.class Lcom/sec/erisclient/ErisClient$DaemonErrorCode;
.super Ljava/lang/Object;
.source "ErisClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/erisclient/ErisClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DaemonErrorCode"
.end annotation


# static fields
.field private static final ERIS_GENERIC_FAILED:I = 0x1

.field private static final ERIS_INVALID_CA_CERTIFICATE:I = 0x13

.field private static final ERIS_INVALID_CERTIFICATE:I = 0x14

.field private static final ERIS_NEGOTIATION_ERROR:I = 0x7

.field private static final ERIS_NO_CONNECTION:I = 0x5

.field private static final ERIS_OK:I = 0x0

.field private static final ERIS_PEER_ADDR_FAILED:I = 0x2

.field private static final ERIS_PEER_AUTH_FAILED:I = 0x3

.field private static final ERIS_PEER_INIT_UNREACHABLE:I = 0x4

.field private static final ERIS_SERVER_CERT_INVALID_ERROR:I = 0x15

.field private static final ERIS_SERVER_CERT_VALIDATION_ERROR:I = 0x16

.field private static final ERIS_TIMEOUT:I = 0x6


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1070
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
