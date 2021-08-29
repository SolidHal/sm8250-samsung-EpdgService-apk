.class Lcom/sec/erisclient/TrustedCertificateManager$Singleton;
.super Ljava/lang/Object;
.source "TrustedCertificateManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/erisclient/TrustedCertificateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Singleton"
.end annotation


# static fields
.field public static final mInstance:Lcom/sec/erisclient/TrustedCertificateManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 67
    new-instance v0, Lcom/sec/erisclient/TrustedCertificateManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/erisclient/TrustedCertificateManager;-><init>(Lcom/sec/erisclient/TrustedCertificateManager$1;)V

    sput-object v0, Lcom/sec/erisclient/TrustedCertificateManager$Singleton;->mInstance:Lcom/sec/erisclient/TrustedCertificateManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
